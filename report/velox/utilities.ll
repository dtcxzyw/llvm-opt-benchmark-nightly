Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/utilities?download=true
inline.NumInlined: 17
inline.NumDeleted: 4
begin_hunk_0_@out_grouping_b:bb.a
  %.not = icmp sgt i64 %indvars.iv.next, %i.y
  br i1 %.not, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %.split, %.split.us, %bb.d, %bb.e
  %.us-phi = phi i32 [ -1, %.split.us ], [ 0, %bb.e ], [ 1, %bb.d ], [ -1, %.split ], [ 1, %bb.h ], [ -1, %bb.i ]
  ret i32 %.us-phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @eq_s(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = icmp slt i32 %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !15
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = sext i32 %1 to i64
  %bcmp = tail call i32 @bcmp(ptr %i.i, ptr %2, i64 %i.j)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.d, %1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @eq_s_b(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = icmp slt i32 %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !15
  %i.h = sext i32 %i.b to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  %bcmp = tail call i32 @bcmp(ptr %i.l, ptr %2, i64 %i.j)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nsw i32 %i.b, %1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @eq_v(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23   ; 3 uses
  %i.g = sub nsw i32 %i.d, %i.f
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %eq_s.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !15
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  %i.l = sext i32 %i.b to i64
  %bcmp.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %1, i64 %i.l)
  %.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i, label %bb.c, label %eq_s.exit

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.f, %i.b
  store i32 %i.m, ptr %i.e, align 8, !tbaa !23
  br label %eq_s.exit

eq_s.exit:                                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @eq_v_b(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = sub nsw i32 %i.d, %i.f
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %eq_s_b.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !15
  %i.j = sext i32 %i.d to i64
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  %i.l = sext i32 %i.b to i64                     ; 2 uses
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %bcmp.i = tail call i32 @bcmp(ptr %i.n, ptr nonnull readonly %1, i64 %i.l)
  %.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i, label %bb.c, label %eq_s_b.exit

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i32 %i.d, %i.b
  store i32 %i.o, ptr %i.c, align 8, !tbaa !23
  br label %eq_s_b.exit

eq_s_b.exit:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @find_among(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  br label %.outer

.outer:                                           ; preds = %.split153, %bb.a
  %.074.ph = phi i32 [ %i.ah, %.split153 ], [ %2, %bb.a ]
  %.072.ph = phi i32 [ %i.ai, %.split153 ], [ 0, %bb.a ]
  %.070.ph = phi i32 [ %i.ag, %.split153 ], [ 0, %bb.a ]
  %.067.ph = phi i32 [ %spec.select, %.split153 ], [ 0, %bb.a ] ; 2 uses
  %.064.ph = phi i32 [ %i.aj, %.split153 ], [ 0, %bb.a ]
  br label %select.unfold

select.unfold:                                    ; preds = %.thread146, %.outer
  %.074 = phi i32 [ %.074.ph, %.outer ], [ %i.ah, %.thread146 ] ; 4 uses
  %.072 = phi i32 [ %.072.ph, %.outer ], [ %i.ai, %.thread146 ] ; 4 uses
  %.070 = phi i32 [ %.070.ph, %.outer ], [ %i.ag, %.thread146 ] ; 5 uses
  %.064 = phi i32 [ %.064.ph, %.outer ], [ %i.aj, %.thread146 ] ; 4 uses
  %i.h = sub nsw i32 %.074, %.064
  %i.i = ashr i32 %i.h, 1
  %i.j = add nsw i32 %i.i, %.064                  ; 6 uses
  %i.k = tail call i32 @llvm.smin.i32(i32 %.072, i32 %.070) ; 2 uses
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [32 x i8], ptr %1, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33   ; 3 uses
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread146

.lr.ph:                                           ; preds = %select.unfold
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = tail call i32 @llvm.smin.i32(i32 %.070, i32 %.072)
  %smin = sext i32 %i.q to i64
  %i.r = sext i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %smin, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %i.s = trunc i64 %indvars.iv to i32
  %i.t = add i32 %i.b, %i.s
  %i.u = icmp eq i32 %i.t, %i.d
  br i1 %i.u, label %.split149.thread.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds i8, ptr %i.g, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i32
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i8 %i.aa to i32
  %i.ac = sub nsw i32 %i.x, %i.ab
  %.fr = freeze i32 %i.ac                         ; 2 uses
  %.not = icmp eq i32 %.fr, 0
  br i1 %.not, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %3 = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %3, label %bb.b, label %.thread146, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.c
  %i.ad = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ae = icmp slt i32 %.fr, 0
  br i1 %i.ae, label %.split149.thread, label %.thread146

.split149.thread.loopexit:                        ; preds = %bb.b
  %i.af = trunc nsw i64 %indvars.iv to i32
  br label %.thread146

.split149.thread:                                 ; preds = %._crit_edge
  br label %.thread146

.thread146:                                       ; preds = %bb.d, %.split149.thread.loopexit, %._crit_edge, %select.unfold, %.split149.thread
  %i.ag = phi i32 [ %.070, %._crit_edge ], [ %i.ad, %.split149.thread ], [ %.070, %select.unfold ], [ %i.af, %.split149.thread.loopexit ], [ %.070, %bb.d ] ; 2 uses
  %i.ah = phi i32 [ %.074, %._crit_edge ], [ %i.j, %.split149.thread ], [ %.074, %select.unfold ], [ %i.j, %.split149.thread.loopexit ], [ %.074, %bb.d ] ; 4 uses
  %i.ai = phi i32 [ %i.ad, %._crit_edge ], [ %.072, %.split149.thread ], [ %i.k, %select.unfold ], [ %.072, %.split149.thread.loopexit ], [ %i.n, %bb.d ] ; 3 uses
  %i.aj = phi i32 [ %i.j, %._crit_edge ], [ %.064, %.split149.thread ], [ %i.j, %select.unfold ], [ %.064, %.split149.thread.loopexit ], [ %i.j, %bb.d ] ; 6 uses
  %i.ak = sub nsw i32 %i.ah, %i.aj
  %i.al = icmp slt i32 %i.ak, 2
  br i1 %i.al, label %.split153, label %select.unfold

.split153:                                        ; preds = %.thread146
  %i.am = icmp slt i32 %i.aj, 1
  %i.an = icmp ne i32 %i.ah, %i.aj
  %or.cond.not = and i1 %i.am, %i.an              ; 2 uses
  %.not81 = icmp eq i32 %.067.ph, 0
  %spec.select = select i1 %or.cond.not, i32 1, i32 %.067.ph
  %spec.select85 = select i1 %or.cond.not, i1 %.not81, i1 false
  br i1 %spec.select85, label %.outer, label %.preheader

.preheader:                                       ; preds = %.split153, %.thread
  %.266 = phi i32 [ %i.az, %.thread ], [ %i.aj, %.split153 ]
  %i.ao = sext i32 %.266 to i64
  %i.ap = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !33 ; 2 uses
  %.not82 = icmp slt i32 %i.ai, %i.aq
  br i1 %.not82, label %.thread, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ar = add nsw i32 %i.aq, %i.b
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = tail call i32 %i.at(ptr noundef nonnull %0) #14
  %i.aw = load i32, ptr %i.ap, align 8, !tbaa !33
  %i.ax = add nsw i32 %i.aw, %i.b
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !23
  %.not83 = icmp eq i32 %i.av, 0
  br i1 %.not83, label %.thread, label %.loopexit.sink.split

.thread:                                          ; preds = %bb.f, %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.preheader

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %.loopexit.sink.split
  %.3 = phi i32 [ %i.bc, %.loopexit.sink.split ], [ 0, %.thread ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define i32 @find_among_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1
  br label %.outer

.outer:                                           ; preds = %.split152, %bb.a
  %.074.ph = phi i32 [ %i.an, %.split152 ], [ %2, %bb.a ]
  %.072.ph = phi i32 [ %i.ao, %.split152 ], [ 0, %bb.a ]
  %.070.ph = phi i32 [ %i.am, %.split152 ], [ 0, %bb.a ]
  %.067.ph = phi i32 [ %spec.select, %.split152 ], [ 0, %bb.a ] ; 2 uses
  %.064.ph = phi i32 [ %i.ap, %.split152 ], [ 0, %bb.a ]
  br label %select.unfold

select.unfold:                                    ; preds = %.thread145, %.outer
  %.074 = phi i32 [ %.074.ph, %.outer ], [ %i.an, %.thread145 ] ; 4 uses
  %.072 = phi i32 [ %.072.ph, %.outer ], [ %i.ao, %.thread145 ] ; 4 uses
  %.070 = phi i32 [ %.070.ph, %.outer ], [ %i.am, %.thread145 ] ; 5 uses
  %.064 = phi i32 [ %.064.ph, %.outer ], [ %i.ap, %.thread145 ] ; 4 uses
  %i.i = sub nsw i32 %.074, %.064
  %i.j = ashr i32 %i.i, 1
  %i.k = add nsw i32 %i.j, %.064                  ; 6 uses
  %i.l = tail call i32 @llvm.smin.i32(i32 %.072, i32 %.070) ; 2 uses
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [32 x i8], ptr %1, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.p = xor i32 %i.l, -1
  %i.q = add i32 %i.o, %i.p                       ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %.lr.ph, label %.thread145

.lr.ph:                                           ; preds = %select.unfold
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = tail call i32 @llvm.smin.i32(i32 %.070, i32 %.072)
  %smin = sext i32 %i.t to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %smin, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.06089 = phi i32 [ %i.q, %.lr.ph ], [ %i.ah, %bb.d ] ; 3 uses
  %i.u = trunc i64 %indvars.iv to i32
  %i.v = sub i32 %i.b, %i.u
  %i.w = icmp eq i32 %i.v, %i.d
  br i1 %i.w, label %.split148.thread.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = sub nsw i64 0, %indvars.iv
  %i.y = getelementptr inbounds i8, ptr %i.h, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  %i.aa = zext i8 %i.z to i32
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.ac = zext nneg i32 %.06089 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = zext i8 %i.ae to i32
  %i.ag = sub nsw i32 %i.aa, %i.af
  %.fr = freeze i32 %i.ag                         ; 2 uses
  %.not = icmp eq i32 %.fr, 0
  br i1 %.not, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ah = add nsw i32 %.06089, -1
  %i.ai = icmp sgt i32 %.06089, 0
  br i1 %i.ai, label %bb.b, label %.thread145, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.c
  %i.aj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ak = icmp slt i32 %.fr, 0
  br i1 %i.ak, label %.split148.thread, label %.thread145

.split148.thread.loopexit:                        ; preds = %bb.b
  %i.al = trunc nsw i64 %indvars.iv to i32
  br label %.thread145

.split148.thread:                                 ; preds = %._crit_edge
  br label %.thread145

.thread145:                                       ; preds = %bb.d, %.split148.thread.loopexit, %._crit_edge, %select.unfold, %.split148.thread
  %i.am = phi i32 [ %.070, %._crit_edge ], [ %i.aj, %.split148.thread ], [ %.070, %select.unfold ], [ %i.al, %.split148.thread.loopexit ], [ %.070, %bb.d ] ; 2 uses
  %i.an = phi i32 [ %.074, %._crit_edge ], [ %i.k, %.split148.thread ], [ %.074, %select.unfold ], [ %i.k, %.split148.thread.loopexit ], [ %.074, %bb.d ] ; 4 uses
  %i.ao = phi i32 [ %i.aj, %._crit_edge ], [ %.072, %.split148.thread ], [ %i.l, %select.unfold ], [ %.072, %.split148.thread.loopexit ], [ %i.o, %bb.d ] ; 3 uses
  %i.ap = phi i32 [ %i.k, %._crit_edge ], [ %.064, %.split148.thread ], [ %i.k, %select.unfold ], [ %.064, %.split148.thread.loopexit ], [ %i.k, %bb.d ] ; 6 uses
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = icmp slt i32 %i.aq, 2
  br i1 %i.ar, label %.split152, label %select.unfold

.split152:                                        ; preds = %.thread145
  %i.as = icmp slt i32 %i.ap, 1
  %i.at = icmp ne i32 %i.an, %i.ap
  %or.cond.not = and i1 %i.as, %i.at              ; 2 uses
  %.not81 = icmp eq i32 %.067.ph, 0
  %spec.select = select i1 %or.cond.not, i32 1, i32 %.067.ph
  %spec.select85 = select i1 %or.cond.not, i1 %.not81, i1 false
  br i1 %spec.select85, label %.outer, label %.preheader

.preheader:                                       ; preds = %.split152, %.thread
  %.266 = phi i32 [ %i.bf, %.thread ], [ %i.ap, %.split152 ]
  %i.au = sext i32 %.266 to i64
  %i.av = getelementptr inbounds [32 x i8], ptr %1, i64 %i.au ; 5 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !33 ; 2 uses
  %.not82 = icmp slt i32 %i.ao, %i.aw
  br i1 %.not82, label %.thread, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ax = sub nsw i32 %i.b, %i.aw
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = tail call i32 %i.az(ptr noundef nonnull %0) #14
  %i.bc = load i32, ptr %i.av, align 8, !tbaa !33
  %i.bd = sub nsw i32 %i.b, %i.bc
  store i32 %i.bd, ptr %i.a, align 8, !tbaa !23
  %.not83 = icmp eq i32 %i.bb, 0
  br i1 %.not83, label %.thread, label %.loopexit.sink.split

.thread:                                          ; preds = %bb.f, %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 16
end_hunk_0
