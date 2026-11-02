Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/readline?download=true
inline.NumInlined: 33
inline.NumDeleted: 20
begin_hunk_0_@term_return:bb.a

.loopexit63.i:                                    ; preds = %.loopexit63.loopexit.i, %..loopexit63_crit_edge.i
  %.pre-phi75.i = phi i64 [ %i.x, %..loopexit63_crit_edge.i ], [ %.pre74.i, %.loopexit63.loopexit.i ]
  %.pre-phi.i = phi i64 [ %i.s, %..loopexit63_crit_edge.i ], [ %i.ae, %.loopexit63.loopexit.i ]
  %i.ak = phi i32 [ %.pre.i, %..loopexit63_crit_edge.i ], [ %i.z, %.loopexit63.loopexit.i ]
  %i.al = phi ptr [ %i.r, %..loopexit63_crit_edge.i ], [ %i.ac, %.loopexit63.loopexit.i ]
  %.1.i = phi i32 [ %i.p, %..loopexit63_crit_edge.i ], [ %.05367.i, %.loopexit63.loopexit.i ]
  %.0.i = phi i32 [ %i.n, %..loopexit63_crit_edge.i ], [ %i.ai, %.loopexit63.loopexit.i ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %.pre-phi.i ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %.pre-phi75.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = add i32 %.1.i, %.0.i
  %i.aq = sub i32 %i.ak, %i.ap
  %i.ar = sext i32 %i.aq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.an, i64 %i.ar, i1 false)
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !27
  %i.at = sub nsw i32 %i.as, %.0.i                ; 2 uses
  store i32 %i.at, ptr %i.ao, align 8, !tbaa !27
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = add nsw i32 %i.ai, %.05367.i            ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.z
  br i1 %i.av, label %bb.g, label %.loopexit.i, !llvm.loop !51

.loopexit.i:                                      ; preds = %bb.i, %.loopexit63.i, %bb.f
  %i.aw = phi i32 [ %i.at, %.loopexit63.i ], [ %i.z, %bb.f ], [ %i.z, %bb.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !53 ; 2 uses
  %.not62.i = icmp sgt i32 %i.n, %i.ay
  br i1 %.not62.i, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ba = add nsw i32 %i.aw, %i.n
  %i.bb = icmp sgt i32 %i.ba, %i.ay
  br i1 %i.bb, label %.lr.ph68.i, label %._crit_edge.i

.lr.ph68.i:                                       ; preds = %.preheader.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph68.i
  %i.bd = phi i32 [ %i.aw, %.lr.ph68.i ], [ %i.bn, %bb.j ]
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 3 uses
  %i.bf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #13
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add i32 %i.bg, 1                        ; 3 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %i.bi
  %i.bk = sub nsw i32 %i.bd, %i.bh
  %i.bl = sext i32 %i.bk to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull align 1 %i.bj, i64 %i.bl, i1 false)
  %i.bm = load i32, ptr %i.az, align 8, !tbaa !27
  %i.bn = sub nsw i32 %i.bm, %i.bh                ; 4 uses
  store i32 %i.bn, ptr %i.az, align 8, !tbaa !27
  %i.bo = add nsw i32 %i.bn, %i.n
  %i.bp = load i32, ptr %i.ax, align 8, !tbaa !53
  %i.bq = icmp sgt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.j, label %._crit_edge.i, !llvm.loop !52

._crit_edge.i:                                    ; preds = %bb.j, %.preheader.i
  %.lcssa.i = phi i32 [ %i.aw, %.preheader.i ], [ %i.bn, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !26
  %i.bt = sext i32 %.lcssa.i to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 %i.bt
  %i.bv = sext i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull readonly align 1 %i.i, i64 %i.bv, i1 false)
  %i.bw = load i32, ptr %i.az, align 8, !tbaa !27
  %i.bx = add nsw i32 %i.bw, %i.n
  store i32 %i.bx, ptr %i.az, align 8, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.loopexit.i
  store i32 -1, ptr %i.o, align 4, !tbaa !25
  br label %term_hist_add.exit

term_hist_add.exit:                               ; preds = %bb.k, %bb.b, %bb.a
  %i.by = load i32, ptr %i.c, align 4, !tbaa !18
  store i32 %i.by, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @term_kill_region(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.a) ; 5 uses
  %.36 = tail call i32 @llvm.smax.i32(i32 %1, i32 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 2 uses
  %.1 = tail call i32 @llvm.smin.i32(i32 %.36, i32 %i.c) ; 4 uses
  %i.d = icmp slt i32 %., %.1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 %.1, %.                      ; 3 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre37 = sext i32 %. to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = sext i32 %. to i64                       ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  %i.l = sext i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.k, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.e, ptr %i.m, align 8, !tbaa !20
  %.pre = load i32, ptr %i.b, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre37, %._crit_edge ], [ %i.j, %bb.c ]
  %i.n = phi i32 [ %i.c, %._crit_edge ], [ %.pre, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.pre-phi
  %i.r = sext i32 %.1 to i64
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  %i.t = sub nsw i32 %i.n, %.1
  %i.u = sext i32 %i.t to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.s, i64 %i.u, i1 false)
  %i.v = load i32, ptr %i.b, align 4, !tbaa !18
  %i.w = sub nsw i32 %i.v, %i.e
  store i32 %i.w, ptr %i.b, align 4, !tbaa !18
  store i32 %., ptr %0, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.x, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @term_kill_word_backward(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @skip_word_backward(ptr noundef %0) #12
  tail call fastcc void @term_kill_region(ptr noundef %0, i32 noundef %i.a, i32 noundef 1) #12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @term_insert_char(ptr nofree noundef captures(none) %0, i32 noundef range(i32 32, -2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %1 to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !23
  br label %unicode_to_utf8.exit

bb.c:                                             ; preds = %bb.a
  %i.d = call i64 @__unicode_to_utf8(ptr noundef nonnull %i.a, i32 noundef range(i32 32, -2147483648) %1) #11
  %i.e = trunc i64 %i.d to i32
  br label %unicode_to_utf8.exit

unicode_to_utf8.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.b ], [ %i.e, %bb.c ]
  call fastcc void @term_insert_region(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.0.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @term_up_char(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  store i32 %i.e, ptr %i.a, align 4, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %smin = tail call i32 @llvm.smin.i32(i32 %i.f, i32 1)
  %i.i = add i32 %smin, -1                        ; 2 uses
  %.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !26 ; 2 uses
  %i.j = icmp sgt i32 %i.f, 1
  br i1 %i.j, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %1 = zext nneg i32 %i.f to i64
  br label %.lr.ph.a

bb.d:                                             ; preds = %.lr.ph.a
  %i.k = icmp sgt i32 %indvars.le, 1
  br i1 %i.k, label %.lr.ph.a, label %.critedge, !llvm.loop !54

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.d
  %indvars.iv16 = phi i64 [ %1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv16, -1 ; 2 uses
  %i.l = getelementptr i8, ptr %.pre.pre, i64 %indvars.iv16
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !23
  %.not = icmp eq i8 %i.n, 0
  %indvars.le = trunc i64 %indvars.iv.next to i32 ; 2 uses
  br i1 %.not, label %.critedge, label %bb.d, !llvm.loop !54

.critedge:                                        ; preds = %bb.d, %.lr.ph.a, %.preheader
  %.0.lcssa = phi i32 [ %i.i, %.preheader ], [ %i.i, %bb.d ], [ %indvars.le, %.lr.ph.a ] ; 2 uses
  store i32 %.0.lcssa, ptr %i.a, align 4, !tbaa !25
  %i.o = sext i32 %.0.lcssa to i64
  %i.p = getelementptr inbounds i8, ptr %.pre.pre, i64 %i.o ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #13 ; 2 uses
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %sext.i = shl i64 %i.q, 32
  %i.u = ashr exact i64 %sext.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.p, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.r, ptr %i.v, align 4, !tbaa !18
  store i32 %i.r, ptr %0, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.w, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @term_forward_char(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load i32, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = sext i32 %i.b to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %utf8_get.exit, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @__utf8_get(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a) #11 ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !32
  %.pre5 = load i32, ptr %0, align 8, !tbaa !17
  %i.m = trunc i64 %.pre to i32
  br label %utf8_get.exit

utf8_get.exit:                                    ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %.pre5, %bb.c ], [ %i.b, %bb.b ]
  %i.o = phi i32 [ %i.m, %bb.c ], [ 1, %bb.b ]
  %i.p = add i32 %i.n, %i.o
  store i32 %i.p, ptr %0, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %utf8_get.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: optsize
declare i32 @__utf8_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @skip_word_backward(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #15
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %1 = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %2
  %indvars.iv = phi i64 [ %1, %.lr.ph ], [ %indvars.iv.next, %2 ] ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !23
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !39
  %i.m = and i16 %i.l, 8192
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.c, label %2

2:                                                ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %3 = icmp sgt i64 %indvars.iv, 1
  br i1 %3, label %bb.b, label %.critedge2, !llvm.loop !55

bb.c:                                             ; preds = %bb.b
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = icmp sgt i64 %indvars.iv, 0
  br i1 %i.n, label %.lr.ph16, label %.critedge2

.lr.ph16:                                         ; preds = %bb.c
  %i.o = tail call ptr @__ctype_b_loc() #15
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph16, %bb.e
  %indvars.iv21 = phi i64 [ %indvars.iv, %.lr.ph16 ], [ %indvars.iv.next22, %bb.e ] ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %indvars.iv21
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !39
  %i.y = and i16 %i.x, 8192
  %.not11 = icmp eq i16 %i.y, 0
  br i1 %.not11, label %bb.e, label %.critedge2.loopexit.split.loop.exit27

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, -1
  %i.z = icmp sgt i64 %indvars.iv21, 1
  br i1 %i.z, label %bb.d, label %.critedge2, !llvm.loop !56

.critedge2.loopexit.split.loop.exit27:            ; preds = %bb.d
  %5 = trunc nuw nsw i64 %indvars.iv21 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %2, %bb.e, %.critedge2.loopexit.split.loop.exit27, %bb.a, %bb.c
  %.1.lcssa = phi i32 [ %4, %bb.c ], [ 0, %bb.e ], [ %i.a, %bb.a ], [ %5, %.critedge2.loopexit.split.loop.exit27 ], [ 0, %2 ]
  ret i32 %.1.lcssa
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @term_insert_region(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.b = add nsw i32 %i.a, %2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %i.h = sub nsw i32 %i.g, %i.a                   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = sext i32 %i.a to i64
  %.pre21 = sext i32 %2 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = sext i32 %i.a to i64                     ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = sext i32 %2 to i64                       ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = zext nneg i32 %i.h to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.m, i64 %i.p, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi22 = phi i64 [ %.pre21, %._crit_edge ], [ %i.n, %bb.c ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.pre-phi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %1, i64 %.pre-phi22, i1 false)
  %i.t = load <2 x i32>, ptr %0, align 8, !tbaa !24
  %i.u = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.v = shufflevector <2 x i32> %i.u, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.w = add nsw <2 x i32> %i.t, %i.v
  store <2 x i32> %i.w, ptr %0, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.x, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: optsize
declare i64 @__unicode_to_utf8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @skip_word_forward(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = tail call ptr @__ctype_b_loc() #15
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = sext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !39
  %i.o = and i16 %i.n, 8192
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge2, label %bb.b, !llvm.loop !58

.critedge.loopexit:                               ; preds = %bb.b
  %i.p = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.p, %.critedge.loopexit ] ; 3 uses
  %i.q = icmp slt i32 %.0.lcssa, %i.c
  br i1 %i.q, label %.lr.ph20, label %.critedge2

.lr.ph20:                                         ; preds = %.critedge
  %i.r = tail call ptr @__ctype_b_loc() #15
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = sext i32 %.0.lcssa to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph20, %bb.e
  %indvars.iv25 = phi i64 [ %i.v, %.lr.ph20 ], [ %indvars.iv.next26, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %indvars.iv25
  %i.x = load i8, ptr %i.w, align 1, !tbaa !23
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = and i16 %i.aa, 8192
  %.not13 = icmp eq i16 %i.ab, 0
  br i1 %.not13, label %bb.e, label %.critedge2.loopexit.split.loop.exit34

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, 1 ; 2 uses
  %lftr.wideiv28 = trunc i64 %indvars.iv.next26 to i32
  %exitcond29.not = icmp eq i32 %i.c, %lftr.wideiv28
  br i1 %exitcond29.not, label %.critedge2, label %bb.d, !llvm.loop !59

.critedge2.loopexit.split.loop.exit34:            ; preds = %bb.d
  %i.ac = trunc nsw i64 %indvars.iv25 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.c, %bb.e, %.critedge2.loopexit.split.loop.exit34, %.critedge
  %.1.lcssa = phi i32 [ %.0.lcssa, %.critedge ], [ %i.c, %bb.e ], [ %i.ac, %.critedge2.loopexit.split.loop.exit34 ], [ %i.c, %bb.c ]
  ret i32 %.1.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @move_cursor(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre39 = load i32, ptr %i.b, align 4, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %i.d = phi i32 [ %.pre39, %.preheader ], [ %.sink, %bb.e ] ; 2 uses
  %.037 = phi i32 [ %1, %.preheader ], [ %.1, %bb.e ] ; 3 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !35
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @term_printf(ptr noundef nonnull @.str.22) #11
  %i.h = add nsw i32 %.037, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = sub nsw i32 %i.f, %i.d
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %i.i, i32 %.037) ; 3 uses
  tail call fastcc void @print_csi(i32 noundef %..i, i32 noundef 67) #12
  %i.j = sub nsw i32 %.037, %..i
  %i.k = load i32, ptr %i.b, align 4, !tbaa !34
  %i.l = add nsw i32 %i.k, %..i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ %i.l, %bb.d ]  ; 2 uses
  %.1 = phi i32 [ %i.h, %bb.c ], [ %i.j, %bb.d ]  ; 2 uses
  store i32 %.sink, ptr %i.b, align 4, !tbaa !34
  %.not33 = icmp eq i32 %.1, 0
  br i1 %.not33, label %.loopexit, label %bb.b, !llvm.loop !60

bb.f:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %1, 0
  br i1 %i.m, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.n = sub nsw i32 0, %1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre = load i32, ptr %i.o, align 4, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.k
  %i.q = phi i32 [ %.pre, %bb.g ], [ %storemerge, %bb.k ] ; 2 uses
  %.236 = phi i32 [ %i.n, %bb.g ], [ %.3, %bb.k ] ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @term_printf(ptr noundef nonnull @.str.23, i32 noundef 65) #11
  %i.s = load i32, ptr %i.p, align 8, !tbaa !35
end_hunk_0
