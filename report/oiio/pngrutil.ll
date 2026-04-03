begin_hunk_0
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !43
  br label %.thread154

bb.u:                                             ; preds = %bb.q, %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.dh, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.w

.thread163.sink.split:                            ; preds = %bb.k, %.thread, %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !43
  br label %.thread163
end_hunk_1
begin_hunk_2
bb.t:                                             ; preds = %.critedge6
  %i.ay = icmp ult i32 %i.av, %2
  %or.cond110 = and i1 %.not104, %i.ay
  br i1 %or.cond110, label %bb.u, label %.thread126

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %i.a, align 8, !tbaa !184
end_hunk_2
begin_hunk_3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !43 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.thread, label %.thread126

.thread:                                          ; preds = %bb.v, %bb.s, %bb.w
  %.090116 = phi ptr [ %.021.i, %bb.w ], [ %i.bb, %bb.v ], [ %.021.i, %bb.s ] ; 5 uses
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not106, label %.critedge112, label %.thread121

.thread126:                                       ; preds = %bb.w, %bb.t
  %.389.ph = phi ptr [ %i.bd, %bb.w ], [ @.str.38, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread121

.thread121:                                       ; preds = %.thread, %.preheader, %bb.o, %bb.n, %.critedge, %bb.m, %.thread126
  %.4124 = phi ptr [ %.389.ph, %.thread126 ], [ @.str.36, %.preheader ], [ @.str.39, %bb.o ], [ @.str.39, %bb.n ], [ @.str.36, %.critedge ], [ @.str.38, %bb.m ], [ @.str.22, %.thread ]
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull %.4124) #14
  br label %.critedge112

.critedge112:                                     ; preds = %.thread, %.thread121, %png_crc_read.exit, %bb.k, %bb.d, %bb.b
  %.3 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %.thread121 ], [ 0, %png_crc_read.exit ], [ 3, %.thread ]
  ret i32 %.3
}

end_hunk_4
begin_hunk_5
  %i.ae = add nuw nsw i32 %.048.lcssa, 2          ; 2 uses
  %i.af = call fastcc i32 @png_decompress_chunk(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ae, ptr noundef %i.a)
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.p, label %4

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
end_hunk_5
begin_hunk_6

.thread.a:                                        ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.r

bb.q:                                             ; preds = %bb.p
end_hunk_6
begin_hunk_7
  %i.at = call i32 @png_set_text_2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1) #14
  %.not = icmp eq i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %.not, label %.critedge63, label %bb.r

4:                                                ; preds = %bb.o
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %.thread.a, %bb.q, %4
  %.3 = phi ptr [ %6, %4 ], [ @.str.22, %bb.q ], [ @.str.56, %.thread.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader, %bb.r, %bb.n, %bb.m, %.critedge
  %.4 = phi ptr [ %.3, %bb.r ], [ @.str.36, %.critedge ], [ @.str.38, %bb.m ], [ @.str.55, %bb.n ], [ @.str.36, %.preheader ]
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef %.4) #14
  br label %bb.s

.critedge63:                                      ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.s

bb.s:                                             ; preds = %.critedge63, %png_crc_read.exit, %.critedge.thread, %bb.k, %bb.d, %bb.b
  %.354 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.k ], [ 3, %.critedge63 ], [ 0, %.critedge.thread ], [ 0, %png_crc_read.exit ]
  ret i32 %.354
}

end_hunk_7
