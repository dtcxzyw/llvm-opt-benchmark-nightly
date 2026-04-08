inline.NumInlined: 173
inline.NumDeleted: 54
begin_hunk_0_@zlib_compress:bb.a
  %spec.select5.i.i = call i64 @llvm.umin.i64(i64 %.038.i, i64 4294967295) ; 2 uses
  %spec.select.i.i = trunc nuw i64 %spec.select5.i.i to i32
  store i32 %spec.select.i.i, ptr %i.aj, align 8, !tbaa !48
  %i.ax = sub nuw i64 %.038.i, %spec.select5.i.i  ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0                    ; 2 uses
  %i.az = select i1 %i.ay, i32 4, i32 0           ; 2 uses
  br i1 %.pr.i, label %._crit_edge.i.i.peel.i, label %bb.v
end_hunk_0
begin_hunk_1_@zlib_decompress:bb.a

.preheader.preheader.i:                           ; preds = %bb.p
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ai
  %i.at = sub nuw nsw i64 %spec.store.select.i, %i.ai
  %.pr.pre.i = load i32, ptr %i.ae, align 8, !tbaa !47
  %i.au = icmp eq i32 %.pr.pre.i, 0
  br label %.preheader.i
end_hunk_1
begin_hunk_2_@zlib_decompress:bb.a
  %.sroa.9.0.i = phi i64 [ %.sroa.9.2.lcssa88.i, %.loopexit94.i ], [ %spec.store.select.i, %.preheader.preheader.i ] ; 5 uses
  %.sroa.16.0.i = phi i64 [ %.sroa.16.2.lcssa86.i, %.loopexit94.i ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %.sroa.6.0.i = phi ptr [ %.sroa.6.2.lcssa84.i, %.loopexit94.i ], [ %i.as, %.preheader.preheader.i ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.2.lcssa82.i, %.loopexit94.i ], [ %i.at, %.preheader.preheader.i ] ; 4 uses
  %spec.select5.i.i = call i64 @llvm.umin.i64(i64 %.051.i, i64 4294967295) ; 2 uses
  %spec.select.i.i = trunc nuw i64 %spec.select5.i.i to i32
  store i32 %spec.select.i.i, ptr %i.aq, align 8, !tbaa !48
  %i.bf = sub nuw i64 %.051.i, %spec.select5.i.i  ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = select i1 %i.bg, i32 4, i32 0           ; 2 uses
  br i1 %.pr.i, label %bb.x, label %bb.aa
end_hunk_2
begin_hunk_3_@zlib_decompress:bb.a
  store ptr %.sroa.6.0.i, ptr %i.ad, align 8, !tbaa !63
  %i.bt = trunc nuw i64 %spec.select.i36.peel.i to i32
  store i32 %i.bt, ptr %i.ae, align 8, !tbaa !6
  %i.bu = sub nuw nsw i64 %.sroa.0.0.i, %spec.select.i36.peel.i
  %i.bv = getelementptr i8, ptr %.sroa.6.0.i, i64 %spec.select.i36.peel.i
  br label %bb.aa

end_hunk_3
begin_hunk_4_@zlib_decompress:bb.a
  %.sroa.9.2.peel.i = phi i64 [ %i.bo, %OutputBuffer_WindowGrow.exit.peel.i ], [ %.sroa.9.0.i, %.preheader.i ], [ %.sroa.9.0.i, %OutputBuffer_WindowGrow.exit.thread.peel.i ] ; 2 uses
  %.sroa.16.2.peel.i = phi i64 [ %i.bp, %OutputBuffer_WindowGrow.exit.peel.i ], [ %.sroa.16.0.i, %.preheader.i ], [ %.sroa.16.0.i, %OutputBuffer_WindowGrow.exit.thread.peel.i ] ; 2 uses
  %.sroa.6.2.peel.i = phi ptr [ %.sroa.6.0.i, %OutputBuffer_WindowGrow.exit.peel.i ], [ %.sroa.6.0.i, %.preheader.i ], [ %i.bv, %OutputBuffer_WindowGrow.exit.thread.peel.i ] ; 2 uses
  %.sroa.0.2.peel.i = phi i64 [ 0, %OutputBuffer_WindowGrow.exit.peel.i ], [ %.sroa.0.0.i, %.preheader.i ], [ %i.bu, %OutputBuffer_WindowGrow.exit.thread.peel.i ] ; 2 uses
  %i.bw = call ptr @PyEval_SaveThread() #6
  %i.bx = call i32 @inflate(ptr noundef nonnull %4, i32 noundef %i.bh) #6 ; 3 uses
  call void @PyEval_RestoreThread(ptr noundef %i.bw) #6
end_hunk_4
begin_hunk_5_@zlib_decompress:bb.a
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i, %bb.ak ], [ %.sroa.9.2.peel.i, %bb.ab ] ; 4 uses
  %.sroa.16.1.i = phi i64 [ %.sroa.16.2.i, %bb.ak ], [ %.sroa.16.2.peel.i, %bb.ab ] ; 3 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.2.i, %bb.ak ], [ %.sroa.6.2.peel.i, %bb.ab ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.2.i, %bb.ak ], [ %.sroa.0.2.peel.i, %bb.ab ] ; 3 uses
  %i.ca = icmp sgt i64 %.sroa.0.1.i, 0
  br i1 %i.ca, label %OutputBuffer_WindowGrow.exit.thread.i, label %bb.ac

end_hunk_5
begin_hunk_6_@zlib_decompress:bb.a
  store ptr %.sroa.6.1.i, ptr %i.ad, align 8, !tbaa !63
  %i.cb = trunc nuw i64 %spec.select.i36.i to i32
  store i32 %i.cb, ptr %i.ae, align 8, !tbaa !6
  %i.cc = sub nuw nsw i64 %.sroa.0.1.i, %spec.select.i36.i
  %i.cd = getelementptr i8, ptr %.sroa.6.1.i, i64 %spec.select.i36.i
  br label %bb.ae

end_hunk_6
begin_hunk_7_@zlib_decompress:bb.a
  %.sroa.9.2.i = phi i64 [ %i.cl, %OutputBuffer_WindowGrow.exit.i ], [ %.sroa.9.1.i, %OutputBuffer_WindowGrow.exit.thread.i ] ; 2 uses
  %.sroa.16.2.i = phi i64 [ %i.cm, %OutputBuffer_WindowGrow.exit.i ], [ %.sroa.16.1.i, %OutputBuffer_WindowGrow.exit.thread.i ] ; 2 uses
  %.sroa.6.2.i = phi ptr [ %.sroa.6.1.i, %OutputBuffer_WindowGrow.exit.i ], [ %i.cd, %OutputBuffer_WindowGrow.exit.thread.i ] ; 2 uses
  %.sroa.0.2.i = phi i64 [ 0, %OutputBuffer_WindowGrow.exit.i ], [ %i.cc, %OutputBuffer_WindowGrow.exit.thread.i ] ; 2 uses
  %i.cq = call ptr @PyEval_SaveThread() #6
  %i.cr = call i32 @inflate(ptr noundef nonnull %4, i32 noundef %i.bh) #6 ; 3 uses
  call void @PyEval_RestoreThread(ptr noundef %i.cq) #6
end_hunk_7
begin_hunk_8_@zlib_decompress:bb.a
bb.ap:                                            ; preds = %bb.an
  %i.dl = load i32, ptr %i.ae, align 8, !tbaa !47
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add nuw i64 %.sroa.0.2.lcssa82.i, %i.dm
  %i.do = sub i64 %.sroa.9.2.lcssa88.i, %i.dn
  %i.dp = call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.af, i64 noundef %i.do) #6 ; 2 uses
  %.not27.i = icmp eq ptr %i.dp, null
end_hunk_8
begin_hunk_9_@zlib_Compress_compress:bb.a
  %spec.select5.i.i = call i64 @llvm.umin.i64(i64 %.034.i, i64 4294967295) ; 2 uses
  %spec.select.i.i = trunc nuw i64 %spec.select5.i.i to i32
  store i32 %spec.select.i.i, ptr %i.v, align 8, !tbaa !48
  %i.w = sub nuw i64 %.034.i, %spec.select5.i.i   ; 2 uses
  %i.x = call ptr @PyEval_SaveThread() #6
  %i.y = call i32 @deflate(ptr noundef nonnull %i.n, i32 noundef 0) #6
  call void @PyEval_RestoreThread(ptr noundef %i.x) #6
end_hunk_9
begin_hunk_10_@zlib_Decompress_decompress:bb.a
  %spec.select5.i.us.i = call i64 @llvm.umin.i64(i64 %.062.us.i, i64 4294967295) ; 2 uses
  %spec.select.i.us.i = trunc nuw i64 %spec.select5.i.us.i to i32
  store i32 %spec.select.i.us.i, ptr %i.ao, align 8, !tbaa !48
  %i.aq = sub nuw i64 %.062.us.i, %spec.select5.i.us.i ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %.split.us.us.i
end_hunk_10
begin_hunk_11_@zlib_Decompress_decompress:bb.a
  %spec.select5.i.i = call i64 @llvm.umin.i64(i64 %.062.i, i64 4294967295) ; 2 uses
  %spec.select.i.i = trunc nuw i64 %spec.select5.i.i to i32
  store i32 %spec.select.i.i, ptr %i.ao, align 8, !tbaa !48
  %i.bq = sub nuw i64 %.062.i, %spec.select5.i.i  ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.aa, %.split.i
end_hunk_11
begin_hunk_12_@zlib_Decompress_flush:bb.a
  %i.am = call i64 @llvm.umin.i64(i64 %.1, i64 4294967295) ; 3 uses
  %i.an = trunc nuw i64 %i.am to i32
  store i32 %i.an, ptr %i.ai, align 8, !tbaa !6
  %i.ao = sub nuw nsw i64 %.1, %i.am
  %i.ap = getelementptr i8, ptr %i.al, i64 %i.am
  %i.aq = getelementptr i8, ptr %0, i64 24
  br label %bb.n
end_hunk_12
begin_hunk_13_@zlib_Decompress_flush:bb.a
  %spec.select5.i.i = call i64 @llvm.umin.i64(i64 %.0.i, i64 4294967295) ; 2 uses
  %spec.select.i.i = trunc nuw i64 %spec.select5.i.i to i32
  store i32 %spec.select.i.i, ptr %i.aq, align 8, !tbaa !48
  %i.ar = sub nuw i64 %.0.i, %spec.select5.i.i    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = select i1 %i.as, i32 4, i32 0           ; 2 uses
  %i.au = call ptr @PyEval_SaveThread() #6
end_hunk_13
begin_hunk_14_@zlib_Decompress_flush:bb.a
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i, %bb.s ], [ %.sroa.9.0.i, %bb.o ] ; 4 uses
  %.sroa.16.1.i = phi i64 [ %.sroa.16.2.i, %bb.s ], [ %.sroa.16.0.i, %bb.o ] ; 3 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.2.i, %bb.s ], [ %.sroa.6.0.i, %bb.o ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.2.i, %bb.s ], [ %.sroa.0.0.i, %bb.o ] ; 3 uses
  %i.ay = icmp sgt i64 %.sroa.0.1.i, 0
  br i1 %i.ay, label %OutputBuffer_WindowGrow.exit.thread.i, label %bb.p

end_hunk_14
begin_hunk_15_@zlib_Decompress_flush:bb.a
  store ptr %.sroa.6.1.i, ptr %i.ah, align 8, !tbaa !63
  %i.az = trunc nuw i64 %spec.select.i46.i to i32
  store i32 %i.az, ptr %i.ai, align 8, !tbaa !6
  %i.ba = sub nuw nsw i64 %.sroa.0.1.i, %spec.select.i46.i
  %i.bb = getelementptr i8, ptr %.sroa.6.1.i, i64 %spec.select.i46.i
  br label %bb.r

end_hunk_15
begin_hunk_16_@zlib_Decompress_flush:bb.a
  %.sroa.9.2.i = phi i64 [ %i.bi, %OutputBuffer_WindowGrow.exit.i ], [ %.sroa.9.1.i, %OutputBuffer_WindowGrow.exit.thread.i ] ; 3 uses
  %.sroa.16.2.i = phi i64 [ %i.bj, %OutputBuffer_WindowGrow.exit.i ], [ %.sroa.16.1.i, %OutputBuffer_WindowGrow.exit.thread.i ] ; 2 uses
  %.sroa.6.2.i = phi ptr [ %.sroa.6.1.i, %OutputBuffer_WindowGrow.exit.i ], [ %i.bb, %OutputBuffer_WindowGrow.exit.thread.i ] ; 2 uses
  %.sroa.0.2.i = phi i64 [ 0, %OutputBuffer_WindowGrow.exit.i ], [ %i.ba, %OutputBuffer_WindowGrow.exit.thread.i ] ; 3 uses
  %i.bn = call ptr @PyEval_SaveThread() #6
  %i.bo = call i32 @inflate(ptr noundef nonnull %i.ae, i32 noundef %i.at) #6 ; 3 uses
  call void @PyEval_RestoreThread(ptr noundef %i.bn) #6
end_hunk_16
begin_hunk_17_@zlib_Decompress_flush:bb.a
bb.w:                                             ; preds = %bb.u, %bb.t
  %i.cc = load i32, ptr %i.ai, align 8, !tbaa !75
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw i64 %.sroa.0.285.i, %i.cd
  %i.cf = sub i64 %.sroa.9.289.i, %i.ce
  %i.cg = call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.aj, i64 noundef %i.cf) #6 ; 2 uses
  %.not42.i = icmp eq ptr %i.cg, null
end_hunk_17
begin_hunk_18_@zlib__ZlibDecompressor_decompress:bb.a
  %spec.select5.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 4294967295) ; 2 uses
  %spec.select.i.i.i.i = trunc nuw i64 %spec.select5.i.i.i.i to i32
  store i32 %spec.select.i.i.i.i, ptr %i.bo, align 8, !tbaa !48
  %i.bt = sub nuw i64 %i.bs, %spec.select5.i.i.i.i
  store i64 %i.bt, ptr %i.bn, align 8, !tbaa !49
  br label %bb.u

end_hunk_18
