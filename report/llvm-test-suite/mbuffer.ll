inline.NumInlined: 130
inline.NumDeleted: 29
begin_hunk_0_@compare_fs_by_frame_num_desc:bb.a
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
  %.pre106 = add i32 %2, 1                        ; 2 uses
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = sext i32 %.pre106 to i64                 ; 9 uses
  %i.m = sext i32 %2 to i64                       ; 4 uses
  %i.n = add nsw i64 %i.l, -1                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %reorder_short_term.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %reorder_short_term.exit ] ; 16 uses
  %i.o = phi i32 [ %i.k, %.lr.ph ], [ %i.ey, %reorder_short_term.exit ] ; 2 uses
  %6 = phi ptr [ %3, %.lr.ph ], [ %i.ex, %reorder_short_term.exit ]
  %.04894 = phi i32 [ %.050, %.lr.ph ], [ %.1, %reorder_short_term.exit ] ; 4 uses
  %smin127 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.n)
  %i.p = sub i64 %i.l, %smin127                   ; 3 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.n)
  %i.q = sub i64 %i.l, %smin                      ; 3 uses
  %i.r = icmp sgt i32 %i.o, 3
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @error(ptr noundef nonnull @.str.13, i32 noundef 500) #16
  %.pr = load i32, ptr %6, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %.pr, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.t = icmp slt i32 %i.s, 2
  br i1 %i.t, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.s, 0
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.neg = xor i32 %i.w, -1
  %i.x = add i32 %.04894, %.neg                   ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  %i.z = select i1 %i.y, i32 %.051, i32 0
  %spec.select = add nsw i32 %i.z, %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = add i32 %.04894, 1
  %i.ab = add i32 %i.aa, %i.w                     ; 2 uses
  %.not58 = icmp slt i32 %i.ab, %.051
  %i.ac = select i1 %.not58, i32 0, i32 %.051
  %spec.select59 = sub nsw i32 %i.ab, %i.ac
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.049 = phi i32 [ %spec.select, %bb.f ], [ %spec.select59, %bb.g ] ; 4 uses
  %i.ad = icmp sgt i32 %.049, %.050
  %i.ae = select i1 %i.ad, i32 %.051, i32 0
  %.047 = sub nsw i32 %.049, %i.ae                ; 4 uses
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24 ; 2 uses
  %.not30.i.i = icmp eq i32 %i.af, 0
  br i1 %.not30.i.i, label %get_short_term_pic.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ag = load ptr, ptr @img, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !160
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8 ; 2 uses
  %wide.trip.count37.i.i = zext i32 %i.af to i64  ; 2 uses
  br i1 %i.aj, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.k
  %indvars.iv34.i.i = phi i64 [ %indvars.iv.next35.i.i, %bb.k ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv34.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !112
  %i.ap = icmp eq i32 %i.ao, 3
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.split.us.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 6376
  %i.at = load i32, ptr %i.as, align 8, !tbaa !102
  %.not21.us.i.i = icmp eq i32 %i.at, 0
  br i1 %.not21.us.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 6364
  %i.av = load i32, ptr %i.au, align 4, !tbaa !107
  %i.aw = icmp eq i32 %i.av, %.047
  br i1 %i.aw, label %get_short_term_pic.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.split.us.i.i
  %indvars.iv.next35.i.i = add nuw nsw i64 %indvars.iv34.i.i, 1 ; 2 uses
  %exitcond38.not.i.i = icmp eq i64 %indvars.iv.next35.i.i, %wide.trip.count37.i.i
  br i1 %exitcond38.not.i.i, label %get_short_term_pic.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !161

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.q
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.q ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !112 ; 2 uses
  %i.bb = and i32 %i.ba, 1
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6376
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !102
  %.not18.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not18.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 6364
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !107
  %i.bi = icmp eq i32 %i.bh, %.047
  br i1 %i.bi, label %get_short_term_pic.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.split.i.i
  %i.bj = and i32 %i.ba, 2
  %.not19.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not19.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !65 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 6376
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !102
  %.not20.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not20.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 6364
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !107
  %i.bq = icmp eq i32 %i.bp, %.047
  br i1 %i.bq, label %get_short_term_pic.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count37.i.i
  br i1 %exitcond.not.i.i, label %get_short_term_pic.exit.i, label %.lr.ph.split.i.i, !llvm.loop !161

get_short_term_pic.exit.i:                        ; preds = %bb.q, %bb.p, %bb.m, %bb.k, %bb.j, %bb.h
  %.017.i.i = phi ptr [ null, %bb.k ], [ null, %bb.h ], [ %i.ar, %bb.j ], [ %i.bd, %bb.m ], [ null, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %.not43.i = icmp sgt i64 %indvars.iv, %i.m
  br i1 %.not43.i, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %get_short_term_pic.exit.i
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader141, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  %i.br = sub i64 %i.l, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = sub i64 %i.l, %index
  %i.bt = getelementptr [8 x i8], ptr %0, i64 %i.bs ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -16
  %i.bv = getelementptr i8, ptr %i.bt, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !58
  %wide.load126 = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !58
  %i.bw = getelementptr i8, ptr %i.bt, i64 -8
  %i.bx = getelementptr i8, ptr %i.bt, i64 -24
  store <2 x ptr> %wide.load, ptr %i.bw, align 8, !tbaa !58
  store <2 x ptr> %wide.load126, ptr %i.bx, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.lr.ph41.preheader.i, label %.lr.ph.i.preheader141

.lr.ph.i.preheader141:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.l, %.lr.ph.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %get_short_term_pic.exit.i
  %7 = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv
  store ptr %.017.i.i, ptr %7, align 8, !tbaa !58
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %reorder_short_term.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader141, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader141 ] ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !58
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !58
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cc = icmp sgt i64 %indvars.iv.next.i, %indvars.iv
  br i1 %i.cc, label %.lr.ph.i, label %.lr.ph41.preheader.i, !llvm.loop !163

.lr.ph41.preheader.i:                             ; preds = %.lr.ph.i, %middle.block
  %8 = add nuw nsw i64 %indvars.iv, 1             ; 3 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv
  store ptr %.017.i.i, ptr %i.cd, align 8, !tbaa !58
  %9 = trunc nuw i64 %8 to i32
  %sext115 = shl i64 %8, 32
  %10 = ashr exact i64 %sext115, 32
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %bb.u, %.lr.ph41.preheader.i
  %indvars.iv48.i = phi i64 [ %10, %.lr.ph41.preheader.i ], [ %indvars.iv.next49.i, %bb.u ] ; 3 uses
  %.02738.i = phi i32 [ %9, %.lr.ph41.preheader.i ], [ %.128.i, %bb.u ] ; 4 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv48.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !58 ; 4 uses
  %.not31.i = icmp eq ptr %i.cf, null
  br i1 %.not31.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph41.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 6376
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !102
  %.not32.i = icmp eq i32 %i.ch, 0
  br i1 %.not32.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 6364
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !107
  %.not33.i = icmp eq i32 %i.cj, %.047
  br i1 %.not33.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ck = add nsw i32 %.02738.i, 1
  %i.cl = sext i32 %.02738.i to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cl
  store ptr %i.cf, ptr %i.cm, align 8, !tbaa !58
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.lr.ph41.i
  %.128.i = phi i32 [ %i.ck, %bb.t ], [ %.02738.i, %bb.s ], [ %.02738.i, %.lr.ph41.i ]
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, 1
  %.not.i = icmp sgt i64 %indvars.iv48.i, %i.m
  br i1 %.not.i, label %reorder_short_term.exit, label %.lr.ph41.i, !llvm.loop !164

bb.v:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4  ; 4 uses
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19 ; 2 uses
  %.not30.i.i60 = icmp eq i32 %i.cp, 0
  br i1 %.not30.i.i60, label %get_long_term_pic.exit.i, label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %bb.v
  %i.cq = load ptr, ptr @img, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !160
  %i.ct = icmp eq i32 %i.cs, 0
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8 ; 2 uses
  %wide.trip.count37.i.i62 = zext i32 %i.cp to i64 ; 2 uses
  br i1 %i.ct, label %.lr.ph.split.us.i.i79, label %.lr.ph.split.i.i63

.lr.ph.split.us.i.i79:                            ; preds = %.lr.ph.i.i61, %bb.y
  %indvars.iv34.i.i80 = phi i64 [ %indvars.iv.next35.i.i81, %bb.y ], [ 0, %.lr.ph.i.i61 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv34.i.i80
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !55 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !112
  %i.cz = icmp eq i32 %i.cy, 3
  br i1 %i.cz, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.split.us.i.i79
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !62 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 6376
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !102
  %.not21.us.i.i83 = icmp eq i32 %i.dd, 0
  br i1 %.not21.us.i.i83, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 6368
  %i.df = load i32, ptr %i.de, align 8, !tbaa !110
  %i.dg = icmp eq i32 %i.df, %i.co
  br i1 %i.dg, label %get_long_term_pic.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph.split.us.i.i79
  %indvars.iv.next35.i.i81 = add nuw nsw i64 %indvars.iv34.i.i80, 1 ; 2 uses
  %exitcond38.not.i.i82 = icmp eq i64 %indvars.iv.next35.i.i81, %wide.trip.count37.i.i62
  br i1 %exitcond38.not.i.i82, label %get_long_term_pic.exit.i, label %.lr.ph.split.us.i.i79, !llvm.loop !165

.lr.ph.split.i.i63:                               ; preds = %.lr.ph.i.i61, %bb.ae
  %indvars.iv.i.i64 = phi i64 [ %indvars.iv.next.i.i69, %bb.ae ], [ 0, %.lr.ph.i.i61 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i.i64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !55 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !112 ; 2 uses
  %i.dl = and i32 %i.dk, 1
  %.not.i.i65 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i65, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.i.i63
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !64 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 6376
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !102
  %.not18.i.i66 = icmp eq i32 %i.dp, 0
  br i1 %.not18.i.i66, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 6368
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !110
  %i.ds = icmp eq i32 %i.dr, %i.co
  br i1 %i.ds, label %get_long_term_pic.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph.split.i.i63
  %i.dt = and i32 %i.dk, 2
  %.not19.i.i67 = icmp eq i32 %i.dt, 0
  br i1 %.not19.i.i67, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !65 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 6376
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !102
  %.not20.i.i68 = icmp eq i32 %i.dx, 0
  br i1 %.not20.i.i68, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 6368
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !110
  %i.ea = icmp eq i32 %i.dz, %i.co
  br i1 %i.ea, label %get_long_term_pic.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %indvars.iv.next.i.i69 = add nuw nsw i64 %indvars.iv.i.i64, 1 ; 2 uses
  %exitcond.not.i.i70 = icmp eq i64 %indvars.iv.next.i.i69, %wide.trip.count37.i.i62
  br i1 %exitcond.not.i.i70, label %get_long_term_pic.exit.i, label %.lr.ph.split.i.i63, !llvm.loop !165

get_long_term_pic.exit.i:                         ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.y, %bb.x, %bb.v
  %.017.i.i71 = phi ptr [ null, %bb.y ], [ null, %bb.v ], [ %i.db, %bb.x ], [ %i.dv, %bb.ad ], [ null, %bb.ae ], [ %i.dn, %bb.aa ] ; 2 uses
  %.not39.i = icmp sgt i64 %indvars.iv, %i.m
  br i1 %.not39.i, label %._crit_edge.thread.i77, label %.lr.ph.i73.preheader

.lr.ph.i73.preheader:                             ; preds = %get_long_term_pic.exit.i
  %min.iters.check129 = icmp ult i64 %i.p, 4
  br i1 %min.iters.check129, label %.lr.ph.i73.preheader145, label %vector.ph130

vector.ph130:                                     ; preds = %.lr.ph.i73.preheader
  %n.vec132 = and i64 %i.p, -4                    ; 3 uses
  %i.eb = sub i64 %i.l, %n.vec132
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph130
  %index134 = phi i64 [ 0, %vector.ph130 ], [ %index.next137, %vector.body133 ] ; 2 uses
  %i.ec = sub i64 %i.l, %index134
  %i.ed = getelementptr [8 x i8], ptr %0, i64 %i.ec ; 4 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 -16
  %i.ef = getelementptr i8, ptr %i.ed, i64 -32
  %wide.load135 = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !58
  %wide.load136 = load <2 x ptr>, ptr %i.ef, align 8, !tbaa !58
  %i.eg = getelementptr i8, ptr %i.ed, i64 -8
  %i.eh = getelementptr i8, ptr %i.ed, i64 -24
  store <2 x ptr> %wide.load135, ptr %i.eg, align 8, !tbaa !58
  store <2 x ptr> %wide.load136, ptr %i.eh, align 8, !tbaa !58
  %index.next137 = add nuw i64 %index134, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.ei, label %middle.block138, label %vector.body133, !llvm.loop !166

middle.block138:                                  ; preds = %vector.body133
  %cmp.n139 = icmp eq i64 %i.p, %n.vec132
  br i1 %cmp.n139, label %.lr.ph37.preheader.i, label %.lr.ph.i73.preheader145

.lr.ph.i73.preheader145:                          ; preds = %.lr.ph.i73.preheader, %middle.block138
  %indvars.iv.i74.ph = phi i64 [ %i.l, %.lr.ph.i73.preheader ], [ %i.eb, %middle.block138 ]
  br label %.lr.ph.i73

._crit_edge.thread.i77:                           ; preds = %get_long_term_pic.exit.i
  %11 = add nuw i64 %indvars.iv, 1
  %12 = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv
  store ptr %.017.i.i71, ptr %12, align 8, !tbaa !58
  br label %reorder_short_term.exit

.lr.ph.i73:                                       ; preds = %.lr.ph.i73.preheader145, %.lr.ph.i73
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i75, %.lr.ph.i73 ], [ %indvars.iv.i74.ph, %.lr.ph.i73.preheader145 ] ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i74 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 -8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !58
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !58
  %indvars.iv.next.i75 = add nsw i64 %indvars.iv.i74, -1 ; 2 uses
  %i.em = icmp sgt i64 %indvars.iv.next.i75, %indvars.iv
  br i1 %i.em, label %.lr.ph.i73, label %.lr.ph37.preheader.i, !llvm.loop !167

.lr.ph37.preheader.i:                             ; preds = %.lr.ph.i73, %middle.block138
  %13 = add nuw nsw i64 %indvars.iv, 1            ; 3 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv
  store ptr %.017.i.i71, ptr %i.en, align 8, !tbaa !58
  %14 = trunc nuw i64 %13 to i32
  %sext = shl i64 %13, 32
  %15 = ashr exact i64 %sext, 32
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.ah, %.lr.ph37.preheader.i
  %indvars.iv44.i = phi i64 [ %15, %.lr.ph37.preheader.i ], [ %indvars.iv.next45.i, %bb.ah ] ; 3 uses
  %.02534.i = phi i32 [ %14, %.lr.ph37.preheader.i ], [ %.126.i, %bb.ah ] ; 3 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv44.i
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !58 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 6376
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !102
  %.not28.i = icmp eq i32 %i.er, 0
  br i1 %.not28.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph37.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 6368
  %i.et = load i32, ptr %i.es, align 8, !tbaa !110
  %.not29.i = icmp eq i32 %i.et, %i.co
  br i1 %.not29.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph37.i
  %i.eu = add nsw i32 %.02534.i, 1
  %i.ev = sext i32 %.02534.i to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ev
  store ptr %i.ep, ptr %i.ew, align 8, !tbaa !58
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.126.i = phi i32 [ %i.eu, %bb.ag ], [ %.02534.i, %bb.af ]
  %indvars.iv.next45.i = add nsw i64 %indvars.iv44.i, 1
  %.not.i76 = icmp sgt i64 %indvars.iv44.i, %i.m
  br i1 %.not.i76, label %reorder_short_term.exit, label %.lr.ph37.i, !llvm.loop !168

reorder_short_term.exit:                          ; preds = %bb.ah, %bb.u, %._crit_edge.thread.i77, %._crit_edge.thread.i
  %indvars.iv.next.pre-phi = phi i64 [ %8, %bb.u ], [ %.pre, %._crit_edge.thread.i ], [ %11, %._crit_edge.thread.i77 ], [ %13, %bb.ah ] ; 2 uses
  %.1 = phi i32 [ %.049, %bb.u ], [ %.049, %._crit_edge.thread.i ], [ %.04894, %._crit_edge.thread.i77 ], [ %.04894, %bb.ah ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.pre-phi ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4  ; 2 uses
  %.not = icmp eq i32 %i.ey, 3
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !169

._crit_edge:                                      ; preds = %reorder_short_term.exit, %bb.a
  store i32 %.pre106, ptr %1, align 4, !tbaa !4
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
  %i.b = load ptr, ptr @dpb, align 8, !tbaa !50
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8
  %wide.trip.count = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %is_long_term_reference.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %is_long_term_reference.exit ] ; 2 uses
  %.012 = phi i32 [ 0, %.lr.ph ], [ %.1, %is_long_term_reference.exit ] ; 6 uses
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
  br i1 %.not13.i, label %.thread.i, label %bb.l

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
  br i1 %.not17.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread.i, %bb.e
  %i.u = and i32 %i.f, 2
  %.not18.i = icmp eq i32 %i.u, 0
  br i1 %.not18.i, label %is_long_term_reference.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65   ; 3 uses
  %.not19.i = icmp eq ptr %i.w, null
  br i1 %.not19.i, label %is_long_term_reference.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6380
end_hunk_0
