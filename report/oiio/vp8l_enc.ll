begin_hunk_0
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 10 uses
  %3 = alloca [14 x %struct.CrunchConfig], align 16 ; 35 uses
  %4 = alloca %struct.WebPWorker, align 8         ; 10 uses
  %5 = alloca %struct.WebPWorker, align 8         ; 11 uses
  %6 = alloca %struct.StreamEncodeContext, align 8 ; 12 uses
  %7 = alloca %struct.StreamEncodeContext, align 8 ; 12 uses
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.h = tail call ptr @WebPGetWorkerInterface() #8 ; 7 uses
  %i.i = call i32 @VP8LBitWriterInit(ptr noundef nonnull %9, i64 noundef 0) #8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %VP8LEncoderDelete.exit, label %bb.d
end_hunk_1
begin_hunk_2

bb.ab:                                            ; preds = %.loopexit313, %._crit_edge229
  %.1.lcssa = phi ptr [ null, %._crit_edge229 ], [ %i.ru, %.loopexit313 ] ; 7 uses
  %.not120 = icmp eq i32 %.0100, 0                ; 2 uses
  br i1 %.not120, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
end_hunk_2
begin_hunk_3
bb.ae:                                            ; preds = %bb.ac
  %i.td = load ptr, ptr %i.ri, align 8, !tbaa !57 ; 2 uses
  %.not122 = icmp eq ptr %i.td, null
  br i1 %.not122, label %11, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %8, ptr noundef nonnull align 4 dereferenceable(188) %i.td, i64 188, i1 false)
  br label %11

11:                                               ; preds = %bb.af, %bb.ae
  %12 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  call void %13(ptr noundef nonnull %5) #8
  br label %bb.ag

bb.ag:                                            ; preds = %11, %bb.ab
  %i.te = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !70
  call void %i.tf(ptr noundef nonnull %4) #8
end_hunk_3
begin_hunk_4
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !71
  %i.ti = call i32 %i.th(ptr noundef nonnull %4) #8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !72
  call void %i.tk(ptr noundef nonnull %4) #8
  br i1 %.not120, label %VP8LEncoderDelete.exit135, label %14

14:                                               ; preds = %bb.ag
  %15 = load ptr, ptr %i.tg, align 8, !tbaa !71
  %16 = call i32 %15(ptr noundef nonnull %5) #8
  %17 = load ptr, ptr %i.tj, align 8, !tbaa !72
  call void %17(ptr noundef nonnull %5) #8
  %18 = icmp ne i32 %i.ti, 0
  %19 = icmp ne i32 %16, 0
  %or.cond = select i1 %18, i1 %19, i1 false
  br i1 %or.cond, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %14
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !73
  %i.tn = icmp eq i32 %i.tm, 0
end_hunk_4
begin_hunk_5
  %i.tq = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef %i.tp) #8 ; 0 uses
  br label %VP8LEncoderDelete.exit135

bb.aj:                                            ; preds = %14
  %i.tr = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !74
  %i.tt = getelementptr inbounds nuw i8, ptr %9, i64 16
end_hunk_5
begin_hunk_6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %i.us, ptr noundef nonnull align 4 dereferenceable(188) %8, i64 188, i1 false)
  br label %VP8LEncoderDelete.exit135

VP8LEncoderDelete.exit135:                        ; preds = %.loopexit, %EncoderInit.exit133.thread, %bb.ai, %bb.ah, %bb.ak, %bb.al, %bb.aj, %bb.ag, %bb.d, %bb.ad, %EncoderAnalyze.exit.thread
  %.4 = phi ptr [ null, %bb.d ], [ null, %EncoderAnalyze.exit.thread ], [ %.1.lcssa, %bb.ag ], [ %.1.lcssa, %bb.ad ], [ %.1.lcssa, %bb.ai ], [ %.1.lcssa, %bb.aj ], [ %.1.lcssa, %bb.al ], [ %.1.lcssa, %bb.ak ], [ %.1.lcssa, %bb.ah ], [ null, %.loopexit ], [ %i.sh, %EncoderInit.exit133.thread ] ; 8 uses
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %9) #8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.b, i64 2312
  call void @VP8LHashChainClear(ptr noundef nonnull %i.ut) #8
end_hunk_6
