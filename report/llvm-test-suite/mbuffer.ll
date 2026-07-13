inline.NumInlined: 130
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@compare_pic_by_lt_pic_num_asc:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_frame_num_desc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !106
  %i.d = load ptr, ptr %1, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.f, i32 %i.c)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_lt_pic_idx_asc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !155
  %i.d = load ptr, ptr %1, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !155
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_desc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !132
  %i.d = load ptr, ptr %1, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !132
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.f, i32 %i.c)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_asc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !132
  %i.d = load ptr, ptr %1, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !132
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_poc_desc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !143
  %i.d = load ptr, ptr %1, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !143
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.f, i32 %i.c)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_poc_asc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !143
  %i.d = load ptr, ptr %1, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !143
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init_mbaff_lists() local_unnamed_addr #8 {
.preheader30:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 16), align 16, !tbaa !53 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.a, i8 0, i64 264, i1 false), !tbaa !58
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 24), align 8, !tbaa !53 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.b, i8 0, i64 264, i1 false), !tbaa !58
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 32), align 16, !tbaa !53 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.c, i8 0, i64 264, i1 false), !tbaa !58
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 40), align 8, !tbaa !53 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i8 0, i64 264, i1 false), !tbaa !58
  %i.e = load i32, ptr @listXsize, align 16, !tbaa !4 ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader30
  %i.g = load ptr, ptr @listX, align 16, !tbaa !53
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 6536
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  %i.l = shl nuw nsw i64 %indvars.iv, 1           ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l
  store ptr %i.k, ptr %i.m, align 8, !tbaa !58
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 6544
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !157
  %i.q = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.q
  store ptr %i.p, ptr %i.r, align 8, !tbaa !58
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6544
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !157
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.l
  store ptr %i.u, ptr %i.v, align 8, !tbaa !58
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6536
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !156
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.q
  store ptr %i.y, ptr %i.z, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.a, %.preheader30
  %i.aa = shl nsw i32 %i.e, 1                     ; 2 uses
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 16), align 16, !tbaa !4
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 8), align 8, !tbaa !4
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %._crit_edge
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53
  %wide.trip.count46 = zext nneg i32 %i.ab to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph37, %bb.b
  %indvars.iv43 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next44, %bb.b ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv43 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6536
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !156
  %i.ai = shl nuw nsw i64 %indvars.iv43, 1        ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ai
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !58
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 6544
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !157
  %i.an = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.an
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !58
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 6544
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !157
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ai
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !58
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6536
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !156
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.an
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !58
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %._crit_edge38, label %bb.b, !llvm.loop !159

._crit_edge38:                                    ; preds = %bb.b, %._crit_edge
  %i.ax = shl nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 20), align 4, !tbaa !4
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 12), align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @reorder_ref_pic_list(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.b = add i32 %i.a, 4
  %i.c = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !160
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 15332
  %i.h = load i32, ptr %i.g, align 4, !tbaa !105  ; 2 uses
  %i.i = shl i32 %i.h, 1
  %i.j = or disjoint i32 %i.i, 1
  %.pn = select i1 %i.f, i32 1, i32 2
  %.050 = select i1 %i.f, i32 %i.h, i32 %i.j      ; 2 uses
  %.051 = shl i32 %.pn, %i.b                      ; 4 uses
  %i.k = load i32, ptr %3, align 4, !tbaa !4      ; 2 uses
  %.not92 = icmp eq i32 %i.k, 3
  %.pre = add i32 %2, 1                           ; 2 uses
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = sext i32 %.pre to i64                    ; 10 uses
  %i.m = sext i32 %2 to i64                       ; 4 uses
  %6 = add nsw i64 %i.l, -1
  %i.n = add nsw i64 %i.l, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %reorder_short_term.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %reorder_short_term.exit ] ; 15 uses
  %i.o = phi i32 [ %i.k, %.lr.ph ], [ %i.fe, %reorder_short_term.exit ] ; 2 uses
  %.04894 = phi i32 [ %.050, %.lr.ph ], [ %.1, %reorder_short_term.exit ] ; 4 uses
  %i.p = icmp sgt i32 %i.o, 3
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  tail call void @error(ptr noundef nonnull @.str.13, i32 noundef 500) #16
  %.pr = load i32, ptr %i.q, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i32 [ %.pr, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.s = icmp slt i32 %i.r, 2
  br i1 %i.s, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i32 %i.r, 0
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.neg = xor i32 %i.v, -1
  %i.w = add i32 %.04894, %.neg                   ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 %.051, i32 0
  %spec.select = add nsw i32 %i.y, %i.w
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = add i32 %.04894, 1
  %i.aa = add i32 %i.z, %i.v                      ; 2 uses
  %.not58 = icmp slt i32 %i.aa, %.051
  %i.ab = select i1 %.not58, i32 0, i32 %.051
  %spec.select59 = sub nsw i32 %i.aa, %i.ab
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.049 = phi i32 [ %spec.select, %bb.f ], [ %spec.select59, %bb.g ] ; 4 uses
  %i.ac = icmp sgt i32 %.049, %.050
  %i.ad = select i1 %i.ac, i32 %.051, i32 0
  %.047 = sub nsw i32 %.049, %i.ad                ; 4 uses
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24 ; 2 uses
  %.not30.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not30.i.i, label %get_short_term_pic.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.af = load ptr, ptr @img, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !160
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8 ; 2 uses
  %wide.trip.count37.i.i = zext i32 %i.ae to i64  ; 2 uses
  br i1 %i.ai, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.k
  %indvars.iv34.i.i = phi i64 [ %indvars.iv.next35.i.i, %bb.k ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv34.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 3
  br i1 %i.ao, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6376
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !102
  %.not21.us.i.i = icmp eq i32 %i.as, 0
  br i1 %.not21.us.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 6364
  %i.au = load i32, ptr %i.at, align 4, !tbaa !107
  %i.av = icmp eq i32 %i.au, %.047
  br i1 %i.av, label %get_short_term_pic.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.split.us.i.i
  %indvars.iv.next35.i.i = add nuw nsw i64 %indvars.iv34.i.i, 1 ; 2 uses
  %exitcond38.not.i.i = icmp eq i64 %indvars.iv.next35.i.i, %wide.trip.count37.i.i
  br i1 %exitcond38.not.i.i, label %get_short_term_pic.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !161

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.q
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.q ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !55 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !112 ; 2 uses
  %i.ba = and i32 %i.az, 1
  %.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !64 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6376
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !102
  %.not18.i.i = icmp eq i32 %i.be, 0
  br i1 %.not18.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 6364
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !107
  %i.bh = icmp eq i32 %i.bg, %.047
  br i1 %i.bh, label %get_short_term_pic.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.split.i.i
  %i.bi = and i32 %i.az, 2
  %.not19.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not19.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !65 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 6376
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !102
  %.not20.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not20.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 6364
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !107
  %i.bp = icmp eq i32 %i.bo, %.047
  br i1 %i.bp, label %get_short_term_pic.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count37.i.i
  br i1 %exitcond.not.i.i, label %get_short_term_pic.exit.i, label %.lr.ph.split.i.i, !llvm.loop !161

get_short_term_pic.exit.i:                        ; preds = %bb.q, %bb.p, %bb.m, %bb.k, %bb.j, %bb.h
  %.017.i.i = phi ptr [ null, %bb.k ], [ null, %bb.h ], [ %i.aq, %bb.j ], [ %i.bc, %bb.m ], [ null, %bb.q ], [ %i.bk, %bb.p ] ; 2 uses
  %.not43.i = icmp sgt i64 %indvars.iv, %i.m
  br i1 %.not43.i, label %reorder_short_term.exit.sink.split, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %get_short_term_pic.exit.i
  %7 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.n)
  %8 = sub i64 %i.l, %7                           ; 3 uses
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %8, -4                         ; 3 uses
  %i.bq = sub i64 %i.l, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = sub i64 %i.l, %index
  %i.bs = getelementptr [8 x i8], ptr %0, i64 %i.br ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -16
  %i.bu = getelementptr i8, ptr %i.bs, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !58
  %wide.load124 = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !58
  %i.bv = getelementptr i8, ptr %i.bs, i64 -8
  %i.bw = getelementptr i8, ptr %i.bs, i64 -24
  store <2 x ptr> %wide.load, ptr %i.bv, align 8, !tbaa !58
  store <2 x ptr> %wide.load124, ptr %i.bw, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %.lr.ph41.preheader.i, label %.lr.ph.i.preheader139

.lr.ph.i.preheader139:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.l, %.lr.ph.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader139, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader139 ] ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !58
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !58
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cb = icmp sgt i64 %indvars.iv.next.i, %indvars.iv
  br i1 %i.cb, label %.lr.ph.i, label %.lr.ph41.preheader.i, !llvm.loop !163

.lr.ph41.preheader.i:                             ; preds = %.lr.ph.i, %middle.block
  %i.cc = trunc nsw i64 %indvars.iv to i32
  %i.cd = add nuw i32 %i.cc, 1                    ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store ptr %.017.i.i, ptr %i.ce, align 8, !tbaa !58
  %i.cf = sext i32 %i.cd to i64
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %bb.u, %.lr.ph41.preheader.i
  %indvars.iv48.i = phi i64 [ %i.cf, %.lr.ph41.preheader.i ], [ %indvars.iv.next49.i, %bb.u ] ; 3 uses
  %.02738.i = phi i32 [ %i.cd, %.lr.ph41.preheader.i ], [ %.128.i, %bb.u ] ; 4 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv48.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !58 ; 4 uses
  %.not31.i = icmp eq ptr %i.ch, null
  br i1 %.not31.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph41.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 6376
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !102
  %.not32.i = icmp eq i32 %i.cj, 0
  br i1 %.not32.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 6364
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !107
  %.not33.i = icmp eq i32 %i.cl, %.047
  br i1 %.not33.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cm = add nsw i32 %.02738.i, 1
  %i.cn = sext i32 %.02738.i to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cn
  store ptr %i.ch, ptr %i.co, align 8, !tbaa !58
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.lr.ph41.i
  %.128.i = phi i32 [ %i.cm, %bb.t ], [ %.02738.i, %bb.s ], [ %.02738.i, %.lr.ph41.i ]
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, 1
  %.not.i = icmp sgt i64 %indvars.iv48.i, %i.m
  br i1 %.not.i, label %reorder_short_term.exit, label %.lr.ph41.i, !llvm.loop !164

bb.v:                                             ; preds = %bb.d
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4  ; 4 uses
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19 ; 2 uses
  %.not30.i.i60 = icmp eq i32 %i.cr, 0
  br i1 %.not30.i.i60, label %get_long_term_pic.exit.i, label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %bb.v
  %i.cs = load ptr, ptr @img, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !160
  %i.cv = icmp eq i32 %i.cu, 0
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8 ; 2 uses
  %wide.trip.count37.i.i62 = zext i32 %i.cr to i64 ; 2 uses
  br i1 %i.cv, label %.lr.ph.split.us.i.i79, label %.lr.ph.split.i.i63

.lr.ph.split.us.i.i79:                            ; preds = %.lr.ph.i.i61, %bb.y
  %indvars.iv34.i.i80 = phi i64 [ %indvars.iv.next35.i.i81, %bb.y ], [ 0, %.lr.ph.i.i61 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv34.i.i80
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !55 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !112
  %i.db = icmp eq i32 %i.da, 3
  br i1 %i.db, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.split.us.i.i79
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !62 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6376
  %i.df = load i32, ptr %i.de, align 8, !tbaa !102
  %.not21.us.i.i83 = icmp eq i32 %i.df, 0
  br i1 %.not21.us.i.i83, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 6368
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !110
  %i.di = icmp eq i32 %i.dh, %i.cq
  br i1 %i.di, label %get_long_term_pic.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph.split.us.i.i79
  %indvars.iv.next35.i.i81 = add nuw nsw i64 %indvars.iv34.i.i80, 1 ; 2 uses
  %exitcond38.not.i.i82 = icmp eq i64 %indvars.iv.next35.i.i81, %wide.trip.count37.i.i62
  br i1 %exitcond38.not.i.i82, label %get_long_term_pic.exit.i, label %.lr.ph.split.us.i.i79, !llvm.loop !165

.lr.ph.split.i.i63:                               ; preds = %.lr.ph.i.i61, %bb.ae
  %indvars.iv.i.i64 = phi i64 [ %indvars.iv.next.i.i69, %bb.ae ], [ 0, %.lr.ph.i.i61 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i.i64
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !55 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !112 ; 2 uses
  %i.dn = and i32 %i.dm, 1
  %.not.i.i65 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i65, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.i.i63
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !64 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 6376
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !102
  %.not18.i.i66 = icmp eq i32 %i.dr, 0
  br i1 %.not18.i.i66, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 6368
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !110
  %i.du = icmp eq i32 %i.dt, %i.cq
  br i1 %i.du, label %get_long_term_pic.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph.split.i.i63
  %i.dv = and i32 %i.dm, 2
  %.not19.i.i67 = icmp eq i32 %i.dv, 0
  br i1 %.not19.i.i67, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !65 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 6376
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !102
  %.not20.i.i68 = icmp eq i32 %i.dz, 0
  br i1 %.not20.i.i68, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 6368
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !110
  %i.ec = icmp eq i32 %i.eb, %i.cq
  br i1 %i.ec, label %get_long_term_pic.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %indvars.iv.next.i.i69 = add nuw nsw i64 %indvars.iv.i.i64, 1 ; 2 uses
  %exitcond.not.i.i70 = icmp eq i64 %indvars.iv.next.i.i69, %wide.trip.count37.i.i62
  br i1 %exitcond.not.i.i70, label %get_long_term_pic.exit.i, label %.lr.ph.split.i.i63, !llvm.loop !165

get_long_term_pic.exit.i:                         ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.y, %bb.x, %bb.v
  %.017.i.i71 = phi ptr [ null, %bb.y ], [ null, %bb.v ], [ %i.dd, %bb.x ], [ %i.dx, %bb.ad ], [ null, %bb.ae ], [ %i.dp, %bb.aa ] ; 2 uses
  %.not39.i = icmp sgt i64 %indvars.iv, %i.m
  br i1 %.not39.i, label %reorder_short_term.exit.sink.split, label %.lr.ph.i73.preheader

.lr.ph.i73.preheader:                             ; preds = %get_long_term_pic.exit.i
  %9 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %6)
  %10 = sub i64 %i.l, %9                          ; 3 uses
  %min.iters.check127 = icmp ult i64 %10, 4
  br i1 %min.iters.check127, label %.lr.ph.i73.preheader143, label %vector.ph128

vector.ph128:                                     ; preds = %.lr.ph.i73.preheader
  %n.vec130 = and i64 %10, -4                     ; 3 uses
  %i.ed = sub i64 %i.l, %n.vec130
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph128
  %index132 = phi i64 [ 0, %vector.ph128 ], [ %index.next135, %vector.body131 ] ; 2 uses
  %i.ee = sub i64 %i.l, %index132
  %i.ef = getelementptr [8 x i8], ptr %0, i64 %i.ee ; 4 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -16
  %i.eh = getelementptr i8, ptr %i.ef, i64 -32
  %wide.load133.a = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !58
  %wide.load134 = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !58
  %i.ei = getelementptr i8, ptr %i.ef, i64 -8
  %i.ej = getelementptr i8, ptr %i.ef, i64 -24
  store <2 x ptr> %wide.load133.a, ptr %i.ei, align 8, !tbaa !58
  store <2 x ptr> %wide.load134, ptr %i.ej, align 8, !tbaa !58
  %index.next135 = add nuw i64 %index132, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next135, %n.vec130
  br i1 %i.ek, label %middle.block136, label %vector.body131, !llvm.loop !166

middle.block136:                                  ; preds = %vector.body131
  %cmp.n137 = icmp eq i64 %10, %n.vec130
  br i1 %cmp.n137, label %.lr.ph37.preheader.i, label %.lr.ph.i73.preheader143

.lr.ph.i73.preheader143:                          ; preds = %.lr.ph.i73.preheader, %middle.block136
  %indvars.iv.i74.ph = phi i64 [ %i.l, %.lr.ph.i73.preheader ], [ %i.ed, %middle.block136 ]
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.lr.ph.i73.preheader143, %.lr.ph.i73
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i75, %.lr.ph.i73 ], [ %indvars.iv.i74.ph, %.lr.ph.i73.preheader143 ] ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i74 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 -8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !58
  store ptr %i.en, ptr %i.el, align 8, !tbaa !58
  %indvars.iv.next.i75 = add nsw i64 %indvars.iv.i74, -1 ; 2 uses
  %i.eo = icmp sgt i64 %indvars.iv.next.i75, %indvars.iv
  br i1 %i.eo, label %.lr.ph.i73, label %.lr.ph37.preheader.i, !llvm.loop !167

.lr.ph37.preheader.i:                             ; preds = %.lr.ph.i73, %middle.block136
  %i.ep = trunc nsw i64 %indvars.iv to i32
  %i.eq = add nuw i32 %i.ep, 1                    ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store ptr %.017.i.i71, ptr %i.er, align 8, !tbaa !58
  %i.es = sext i32 %i.eq to i64
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.ah, %.lr.ph37.preheader.i
  %indvars.iv44.i = phi i64 [ %i.es, %.lr.ph37.preheader.i ], [ %indvars.iv.next45.i, %bb.ah ] ; 3 uses
  %.02534.i = phi i32 [ %i.eq, %.lr.ph37.preheader.i ], [ %.126.i, %bb.ah ] ; 3 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv44.i
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !58 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 6376
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !102
  %.not28.i = icmp eq i32 %i.ew, 0
  br i1 %.not28.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph37.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 6368
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !110
  %.not29.i = icmp eq i32 %i.ey, %i.cq
  br i1 %.not29.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph37.i
  %i.ez = add nsw i32 %.02534.i, 1
  %i.fa = sext i32 %.02534.i to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fa
  store ptr %i.eu, ptr %i.fb, align 8, !tbaa !58
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.126.i = phi i32 [ %i.ez, %bb.ag ], [ %.02534.i, %bb.af ]
  %indvars.iv.next45.i = add nsw i64 %indvars.iv44.i, 1
  %.not.i76 = icmp sgt i64 %indvars.iv44.i, %i.m
  br i1 %.not.i76, label %reorder_short_term.exit, label %.lr.ph37.i, !llvm.loop !168

reorder_short_term.exit.sink.split:               ; preds = %get_long_term_pic.exit.i, %get_short_term_pic.exit.i
  %.017.i.i71.sink = phi ptr [ %.017.i.i, %get_short_term_pic.exit.i ], [ %.017.i.i71, %get_long_term_pic.exit.i ]
  %.1.ph = phi i32 [ %.049, %get_short_term_pic.exit.i ], [ %.04894, %get_long_term_pic.exit.i ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store ptr %.017.i.i71.sink, ptr %i.fc, align 8, !tbaa !58
  br label %reorder_short_term.exit

reorder_short_term.exit:                          ; preds = %bb.ah, %bb.u, %reorder_short_term.exit.sink.split
  %.1 = phi i32 [ %.1.ph, %reorder_short_term.exit.sink.split ], [ %.049, %bb.u ], [ %.04894, %bb.ah ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !4  ; 2 uses
  %.not = icmp eq i32 %i.fe, 3
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !169

._crit_edge:                                      ; preds = %reorder_short_term.exit, %bb.a
  store i32 %.pre, ptr %1, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @update_ref_list() local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @dpb, align 8, !tbaa !50
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8
  %wide.trip.count = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %is_short_term_reference.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %is_short_term_reference.exit ] ; 2 uses
  %.012 = phi i32 [ 0, %.lr.ph ], [ %.1, %is_short_term_reference.exit ] ; 6 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !103  ; 3 uses
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 6380
  %i.k = load i32, ptr %i.j, align 4, !tbaa !101
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 6376
  %i.m = load i32, ptr %i.l, align 8, !tbaa !102
  %.not13.i = icmp eq i32 %i.m, 0
  br i1 %.not13.i, label %bb.l, label %.thread.i

bb.e:                                             ; preds = %bb.b
  %i.n = and i32 %i.f, 1
  %.not14.i = icmp eq i32 %i.n, 0
  br i1 %.not14.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 3 uses
  %.not15.i = icmp eq ptr %i.p, null
  br i1 %.not15.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 6380
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101
  %.not16.i = icmp eq i32 %i.r, 0
  br i1 %.not16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 6376
  %i.t = load i32, ptr %i.s, align 8, !tbaa !102
  %.not17.i = icmp eq i32 %i.t, 0
  br i1 %.not17.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread.i, %bb.e
  %i.u = and i32 %i.f, 2
  %.not18.i = icmp eq i32 %i.u, 0
  br i1 %.not18.i, label %is_short_term_reference.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65   ; 3 uses
  %.not19.i = icmp eq ptr %i.w, null
  br i1 %.not19.i, label %is_short_term_reference.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6380
  %i.y = load i32, ptr %i.x, align 4, !tbaa !101
  %.not20.i = icmp eq i32 %i.y, 0
  br i1 %.not20.i, label %is_short_term_reference.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 6376
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !102
  %.not21.i = icmp eq i32 %i.aa, 0
  br i1 %.not21.i, label %bb.l, label %is_short_term_reference.exit

bb.l:                                             ; preds = %bb.g, %bb.d, %bb.k
  %i.ab = add i32 %.012, 1
  %i.ac = zext i32 %.012 to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ac
  store ptr %i.e, ptr %i.ad, align 8, !tbaa !55
  br label %is_short_term_reference.exit

is_short_term_reference.exit:                     ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.l
  %.1 = phi i32 [ %i.ab, %bb.l ], [ %.012, %bb.h ], [ %.012, %bb.i ], [ %.012, %bb.j ], [ %.012, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !170

._crit_edge:                                      ; preds = %is_short_term_reference.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %is_short_term_reference.exit ] ; 4 uses
  store i32 %.0.lcssa, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44 ; 2 uses
  %i.af = icmp ult i32 %.0.lcssa, %i.ae
  br i1 %i.af, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %._crit_edge
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %i.ah = zext i32 %.0.lcssa to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %scevgep = getelementptr nuw i8, ptr %i.ag, i64 %i.ai
  %i.aj = xor i32 %.0.lcssa, -1
  %i.ak = add i32 %i.ae, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.an, i1 false), !tbaa !55
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %.lr.ph15, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @update_ltref_list() local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
end_hunk_0
