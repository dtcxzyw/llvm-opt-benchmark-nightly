inline.NumInlined: 360
inline.NumDeleted: 110
begin_hunk_0_@_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE:bb.a
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp ult i64 %i.aa, 72057594037927936
  %spec.select.a = select i1 %i.ah, i32 7, i32 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.049.lcssa54.a = phi i32 [ 1, %bb.b ], [ 6, %bb.g ], [ 2, %bb.c ], [ %spec.select.a, %bb.h ], [ 3, %bb.d ], [ 5, %bb.f ], [ 4, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %2 = zext nneg i32 %.049.lcssa54.a to i64       ; 2 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE:bb.a
  %i.ap = select i1 %i.ao, i32 0, i32 16
  %.not = icmp eq i64 %i.z, 0                     ; 2 uses
  %i.aq = select i1 %.not, i32 0, i32 32
  %i.ar = or disjoint i32 %i.aq, %i.ap
  %i.as = or disjoint i32 %i.ar, %.049.lcssa54.a  ; 2 uses
  %i.at = trunc nuw nsw i32 %i.as to i8           ; 2 uses
  %i.au = load i8, ptr %i.h, align 8, !tbaa !31, !range !38, !noundef !39
  %i.av = trunc nuw i8 %i.au to i1
end_hunk_1
begin_hunk_2_@_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE:bb.a
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit

_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit:   ; preds = %bb.k, %_ZN10COutBuffer9WriteByteEh.exit.i, %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
  call void @_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.a, i64 noundef %2)
  br i1 %i.ao, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.i, %bb.q
  %indvars.iv = phi i64 [ %2, %bb.i ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.04857 = phi i64 [ %i.aa, %bb.i ], [ %i.by, %bb.q ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bw = trunc i64 %.04857 to i8
end_hunk_2
begin_hunk_3_@_ZN8NArchive3N7z11COutArchive13WriteDatabaseERKNS0_16CArchiveDatabaseEPKNS0_22CCompressionMethodModeERKNS0_14CHeaderOptionsE:bb.a
bb.h:                                             ; preds = %bb.g
  %i.aw = load i8, ptr %3, align 1, !range !38
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond = select i1 %i.av, i1 true, i1 %i.ax
  br label %.thread

.thread:                                          ; preds = %bb.g, %_ZNK8NArchive3N7z16CArchiveDatabase7IsEmptyEv.exit.thread, %bb.h
  %.04091 = phi ptr [ %2, %bb.h ], [ null, %_ZNK8NArchive3N7z16CArchiveDatabase7IsEmptyEv.exit.thread ], [ null, %bb.g ] ; 5 uses
  %.062.a = phi i1 [ %or.cond, %bb.h ], [ false, %_ZNK8NArchive3N7z16CArchiveDatabase7IsEmptyEv.exit.thread ], [ false, %bb.g ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8
end_hunk_3
begin_hunk_4_@_ZN8NArchive3N7z11COutArchive13WriteDatabaseERKNS0_16CArchiveDatabaseEPKNS0_22CCompressionMethodModeERKNS0_14CHeaderOptionsE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i32 -1, ptr %i.bb, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %11 = zext i1 %.062.a to i8
  store i8 %11, ptr %i.bc, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  store i8 1, ptr %i.bd, align 1, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
end_hunk_4
