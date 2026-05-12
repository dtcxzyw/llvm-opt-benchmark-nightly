inline.NumInlined: 166
inline.NumDeleted: 15
begin_hunk_0_@hashTypeDup:bb.a
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = or i16 %i.ac, 256
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = tail call i64 @lpBytes(ptr noundef %i.ag) #13 ; 2 uses
end_hunk_0
begin_hunk_1_@hincrbyCommand:bb.a
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 10 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
end_hunk_1
begin_hunk_2_@hincrbyCommand:bb.a
  br i1 %i.x, label %bb.v, label %bb.d

bb.d:                                             ; preds = %hashTypeLookupWriteOrCreate.exit.thread53, %hashTypeLookupWriteOrCreate.exit
  %i.y = phi ptr [ %i.r, %hashTypeLookupWriteOrCreate.exit.thread53 ], [ %i.w, %hashTypeLookupWriteOrCreate.exit ] ; 5 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
end_hunk_2
begin_hunk_3_@hincrbyCommand:bb.a

bb.h:                                             ; preds = %bb.d
  store i64 0, ptr %i.c, align 8, !tbaa !27
  %i.al = load i64, ptr %i.y, align 8
  %i.am = trunc i64 %i.al to i32
  %i.an = lshr i32 %i.am, 4
  %i.ao = and i32 %i.an, 15
end_hunk_3
begin_hunk_4_@hincrbyCommand:bb.a
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ar = call i64 @lpLength(ptr noundef %i.aq) #13
  %i.as = lshr i64 %i.ar, 1
  br label %hashTypeLength.exit

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !18
end_hunk_4
begin_hunk_5_@hincrbyCommand:bb.a
  br label %hashTypeLength.exit

bb.k:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !13
end_hunk_5
begin_hunk_6_@hincrbyfloatCommand:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca x86_fp80, align 16                ; 5 uses
  %i.d = alloca x86_fp80, align 16                ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 10 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [5120 x i8], align 16             ; 6 uses
end_hunk_6
begin_hunk_7_@hincrbyfloatCommand:bb.a
  br i1 %i.ab, label %bb.x, label %bb.f

bb.f:                                             ; preds = %hashTypeLookupWriteOrCreate.exit.thread51, %hashTypeLookupWriteOrCreate.exit
  %i.ac = phi ptr [ %i.v, %hashTypeLookupWriteOrCreate.exit.thread51 ], [ %i.aa, %hashTypeLookupWriteOrCreate.exit ] ; 5 uses
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
end_hunk_7
begin_hunk_8_@hincrbyfloatCommand:bb.a
  %i.am = zext i32 %i.al to i64
  %i.an = call i32 @string2ld(ptr noundef nonnull %i.ak, i64 noundef %i.am, ptr noundef nonnull %i.c) #13
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load x86_fp80, ptr %i.c, align 16, !tbaa !160
  br label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #13
end_hunk_8
begin_hunk_9_@hincrbyfloatCommand:bb.a
bb.j:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !27
  %i.aq = sitofp i64 %i.ap to x86_fp80
  br label %bb.q

bb.k:                                             ; preds = %bb.f
  %i.ar = load i64, ptr %i.ac, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = lshr i32 %i.as, 4
  %i.au = and i32 %i.at, 15
end_hunk_9
begin_hunk_10_@hincrbyfloatCommand:bb.a
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ax = call i64 @lpLength(ptr noundef %i.aw) #13
  %i.ay = lshr i64 %i.ax, 1
  br label %hashTypeLength.exit

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18
end_hunk_10
begin_hunk_11_@hincrbyfloatCommand:bb.a
  br label %hashTypeLength.exit

bb.n:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !13
end_hunk_11
begin_hunk_12_@hincrbyfloatCommand:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !72
  %i.bz = call ptr @dbAdd(ptr noundef %i.bv, ptr noundef %i.by, ptr noundef nonnull %i.f) #13 ; 0 uses
  %i.ca = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
end_hunk_12
begin_hunk_13_@hincrbyfloatCommand:bb.a
  call void @updateKeysizesHist(ptr noundef %i.ca, i32 noundef %i.cg, i32 noundef 4, i64 noundef 0, i64 noundef 1) #13
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %hashTypeLength.exit, %bb.p, %bb.j
  %1 = phi x86_fp80 [ %.pre, %._crit_edge ], [ 0.000000e+00, %hashTypeLength.exit ], [ 0.000000e+00, %bb.p ], [ %i.aq, %bb.j ]
  %i.ch = load x86_fp80, ptr %i.d, align 16, !tbaa !160
  %i.ci = fadd x86_fp80 %i.ch, %1                 ; 3 uses
  store x86_fp80 %i.ci, ptr %i.c, align 16, !tbaa !160
  %i.cj = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ci)
  %or.cond48 = fcmp ueq x86_fp80 %i.cj, +inf
end_hunk_13
