inline.NumInlined: 207
inline.NumDeleted: 81
begin_hunk_0_@inf_URResolution:bb.a
  store ptr %.04277, ptr %i.cp, align 8
  %.not74 = icmp eq ptr %.val.i69, null
  br i1 %.not74, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %list_Nconc.exit, %bb.e
  %.1.lcssa = phi ptr [ %.041, %bb.e ], [ %.0.i68, %list_Nconc.exit ] ; 2 uses
  %.val52 = load i32, ptr %i.p, align 8
  %i.cq = load i32, ptr @fol_EQUALITY, align 4
  %i.cr = icmp ne i32 %.val52, %i.cq
  %or.cond = or i1 %i.r, %i.cr
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %.val.i70 = load ptr, ptr %i.q, align 8         ; 2 uses
  %i.cs = getelementptr i8, ptr %.val.i70, i64 8  ; 2 uses
  %.val.val.i = load ptr, ptr %i.cs, align 8
  %.val8.val.i = load ptr, ptr %.val.i70, align 8
  %i.ct = getelementptr i8, ptr %.val8.val.i, i64 8
  %.val8.val.val.i = load ptr, ptr %i.ct, align 8
  store ptr %.val8.val.val.i, ptr %i.cs, align 8
  %.val6.i71 = load ptr, ptr %i.q, align 8
  %.val5.i = load ptr, ptr %.val6.i71, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  store ptr %.val.val.i, ptr %i.cu, align 8
  br label %bb.e

bb.s:                                             ; preds = %._crit_edge
  call void @term_Delete(ptr noundef nonnull %i.p) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.b
  %.2 = phi ptr [ %i.i, %bb.b ], [ %.1.lcssa, %bb.s ]
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_NonUnitURResolution(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val.i.i10.i = load i32, ptr %i.a, align 8     ; 2 uses
  %.val3.i.i11.i = load i32, ptr %i.b, align 4    ; 2 uses
  %.val4.i.i12.i = load i32, ptr %i.c, align 8    ; 2 uses
  %i.d = add i32 %.val.i.i10.i, -1
  %i.e = add i32 %i.d, %.val3.i.i11.i
  %i.f = add i32 %i.e, %.val4.i.i12.i
  %.not13.i = icmp slt i32 %i.f, 0
  br i1 %.not13.i, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.val4.i.i21.i = phi i32 [ %.val4.i.i12.i, %.lr.ph.i ], [ %.val4.i.i.i, %bb.d ]
  %.val3.i.i19.i = phi i32 [ %.val3.i.i11.i, %.lr.ph.i ], [ %.val3.i.i.i, %bb.d ]
  %.val.i.i17.i = phi i32 [ %.val.i.i10.i, %.lr.ph.i ], [ %.val.i.i.i, %bb.d ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %.0814.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.not9.i = icmp eq i64 %indvars.iv.i, %i.h
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.l, align 8
  store ptr %.0814.i, ptr %i.k, align 8
  %.val.i.i.pre.i = load i32, ptr %i.a, align 8
  %.val3.i.i.pre.i = load i32, ptr %i.b, align 4
  %.val4.i.i.pre.i = load i32, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val4.i.i.i = phi i32 [ %.val4.i.i.pre.i, %bb.c ], [ %.val4.i.i21.i, %bb.b ] ; 4 uses
  %.val3.i.i.i = phi i32 [ %.val3.i.i.pre.i, %bb.c ], [ %.val3.i.i19.i, %bb.b ] ; 4 uses
  %.val.i.i.i = phi i32 [ %.val.i.i.pre.i, %bb.c ], [ %.val.i.i17.i, %bb.b ] ; 4 uses
  %.1.i = phi ptr [ %i.k, %bb.c ], [ %.0814.i, %bb.b ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.m = add i32 %.val4.i.i.i, -1
  %i.n = add i32 %i.m, %.val3.i.i.i
  %i.o = add i32 %i.n, %.val.i.i.i
  %i.p = sext i32 %i.o to i64
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.p
  br i1 %.not.not.i, label %bb.b, label %clause_GetLiteralListExcept.exit, !llvm.loop !7

clause_GetLiteralListExcept.exit:                 ; preds = %bb.d
  %.pre = add i32 %.val.i.i.i, -1
  %.pre41 = add i32 %.pre, %.val3.i.i.i
  %.pre43 = add i32 %.pre41, %.val4.i.i.i
  %i.q = icmp slt i32 %.pre43, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %clause_GetLiteralListExcept.exit
  %i.r = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.s = zext i32 %1 to i64
  %i.t = add i32 %.val.i.i.i, %.val3.i.i.i
  %i.u = add i32 %i.t, %.val4.i.i.i
  %wide.trip.count = zext i32 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %.035 = phi ptr [ null, %.lr.ph ], [ %.1, %bb.i ] ; 4 uses
  %.02633 = phi ptr [ %.1.i, %.lr.ph ], [ %.127, %bb.i ] ; 2 uses
  %.not28 = icmp eq i64 %indvars.iv, %i.s
  br i1 %.not28, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val29 = load ptr, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val29, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call ptr @list_PointerDeleteOneElement(ptr noundef %.02633, ptr noundef %i.w) #12 ; 2 uses
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = tail call fastcc ptr @inf_SearchURResolvents(ptr noundef %0, i32 noundef %i.y, ptr noundef %2, ptr noundef %i.x, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 4 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %list_Nconc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not16.i = icmp eq ptr %.035, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.z, %bb.g ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.h, label %.preheader.i, !llvm.loop !8

bb.h:                                             ; preds = %.preheader.i
  store ptr %.035, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.z, %bb.h ], [ %.035, %bb.f ], [ %i.z, %bb.g ]
  %.val = load ptr, ptr %i.r, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %i.ad, align 8
  store ptr %i.x, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %list_Nconc.exit
  %.127 = phi ptr [ %i.ac, %list_Nconc.exit ], [ %.02633, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %.0.i, %list_Nconc.exit ], [ %.035, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.i, %clause_GetLiteralListExcept.exit
  %.026.lcssa = phi ptr [ %.1.i, %clause_GetLiteralListExcept.exit ], [ %.127, %bb.i ] ; 2 uses
  %.0.lcssa = phi ptr [ null, %clause_GetLiteralListExcept.exit ], [ %.1, %bb.i ] ; 2 uses
  %.not6.i = icmp eq ptr %.026.lcssa, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %._crit_edge, %.lr.ph.i30
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i30 ], [ %.026.lcssa, %._crit_edge ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load i64, ptr @memory_FREEDBYTES, align 8
  %i.aj = add i64 %i.ai, %i.ah
  store i64 %i.aj, ptr @memory_FREEDBYTES, align 8
  %i.ak = load ptr, ptr %i.ae, align 8
  store ptr %i.ak, ptr %.07.i, align 8
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.al, align 8
  %.not.i31 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i31, label %list_Delete.exit, label %.lr.ph.i30, !llvm.loop !10

list_Delete.exit:                                 ; preds = %.lr.ph.i30, %bb.a, %._crit_edge
  %.0.lcssa54 = phi ptr [ null, %bb.a ], [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %.lr.ph.i30 ]
  ret ptr %.0.lcssa54
}

declare ptr @term_Copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_GetURPartnerLits(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.b = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.c = tail call ptr @st_GetUnifier(ptr noundef %i.a, ptr noundef %.0.val, ptr noundef %i.b, ptr noundef %0) #12 ; 3 uses
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %3 = trunc nuw i32 %2 to i1
  br i1 %3, label %.lr.ph16.split.us.split, label %.lr.ph16.split.split.us

.lr.ph16.split.us.split:                          ; preds = %.lr.ph16, %.loopexit.us
  %.015.us = phi ptr [ %.3.us, %.loopexit.us ], [ null, %.lr.ph16 ] ; 3 uses
  %.02114.us = phi ptr [ %.val.i31.us, %.loopexit.us ], [ %i.c, %.lr.ph16 ] ; 4 uses
  %i.e = getelementptr i8, ptr %.02114.us, i64 8
  %.021.val26.us = load ptr, ptr %i.e, align 8    ; 2 uses
  %.val29.us = load i32, ptr %.021.val26.us, align 8
  %i.f = icmp slt i32 %.val29.us, 1
  br i1 %i.f, label %bb.b, label %.loopexit.us

bb.b:                                             ; preds = %.lr.ph16.split.us.split
  %i.g = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.021.val26.us) #12 ; 2 uses
  %.not48.us = icmp eq ptr %i.g, null
  br i1 %.not48.us, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  %.pre72 = load i32, ptr @fol_NOT, align 4
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %clause_LiteralsAreComplementary.exit.thread.us32
  %i.h = phi i32 [ %i.u, %clause_LiteralsAreComplementary.exit.thread.us32 ], [ %.pre72, %.lr.ph.us.preheader ] ; 5 uses
  %.110.us18 = phi ptr [ %.2.us33, %clause_LiteralsAreComplementary.exit.thread.us32 ], [ %.015.us, %.lr.ph.us.preheader ] ; 3 uses
  %.0229.us19 = phi ptr [ %.022.val27.us34, %clause_LiteralsAreComplementary.exit.thread.us32 ], [ %i.g, %.lr.ph.us.preheader ] ; 2 uses
  %i.i = getelementptr i8, ptr %.0229.us19, i64 8
  %.022.val.us20 = load ptr, ptr %i.i, align 8    ; 3 uses
  %i.j = getelementptr i8, ptr %.022.val.us20, i64 16
  %.val.us21 = load ptr, ptr %i.j, align 8        ; 3 uses
  %i.k = getelementptr i8, ptr %.val.us21, i64 64
  %.val.i.us22 = load i32, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val.us21, i64 68
  %.val3.i.us23 = load i32, ptr %i.l, align 4
  %i.m = add nsw i32 %.val3.i.us23, %.val.i.us22
  %i.n = getelementptr i8, ptr %.val.us21, i64 72
  %.val4.i.us24 = load i32, ptr %i.n, align 8
  %i.o = add nsw i32 %i.m, %.val4.i.us24
  %.val30.us25 = load ptr, ptr %i.d, align 8
  %.val30.val.us26 = load i32, ptr %.val30.us25, align 8
  %.not.i.us27 = icmp eq i32 %.val30.val.us26, %i.h
  %i.p = getelementptr i8, ptr %.022.val.us20, i64 24
  %.val8.i.us28 = load ptr, ptr %i.p, align 8
  %.val8.val.i.us29 = load i32, ptr %.val8.i.us28, align 8 ; 2 uses
  %i.q = icmp eq i32 %i.o, 1                      ; 2 uses
  br i1 %.not.i.us27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.us
  %i.r = icmp eq i32 %.val8.val.i.us29, %i.h
  %or.cond70 = select i1 %i.r, i1 %i.q, i1 false
  br i1 %or.cond70, label %bb.e, label %clause_LiteralsAreComplementary.exit.thread.us32

bb.d:                                             ; preds = %.lr.ph.us
  %.not1.i.us30 = icmp ne i32 %.val8.val.i.us29, %i.h
  %or.cond69 = select i1 %.not1.i.us30, i1 %i.q, i1 false
  br i1 %or.cond69, label %bb.e, label %clause_LiteralsAreComplementary.exit.thread.us32

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.022.val.us20, ptr %i.t, align 8
  store ptr %.110.us18, ptr %i.s, align 8
  %.pre.a = load i32, ptr @fol_NOT, align 4
  br label %clause_LiteralsAreComplementary.exit.thread.us32

clause_LiteralsAreComplementary.exit.thread.us32: ; preds = %bb.e, %bb.d, %bb.c
  %i.u = phi i32 [ %.pre.a, %bb.e ], [ %i.h, %bb.c ], [ %i.h, %bb.d ]
  %.2.us33 = phi ptr [ %i.s, %bb.e ], [ %.110.us18, %bb.c ], [ %.110.us18, %bb.d ] ; 2 uses
  %.022.val27.us34 = load ptr, ptr %.0229.us19, align 8 ; 2 uses
  %.not4.us35 = icmp eq ptr %.022.val27.us34, null
  br i1 %.not4.us35, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !12

.loopexit.us:                                     ; preds = %clause_LiteralsAreComplementary.exit.thread.us32, %bb.b, %.lr.ph16.split.us.split
  %.3.us = phi ptr [ %.015.us, %.lr.ph16.split.us.split ], [ %.015.us, %bb.b ], [ %.2.us33, %clause_LiteralsAreComplementary.exit.thread.us32 ] ; 2 uses
  %.val.i31.us = load ptr, ptr %.02114.us, align 8 ; 2 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = load i64, ptr @memory_FREEDBYTES, align 8
  %i.aa = add i64 %i.z, %i.y
  store i64 %i.aa, ptr @memory_FREEDBYTES, align 8
  %i.ab = load ptr, ptr %i.v, align 8
  store ptr %i.ab, ptr %.02114.us, align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.02114.us, ptr %i.ac, align 8
  %.not.us = icmp eq ptr %.val.i31.us, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph16.split.us.split, !llvm.loop !13

.lr.ph16.split.split.us:                          ; preds = %.lr.ph16, %.loopexit.us48
  %.015.us40 = phi ptr [ %.3.us45, %.loopexit.us48 ], [ null, %.lr.ph16 ] ; 3 uses
  %.02114.us41 = phi ptr [ %.val.i31.us46, %.loopexit.us48 ], [ %i.c, %.lr.ph16 ] ; 4 uses
  %i.ad = getelementptr i8, ptr %.02114.us41, i64 8
  %.021.val26.us42 = load ptr, ptr %i.ad, align 8 ; 2 uses
  %.val29.us43 = load i32, ptr %.021.val26.us42, align 8
  %i.ae = icmp slt i32 %.val29.us43, 1
  br i1 %i.ae, label %bb.f, label %.loopexit.us48

bb.f:                                             ; preds = %.lr.ph16.split.split.us
  %i.af = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.021.val26.us42) #12 ; 2 uses
  %.not48.us44 = icmp eq ptr %i.af, null
  br i1 %.not48.us44, label %.loopexit.us48, label %.lr.ph.us50.preheader

.lr.ph.us50.preheader:                            ; preds = %bb.f
  %.pre74 = load i32, ptr @fol_NOT, align 4
  br label %.lr.ph.us50

.loopexit.us48:                                   ; preds = %clause_LiteralsAreComplementary.exit.thread.us.us59, %bb.f, %.lr.ph16.split.split.us
  %.3.us45 = phi ptr [ %.015.us40, %.lr.ph16.split.split.us ], [ %.015.us40, %bb.f ], [ %.2.us.us, %clause_LiteralsAreComplementary.exit.thread.us.us59 ] ; 2 uses
  %.val.i31.us46 = load ptr, ptr %.02114.us41, align 8 ; 2 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i64, ptr @memory_FREEDBYTES, align 8
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr @memory_FREEDBYTES, align 8
  %i.am = load ptr, ptr %i.ag, align 8
  store ptr %i.am, ptr %.02114.us41, align 8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.02114.us41, ptr %i.an, align 8
  %.not.us47 = icmp eq ptr %.val.i31.us46, null
  br i1 %.not.us47, label %._crit_edge, label %.lr.ph16.split.split.us, !llvm.loop !13

.lr.ph.us50:                                      ; preds = %.lr.ph.us50.preheader, %clause_LiteralsAreComplementary.exit.thread.us.us59
  %i.ao = phi i32 [ %i.bb, %clause_LiteralsAreComplementary.exit.thread.us.us59 ], [ %.pre74, %.lr.ph.us50.preheader ] ; 5 uses
  %.110.us.us = phi ptr [ %.2.us.us, %clause_LiteralsAreComplementary.exit.thread.us.us59 ], [ %.015.us40, %.lr.ph.us50.preheader ] ; 3 uses
  %.0229.us.us51 = phi ptr [ %.022.val27.us.us60, %clause_LiteralsAreComplementary.exit.thread.us.us59 ], [ %i.af, %.lr.ph.us50.preheader ] ; 2 uses
  %i.ap = getelementptr i8, ptr %.0229.us.us51, i64 8
  %.022.val.us.us52 = load ptr, ptr %i.ap, align 8 ; 3 uses
  %i.aq = getelementptr i8, ptr %.022.val.us.us52, i64 16
  %.val.us.us = load ptr, ptr %i.aq, align 8      ; 3 uses
  %i.ar = getelementptr i8, ptr %.val.us.us, i64 64
  %.val.i.us.us = load i32, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %.val.us.us, i64 68
  %.val3.i.us.us = load i32, ptr %i.as, align 4
  %i.at = add nsw i32 %.val3.i.us.us, %.val.i.us.us
  %i.au = getelementptr i8, ptr %.val.us.us, i64 72
  %.val4.i.us.us = load i32, ptr %i.au, align 8
  %i.av = add nsw i32 %i.at, %.val4.i.us.us
  %.val30.us.us53 = load ptr, ptr %i.d, align 8
  %.val30.val.us.us54 = load i32, ptr %.val30.us.us53, align 8
  %.not.i.us.us55 = icmp eq i32 %.val30.val.us.us54, %i.ao
  %i.aw = getelementptr i8, ptr %.022.val.us.us52, i64 24
  %.val8.i.us.us56 = load ptr, ptr %i.aw, align 8
  %.val8.val.i.us.us57 = load i32, ptr %.val8.i.us.us56, align 8 ; 2 uses
  %i.ax = icmp ne i32 %i.av, 1                    ; 2 uses
  br i1 %.not.i.us.us55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.us50
  %i.ay = icmp eq i32 %.val8.val.i.us.us57, %i.ao
  %or.cond67 = select i1 %i.ay, i1 %i.ax, i1 false
  br i1 %or.cond67, label %bb.i, label %clause_LiteralsAreComplementary.exit.thread.us.us59

bb.h:                                             ; preds = %.lr.ph.us50
  %.not1.i.us.us = icmp ne i32 %.val8.val.i.us.us57, %i.ao
  %or.cond = select i1 %.not1.i.us.us, i1 %i.ax, i1 false
  br i1 %or.cond, label %bb.i, label %clause_LiteralsAreComplementary.exit.thread.us.us59

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.az = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.022.val.us.us52, ptr %i.ba, align 8
  store ptr %.110.us.us, ptr %i.az, align 8
  %.pre73 = load i32, ptr @fol_NOT, align 4
  br label %clause_LiteralsAreComplementary.exit.thread.us.us59

clause_LiteralsAreComplementary.exit.thread.us.us59: ; preds = %bb.i, %bb.h, %bb.g
  %i.bb = phi i32 [ %.pre73, %bb.i ], [ %i.ao, %bb.g ], [ %i.ao, %bb.h ]
  %.2.us.us = phi ptr [ %i.az, %bb.i ], [ %.110.us.us, %bb.g ], [ %.110.us.us, %bb.h ] ; 2 uses
  %.022.val27.us.us60 = load ptr, ptr %.0229.us.us51, align 8 ; 2 uses
  %.not4.us.us61 = icmp eq ptr %.022.val27.us.us60, null
  br i1 %.not4.us.us61, label %.loopexit.us48, label %.lr.ph.us50, !llvm.loop !12

._crit_edge:                                      ; preds = %.loopexit.us48, %.loopexit.us, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.3.us, %.loopexit.us ], [ %.3.us45, %.loopexit.us48 ]
  ret ptr %.0.lcssa
}

declare void @term_StartMaxRenaming(i32 noundef) local_unnamed_addr #2

declare ptr @term_Rename(ptr noundef) local_unnamed_addr #2

declare i32 @term_MaxVar(ptr noundef) local_unnamed_addr #2

declare void @cont_Check() local_unnamed_addr #2

declare i32 @unify_UnifyNoOC(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @subst_ExtractUnifier(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @subst_Delete(ptr noundef) local_unnamed_addr #2

declare void @term_Delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @list_PointerDeleteOneElement(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_SearchURResolvents(ptr noundef %0, i32 noundef range(i32 -2147483648, 2147483647) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %.val1.i.i = load ptr, ptr %i.g, align 8        ; 3 uses
  %.val5.val.i.i.i = load i32, ptr %.val1.i.i, align 8
  %i.h = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i = icmp eq i32 %.val5.val.i.i.i, %i.h
  br i1 %.not.i.i.i, label %bb.c, label %clause_GetLiteralAtom.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val1.i.i, i64 16
  %.val6.i.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val6.i.i.i, i64 8
  %.val6.val.i.i.i = load ptr, ptr %i.j, align 8
  br label %clause_GetLiteralAtom.exit.i

clause_GetLiteralAtom.exit.i:                     ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %.val6.val.i.i.i, %bb.c ], [ %.val1.i.i, %bb.b ]
  %i.k = tail call ptr @term_Copy(ptr noundef %.0.i.i.i) #12
  %i.l = tail call ptr @subst_Apply(ptr noundef %4, ptr noundef %i.k) #12
  %i.m = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.n, align 8
  store ptr null, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %0, i64 64
  %.val50.i = load i32, ptr %i.o, align 8         ; 2 uses
  %.not.not.i = icmp slt i32 %1, %.val50.i
  br i1 %.not.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %clause_GetLiteralAtom.exit.i
  %i.p = tail call ptr @clause_Create(ptr noundef nonnull %i.m, ptr noundef null, ptr noundef null, ptr noundef %7, ptr noundef %8) #12
  br label %bb.h

bb.e:                                             ; preds = %clause_GetLiteralAtom.exit.i
  %i.q = add nsw i32 %.val50.i, -1
  %i.r = getelementptr i8, ptr %0, i64 68
  %.val52.i = load i32, ptr %i.r, align 4
  %i.s = add i32 %i.q, %.val52.i
  %.not47.i = icmp sgt i32 %1, %i.s
  br i1 %.not47.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @clause_Create(ptr noundef null, ptr noundef nonnull %i.m, ptr noundef null, ptr noundef %7, ptr noundef %8) #12
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = tail call ptr @clause_Create(ptr noundef null, ptr noundef null, ptr noundef nonnull %i.m, ptr noundef %7, ptr noundef %8) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.045.i = phi ptr [ %i.p, %bb.d ], [ %i.t, %bb.f ], [ %i.u, %bb.g ] ; 11 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.h
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i.i ], [ %i.m, %bb.h ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = load i64, ptr @memory_FREEDBYTES, align 8
  %i.aa = add i64 %i.z, %i.y
  store i64 %i.aa, ptr @memory_FREEDBYTES, align 8
  %i.ab = load ptr, ptr %i.v, align 8
  store ptr %i.ab, ptr %.07.i.i, align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.ac, align 8
  %.not.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i, label %list_Delete.exit.i, label %.lr.ph.i.i, !llvm.loop !10

list_Delete.exit.i:                               ; preds = %.lr.ph.i.i
  %i.ad = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %0, ptr %i.ae, align 8
  store ptr null, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %0, i64 8
  %.val55.i = load i32, ptr %i.af, align 8        ; 2 uses
  %.not82.i = icmp eq ptr %2, null
  br i1 %.not82.i, label %.lr.ph.i68.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %list_Delete.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.045.i, i64 32 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.045.i, i64 40 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %clause_LiteralGetIndex.exit67.i, %.lr.ph.i
  %.085.i = phi i32 [ %.val55.i, %.lr.ph.i ], [ %i.an, %clause_LiteralGetIndex.exit67.i ]
  %.04384.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.ak, %clause_LiteralGetIndex.exit67.i ]
  %.04483.i = phi ptr [ %2, %.lr.ph.i ], [ %.044.val53.i, %clause_LiteralGetIndex.exit67.i ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.04483.i, i64 8  ; 2 uses
  %.044.val49.i = load ptr, ptr %i.ai, align 8
  %.val56.i = load ptr, ptr %.044.val49.i, align 8 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val56.i, i64 16 ; 2 uses
  %.val57.i = load ptr, ptr %i.aj, align 8        ; 3 uses
  %i.ak = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.val57.i, ptr %i.al, align 8
  store ptr %.04384.i, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %.val57.i, i64 8
  %.val54.i = load i32, ptr %i.am, align 8
  %i.an = tail call i32 @misc_Max(i32 noundef %.085.i, i32 noundef %.val54.i) #12 ; 2 uses
  %.val59.i = load i32, ptr %.val57.i, align 8
  %i.ao = sext i32 %.val59.i to i64
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ag, align 8
  %i.ar = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ap, ptr %i.as, align 8
  store ptr %i.aq, ptr %i.ar, align 8
  store ptr %i.ar, ptr %i.ag, align 8
  %.val4.i.i = load ptr, ptr %i.aj, align 8
  %i.at = getelementptr i8, ptr %.val4.i.i, i64 56
  %.val.i.i = load ptr, ptr %i.at, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.av = load ptr, ptr %i.au, align 8
  %.not.i61.i = icmp eq ptr %i.av, %.val56.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %.not.i61.i, label %clause_LiteralGetIndex.exit.i, label %bb.j, !llvm.loop !4

clause_LiteralGetIndex.exit.i:                    ; preds = %bb.j
  %sext.i = shl i64 %indvars.iv.i.i, 32
  %i.aw = ashr exact i64 %sext.i, 32
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.ah, align 8
  %i.az = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ax, ptr %i.ba, align 8
  store ptr %i.ay, ptr %i.az, align 8
  store ptr %i.az, ptr %i.ah, align 8
  %.044.val.i = load ptr, ptr %i.ai, align 8
  %i.bb = getelementptr i8, ptr %.044.val.i, i64 8
  %.val60.i = load ptr, ptr %i.bb, align 8        ; 2 uses
  %.val58.i = load i32, ptr %0, align 8
  %i.bc = sext i32 %.val58.i to i64
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.ag, align 8
  %i.bf = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bd, ptr %i.bg, align 8
  store ptr %i.be, ptr %i.bf, align 8
  store ptr %i.bf, ptr %i.ag, align 8
  %i.bh = getelementptr i8, ptr %.val60.i, i64 16
  %.val4.i62.i = load ptr, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %.val4.i62.i, i64 56
  %.val.i63.i = load ptr, ptr %i.bi, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %clause_LiteralGetIndex.exit.i
  %indvars.iv.i64.i = phi i64 [ %indvars.iv.next.i66.i, %bb.k ], [ 0, %clause_LiteralGetIndex.exit.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val.i63.i, i64 %indvars.iv.i64.i
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not.i65.i = icmp eq ptr %i.bk, %.val60.i
  %indvars.iv.next.i66.i = add nuw nsw i64 %indvars.iv.i64.i, 1
  br i1 %.not.i65.i, label %clause_LiteralGetIndex.exit67.i, label %bb.k, !llvm.loop !4

clause_LiteralGetIndex.exit67.i:                  ; preds = %bb.k
  %sext81.i = shl i64 %indvars.iv.i64.i, 32
  %i.bl = ashr exact i64 %sext81.i, 32
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.ah, align 8
end_hunk_0
