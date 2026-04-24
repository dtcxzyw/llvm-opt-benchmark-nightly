inline.NumInlined: 2
begin_hunk_0_@trans_init
; Function Attrs: nounwind uwtable
define dso_local range(i32 -67108864, 67108865) i32 @ab(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load i64, ptr @nodes, align 8, !tbaa !8
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr @nodes, align 8, !tbaa !8
  %i.d = load i32, ptr @plycnt, align 4, !tbaa !4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 41
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@ab:bb.a

bb.e:                                             ; preds = %bb.at, %bb.as, %bb.an, %bb.am, %bb.ah, %bb.ag, %bb.ab, %bb.aa, %bb.v, %bb.u, %bb.p, %bb.o, %bb.d, %bb.c
  %i.p = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.o ], [ true, %bb.p ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.am ], [ true, %bb.an ], [ false, %bb.as ], [ false, %bb.at ]
  %.lcssa174.a = phi i32 [ 1, %bb.d ], [ 1, %bb.c ], [ 2, %bb.o ], [ 2, %bb.p ], [ 3, %bb.u ], [ 3, %bb.v ], [ 4, %bb.aa ], [ 4, %bb.ab ], [ 5, %bb.ag ], [ 5, %bb.ah ], [ 6, %bb.am ], [ 6, %bb.an ], [ 7, %bb.as ], [ 7, %bb.at ] ; 3 uses
  %.lcssa172 = phi i32 [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %i.ae, %bb.o ], [ %i.ae, %bb.p ], [ %i.ao, %bb.u ], [ %i.ao, %bb.v ], [ %i.ba, %bb.aa ], [ %i.ba, %bb.ab ], [ %i.bm, %bb.ag ], [ %i.bm, %bb.ah ], [ %i.by, %bb.am ], [ %i.by, %bb.an ], [ %i.ck, %bb.as ], [ %i.ck, %bb.at ] ; 2 uses
  %.not136 = icmp eq i32 %.lcssa172, 6
  br i1 %.not136, label %bb.g, label %bb.f
end_hunk_1
begin_hunk_2_@ab:bb.a
  br i1 %.not137, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.p, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.g
  %2 = zext nneg i32 %.lcssa174.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @height, i64 %indvars.iv.next
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
end_hunk_2
begin_hunk_3_@ab:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.b
  %.197 = phi i32 [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.b ] ; 4 uses
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @height, i64 8), align 4, !tbaa !4 ; 6 uses
  %i.af = icmp slt i32 %i.ae, 7
  br i1 %i.af, label %bb.o, label %bb.t
end_hunk_3
begin_hunk_4_@ab:bb.a

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.an = add nuw nsw i32 %.197, 1
  %3 = zext nneg i32 %.197 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  store i32 2, ptr %4, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.n
end_hunk_4
