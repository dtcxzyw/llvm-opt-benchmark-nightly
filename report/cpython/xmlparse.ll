inline.NumInlined: 273
inline.NumDeleted: 44
begin_hunk_0_@PyExpat_XmlParseXmlDecl
declare i32 @PyExpat_XmlParseXmlDecl(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @hash(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #19 {
bb.a:
  %2 = alloca %struct.siphash, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
end_hunk_0
begin_hunk_1_@hash:bb.a
  br label %keylen.exit

keylen.exit:                                      ; preds = %copy_salt_to_sipkey.exit, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %copy_salt_to_sipkey.exit ], [ %i.n, %.lr.ph.preheader.i ] ; 2 uses
  %3 = ptrtoint ptr %1 to i64
  %i.o = getelementptr i8, ptr %1, i64 %.0.lcssa.i
  br label %bb.c

bb.c:                                             ; preds = %sip_round.exit.i, %keylen.exit
  %.0.i = phi ptr [ %1, %keylen.exit ], [ %.1.lcssa.i15, %sip_round.exit.i ] ; 4 uses
  %i.p = icmp ult ptr %.0.i, %i.o
  br i1 %i.p, label %.lr.ph.preheader.i4, label %sip24_update.exit

.lr.ph.preheader.i4:                              ; preds = %bb.c
  %.043.i = ptrtoint ptr %.0.i to i64
  %4 = getelementptr i8, ptr %.0.i, i64 %.0.lcssa.i
  %scevgep.i5 = getelementptr i8, ptr %4, i64 %3
  %5 = sub i64 0, %.043.i
  %scevgep44.i = getelementptr i8, ptr %scevgep.i5, i64 %5 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i4
  %.134.i = phi ptr [ %i.r, %bb.d ], [ %.0.i, %.lr.ph.preheader.i4 ] ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !332  ; 3 uses
  %.not.i.not.not = icmp ult ptr %i.q, %i.k       ; 2 uses
  br i1 %.not.i.not.not, label %bb.d, label %sip_round.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.134.i, i64 1     ; 2 uses
  %i.s = load i8, ptr %.134.i, align 1, !tbaa !10
  %i.t = getelementptr i8, ptr %i.q, i64 1
  store ptr %i.t, ptr %i.k, align 8, !tbaa !332
  store i8 %i.s, ptr %i.q, align 1, !tbaa !10
  %exitcond.not.i = icmp eq ptr %i.r, %scevgep44.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !334

.critedge.i:                                      ; preds = %bb.d
  %.pre.pre = load ptr, ptr %i.k, align 8, !tbaa !332
end_hunk_1
begin_hunk_2_@hash:bb.a
  br i1 %i.u, label %sip24_update.exit, label %sip_round.exit.i

sip_round.exit.i:                                 ; preds = %.lr.ph.i, %.critedge.i
  %.1.lcssa.i15 = phi ptr [ %scevgep44.i, %.critedge.i ], [ %.134.i, %.lr.ph.i ]
  %i.v = load i64, ptr %i.j, align 8              ; 2 uses
  %i.w = load i64, ptr %i.i, align 8, !tbaa !331
  %i.x = xor i64 %i.w, %i.v                       ; 3 uses
end_hunk_2
begin_hunk_3_@hash:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @sip24_update(ptr noundef nonnull returned %0, ptr noundef readonly captures(address) %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %3 = ptrtoint ptr %1 to i64
  %i.a = getelementptr i8, ptr %1, i64 %2
  %i.b = getelementptr i8, ptr %0, i64 40         ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
end_hunk_3
begin_hunk_4_@sip24_update:bb.a
  br label %bb.b

bb.b:                                             ; preds = %sip_round.exit, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %.1.lcssa, %sip_round.exit ] ; 5 uses
  %i.h = icmp ult ptr %.0, %i.a
  br i1 %i.h, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %.043 = ptrtoint ptr %.0 to i64
  %4 = getelementptr i8, ptr %.0, i64 %2
  %scevgep = getelementptr i8, ptr %4, i64 %3
  %5 = sub i64 0, %.043
  %scevgep44 = getelementptr i8, ptr %scevgep, i64 %5 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.134 = phi ptr [ %i.j, %bb.c ], [ %.0, %.lr.ph.preheader ] ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !332  ; 3 uses
  %.not.not = icmp uge ptr %i.i, %i.b             ; 3 uses
  br i1 %.not.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %.134, i64 1       ; 2 uses
  %i.k = load i8, ptr %.134, align 1, !tbaa !10
  %i.l = getelementptr i8, ptr %i.i, i64 1
  store ptr %i.l, ptr %i.b, align 8, !tbaa !332
  store i8 %i.k, ptr %i.i, align 1, !tbaa !10
  %exitcond.not = icmp eq ptr %i.j, %scevgep44
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !334

.critedge:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %.1.lcssa = phi ptr [ %.0, %bb.b ], [ %scevgep44, %bb.c ], [ %.134, %.lr.ph ]
  %.lcssa = phi i1 [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph ]
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !332
  %i.n = icmp ult ptr %i.m, %i.b
end_hunk_4
