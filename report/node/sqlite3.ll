begin_hunk_0
bb.m:                                             ; preds = %sqlite3_mutex_enter.exit, %bb.l
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 352), align 8, !tbaa !192
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 368), align 8, !tbaa !198
  %.not23.a = icmp eq ptr %i.ag, null
  br i1 %.not23.a, label %0, label %select.unfold

0:                                                ; preds = %bb.m
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !176
  %.not.i28 = icmp eq i8 %1, 0
  br i1 %.not.i28, label %sqlite3MutexAlloc.exit30.thread, label %sqlite3MutexAlloc.exit30

sqlite3MutexAlloc.exit30.thread:                  ; preds = %0
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 368), align 8, !tbaa !198
  br label %select.unfold

sqlite3MutexAlloc.exit30:                         ; preds = %0
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !177
  %i.ai = tail call ptr %i.ah(i32 noundef 1) #72  ; 2 uses
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !176
end_hunk_0
begin_hunk_1
  %or.cond = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond, label %select.unfold, label %bb.n

select.unfold:                                    ; preds = %sqlite3MutexAlloc.exit30.thread, %sqlite3MutexAlloc.exit30, %bb.m
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 360), align 8, !tbaa !199
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 360), align 8, !tbaa !199
end_hunk_1
begin_hunk_2
bb.v:                                             ; preds = %bb.u, %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 33
end_hunk_2
begin_hunk_3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.ey = load i16, ptr %i.ex, align 1            ; 2 uses
  %i.ez = zext i16 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8                ; 6 uses
  %i.fb = add nuw nsw i32 %i.fa, 16776960
  %i.fc = and i32 %i.fb, %i.fa
  %i.fd = icmp ne i32 %i.fc, 0
end_hunk_3
begin_hunk_4
  %i.fv = load i16, ptr %i.aa, align 8, !tbaa !579
  %i.fw = or i16 %i.fv, 2
  store i16 %i.fw, ptr %i.aa, align 8, !tbaa !579
  store i32 %i.fa, ptr %i.bk, align 4, !tbaa !123
  store i32 %i.fj, ptr %i.bl, align 8, !tbaa !607
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dd, i64 52
  %i.fy = load i32, ptr %i.fx, align 1, !tbaa !204
end_hunk_4
begin_hunk_5
  %i.gq = ashr exact i64 %sext914.i, 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.gr = getelementptr i8, ptr %i.a, i64 %i.gq   ; 4 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 1      ; 5 uses
  store ptr %i.gs, ptr %i.b, align 8, !tbaa !213
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !204 ; 2 uses
  %i.gu = icmp eq i8 %i.gt, 115
end_hunk_5
begin_hunk_6
  ]

.lr.ph.i121.2.i:                                  ; preds = %.lr.ph.i121.1.i
  %i.gx = getelementptr i8, ptr %i.gr, i64 3      ; 6 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !204
  switch i8 %i.gy, label %.lr.ph.i137.1.i.thread [
    i8 115, label %.lr.ph.i121.3.i
end_hunk_6
begin_hunk_7
  br i1 %i.hb, label %.lr.ph33.i.preheader.i, label %.lr.ph.i137.1.i.thread

.lr.ph33.i.preheader.i:                           ; preds = %.lr.ph.i121.3.i
  store i8 115, ptr %i.gx, align 1, !tbaa !204
  store ptr %i.gx, ptr %i.b, align 8, !tbaa !213
  br label %stem.exit162.thread.i.thread

end_hunk_7
begin_hunk_8

.lr.ph33.i144.preheader.i:                        ; preds = %.lr.ph.i121.1.i
  store i8 115, ptr %i.gv, align 1, !tbaa !204
  store i8 115, ptr %i.gs, align 1, !tbaa !204
  br label %stem.exit162.thread.i.thread

.lr.ph.i137.1.i.thread:                           ; preds = %.lr.ph.i121.2.i, %.lr.ph.i121.3.i, %.lr.ph.i121.1.i
end_hunk_8
begin_hunk_9

.lr.ph.i183.i:                                    ; preds = %hasVowel.exit425.i..lr.ph.i183.i_crit_edge, %hasVowel.exit428.i
  %i.io = phi i8 [ %i.hi, %hasVowel.exit428.i ], [ %.pre705, %hasVowel.exit425.i..lr.ph.i183.i_crit_edge ] ; 4 uses
  %storemerge = phi ptr [ %i.hh, %hasVowel.exit428.i ], [ %scevgep799.i, %hasVowel.exit425.i..lr.ph.i183.i_crit_edge ] ; 21 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !213
  switch i8 %i.io, label %.lr.ph.i209.thread.i [
    i8 116, label %.lr.ph.i183.1.i
end_hunk_9
begin_hunk_10
  br i1 %i.ir, label %.lr.ph33.i190.preheader.i, label %.lr.ph.i209.thread.i

.lr.ph33.i190.preheader.i:                        ; preds = %.lr.ph.i183.1.i
  store i8 116, ptr %storemerge, align 1, !tbaa !204
  %i.is = getelementptr inbounds i8, ptr %storemerge, i64 -1 ; 3 uses
  store i8 101, ptr %i.is, align 1, !tbaa !204
  store ptr %i.is, ptr %i.b, align 8, !tbaa !213
end_hunk_10
begin_hunk_11
  br i1 %i.iv, label %.lr.ph33.i203.preheader.i, label %.lr.ph.i209.thread.i

.lr.ph33.i203.preheader.i:                        ; preds = %.lr.ph.i196.1.i
  store i8 108, ptr %storemerge, align 1, !tbaa !204
  %i.iw = getelementptr inbounds i8, ptr %storemerge, i64 -1 ; 3 uses
  store i8 101, ptr %i.iw, align 1, !tbaa !204
  store ptr %i.iw, ptr %i.b, align 8, !tbaa !213
end_hunk_11
begin_hunk_12
  br i1 %i.iz, label %.lr.ph33.i216.preheader.i, label %.lr.ph.i209.thread.i

.lr.ph33.i216.preheader.i:                        ; preds = %.lr.ph.i209.1.i
  store i8 122, ptr %storemerge, align 1, !tbaa !204
  %i.ja = getelementptr inbounds i8, ptr %storemerge, i64 -1 ; 3 uses
  store i8 101, ptr %i.ja, align 1, !tbaa !204
  store ptr %i.ja, ptr %i.b, align 8, !tbaa !213
end_hunk_12
begin_hunk_13
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.TermSelect, align 8         ; 13 uses
  %6 = alloca %struct.Fts3SegFilter, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #72
end_hunk_13
begin_hunk_14
  %i.al = sext i32 %i.ai to i64                   ; 3 uses
  %i.am = call i32 @sqlite3_initialize()
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %sqlite3_malloc64.exit.i, label %sqlite3_malloc64.exit.thread.i

sqlite3_malloc64.exit.thread.i:                   ; preds = %bb.c
  store ptr null, ptr %5, align 8, !tbaa !213
  br label %.preheader.preheader

sqlite3_malloc64.exit.i:                          ; preds = %bb.c
  %i.an = add nsw i64 %i.al, 11
end_hunk_14
begin_hunk_15
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i36, 16
  br i1 %exitcond.not.i, label %bb.ap, label %.preheader138, !llvm.loop !4421

.preheader.preheader:                             ; preds = %sqlite3_malloc64.exit.i, %fts3TermSelectMerge.exit, %bb.v, %sqlite3_malloc64.exit.thread.i, %sqlite3_free.exit.thread.i, %bb.a
  %.2 = phi i32 [ %i.de, %sqlite3_free.exit.thread.i ], [ %i.z, %bb.a ], [ %i.ay, %bb.v ], [ 7, %sqlite3_malloc64.exit.thread.i ], [ 7, %sqlite3_malloc64.exit.i ], [ %i.ag, %fts3TermSelectMerge.exit ]
  br label %.preheader

bb.ap:                                            ; preds = %bb.ao
end_hunk_15
