inline.NumInlined: 100
inline.NumDeleted: 51
begin_hunk_0_@ps_dimension_add_t1stem:bb.a
  %.not.i.i53 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i53, label %bb.o, label %ps_mask_set_bit.exit

bb.o:                                             ; preds = %bb.n
  %i.bt = shl i32 %i.bm, 3
  store i32 %i.bt, ptr %i.bf, align 4, !tbaa !274
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 %i.be, ptr %.08.i.ph, align 8, !tbaa !107
  br label %bb.q

ps_mask_set_bit.exit:                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.s

bb.q:                                             ; preds = %bb.l, %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.ph, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !108
  %i.bw = lshr i32 %.03368, 3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !51
  %i.ca = and i32 %.03368, 7
  %i.cb = lshr exact i32 128, %i.ca
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = or i8 %i.bz, %i.cc
  store i8 %i.cd, ptr %i.by, align 1, !tbaa !51
  %.not49 = icmp eq ptr %4, null
  br i1 %.not49, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.03368, ptr %4, align 4, !tbaa !3
  br label %bb.s

bb.s:                                             ; preds = %ps_mask_set_bit.exit, %ps_mask_table_last.exit, %ps_hint_table_alloc.exit, %bb.q, %bb.r
  %.035 = phi i32 [ %i.bs, %ps_mask_set_bit.exit ], [ %i.z, %ps_hint_table_alloc.exit ], [ %i.ap, %ps_mask_table_last.exit ], [ 0, %bb.r ], [ 0, %bb.q ]
  ret i32 %.035
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @t2_hints_open(ptr noundef writeonly captures(none) initializes((8, 12), (16, 20), (24, 28), (40, 44), (56, 60), (72, 76), (88, 92), (104, 108)) %0) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !206
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.b, align 8, !tbaa !266
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !267
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !269
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.e, align 8, !tbaa !270
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.f, align 8, !tbaa !267
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.g, align 8, !tbaa !269
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.h, align 8, !tbaa !270
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @t2_hints_close(ptr noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !206  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %ps_hints_close.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !188    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call fastcc i32 @ps_dimension_end(ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef %i.c) ; 2 uses
  %.not13.i = icmp eq i32 %i.e, 0
  br i1 %.not13.i, label %bb.c, label %ps_hints_close.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = tail call fastcc i32 @ps_dimension_end(ptr noundef nonnull %i.f, i32 noundef %1, ptr noundef %i.c)
  br label %ps_hints_close.exit

ps_hints_close.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  %.1.i = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define internal void @t2_hints_stems(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = icmp ne i32 %1, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = zext i1 %i.d to i64
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %ps_hints_stem.exit
  %.02232 = phi i32 [ %2, %.lr.ph ], [ %i.ag, %ps_hints_stem.exit ] ; 2 uses
  %.02331 = phi i64 [ 0, %.lr.ph ], [ %i.l, %ps_hints_stem.exit ]
  %i.h = tail call i32 @llvm.umin.i32(i32 %.02232, i32 16) ; 3 uses
  %i.i = shl nuw nsw i32 %i.h, 1
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.12428 = phi i64 [ %.02331, %bb.b ], [ %i.l, %bb.c ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !60
  %i.l = add i64 %i.k, %.12428                    ; 3 uses
  %i.m = tail call i64 @FT_RoundFix(i64 noundef %i.l) #12
  %i.n = ashr i64 %i.m, 16
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.n, ptr %i.o, align 8, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !296

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %.preheader ], [ 0, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv37 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !60
  %i.s = load i64, ptr %i.p, align 16, !tbaa !60
  %i.t = sub nsw i64 %i.r, %i.s
  store i64 %i.t, ptr %i.q, align 8, !tbaa !60
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 2 ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next38, %wide.trip.count
  br i1 %i.u, label %.preheader, label %bb.d, !llvm.loop !297

bb.d:                                             ; preds = %.preheader
  %i.v = load i32, ptr %i.c, align 8, !tbaa !206
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %.preheader33, label %ps_hints_stem.exit

.preheader33:                                     ; preds = %bb.d, %.critedge.i
  %.01623.i = phi i32 [ %i.ad, %.critedge.i ], [ %i.h, %bb.d ] ; 2 uses
  %.01822.i = phi ptr [ %i.ae, %.critedge.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !188
  %i.x = load i64, ptr %.01822.i, align 8, !tbaa !60
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.01822.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !60
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = tail call fastcc i32 @ps_dimension_add_t1stem(ptr noundef nonnull %i.g, i32 noundef %i.y, i32 noundef %i.ab, ptr noundef %i.w, ptr noundef null) ; 2 uses
  %.not21.i = icmp eq i32 %i.ac, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader33
  store i32 %i.ac, ptr %i.c, align 8, !tbaa !206
  br label %ps_hints_stem.exit

.critedge.i:                                      ; preds = %.preheader33
  %i.ad = add nsw i32 %.01623.i, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %.01822.i, i64 16
  %i.af = icmp sgt i32 %.01623.i, 1
  br i1 %i.af, label %.preheader33, label %ps_hints_stem.exit, !llvm.loop !298

ps_hints_stem.exit:                               ; preds = %.critedge.i, %bb.d, %bb.e
  %i.ag = sub nsw i32 %.02232, %i.h               ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !299

._crit_edge:                                      ; preds = %ps_hints_stem.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ps_hints_t2mask(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !206
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !188    ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !267  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !267  ; 3 uses
  %i.h = add i32 %i.g, %i.e
  %.not27 = icmp eq i32 %2, %i.h
  br i1 %.not27, label %bb.c, label %select.unfold

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc i32 @ps_dimension_set_mask_bits(ptr noundef nonnull %i.c, ptr noundef %3, i32 noundef %i.g, i32 noundef %i.e, i32 noundef %1, ptr noundef %i.d) ; 2 uses
  %.not28 = icmp eq i32 %i.i, 0
  br i1 %.not28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @ps_dimension_set_mask_bits(ptr noundef nonnull %i.f, ptr noundef %3, i32 noundef 0, i32 noundef %i.g, i32 noundef %1, ptr noundef %i.d)
  %.fr = freeze i32 %i.j                          ; 2 uses
  %.not29 = icmp eq i32 %.fr, 0
  br i1 %.not29, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.024.ph = phi i32 [ %.fr, %bb.d ], [ %i.i, %bb.c ]
  store i32 %.024.ph, ptr %i.a, align 8, !tbaa !206
  br label %select.unfold

select.unfold:                                    ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ps_hints_t2counter(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !206
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !188    ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !267  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !267  ; 2 uses
  %i.h = add i32 %i.g, %i.e
  %.not25 = icmp eq i32 %1, %i.h
  br i1 %.not25, label %bb.c, label %select.unfold

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc i32 @ps_dimension_set_mask_bits(ptr noundef nonnull %i.c, ptr noundef %2, i32 noundef 0, i32 noundef %i.e, i32 noundef 0, ptr noundef %i.d) ; 2 uses
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @ps_dimension_set_mask_bits(ptr noundef nonnull %i.f, ptr noundef %2, i32 noundef %i.e, i32 noundef %i.g, i32 noundef 0, ptr noundef %i.d)
  %.fr = freeze i32 %i.j                          ; 2 uses
  %.not27 = icmp eq i32 %.fr, 0
  br i1 %.not27, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.022.ph = phi i32 [ %.fr, %bb.d ], [ %i.i, %bb.c ]
  store i32 %.022.ph, ptr %i.a, align 8, !tbaa !206
  br label %select.unfold

select.unfold:                                    ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @t2_hints_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ps_hints_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ps_dimension_set_mask_bits(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !269  ; 4 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %ps_dimension_end_mask.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !275
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  store i32 %4, ptr %i.j, align 8, !tbaa !105
  br label %ps_dimension_end_mask.exit.i

ps_dimension_end_mask.exit.i:                     ; preds = %bb.b, %bb.a
  %i.k = add i32 %i.e, 1                          ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !273  ; 2 uses
  %i.n = icmp ugt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %ps_dimension_end_mask.exit.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !101
  br label %bb.d

bb.c:                                             ; preds = %ps_dimension_end_mask.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.o = and i32 %i.e, -8
  %i.p = add i32 %i.o, 8                          ; 2 uses
  %i.q = zext i32 %i.m to i64
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.u = call ptr @ft_mem_realloc(ptr noundef %5, i64 noundef 24, i64 noundef %i.q, i64 noundef %i.r, ptr noundef %i.t, ptr noundef nonnull %i.c) #12 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !101
  %i.v = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i, label %ps_mask_table_ensure.exit.thread.i.i, label %ps_dimension_reset_mask.exit

ps_mask_table_ensure.exit.thread.i.i:             ; preds = %bb.c
  store i32 %i.p, ptr %i.l, align 4, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.d

bb.d:                                             ; preds = %ps_mask_table_ensure.exit.thread.i.i, %._crit_edge.i.i
  %i.w = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.u, %ps_mask_table_ensure.exit.thread.i.i ]
  %i.x = zext i32 %i.k to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -24
  store i32 0, ptr %i.z, align 8, !tbaa !107
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -8
  store i32 0, ptr %i.aa, align 8, !tbaa !105
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !274 ; 2 uses
  %.not24.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not24.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.af = lshr i32 %i.ac, 3
  %i.ag = zext nneg i32 %i.af to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 0, i64 %i.ag, i1 false)
  br label %bb.f

ps_dimension_reset_mask.exit:                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %ps_mask_table_set_bits.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  store i32 %i.k, ptr %i.d, align 8, !tbaa !104
  %i.ah = icmp eq i32 %i.k, 0
  br i1 %i.ah, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !273
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !101
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !101
  %i.am = call ptr @ft_mem_realloc(ptr noundef %5, i64 noundef 24, i64 noundef 0, i64 noundef 8, ptr noundef %i.al, ptr noundef nonnull %i.b) #12 ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !101
  %i.an = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %ps_mask_table_ensure.exit.thread.i.i.i, label %ps_mask_table_last.exit.i

ps_mask_table_ensure.exit.thread.i.i.i:           ; preds = %bb.h
  store i32 8, ptr %i.l, align 4, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.i

bb.i:                                             ; preds = %ps_mask_table_ensure.exit.thread.i.i.i, %._crit_edge.i.i.i
  %i.ao = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.am, %ps_mask_table_ensure.exit.thread.i.i.i ] ; 5 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 0, ptr %i.ap, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !274 ; 2 uses
  %.not24.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not24.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !108
  %i.au = lshr i32 %i.ar, 3
  %i.av = zext nneg i32 %i.au to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.at, i8 0, i64 %i.av, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 1, ptr %i.d, align 8, !tbaa !104
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !101
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.x
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -24
  br label %bb.m

ps_mask_table_last.exit.i:                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %ps_mask_table_set_bits.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %.08.i.ph.i = phi ptr [ %i.ao, %bb.k ], [ %i.az, %bb.l ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.ph.i, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !274
  %i.bc = lshr i32 %i.bb, 3                       ; 2 uses
  %i.bd = add i32 %3, 7
  %i.be = lshr i32 %i.bd, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.bf = icmp samesign ugt i32 %i.be, %i.bc
  br i1 %i.bf, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.08.i.ph.i, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !108
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bg = add nuw nsw i32 %i.be, 7
  %i.bh = and i32 %i.bg, 1073741816               ; 2 uses
  %i.bi = zext nneg i32 %i.bc to i64
  %i.bj = zext nneg i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.ph.i, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !108
  %i.bm = call ptr @ft_mem_realloc(ptr noundef %5, i64 noundef 1, i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef %i.bl, ptr noundef nonnull %i.a) #12 ; 2 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !108
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not.i.i10 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i10, label %bb.o, label %ps_mask_ensure.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bo = shl i32 %i.bh, 3
  store i32 %i.bo, ptr %i.ba, align 4, !tbaa !274
  br label %bb.p

ps_mask_ensure.exit.i:                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %ps_mask_table_set_bits.exit

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %i.bp = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bm, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 %3, ptr %.08.i.ph.i, align 8, !tbaa !107
  %.not4150.i = icmp eq i32 %3, 0
  br i1 %.not4150.i, label %ps_mask_table_set_bits.exit, label %.lr.ph.preheader.i
end_hunk_0
