inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@je_malloc_usable_size:bb.a
; Function Attrs: nounwind uwtable
define hidden i64 @je_batch_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.te_ctx_s, align 8           ; 6 uses
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
end_hunk_0
begin_hunk_1_@je_batch_alloc:bb.a
  br i1 %i.e, label %.critedge, label %tsd_fetch_impl.exit.thread, !prof !12

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i125142 = phi ptr [ %i.d, %tsd_fetch_impl.exit ], [ %i.a, %bb.a ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = icmp sgt i8 %i.g, 0
end_hunk_1
begin_hunk_2_@je_batch_alloc:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 880
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.cr
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 840 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 16 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %.0.i125142, i64 848
  %8 = insertelement <2 x ptr> poison, ptr %i.dh, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %i.di, i64 1
  %10 = insertelement <2 x ptr> poison, ptr %i.dj, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %7, i64 1
  br label %bb.r

bb.r:                                             ; preds = %select.unfold170, %bb.q
end_hunk_2
begin_hunk_3_@je_batch_alloc:bb.a
  %i.gm = mul i64 %.198, %storemerge.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i8 1, ptr %4, align 8, !tbaa !109
  store <2 x ptr> %9, ptr %5, align 8, !tbaa !161
  store <2 x ptr> %11, ptr %6, align 8, !tbaa !161
  %i.gn = load i64, ptr %i.dh, align 8, !tbaa !27 ; 2 uses
  %i.go = add i64 %i.gn, %i.gm
  store i64 %i.go, ptr %i.dh, align 8, !tbaa !27
end_hunk_3
