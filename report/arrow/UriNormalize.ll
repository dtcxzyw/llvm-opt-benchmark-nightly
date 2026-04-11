inline.NumInlined: 48
inline.NumDeleted: 12
begin_hunk_0_@uriFixPercentEncodingInplaceA:bb.a

.preheader.i:                                     ; preds = %bb.h, %bb.c
  %.039.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.at, %bb.h ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.c ], [ %3, %bb.h ] ; 6 uses
  %.0.lcssa.i18 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.i = icmp slt i32 %.039.lcssa.i, %i.g
  br i1 %i.i, label %.lr.ph49.preheader.i, label %uriFixPercentEncodingEngineA.exit
end_hunk_0
begin_hunk_1_@uriFixPercentEncodingInplaceA:bb.a

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %i.z = phi i32 [ %i.au, %bb.h ], [ 2, %bb.c ]   ; 3 uses
  %.045.i = phi ptr [ %3, %bb.h ], [ %0, %bb.c ]  ; 6 uses
  %.03944.i = phi i32 [ %i.at, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %i.aa = sext i32 %.03944.i to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa ; 2 uses
end_hunk_1
begin_hunk_2_@uriFixPercentEncodingInplaceA:bb.a

bb.d:                                             ; preds = %.lr.ph.i
  store i8 %i.ac, ptr %.045.i, align 1, !tbaa !17
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
end_hunk_2
begin_hunk_3_@uriFixPercentEncodingInplaceA:bb.a
  %i.an = add nuw nsw i32 %i.al, %i.am            ; 2 uses
  %i.ao = tail call i32 @uriIsUnreserved(i32 noundef %i.an) #8
  %.not43.i = icmp eq i32 %i.ao, 0
  br i1 %.not43.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_3
begin_hunk_4_@uriFixPercentEncodingInplaceA:bb.a
bb.g:                                             ; preds = %bb.e
  store i8 37, ptr %.045.i, align 1, !tbaa !17
  %i.aq = tail call signext i8 @uriHexToLetterA(i32 noundef %i.ak) #8
  %2 = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  store i8 %i.aq, ptr %2, align 1, !tbaa !17
  %i.ar = tail call signext i8 @uriHexToLetterA(i32 noundef %i.am) #8
  %i.as = getelementptr inbounds nuw i8, ptr %.045.i, i64 2
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.sink.i = phi i64 [ 1, %bb.d ], [ 1, %bb.f ], [ 3, %bb.g ]
  %.140.i = phi i32 [ %.03944.i, %bb.d ], [ %i.z, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.045.i, i64 %.sink.i ; 2 uses
  %i.at = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.au = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.g
end_hunk_4
begin_hunk_5_@uriFixPercentEncodingMallocA:bb.a

.preheader.i:                                     ; preds = %bb.k, %bb.f
  %.039.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bg, %bb.k ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %4, %bb.k ] ; 6 uses
  %.0.lcssa.i36 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.v = icmp slt i32 %.039.lcssa.i, %i.t
  br i1 %i.v, label %.lr.ph49.preheader.i, label %uriFixPercentEncodingEngineA.exit
end_hunk_5
begin_hunk_6_@uriFixPercentEncodingMallocA:bb.a

.lr.ph.i:                                         ; preds = %bb.f, %bb.k
  %i.am = phi i32 [ %i.bh, %bb.k ], [ 2, %bb.f ]  ; 3 uses
  %.045.i = phi ptr [ %4, %bb.k ], [ %i.m, %bb.f ] ; 6 uses
  %.03944.i = phi i32 [ %i.bg, %bb.k ], [ 0, %bb.f ] ; 2 uses
  %i.an = sext i32 %.03944.i to i64
  %i.ao = getelementptr inbounds i8, ptr %i.o, i64 %i.an ; 2 uses
end_hunk_6
begin_hunk_7_@uriFixPercentEncodingMallocA:bb.a

bb.g:                                             ; preds = %.lr.ph.i
  store i8 %i.ap, ptr %.045.i, align 1, !tbaa !17
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
end_hunk_7
begin_hunk_8_@uriFixPercentEncodingMallocA:bb.a
  %i.ba = add nuw nsw i32 %i.ay, %i.az            ; 2 uses
  %i.bb = tail call i32 @uriIsUnreserved(i32 noundef %i.ba) #8
  %.not43.i = icmp eq i32 %i.bb, 0
  br i1 %.not43.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_8
begin_hunk_9_@uriFixPercentEncodingMallocA:bb.a
bb.j:                                             ; preds = %bb.h
  store i8 37, ptr %.045.i, align 1, !tbaa !17
  %i.bd = tail call signext i8 @uriHexToLetterA(i32 noundef %i.ax) #8
  %3 = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  store i8 %i.bd, ptr %3, align 1, !tbaa !17
  %i.be = tail call signext i8 @uriHexToLetterA(i32 noundef %i.az) #8
  %i.bf = getelementptr inbounds nuw i8, ptr %.045.i, i64 2
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.sink.i = phi i64 [ 1, %bb.g ], [ 1, %bb.i ], [ 3, %bb.j ]
  %.140.i = phi i32 [ %.03944.i, %bb.g ], [ %i.am, %bb.i ], [ %i.am, %bb.j ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.045.i, i64 %.sink.i ; 2 uses
  %i.bg = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.bh = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.t
end_hunk_9
begin_hunk_10_@uriFixPercentEncodingInplaceW:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.sink.i = phi i64 [ 4, %bb.d ], [ 4, %bb.f ], [ 12, %bb.g ]
  %.140.i = phi i32 [ %.03945.i, %bb.d ], [ %i.ab, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.046.i, i64 %.sink.i ; 2 uses
  %i.aw = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.ax = add nsw i32 %.140.i, 3                  ; 2 uses
end_hunk_10
begin_hunk_11_@uriFixPercentEncodingMallocW:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.sink.i = phi i64 [ 4, %bb.g ], [ 4, %bb.i ], [ 12, %bb.j ]
  %.140.i = phi i32 [ %.03945.i, %bb.g ], [ %i.ap, %bb.i ], [ %i.ap, %bb.j ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.046.i, i64 %.sink.i ; 2 uses
  %i.bk = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.bl = add nsw i32 %.140.i, 3                  ; 2 uses
end_hunk_11
