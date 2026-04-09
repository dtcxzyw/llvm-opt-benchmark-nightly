inline.NumInlined: 460
inline.NumDeleted: 124
begin_hunk_0_@_ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = sub i64 %i.f, %i.c
  %i.h = and i64 %i.g, -2                         ; 3 uses
  %.not36 = icmp eq i64 %i.h, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.02729 = phi i64 [ %i.o, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.02729 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !58
  %i.k = icmp eq i8 %i.j, 0
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE:bb.a
  br i1 %i.n, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.o = add nuw i64 %.02729, 2                   ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.027.lcssa = phi i64 [ 0, %bb.a ], [ %.02729, %bb.b ], [ %i.o, %bb.c ] ; 5 uses
  %i.q = icmp eq i64 %.027.lcssa, %i.h
  br i1 %i.q, label %bb.d, label %bb.e

end_hunk_1
begin_hunk_2_@_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb:bb.a
_ZN8NArchive3N7z10CInArchive10ReadNumberEv.exit:  ; preds = %bb.aq
  %i.hb = load ptr, ptr %i.a, align 8, !tbaa !45  ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 3 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !55 ; 4 uses
  %i.he = icmp ugt i64 %i.gx, 1073741824
  br i1 %i.he, label %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit255, label %bb.as

end_hunk_2
begin_hunk_3_@_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb:bb.a
.lr.ph350:                                        ; preds = %.preheader326
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !54
  br label %bb.cd

bb.at:                                            ; preds = %bb.as
end_hunk_3
begin_hunk_4_@_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb:bb.a
  br i1 %exitcond385.not.a, label %.loopexit327, label %bb.cd, !llvm.loop !177

bb.cd:                                            ; preds = %.lr.ph350, %bb.cc
  %i.on = phi i64 [ %i.hd, %.lr.ph350 ], [ %i.op, %bb.cc ] ; 3 uses
  %.0140349 = phi i64 [ 0, %.lr.ph350 ], [ %i.om, %bb.cc ]
  %.not.i.i = icmp ult i64 %i.on, %i.hi
  br i1 %.not.i.i, label %bb.ce, label %.invoke433.a

bb.ce:                                            ; preds = %bb.cd
  %i.oo = load ptr, ptr %i.hb, align 8, !tbaa !52
end_hunk_4
begin_hunk_5_@llvm.umin.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

end_hunk_5
