Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_deserialize:bb.a
  br label %memdbFromDbSchema.exit

memdbFromDbSchema.exit.thread:                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3_free.exit.thread

memdbFromDbSchema.exit:                           ; preds = %bb.u, %bb.v
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !506 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %sqlite3_free.exit.thread, label %.thread72

.thread72:                                        ; preds = %memdbFromDbSchema.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !512 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %2, ptr %i.cm, align 8, !tbaa !520
  store i64 %3, ptr %i.cl, align 8, !tbaa !519
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %4, ptr %i.cn, align 8, !tbaa !636
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 392), align 8, !tbaa !637
  %spec.store.select = call i64 @llvm.smax.i64(i64 %4, i64 %i.cp)
  store i64 %spec.store.select, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  store i32 %5, ptr %i.cq, align 4, !tbaa !638
  br label %sqlite3_free.exit58

sqlite3_free.exit.thread:                         ; preds = %sqlite3FindDbName.exit.thread, %memdbFromDbSchema.exit.thread, %memdbFromDbSchema.exit, %sqlite3FindDbName.exit, %bb.o, %sqlite3_free.exit
  %.1 = phi i32 [ 1, %memdbFromDbSchema.exit.thread ], [ %i.az, %sqlite3_free.exit ], [ %i.bx, %bb.o ], [ 1, %sqlite3FindDbName.exit ], [ 1, %memdbFromDbSchema.exit ], [ 7, %sqlite3FindDbName.exit.thread ] ; 4 uses
  %.not47 = icmp eq ptr %2, null
  %i.cr = and i32 %5, 1
  %.not48 = icmp eq i32 %i.cr, 0
  %or.cond49 = or i1 %.not47, %.not48
  br i1 %or.cond49, label %sqlite3_free.exit58, label %bb.w

bb.w:                                             ; preds = %sqlite3_free.exit.thread
  %i.cs = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i54 = icmp eq i32 %i.cs, 0
  br i1 %.not.i54, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i55, label %sqlite3_mutex_enter.exit.i56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.cu(ptr noundef nonnull %i.ct) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i56

sqlite3_mutex_enter.exit.i56:                     ; preds = %bb.y, %bb.x
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.cw = call i32 %i.cv(ptr noundef nonnull %2) #58, !inline_history !277
  %i.cx = sext i32 %i.cw to i64
  %i.cy = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.cz = sub nsw i64 %i.cy, %i.cx
  store i64 %i.cz, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.da = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.db = add nsw i64 %i.da, -1
  store i64 %i.db, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.dc(ptr noundef nonnull %2) #58, !inline_history !278
  %i.dd = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i57 = icmp eq ptr %i.dd, null
  br i1 %.not.i4.i57, label %sqlite3_free.exit58, label %bb.z

bb.z:                                             ; preds = %sqlite3_mutex_enter.exit.i56
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.de(ptr noundef nonnull %i.dd) #58, !inline_history !279
  br label %sqlite3_free.exit58

bb.aa:                                            ; preds = %bb.w
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.df(ptr noundef nonnull %2) #58, !inline_history !278
  br label %sqlite3_free.exit58

sqlite3_free.exit58:                              ; preds = %bb.aa, %bb.z, %sqlite3_mutex_enter.exit.i56, %.thread72, %sqlite3_free.exit.thread
  %.178 = phi i32 [ 0, %.thread72 ], [ %.1, %sqlite3_free.exit.thread ], [ %.1, %sqlite3_mutex_enter.exit.i56 ], [ %.1, %bb.z ], [ %.1, %bb.aa ]
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %.not.i59 = icmp eq ptr %i.dg, null
  br i1 %.not.i59, label %sqlite3_mutex_leave.exit, label %bb.ab

bb.ab:                                            ; preds = %sqlite3_free.exit58
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.dh(ptr noundef nonnull %i.dg) #58, !inline_history !23
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3_free.exit58, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  ret i32 %.178
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @sqlite3_database_file_object(ptr nofree noundef readonly captures(none) %0) #14 {
bb.a:
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.a, %.critedge.backedge ] ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %.0, i64 -1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !231
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge.backedge

bb.b:                                             ; preds = %.critedge
  %i.c = getelementptr inbounds i8, ptr %.0, i64 -2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !231
  %.not8 = icmp eq i8 %i.d, 0
  br i1 %.not8, label %bb.c, label %.critedge.backedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %.0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !231
  %.not9 = icmp eq i8 %i.f, 0
  br i1 %.not9, label %bb.d, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.c, %bb.b, %.critedge, %bb.d
  br label %.critedge, !llvm.loop !639

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %.0, i64 -4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !231
  %.not10 = icmp eq i8 %i.h, 0
  br i1 %.not10, label %bb.e, label %.critedge.backedge

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %.0, i64 -12
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !640
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !535
  ret ptr %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @sqlite3_enable_shared_cache(i32 noundef %0) #15 {
bb.a:
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 332), align 4, !tbaa !641
  ret i32 0
}

; Function Attrs: nounwind uwtable
define ptr @sqlite3_backup_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.c(ptr noundef nonnull %i.b) #58, !inline_history !20
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i45 = icmp eq ptr %i.e, null
  br i1 %.not.i45, label %sqlite3_mutex_enter.exit46, label %bb.c

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.f(ptr noundef nonnull %i.e) #58, !inline_history !20
  br label %sqlite3_mutex_enter.exit46

sqlite3_mutex_enter.exit46:                       ; preds = %sqlite3_mutex_enter.exit, %bb.c
  %i.g = icmp eq ptr %2, %0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit46
  tail call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.20)
  br label %sqlite3_free.exit.thread

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit46
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %sqlite3Strlen30.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #59
  %i.j = and i64 %i.i, 1073741823
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.j, %bb.f ], [ 0, %bb.e ]   ; 2 uses
  %i.k = add nuw nsw i64 %.0.i, 81                ; 2 uses
  %i.l = tail call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) %i.k) ; 13 uses
  %.not.i47 = icmp eq ptr %i.l, null
  br i1 %.not.i47, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sqlite3Strlen30.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 7, ptr %i.m, align 8, !tbaa !579
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef 7)
  br label %sqlite3_free.exit.thread

bb.h:                                             ; preds = %sqlite3Strlen30.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.l, i8 0, i64 range(i64 -180388626400, 180388626381) %i.k, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %1, i64 %.0.i, i1 false)
  %i.p = tail call fastcc ptr @findBtree(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %i.q = tail call fastcc ptr @findBtree(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %3) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.q, ptr %i.r, align 8, !tbaa !644
  store ptr %0, ptr %i.l, align 8, !tbaa !645
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %2, ptr %i.s, align 8, !tbaa !646
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 1, ptr %i.t, align 8, !tbaa !647
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  store i32 0, ptr %i.u, align 4, !tbaa !648
  %i.v = icmp eq ptr %i.q, null
  %i.w = icmp eq ptr %i.p, null
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %i.p, i64 16
  %.val = load i8, ptr %i.x, align 8, !tbaa !649
  %.not.i48 = icmp eq i8 %.val, 0
  br i1 %.not.i48, label %sqlite3_free.exit, label %checkReadTransaction.exit

checkReadTransaction.exit:                        ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.108), !inline_history !650
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %checkReadTransaction.exit
  %i.y = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i50 = icmp eq i32 %i.y, 0
  br i1 %.not.i50, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.aa(ptr noundef nonnull %i.z) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.l, %bb.k
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %i.l) #58, !inline_history !277
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.af = sub nsw i64 %i.ae, %i.ad
  store i64 %i.af, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ah = add nsw i64 %i.ag, -1
  store i64 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.ai(ptr noundef nonnull %i.l) #58, !inline_history !278
  %i.aj = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.aj, null
  br i1 %.not.i4.i, label %sqlite3_free.exit.thread, label %bb.m

bb.m:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.ak(ptr noundef nonnull %i.aj) #58, !inline_history !279
  br label %sqlite3_free.exit.thread

bb.n:                                             ; preds = %bb.j
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.al(ptr noundef nonnull %i.l) #58, !inline_history !278
  br label %sqlite3_free.exit.thread

sqlite3_free.exit:                                ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !651
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !651
  br label %sqlite3_free.exit.thread

sqlite3_free.exit.thread:                         ; preds = %bb.g, %bb.d, %bb.n, %bb.m, %sqlite3_mutex_enter.exit.i, %sqlite3_free.exit
  %.260 = phi ptr [ %i.l, %sqlite3_free.exit ], [ null, %sqlite3_mutex_enter.exit.i ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.d ], [ null, %bb.g ]
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !28  ; 2 uses
  %.not.i51 = icmp eq ptr %i.ap, null
  br i1 %.not.i51, label %sqlite3_mutex_leave.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3_free.exit.thread
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.aq(ptr noundef nonnull %i.ap) #58, !inline_history !23
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3_free.exit.thread, %bb.o
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %.not.i52 = icmp eq ptr %i.ar, null
  br i1 %.not.i52, label %sqlite3_mutex_leave.exit53, label %bb.p

bb.p:                                             ; preds = %sqlite3_mutex_leave.exit
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.as(ptr noundef nonnull %i.ar) #58, !inline_history !23
  br label %sqlite3_mutex_leave.exit53

sqlite3_mutex_leave.exit53:                       ; preds = %sqlite3_mutex_leave.exit, %bb.p
  ret ptr %.260
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3ErrorWithMsg(ptr noundef initializes((80, 84)) %0, i32 noundef %1, ptr noundef %2, ...) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !579
  %i.b = icmp ne i32 %1, 3082
  %i.c = and i32 %1, 251
  %or.cond.i = icmp eq i32 %i.c, 10
  %or.cond6.i = and i1 %i.b, %or.cond.i
  br i1 %or.cond6.i, label %bb.b, label %sqlite3SystemError.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !548    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !652  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %sqlite3OsGetLastError.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 %i.f(ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef null) #58, !inline_history !653
  br label %sqlite3OsGetLastError.exit.i

sqlite3OsGetLastError.exit.i:                     ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.h, ptr %i.i, align 4, !tbaa !654
  br label %sqlite3SystemError.exit

sqlite3SystemError.exit:                          ; preds = %bb.a, %sqlite3OsGetLastError.exit.i
  %i.j = icmp eq ptr %2, null
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %sqlite3SystemError.exit
  store i32 %1, ptr %i.a, align 8, !tbaa !579
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef %1)
  br label %sqlite3Error.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !595
  %.not7.i = icmp eq ptr %i.l, null
  br i1 %.not7.i, label %bb.f, label %.split6.i

.split6.i:                                        ; preds = %bb.e
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef 0)
  br label %sqlite3Error.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -1, ptr %i.m, align 4, !tbaa !378
  br label %sqlite3Error.exit

bb.g:                                             ; preds = %sqlite3SystemError.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !595
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %sqlite3DbMallocRaw.exit.i.i, label %bb.h

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.g
  %i.p = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !655 ; 5 uses
  %.not.i.i14 = icmp eq ptr %i.p, null
  br i1 %.not.i.i14, label %sqlite3ValueNew.exit.thread, label %sqlite3ValueNew.exit

sqlite3ValueNew.exit.thread:                      ; preds = %sqlite3DbMallocRaw.exit.i.i
  store ptr null, ptr %i.n, align 8, !tbaa !595
  br label %sqlite3Error.exit

sqlite3ValueNew.exit:                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.p, i8 0, i64 56, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i16 1, ptr %i.q, align 4, !tbaa !166
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %0, ptr %i.r, align 8, !tbaa !161
  store ptr %i.p, ptr %i.n, align 8, !tbaa !595
  br label %bb.h

bb.h:                                             ; preds = %sqlite3ValueNew.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.s = call fastcc ptr @sqlite3VMPrintf(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !595  ; 2 uses
  %.not.i15 = icmp eq ptr %i.t, null
  br i1 %.not.i15, label %sqlite3ValueSetStr.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %i.t, ptr noundef %i.s, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull @sqlite3RowSetClear), !inline_history !656 ; 0 uses
  br label %sqlite3ValueSetStr.exit

sqlite3ValueSetStr.exit:                          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %sqlite3Error.exit

sqlite3Error.exit:                                ; preds = %sqlite3ValueNew.exit.thread, %bb.f, %.split6.i, %.split.i, %sqlite3ValueSetStr.exit
  ret void
}
end_hunk_0
begin_hunk_1_@sqlite3FindFunction:bb.a
  %i.ba = and i32 %i.az, 3
  %i.bb = icmp eq i32 %i.ba, %i.an
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = or disjoint i32 %..i, 2
  br label %matchQuality.exit

bb.r:                                             ; preds = %bb.p
  %i.bd = and i32 %i.az, %i.an
  %i.be = lshr i32 %i.bd, 1
  %i.bf = and i32 %i.be, 1
  %spec.select.i = add nuw nsw i32 %i.bf, %..i
  br label %matchQuality.exit

matchQuality.exit:                                ; preds = %bb.m, %bb.n, %bb.o, %bb.q, %bb.r
  %.017.i = phi i32 [ %i.at, %bb.m ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.bc, %bb.q ], [ %spec.select.i, %bb.r ] ; 2 uses
  %i.bg = icmp samesign ugt i32 %.017.i, %.066126
  %spec.select = select i1 %i.bg, ptr %.072127, ptr %.067125 ; 5 uses
  %spec.select89 = tail call i32 @llvm.umax.i32(i32 %.017.i, i32 %.066126) ; 2 uses
  %.072.in = getelementptr inbounds nuw i8, ptr %.072127, i64 16
  %.072 = load ptr, ptr %.072.in, align 8, !tbaa !459 ; 2 uses
  %.not = icmp eq ptr %.072, null
  br i1 %.not, label %._crit_edge, label %bb.k, !llvm.loop !1284

._crit_edge:                                      ; preds = %matchQuality.exit
  %.not82 = icmp eq i8 %4, 0
  br i1 %.not82, label %bb.s, label %.loopexit

._crit_edge.thread:                               ; preds = %sqlite3HashFind.exit
  %.not82167 = icmp eq i8 %4, 0
  br i1 %.not82167, label %.thread, label %.loopexit.thread

bb.s:                                             ; preds = %._crit_edge
  %i.bh = icmp eq ptr %spec.select, null
  br i1 %i.bh, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !703
  %i.bk = and i32 %i.bj, 2
  %.not83 = icmp eq i32 %i.bk, 0
  br i1 %.not83, label %.thread111, label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.t, %bb.s
  %.067.lcssa168170 = phi ptr [ null, %bb.s ], [ %spec.select, %bb.t ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.bl = zext i8 %i.f to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !231
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %.0.i, %i.bo
  %i.bq = urem i32 %i.bp, 23
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @sqlite3BuiltinFunctions, i64 %i.br
  %.011.i = load ptr, ptr %i.bs, align 8, !tbaa !231 ; 2 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %.loopexit.thread182, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %sqlite3StrICmp.exit.i
  %.013.i = phi ptr [ %.0.i93, %sqlite3StrICmp.exit.i ], [ %.011.i, %.thread ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !227
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph.i
  %.013.i.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %i.cf, %bb.x ] ; 2 uses
  %.012.i.i = phi ptr [ %1, %.lr.ph.i ], [ %i.cg, %bb.x ] ; 2 uses
  %i.bv = load i8, ptr %.013.i.i, align 1, !tbaa !231 ; 3 uses
  %i.bw = load i8, ptr %.012.i.i, align 1, !tbaa !231 ; 2 uses
  %i.bx = icmp eq i8 %i.bv, %i.bw
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.by = icmp eq i8 %i.bv, 0
  br i1 %i.by, label %.lr.ph133, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bz = zext i8 %i.bv to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !231
  %i.cc = zext i8 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !231
  %.not.i.i92 = icmp eq i8 %i.cb, %i.ce
  br i1 %.not.i.i92, label %bb.x, label %sqlite3StrICmp.exit.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %bb.u

sqlite3StrICmp.exit.i:                            ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i, i64 64
  %.0.i93 = load ptr, ptr %i.ch, align 8, !tbaa !231 ; 2 uses
  %.not.i94 = icmp eq ptr %.0.i93, null
  br i1 %.not.i94, label %.loopexit, label %.lr.ph.i, !llvm.loop !232

.lr.ph133:                                        ; preds = %bb.v
  %i.ci = icmp eq i32 %2, -2
  %i.cj = zext i8 %3 to i32                       ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph133, %matchQuality.exit100
  %.2132 = phi i32 [ 0, %.lr.ph133 ], [ %spec.select91, %matchQuality.exit100 ] ; 2 uses
  %.269131 = phi ptr [ %.067.lcssa168170, %.lr.ph133 ], [ %spec.select90, %matchQuality.exit100 ]
  %.173130 = phi ptr [ %.013.i, %.lr.ph133 ], [ %i.de, %matchQuality.exit100 ] ; 5 uses
  %i.ck = load i16, ptr %.173130, align 8, !tbaa !1278 ; 3 uses
  %i.cl = sext i16 %i.ck to i32                   ; 2 uses
  %.not.i95 = icmp eq i32 %2, %i.cl
  br i1 %.not.i95, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.ci, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %.173130, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1279
  %i.co = icmp eq ptr %i.cn, null
  %i.cp = select i1 %i.co, i32 0, i32 6
  br label %matchQuality.exit100

bb.ab:                                            ; preds = %bb.z
  %i.cq = icmp sgt i16 %i.ck, -1
  br i1 %i.cq, label %matchQuality.exit100, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = icmp samesign ult i16 %i.ck, -2
  %i.cs = sub nuw nsw i32 -2, %i.cl
  %i.ct = icmp slt i32 %2, %i.cs
  %or.cond.i96 = select i1 %i.cr, i1 %i.ct, i1 false
  br i1 %or.cond.i96, label %matchQuality.exit100, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %..i97 = phi i32 [ 1, %bb.ac ], [ 4, %bb.y ]    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.173130, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !837 ; 2 uses
  %i.cw = and i32 %i.cv, 3
  %i.cx = icmp eq i32 %i.cw, %i.cj
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cy = or disjoint i32 %..i97, 2
  br label %matchQuality.exit100

bb.af:                                            ; preds = %bb.ad
  %i.cz = and i32 %i.cv, %i.cj
  %i.da = lshr i32 %i.cz, 1
  %i.db = and i32 %i.da, 1
  %spec.select.i98 = add nuw nsw i32 %i.db, %..i97
  br label %matchQuality.exit100

matchQuality.exit100:                             ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af
  %.017.i99 = phi i32 [ %i.cp, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ %i.cy, %bb.ae ], [ %spec.select.i98, %bb.af ] ; 2 uses
  %i.dc = icmp samesign ugt i32 %.017.i99, %.2132
  %spec.select90 = select i1 %i.dc, ptr %.173130, ptr %.269131 ; 2 uses
  %spec.select91 = tail call i32 @llvm.umax.i32(i32 %.017.i99, i32 %.2132) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.173130, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !233 ; 2 uses
  %.not84 = icmp eq ptr %i.de, null
  br i1 %.not84, label %.loopexit, label %bb.y, !llvm.loop !1285

.loopexit:                                        ; preds = %sqlite3StrICmp.exit.i, %matchQuality.exit100, %._crit_edge
  %.471 = phi ptr [ %spec.select, %._crit_edge ], [ %spec.select90, %matchQuality.exit100 ], [ %.067.lcssa168170, %sqlite3StrICmp.exit.i ]
  %.4 = phi i32 [ %spec.select89, %._crit_edge ], [ %spec.select91, %matchQuality.exit100 ], [ 0, %sqlite3StrICmp.exit.i ]
  %i.df = icmp ne i8 %4, 0                        ; 2 uses
  %i.dg = icmp slt i32 %.4, 6
  %or.cond = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond, label %.loopexit.thread, label %.loopexit.thread182

.loopexit.thread:                                 ; preds = %._crit_edge.thread, %.loopexit
  %narrow = add nuw nsw i32 %.0.i, 73
  %i.dh = zext nneg i32 %narrow to i64            ; 3 uses
  %.not.i.i101 = icmp eq ptr %0, null
  br i1 %.not.i.i101, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.thread
  %i.di = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef %i.dh), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

bb.ah:                                            ; preds = %.loopexit.thread
  %i.dj = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.dh), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.ah, %bb.ag
  %.0.i.i102 = phi ptr [ %i.di, %bb.ag ], [ %i.dj, %bb.ah ] ; 11 uses
  %.not.i103 = icmp eq ptr %.0.i.i102, null
  br i1 %.not.i103, label %.thread115, label %bb.ai

bb.ai:                                            ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i102, i8 0, i64 %i.dh, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 72 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 56 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !227
  %i.dm = trunc i32 %2 to i16
  store i16 %i.dm, ptr %.0.i.i102, align 8, !tbaa !1278
  %i.dn = zext i8 %3 to i32
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 4
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !837
  %i.dp = add nuw nsw i32 %.0.i, 1
  %i.dq = zext nneg i32 %i.dp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.dq, i1 false)
  %i.dr = load i8, ptr %i.dk, align 8, !tbaa !231 ; 2 uses
  %.not86136 = icmp eq i8 %i.dr, 0
  br i1 %.not86136, label %._crit_edge140, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.ai, %.lr.ph139
  %i.ds = phi i8 [ %i.dx, %.lr.ph139 ], [ %i.dr, %bb.ai ]
  %.065137 = phi ptr [ %i.dw, %.lr.ph139 ], [ %i.dk, %bb.ai ] ; 2 uses
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !231
  store i8 %i.dv, ptr %.065137, align 1, !tbaa !231
  %i.dw = getelementptr inbounds nuw i8, ptr %.065137, i64 1 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !231 ; 2 uses
  %.not86 = icmp eq i8 %i.dx, 0
  br i1 %.not86, label %._crit_edge140.loopexit, label %.lr.ph139, !llvm.loop !1286

._crit_edge140.loopexit:                          ; preds = %.lr.ph139
  %.pre = load ptr, ptr %i.dl, align 8, !tbaa !227
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit, %bb.ai
  %i.dy = phi ptr [ %.pre, %._crit_edge140.loopexit ], [ %i.dk, %bb.ai ]
  %i.dz = tail call fastcc ptr @sqlite3HashInsert(ptr noundef nonnull %i.e, ptr noundef %i.dy, ptr noundef nonnull %.0.i.i102) ; 2 uses
  %.not87 = icmp eq ptr %i.dz, %.0.i.i102
  br i1 %.not87, label %sqlite3DbFree.exit, label %.thread111.thread

sqlite3DbFree.exit:                               ; preds = %._crit_edge140
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i102)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !563
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.aj, label %sqlite3OomFault.exit.thread

bb.aj:                                            ; preds = %sqlite3DbFree.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !564
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %bb.ak, label %sqlite3OomFault.exit.thread

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.ea, align 1, !tbaa !563
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !565
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 400
  store atomic volatile i32 1, ptr %i.ej monotonic, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !566
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !566
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i16 0, ptr %i.en, align 4, !tbaa !567
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !309 ; 2 uses
  %.not.i105 = icmp eq ptr %i.ep, null
  br i1 %.not.i105, label %sqlite3OomFault.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ep, ptr noundef nonnull @.str.125), !inline_history !628
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !309 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store i32 7, ptr %i.er, align 8, !tbaa !310
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !569 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit.thread, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.an, %.lr.ph.i106
  %.020.i = phi ptr [ %.0.i107, %.lr.ph.i106 ], [ %.018.i, %bb.an ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !321
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !321
  %i.ev = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.ev, align 8, !tbaa !310
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i107 = load ptr, ptr %.0.in.i, align 8, !tbaa !569 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i107, null
  br i1 %.not16.i, label %sqlite3OomFault.exit.thread, label %.lr.ph.i106, !llvm.loop !570

.thread111.thread:                                ; preds = %._crit_edge140
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 16
  store ptr %i.dz, ptr %i.ew, align 8, !tbaa !233
  br label %sqlite3OomFault.exit.thread

.loopexit.thread182:                              ; preds = %.thread, %.loopexit
  %i.ex = phi i1 [ %i.df, %.loopexit ], [ false, %.thread ]
  %.471176 = phi ptr [ %.471, %.loopexit ], [ %.067.lcssa168170, %.thread ] ; 2 uses
  %.not88 = icmp eq ptr %.471176, null
  br i1 %.not88, label %.thread115, label %.thread111

.thread111:                                       ; preds = %bb.t, %.loopexit.thread182
  %.5114 = phi ptr [ %.471176, %.loopexit.thread182 ], [ %spec.select, %bb.t ] ; 2 uses
  %i.ey = phi i1 [ %i.ex, %.loopexit.thread182 ], [ false, %bb.t ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.5114, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1279
  %i.fb = icmp ne ptr %i.fa, null
  %or.cond4 = or i1 %i.ey, %i.fb
  br i1 %or.cond4, label %sqlite3OomFault.exit.thread, label %.thread115

.thread115:                                       ; preds = %sqlite3DbMallocRaw.exit.i, %.thread111, %.loopexit.thread182
  br label %sqlite3OomFault.exit.thread

sqlite3OomFault.exit.thread:                      ; preds = %.lr.ph.i106, %.thread111.thread, %sqlite3DbFree.exit, %bb.aj, %bb.am, %bb.an, %.thread111, %.thread115
  %.175 = phi ptr [ %.5114, %.thread111 ], [ null, %.thread115 ], [ null, %sqlite3DbFree.exit ], [ null, %bb.an ], [ null, %bb.am ], [ null, %bb.aj ], [ %.0.i.i102, %.thread111.thread ], [ null, %.lr.ph.i106 ]
  ret ptr %.175
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3InvalidFunction(ptr nofree noundef captures(none) initializes((36, 40)) %0, i32 %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !853
  %i.e = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1493, ptr noundef %i.d) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.f, align 4, !tbaa !27
  %i.g = load ptr, ptr %0, align 8, !tbaa !296
  %i.h = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.g, ptr noundef %i.e, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !838 ; 0 uses
  %i.i = icmp eq ptr %i.e, null
  br i1 %i.i, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.l(ptr noundef nonnull %i.k) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.e) #58, !inline_history !277
  %i.o = sext i32 %i.n to i64
  %i.p = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.q = sub nsw i64 %i.p, %i.o
  store i64 %i.q, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.s = add nsw i64 %i.r, -1
  store i64 %i.s, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.t(ptr noundef nonnull %i.e) #58, !inline_history !278
  %i.u = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.u, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.v(ptr noundef nonnull %i.u) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.w(ptr noundef nonnull %i.e) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @sqlite3_trace(ptr nofree noundef captures(none) initializes((110, 111), (240, 248)) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.c(ptr noundef nonnull %i.b) #58, !inline_history !20
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ null, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !815
  %.not = icmp eq ptr %1, null
  %i.g = select i1 %.not, i8 0, i8 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 %i.g, ptr %i.h, align 2, !tbaa !546
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %1, ptr %i.i, align 8, !tbaa !231
  store ptr %2, ptr %i.e, align 8, !tbaa !815
  %.not.i10 = icmp eq ptr %i.d, null
end_hunk_1
begin_hunk_2_@sqlite3VdbeExec:bb.a
  %i.byk = trunc i64 %.33100 to i8
  %i.byl = getelementptr inbounds nuw i8, ptr %.03104, i64 2
  store i8 %i.byk, ptr %i.byl, align 1, !tbaa !231
  %i.bym = lshr i64 %.33100, 8
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.sq
  %.43101 = phi i64 [ %i.bym, %bb.su ], [ %.03097, %bb.sq ] ; 2 uses
  %i.byn = trunc i64 %.43101 to i8
  %i.byo = getelementptr inbounds nuw i8, ptr %.03104, i64 1
  store i8 %i.byn, ptr %i.byo, align 1, !tbaa !231
  %i.byp = lshr i64 %.43101, 8
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %bb.sq
  %.53102 = phi i64 [ %i.byp, %bb.sv ], [ %.03097, %bb.sq ]
  %i.byq = trunc i64 %.53102 to i8
  store i8 %i.byq, ptr %.03104, align 1, !tbaa !231
  %i.byr = zext i8 %i.bxu to i64
  %i.bys = getelementptr inbounds nuw i8, ptr %.03104, i64 %i.byr
  br label %bb.tf

bb.sx:                                            ; preds = %bb.so
  %i.byt = icmp ult i32 %i.bxo, 128
  br i1 %i.byt, label %bb.sy, label %bb.tb

bb.sy:                                            ; preds = %bb.sx
  %i.byu = trunc nuw nsw i32 %i.bxo to i8
  %i.byv = getelementptr inbounds nuw i8, ptr %.13107, i64 1 ; 3 uses
  store i8 %i.byu, ptr %.13107, align 1, !tbaa !231
  %i.byw = icmp samesign ugt i32 %i.bxo, 13
  br i1 %i.byw, label %bb.sz, label %bb.tf

bb.sz:                                            ; preds = %bb.sy
  %i.byx = getelementptr inbounds nuw i8, ptr %.23123, i64 16 ; 2 uses
  %i.byy = load i32, ptr %i.byx, align 8, !tbaa !818 ; 2 uses
  %i.byz = icmp sgt i32 %i.byy, 0
  br i1 %i.byz, label %bb.ta, label %bb.tf

bb.ta:                                            ; preds = %bb.sz
  %i.bza = getelementptr inbounds nuw i8, ptr %.23123, i64 8
  %i.bzb = load ptr, ptr %i.bza, align 8, !tbaa !297
  %i.bzc = zext nneg i32 %i.byy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03104, ptr align 1 %i.bzb, i64 %i.bzc, i1 false)
  %i.bzd = load i32, ptr %i.byx, align 8, !tbaa !818
  %i.bze = sext i32 %i.bzd to i64
  %i.bzf = getelementptr inbounds i8, ptr %.03104, i64 %i.bze
  br label %bb.tf

bb.tb:                                            ; preds = %bb.sx
  %i.bzg = icmp ult i32 %i.bxo, 16384
  br i1 %i.bzg, label %bb.tc, label %bb.td

bb.tc:                                            ; preds = %bb.tb
  %i.bzh = lshr i32 %i.bxo, 7
  %i.bzi = trunc nuw nsw i32 %i.bzh to i8
  %i.bzj = or disjoint i8 %i.bzi, -128
  store i8 %i.bzj, ptr %.13107, align 1, !tbaa !231
  %i.bzk = trunc i32 %i.bxo to i8
  %i.bzl = and i8 %i.bzk, 127
  %i.bzm = getelementptr inbounds nuw i8, ptr %.13107, i64 1
  store i8 %i.bzl, ptr %i.bzm, align 1, !tbaa !231
  br label %sqlite3PutVarint.exit

bb.td:                                            ; preds = %bb.tb
  %i.bzn = zext i32 %i.bxo to i64
  %i.bzo = call fastcc i32 @putVarint64(ptr noundef %.13107, i64 noundef %i.bzn)
  %i.bzp = sext i32 %i.bzo to i64
  br label %sqlite3PutVarint.exit

sqlite3PutVarint.exit:                            ; preds = %bb.tc, %bb.td
  %.0.i4255 = phi i64 [ %i.bzp, %bb.td ], [ 2, %bb.tc ]
  %i.bzq = getelementptr inbounds i8, ptr %.13107, i64 %.0.i4255 ; 2 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %.23123, i64 16 ; 2 uses
  %i.bzs = load i32, ptr %i.bzr, align 8, !tbaa !818 ; 2 uses
  %.not3761 = icmp eq i32 %i.bzs, 0
  br i1 %.not3761, label %bb.tf, label %bb.te

bb.te:                                            ; preds = %sqlite3PutVarint.exit
  %i.bzt = getelementptr inbounds nuw i8, ptr %.23123, i64 8
  %i.bzu = load ptr, ptr %i.bzt, align 8, !tbaa !297
  %i.bzv = sext i32 %i.bzs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03104, ptr align 1 %i.bzu, i64 %i.bzv, i1 false)
  %i.bzw = load i32, ptr %i.bzr, align 8, !tbaa !818
  %i.bzx = sext i32 %i.bzw to i64
  %i.bzy = getelementptr inbounds i8, ptr %.03104, i64 %i.bzx
  br label %bb.tf

bb.tf:                                            ; preds = %bb.sp, %bb.ta, %bb.sz, %bb.sy, %bb.te, %sqlite3PutVarint.exit, %bb.sw
  %.23108 = phi ptr [ %i.bxr, %bb.sp ], [ %i.bxr, %bb.sw ], [ %i.byv, %bb.ta ], [ %i.byv, %bb.sz ], [ %i.byv, %bb.sy ], [ %i.bzq, %bb.te ], [ %i.bzq, %sqlite3PutVarint.exit ]
  %.13105 = phi ptr [ %.03104, %bb.sp ], [ %i.bys, %bb.sw ], [ %i.bzf, %bb.ta ], [ %.03104, %bb.sz ], [ %.03104, %bb.sy ], [ %i.bzy, %bb.te ], [ %.03104, %sqlite3PutVarint.exit ]
  %i.bzz = icmp eq ptr %.23123, %i.bst
  %i.caa = getelementptr inbounds nuw i8, ptr %.23123, i64 56
  br i1 %i.bzz, label %.critedge, label %bb.so

bb.tg:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #58
  %i.cab = load ptr, ptr %i.ca, align 8, !tbaa !989
  %i.cac = getelementptr inbounds nuw i8, ptr %.02972, i64 4
  %i.cad = load i32, ptr %i.cac, align 4, !tbaa !572
  %i.cae = sext i32 %i.cad to i64
  %i.caf = getelementptr inbounds [8 x i8], ptr %i.cab, i64 %i.cae
  %i.cag = load ptr, ptr %i.caf, align 8, !tbaa !994
  %i.cah = getelementptr inbounds nuw i8, ptr %i.cag, i64 40
  %i.cai = load ptr, ptr %i.cah, align 8, !tbaa !231 ; 2 uses
  %i.caj = getelementptr inbounds nuw i8, ptr %.02972, i64 12
  %i.cak = load i32, ptr %i.caj, align 4, !tbaa !575
  %.not3745 = icmp eq i32 %i.cak, 0
  br i1 %.not3745, label %bb.ti, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.cal = call fastcc i64 @sqlite3BtreeRowCountEst(ptr noundef %i.cai)
  store i64 %i.cal, ptr %i.s, align 8, !tbaa !21
  br label %bb.tj

bb.ti:                                            ; preds = %bb.tg
  store i64 0, ptr %i.s, align 8, !tbaa !21
  %i.cam = call fastcc i32 @sqlite3BtreeCount(ptr noundef %i.ao, ptr noundef %i.cai, ptr noundef %i.s) ; 2 uses
  %.not3746 = icmp eq i32 %i.cam, 0
  br i1 %.not3746, label %bb.tj, label %bb.tm

bb.tj:                                            ; preds = %bb.ti, %bb.th
  %.25 = phi i32 [ %.02986, %bb.th ], [ 0, %bb.ti ]
  %.val4063 = load ptr, ptr %i.ar, align 8, !tbaa !556
  %i.can = getelementptr i8, ptr %.02972, i64 8
  %.02972.val4064 = load i32, ptr %i.can, align 8, !tbaa !574
  %i.cao = sext i32 %.02972.val4064 to i64
  %i.cap = getelementptr inbounds [56 x i8], ptr %.val4063, i64 %i.cao ; 3 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 20 ; 2 uses
  %i.car = load i16, ptr %i.caq, align 4, !tbaa !166
  %i.cas = and i16 %i.car, -28672
  %.not.i4256 = icmp eq i16 %i.cas, 0
  br i1 %.not.i4256, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.cat = call fastcc ptr @out2PrereleaseWithClear(ptr noundef nonnull %i.cap) ; 0 uses
  br label %.thread4797

bb.tl:                                            ; preds = %bb.tj
  store i16 4, ptr %i.caq, align 4, !tbaa !166
  br label %.thread4797

.thread4797:                                      ; preds = %bb.tl, %bb.tk
  %i.cau = load i64, ptr %i.s, align 8, !tbaa !21
  store i64 %i.cau, ptr %i.cap, align 8, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #58
  br label %sqlite3VdbeChangeEncoding.exit4425.thread

bb.tm:                                            ; preds = %bb.ti
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #58
  br label %sqlite3VdbeMemSetNull.exit4222

bb.tn:                                            ; preds = %bb.h
  %i.cav = getelementptr inbounds nuw i8, ptr %.02972, i64 4
  %i.caw = load i32, ptr %i.cav, align 4, !tbaa !572 ; 6 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %.02972, i64 16
  %i.cay = load ptr, ptr %i.cax, align 8, !tbaa !231 ; 5 uses
  %i.caz = icmp eq i32 %i.caw, 0
  br i1 %i.caz, label %bb.to, label %bb.tx

bb.to:                                            ; preds = %bb.tn
  %i.cba = load i32, ptr %i.gw, align 8, !tbaa !553
  %i.cbb = icmp sgt i32 %i.cba, 0
  br i1 %i.cbb, label %bb.tp, label %bb.tq

bb.tp:                                            ; preds = %bb.to
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %0, ptr noundef nonnull @.str.356)
  br label %sqlite3VdbeMemSetNull.exit4222

bb.tq:                                            ; preds = %bb.to
  %i.cbc = icmp eq ptr %i.cay, null
  br i1 %i.cbc, label %sqlite3Strlen30.exit4259, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.cbd = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cay) #59
  %i.cbe = trunc i64 %i.cbd to i32
  %i.cbf = and i32 %i.cbe, 1073741823
  br label %sqlite3Strlen30.exit4259

sqlite3Strlen30.exit4259:                         ; preds = %bb.tq, %bb.tr
  %.0.i4258 = phi i32 [ %i.cbf, %bb.tr ], [ 0, %bb.tq ] ; 2 uses
  %i.cbg = load i32, ptr %i.cu, align 4, !tbaa !786
  %i.cbh = load i32, ptr %i.cv, align 8, !tbaa !670
  %i.cbi = add nsw i32 %i.cbh, %i.cbg
  %i.cbj = call fastcc i32 @sqlite3VtabSavepoint(ptr noundef nonnull %i.ao, i32 noundef 0, i32 noundef %i.cbi) ; 2 uses
  %.not3741 = icmp eq i32 %i.cbj, 0
  br i1 %.not3741, label %bb.ts, label %sqlite3VdbeMemSetNull.exit4222.loopexit12572

bb.ts:                                            ; preds = %sqlite3Strlen30.exit4259
  %narrow = add nuw nsw i32 %.0.i4258, 33
  %i.cbk = zext nneg i32 %narrow to i64
  %i.cbl = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.ao, i64 noundef %i.cbk) ; 6 uses
  %.not3742 = icmp eq ptr %i.cbl, null
  br i1 %.not3742, label %.thread4824, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbl, i64 32 ; 2 uses
  store ptr %i.cbm, ptr %i.cbl, align 8, !tbaa !2318
  %i.cbn = add nuw nsw i32 %.0.i4258, 1
  %i.cbo = zext nneg i32 %i.cbn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cbm, ptr noundef nonnull align 1 dereferenceable(1) %i.cay, i64 %i.cbo, i1 false)
  %i.cbp = load i8, ptr %i.cx, align 1, !tbaa !581
  %.not3743 = icmp eq i8 %i.cbp, 0
  br i1 %.not3743, label %bb.tv, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  store i8 0, ptr %i.cx, align 1, !tbaa !581
  store i8 1, ptr %i.gx, align 1, !tbaa !787
  br label %bb.tw

bb.tv:                                            ; preds = %bb.tt
  %i.cbq = load i32, ptr %i.cv, align 8, !tbaa !670
  %i.cbr = add nsw i32 %i.cbq, 1
  store i32 %i.cbr, ptr %i.cv, align 8, !tbaa !670
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.tu
  %i.cbs = load ptr, ptr %i.gv, align 8, !tbaa !782
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbl, i64 24
  store ptr %i.cbs, ptr %i.cbt, align 8, !tbaa !783
  store ptr %i.cbl, ptr %i.gv, align 8, !tbaa !782
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbl, i64 8
  %i.cbv = load <2 x i64>, ptr %i.dq, align 8, !tbaa !21
  store <2 x i64> %i.cbv, ptr %i.cbu, align 8, !tbaa !21
  br label %.thread4824

bb.tx:                                            ; preds = %bb.tn
  %.030966269 = load ptr, ptr %i.gv, align 8, !tbaa !2319 ; 2 uses
  %.not37306270 = icmp eq ptr %.030966269, null
  br i1 %.not37306270, label %.critedge3917, label %.lr.ph6274

.lr.ph6274:                                       ; preds = %bb.tx, %sqlite3StrICmp.exit
  %.030966272 = phi ptr [ %.03096, %sqlite3StrICmp.exit ], [ %.030966269, %bb.tx ] ; 7 uses
  %.030946271 = phi i32 [ %i.ccj, %sqlite3StrICmp.exit ], [ 0, %bb.tx ] ; 3 uses
  %i.cbw = load ptr, ptr %.030966272, align 8, !tbaa !2318
  br label %bb.ty

bb.ty:                                            ; preds = %bb.ub, %.lr.ph6274
  %.013.i = phi ptr [ %i.cbw, %.lr.ph6274 ], [ %i.cch, %bb.ub ] ; 2 uses
  %.012.i4260 = phi ptr [ %i.cay, %.lr.ph6274 ], [ %i.cci, %bb.ub ] ; 2 uses
  %i.cbx = load i8, ptr %.013.i, align 1, !tbaa !231 ; 3 uses
  %i.cby = load i8, ptr %.012.i4260, align 1, !tbaa !231 ; 2 uses
  %i.cbz = icmp eq i8 %i.cbx, %i.cby
  br i1 %i.cbz, label %bb.tz, label %bb.ua

bb.tz:                                            ; preds = %bb.ty
  %i.cca = icmp eq i8 %i.cbx, 0
  br i1 %i.cca, label %.critedge13, label %bb.ub

bb.ua:                                            ; preds = %bb.ty
  %i.ccb = zext i8 %i.cbx to i64
  %i.ccc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ccb
  %i.ccd = load i8, ptr %i.ccc, align 1, !tbaa !231
  %i.cce = zext i8 %i.cby to i64
  %i.ccf = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cce
  %i.ccg = load i8, ptr %i.ccf, align 1, !tbaa !231
  %.not.i4261 = icmp eq i8 %i.ccd, %i.ccg
  br i1 %.not.i4261, label %bb.ub, label %sqlite3StrICmp.exit

bb.ub:                                            ; preds = %bb.ua, %bb.tz
  %i.cch = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  %i.cci = getelementptr inbounds nuw i8, ptr %.012.i4260, i64 1
  br label %bb.ty

sqlite3StrICmp.exit:                              ; preds = %bb.ua
  %i.ccj = add nuw nsw i32 %.030946271, 1
  %i.cck = getelementptr inbounds nuw i8, ptr %.030966272, i64 24
  %.03096 = load ptr, ptr %i.cck, align 8, !tbaa !2319 ; 2 uses
  %.not3730 = icmp eq ptr %.03096, null
  br i1 %.not3730, label %.critedge3917, label %.lr.ph6274, !llvm.loop !2320

.critedge3917:                                    ; preds = %bb.tx, %sqlite3StrICmp.exit
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %0, ptr noundef nonnull @.str.357, ptr noundef %i.cay)
  br label %sqlite3VdbeMemSetNull.exit4222

.critedge13:                                      ; preds = %bb.tz
  %i.ccl = load i32, ptr %i.gw, align 8, !tbaa !553
  %i.ccm = icmp sgt i32 %i.ccl, 0
  %i.ccn = icmp eq i32 %i.caw, 1                  ; 3 uses
  %or.cond15 = and i1 %i.ccn, %i.ccm
  br i1 %or.cond15, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %.critedge13
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %0, ptr noundef nonnull @.str.358)
  br label %sqlite3VdbeMemSetNull.exit4222

bb.ud:                                            ; preds = %.critedge13
  %i.cco = getelementptr inbounds nuw i8, ptr %.030966272, i64 24 ; 2 uses
  %i.ccp = load ptr, ptr %i.cco, align 8, !tbaa !783
  %i.ccq = icmp eq ptr %i.ccp, null
  br i1 %i.ccq, label %bb.ue, label %.thread4802

bb.ue:                                            ; preds = %bb.ud
  %i.ccr = load i8, ptr %i.gx, align 1, !tbaa !787
  %i.ccs = icmp ne i8 %i.ccr, 0                   ; 2 uses
  %or.cond17 = and i1 %i.ccn, %i.ccs
  br i1 %or.cond17, label %bb.uf, label %.thread4802

bb.uf:                                            ; preds = %bb.ue
  %i.cct = load ptr, ptr %0, align 8, !tbaa !150  ; 2 uses
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 752
  %i.ccv = load i64, ptr %i.ccu, align 8, !tbaa !138
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.cct, i64 760
  %i.ccx = load i64, ptr %i.ccw, align 8, !tbaa !137
  %i.ccy = sub i64 0, %i.ccx
  %i.ccz = icmp eq i64 %i.ccv, %i.ccy
  br i1 %i.ccz, label %bb.ug, label %sqlite3VdbeCheckFkDeferred.exit

sqlite3VdbeCheckFkDeferred.exit:                  ; preds = %bb.uf
  %i.cda = call fastcc i32 @vdbeFkError(ptr noundef nonnull %0), !inline_history !2054
  br label %sqlite3ResetOneSchema.exit

bb.ug:                                            ; preds = %bb.uf
  store i8 1, ptr %i.cx, align 1, !tbaa !581
  %i.cdb = call fastcc i32 @sqlite3VdbeHalt(ptr noundef nonnull %0)
  %i.cdc = icmp eq i32 %i.cdb, 5
  br i1 %i.cdc, label %bb.uh, label %bb.ui

bb.uh:                                            ; preds = %bb.ug
  %i.cdd = ptrtoint ptr %.02972 to i64
  %i.cde = ptrtoint ptr %.02970 to i64
  %i.cdf = sub i64 %i.cdd, %i.cde
  %i.cdg = lshr exact i64 %i.cdf, 5
  %i.cdh = trunc i64 %i.cdg to i32
  store i32 %i.cdh, ptr %i.bl, align 8, !tbaa !555
  store i8 0, ptr %i.cx, align 1, !tbaa !581
  store i32 5, ptr %i.be, align 4, !tbaa !542
  br label %sqlite3ResetOneSchema.exit

bb.ui:                                            ; preds = %bb.ug
  %i.cdi = load i32, ptr %i.be, align 4, !tbaa !542 ; 2 uses
  %.not3736 = icmp eq i32 %i.cdi, 0
  br i1 %.not3736, label %.thread4807.thread, label %.thread4811

.thread4811:                                      ; preds = %bb.ui
  store i8 0, ptr %i.cx, align 1, !tbaa !581
  br label %sqlite3VdbeMemSetNull.exit4222

.thread4807.thread:                               ; preds = %bb.ui
  store i8 0, ptr %i.gx, align 1, !tbaa !787
  br label %.preheader5465

.thread4802:                                      ; preds = %bb.ud, %bb.ue
  %i.cdj = phi i1 [ %i.ccs, %bb.ue ], [ false, %bb.ud ]
  %i.cdk = load i32, ptr %i.cv, align 8, !tbaa !670
  %i.cdl = xor i32 %.030946271, -1
  %i.cdm = add i32 %i.cdk, %i.cdl                 ; 2 uses
  %i.cdn = icmp eq i32 %i.caw, 2
  %.pre7218 = load i32, ptr %i.dc, align 8, !tbaa !64 ; 2 uses
  br i1 %i.cdn, label %bb.uj, label %.loopexit5466

bb.uj:                                            ; preds = %.thread4802
  %i.cdo = load i32, ptr %i.er, align 4, !tbaa !703
  %i.cdp = and i32 %i.cdo, 1                      ; 3 uses
  %i.cdq = icmp sgt i32 %.pre7218, 0
  br i1 %i.cdq, label %.lr.ph6290, label %._crit_edge6295

.lr.ph6290:                                       ; preds = %bb.uj
  %i.cdr = xor i32 %i.cdp, 1
  br label %bb.ul

bb.uk:                                            ; preds = %bb.ul
  %indvars.iv.next7138 = add nuw nsw i64 %indvars.iv7137, 1 ; 2 uses
  %i.cds = load i32, ptr %i.dc, align 8, !tbaa !64 ; 2 uses
  %i.cdt = sext i32 %i.cds to i64
  %i.cdu = icmp slt i64 %indvars.iv.next7138, %i.cdt
  br i1 %i.cdu, label %bb.ul, label %.loopexit5466, !llvm.loop !2321

bb.ul:                                            ; preds = %.lr.ph6290, %bb.uk
  %indvars.iv7137 = phi i64 [ 0, %.lr.ph6290 ], [ %indvars.iv.next7138, %bb.uk ] ; 2 uses
  %i.cdv = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.cdw = getelementptr inbounds nuw [32 x i8], ptr %i.cdv, i64 %indvars.iv7137
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdw, i64 8
  %i.cdy = load ptr, ptr %i.cdx, align 8, !tbaa !66
  %i.cdz = call fastcc i32 @sqlite3BtreeTripAllCursors(ptr noundef %i.cdy, i32 noundef 516, i32 noundef %i.cdr) ; 2 uses
  %.not3734 = icmp eq i32 %i.cdz, 0
  br i1 %.not3734, label %bb.uk, label %sqlite3VdbeMemSetNull.exit4222

.loopexit5466:                                    ; preds = %bb.uk, %.thread4802
  %i.cea = phi i32 [ %.pre7218, %.thread4802 ], [ %i.cds, %bb.uk ]
  %.03091 = phi i32 [ 0, %.thread4802 ], [ %i.cdp, %bb.uk ] ; 2 uses
  %.28 = phi i32 [ %.02986, %.thread4802 ], [ 0, %bb.uk ]
  %i.ceb = icmp sgt i32 %i.cea, 0
  br i1 %i.ceb, label %.lr.ph6294, label %._crit_edge6295

bb.um:                                            ; preds = %.lr.ph6294
  %indvars.iv.next7141 = add nuw nsw i64 %indvars.iv7140, 1 ; 2 uses
  %i.cec = load i32, ptr %i.dc, align 8, !tbaa !64
  %i.ced = sext i32 %i.cec to i64
  %i.cee = icmp slt i64 %indvars.iv.next7141, %i.ced
  br i1 %i.cee, label %.lr.ph6294, label %._crit_edge6295, !llvm.loop !2322

.lr.ph6294:                                       ; preds = %.loopexit5466, %bb.um
  %indvars.iv7140 = phi i64 [ %indvars.iv.next7141, %bb.um ], [ 0, %.loopexit5466 ] ; 2 uses
  %i.cef = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.ceg = getelementptr inbounds nuw [32 x i8], ptr %i.cef, i64 %indvars.iv7140
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.ceg, i64 8
  %i.cei = load ptr, ptr %i.ceh, align 8, !tbaa !66
  %i.cej = call fastcc i32 @sqlite3BtreeSavepoint(ptr noundef %i.cei, i32 noundef %i.caw, i32 noundef %i.cdm) ; 2 uses
  %.not3733 = icmp eq i32 %i.cej, 0
  br i1 %.not3733, label %bb.um, label %sqlite3VdbeMemSetNull.exit4222
end_hunk_2
begin_hunk_3_@balance:bb.a
  %i.rh = zext i8 %i.rg to i64
  %i.ri = or disjoint i64 %i.re, %i.rh
  %i.rj = and i64 %i.ri, %i.qu
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.rj ; 4 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %.idx.i = phi i64 [ %.add.i, %bb.bh ], [ 0, %bb.bg ] ; 4 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.idx.i
  %.add.i = add nuw nsw i64 %.idx.i, 1            ; 3 uses
  %.ptr45.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.add.i
  store ptr %.ptr45.i, ptr %i.o, align 8, !tbaa !259
  %i.rl = load i8, ptr %.ptr.i, align 1, !tbaa !231
  %i.rm = icmp slt i8 %i.rl, 0
  %i.rn = icmp samesign ult i64 %.idx.i, 8
  %i.ro = select i1 %i.rm, i1 %i.rn, i1 false
  br i1 %i.ro, label %bb.bh, label %bb.bi, !llvm.loop !2830

bb.bi:                                            ; preds = %bb.bh
  %.ptr.i.le = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.idx.i
  %.ptr45.i.le = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.add.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.ptr.i.le, i64 10
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %bb.bi
  %i.rq = phi ptr [ %.ptr45.i.le, %bb.bi ], [ %i.rr, %bb.bj ] ; 2 uses
  %.0.i84 = phi ptr [ %i.ab, %bb.bi ], [ %i.rt, %bb.bj ] ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 1 ; 3 uses
  store ptr %i.rr, ptr %i.o, align 8, !tbaa !259
  %i.rs = load i8, ptr %i.rq, align 1, !tbaa !231 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.0.i84, i64 1 ; 2 uses
  store i8 %i.rs, ptr %.0.i84, align 1, !tbaa !231
  %i.ru = icmp slt i8 %i.rs, 0
  %i.rv = icmp ult ptr %i.rr, %i.rp
  %i.rw = select i1 %i.ru, i1 %i.rv, i1 false
  br i1 %i.rw, label %bb.bj, label %bb.bk, !llvm.loop !2831

bb.bk:                                            ; preds = %bb.bj
  %i.rx = load i32, ptr %i.m, align 4, !tbaa !27  ; 2 uses
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.rz = load i16, ptr %i.lf, align 8, !tbaa !1613
  %i.sa = zext i16 %i.rz to i32
  %i.sb = ptrtoint ptr %i.rt to i64
  %i.sc = sub i64 %i.sb, %i.al
  %i.sd = trunc i64 %i.sc to i32
  %i.se = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !774
  %i.sg = call fastcc i32 @insertCell(ptr noundef nonnull %i.jm, i32 noundef %i.sa, ptr noundef nonnull %i.t, i32 noundef %i.sd, ptr noundef null, i32 noundef %i.sf), !inline_history !2821
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.sh = phi i32 [ %i.sg, %bb.bl ], [ %i.rx, %bb.bk ]
  %i.si = getelementptr inbounds nuw i8, ptr %i.jm, i64 80
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !667
  %i.sk = getelementptr inbounds nuw i8, ptr %i.jm, i64 9
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !776
  %i.sm = zext i8 %i.sl to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sm ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sp = load i32, ptr %i.n, align 4, !tbaa !27  ; 4 uses
  %i.sq = lshr i32 %i.sp, 24
  %i.sr = trunc nuw i32 %i.sq to i8
  store i8 %i.sr, ptr %i.so, align 1, !tbaa !231
  %i.ss = lshr i32 %i.sp, 16
  %i.st = trunc i32 %i.ss to i8
  %i.su = getelementptr inbounds nuw i8, ptr %i.sn, i64 9
  store i8 %i.st, ptr %i.su, align 1, !tbaa !231
  %i.sv = lshr i32 %i.sp, 8
  %i.sw = trunc i32 %i.sv to i8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sn, i64 10
  store i8 %i.sw, ptr %i.sx, align 1, !tbaa !231
  %i.sy = trunc i32 %i.sp to i8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sn, i64 11
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !231
  %i.ta = getelementptr i8, ptr %i.ls, i64 112
  %.val.i37.i = load ptr, ptr %i.ta, align 8, !tbaa !698 ; 7 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.val.i37.i, i64 52
  %i.tc = load i16, ptr %i.tb, align 4, !tbaa !530
  %i.td = and i16 %i.tc, 32
  %.not.i.i.i38.i = icmp eq i16 %i.td, 0
  br i1 %.not.i.i.i38.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.te = getelementptr inbounds nuw i8, ptr %.val.i37.i, i64 40
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !531 ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 152 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !532
  %i.ti = add nsw i32 %i.th, -1
  store i32 %i.ti, ptr %i.tg, align 8, !tbaa !532
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 168 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !533
  %i.tl = getelementptr inbounds nuw i8, ptr %.val.i37.i, i64 32
  store ptr %i.tk, ptr %i.tl, align 8, !tbaa !534
  store ptr %.val.i37.i, ptr %i.tj, align 8, !tbaa !533
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tf, i64 72
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !535 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.val.i37.i, i64 48
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !536
  %i.tq = add i32 %i.tp, -1
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tf, i64 200
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !83
  %i.tu = mul nsw i64 %i.tt, %i.tr
  %i.tv = getelementptr inbounds nuw i8, ptr %.val.i37.i, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !527
  %i.tx = load ptr, ptr %i.tn, align 8, !tbaa !483
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 144
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !537
  %i.ua = call i32 %i.tz(ptr noundef nonnull %i.tn, i64 noundef %i.tu, ptr noundef %i.tw) #58, !inline_history !2827 ; 0 uses
  br label %releasePage.exit.thread.i

bb.bo:                                            ; preds = %bb.bm
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i37.i), !inline_history !2821
  br label %releasePage.exit.thread.i

releasePage.exit.thread.i:                        ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #58
  br label %balance_quick.exit

releasePage.exit.i:                               ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #58
  br label %balance_quick.exit

balance_quick.exit:                               ; preds = %bb.at, %bb.au, %releasePage.exit.thread.i, %releasePage.exit.i
  %.1.i = phi i32 [ 11, %bb.at ], [ %i.oe, %releasePage.exit.i ], [ %i.sh, %releasePage.exit.thread.i ], [ %i.ll, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #58
  br label %.thread113

bb.bp:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.thread115
  %i.ub = load ptr, ptr %i.w, align 8, !tbaa !1013
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 52
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !135
  %i.ue = call fastcc ptr @pcache1Alloc(i32 noundef %i.ud) ; 6 uses
  %.not125 = icmp eq i8 %i.jd, 1
  %i.uf = load i8, ptr %i.am, align 1, !tbaa !2326
  %i.ug = and i8 %i.uf, 1                         ; 2 uses
  %i.uh = zext nneg i8 %i.ug to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.i, i8 0, i64 5, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %2, i8 0, i64 100, i1 false)
  store i32 2147483647, ptr %i.ao, align 4, !tbaa !27
  %i.ui = getelementptr inbounds nuw i8, ptr %i.jm, i64 72
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !775 ; 10 uses
  %.not.i85 = icmp eq ptr %i.ue, null
  br i1 %.not.i85, label %balance_nonroot.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.uk = getelementptr inbounds nuw i8, ptr %i.jm, i64 12 ; 4 uses
  %i.ul = load i8, ptr %i.uk, align 4, !tbaa !1612
  %i.um = zext i8 %i.ul to i32                    ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.jm, i64 24 ; 2 uses
  %i.uo = load i16, ptr %i.un, align 8, !tbaa !1613
  %i.up = zext i16 %i.uo to i32                   ; 2 uses
  %i.uq = add nuw nsw i32 %i.up, %i.um            ; 3 uses
  %i.ur = icmp samesign ult i32 %i.uq, 2
  br i1 %i.ur, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.us = icmp eq i16 %i.jo, 0
  br i1 %i.us, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ut = icmp eq i32 %i.uq, %i.jp
  br i1 %i.ut, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.uu = add nsw i32 %i.jp, -2
  %i.uv = add nuw nsw i32 %i.uu, %i.uh
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.uw = add nsw i32 %i.jp, -1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.br
  %.0535.i = phi i32 [ %i.uw, %bb.bu ], [ %i.uv, %bb.bt ], [ 0, %bb.br ]
  %i.ux = sub nuw nsw i32 2, %i.uh
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bq
  %.1536.i = phi i32 [ %.0535.i, %bb.bv ], [ 0, %bb.bq ] ; 5 uses
  %.0499.i = phi i32 [ %i.ux, %bb.bv ], [ %i.uq, %bb.bq ] ; 5 uses
  %i.uy = add nuw nsw i32 %.0499.i, 1             ; 5 uses
  %i.uz = sub nsw i32 %.1536.i, %i.um
  %i.va = add nsw i32 %i.uz, %.0499.i             ; 2 uses
  %i.vb = icmp eq i32 %i.va, %i.up
  %i.vc = getelementptr inbounds nuw i8, ptr %i.jm, i64 80 ; 4 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !667 ; 2 uses
  br i1 %i.vb, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ve = getelementptr inbounds nuw i8, ptr %i.jm, i64 9
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !776
  %i.vg = zext i8 %i.vf to i64
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  br label %.lr.ph.i86

bb.by:                                            ; preds = %bb.bw
  %i.vj = getelementptr inbounds nuw i8, ptr %i.jm, i64 26
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !859
  %i.vl = zext i16 %i.vk to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !860
  %i.vo = shl nsw i32 %i.va, 1
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds i8, ptr %i.vn, i64 %i.vp ; 2 uses
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !231
  %i.vs = zext i8 %i.vr to i64
  %i.vt = shl nuw nsw i64 %i.vs, 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !231
  %i.vw = zext i8 %i.vv to i64
  %i.vx = or disjoint i64 %i.vt, %i.vw
  %i.vy = and i64 %i.vx, %i.vl
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.vy
  br label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.by, %bb.bx
  %.0528.i = phi ptr [ %i.vi, %bb.bx ], [ %i.vz, %bb.by ] ; 5 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.0528.i, i64 1
  %i.wb = getelementptr inbounds nuw i8, ptr %.0528.i, i64 2
  %i.wc = getelementptr inbounds nuw i8, ptr %.0528.i, i64 3
  %i.wd = load i32, ptr %.0528.i, align 1
  %i.we = call i32 @llvm.bswap.i32(i32 %i.wd)
  %i.wf = getelementptr inbounds nuw i8, ptr %i.jm, i64 28
  %i.wg = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.wh = getelementptr inbounds nuw i8, ptr %i.jm, i64 120 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.jm, i64 26
  %i.wj = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  %i.wk = getelementptr inbounds nuw i8, ptr %i.uj, i64 40
  %i.wl = getelementptr inbounds nuw i8, ptr %i.uj, i64 56 ; 2 uses
  %i.wm = zext nneg i32 %.0499.i to i64           ; 4 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cl, %.lr.ph.i86
  %indvars.iv.i = phi i64 [ %i.wm, %.lr.ph.i86 ], [ %indvars.iv.next.i, %bb.cl ] ; 5 uses
  %.0495754.i = phi i32 [ 0, %.lr.ph.i86 ], [ %i.xd, %bb.cl ]
  %i.wn = phi i32 [ %i.we, %.lr.ph.i86 ], [ %i.aad, %bb.cl ] ; 2 uses
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.wp = call fastcc i32 @getAndInitPage(ptr noundef %i.uj, i32 noundef %i.wn, ptr noundef nonnull %i.wo, i32 noundef 0), !inline_history !2832 ; 3 uses
  store i32 %i.wp, ptr %i.a, align 4, !tbaa !27
  %.not572.i = icmp eq i32 %i.wp, 0
  br i1 %.not572.i, label %bb.ca, label %.thread.i87

.thread.i87:                                      ; preds = %bb.cl, %bb.bz
  %i.wq = phi i32 [ %i.wp, %bb.bz ], [ %i.aac, %bb.cl ]
  %.1500.lcssa.ph.in.i = phi i64 [ %indvars.iv.i, %bb.bz ], [ %indvars.iv.next.i, %bb.cl ]
  %i.wr = shl i64 %.1500.lcssa.ph.in.i, 32
  %sext.i = add i64 %i.wr, 4294967296
  %i.ws = ashr exact i64 %sext.i, 29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.ws, i1 false)
  br label %.thread705.i

bb.ca:                                            ; preds = %bb.bz
  %i.wt = load ptr, ptr %i.wo, align 8, !tbaa !1653 ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 20
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !1603
  %i.ww = icmp slt i32 %i.wv, 0
  br i1 %i.ww, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.wx = call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %i.wt), !inline_history !2832 ; 3 uses
  store i32 %i.wx, ptr %i.a, align 4, !tbaa !27
  %.not573.i = icmp eq i32 %i.wx, 0
  br i1 %.not573.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wy = shl nsw i64 %indvars.iv.i, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.wy, i1 false)
  br label %.thread705.i

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %i.xa = load i16, ptr %i.wz, align 8, !tbaa !1613
  %i.xb = zext i16 %i.xa to i32
  %i.xc = add nuw nsw i32 %.0495754.i, 4
  %i.xd = add nuw nsw i32 %i.xc, %i.xb            ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 8 uses
  %i.xe = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.xe, label %bb.cm, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.xf = load i8, ptr %i.uk, align 4, !tbaa !1612 ; 2 uses
  %.not574.i = icmp eq i8 %i.xf, 0
  br i1 %.not574.i, label %._crit_edge1064.i.a, label %bb.cf

._crit_edge1064.i.a:                              ; preds = %bb.ce
  %i.xg = trunc i64 %indvars.iv.next.i to i32
  %.pre1073.i = add i32 %.1536.i, %i.xg
  br label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.xh = load i16, ptr %i.wf, align 4, !tbaa !338
  %i.xi = zext i16 %i.xh to i32
  %i.xj = trunc i64 %indvars.iv.next.i to i32
  %i.xk = add i32 %.1536.i, %i.xj                 ; 2 uses
  %i.xl = icmp eq i32 %i.xk, %i.xi
  br i1 %i.xl, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.xm = load ptr, ptr %i.wg, align 8, !tbaa !259 ; 3 uses
  %i.xn = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next.i
  store ptr %i.xm, ptr %i.xn, align 8, !tbaa !259
  %i.xo = load i32, ptr %i.xm, align 1
  %i.xp = call i32 @llvm.bswap.i32(i32 %i.xo)
  %i.xq = load ptr, ptr %i.wh, align 8, !tbaa !1607
  %i.xr = call zeroext i16 %i.xq(ptr noundef nonnull %i.jm, ptr noundef nonnull %i.xm) #58, !inline_history !2832
  %i.xs = zext i16 %i.xr to i32
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !27
  store i8 0, ptr %i.uk, align 4, !tbaa !1612
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cf, %._crit_edge1064.i.a
  %.pre-phi1074.i = phi i32 [ %.pre1073.i, %._crit_edge1064.i.a ], [ %i.xk, %bb.cf ] ; 2 uses
  %i.xu = load ptr, ptr %i.vc, align 8, !tbaa !667
  %i.xv = load i16, ptr %i.wi, align 2, !tbaa !859
  %i.xw = zext i16 %i.xv to i64
  %i.xx = load ptr, ptr %i.wj, align 8, !tbaa !860
  %i.xy = zext i8 %i.xf to i32
  %i.xz = sub nsw i32 %.pre-phi1074.i, %i.xy
  %i.ya = shl nsw i32 %i.xz, 1
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds i8, ptr %i.xx, i64 %i.yb ; 2 uses
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !231
  %i.ye = zext i8 %i.yd to i64
  %i.yf = shl nuw nsw i64 %i.ye, 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !231
  %i.yi = zext i8 %i.yh to i64
  %i.yj = or disjoint i64 %i.yf, %i.yi
  %i.yk = and i64 %i.yj, %i.xw
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.yk ; 8 uses
  %i.ym = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next.i ; 2 uses
  store ptr %i.yl, ptr %i.ym, align 8, !tbaa !259
  %i.yn = load i8, ptr %i.yl, align 1, !tbaa !231
  %i.yo = zext i8 %i.yn to i32
  %i.yp = shl nuw i32 %i.yo, 24
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !231
  %i.ys = zext i8 %i.yr to i32
  %i.yt = shl nuw nsw i32 %i.ys, 16
  %i.yu = or disjoint i32 %i.yt, %i.yp
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yl, i64 2
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !231
  %i.yx = zext i8 %i.yw to i32
  %i.yy = shl nuw nsw i32 %i.yx, 8
  %i.yz = or disjoint i32 %i.yu, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.yl, i64 3
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !231
  %i.zc = zext i8 %i.zb to i32
  %i.zd = or disjoint i32 %i.yz, %i.zc
  %i.ze = load ptr, ptr %i.wh, align 8, !tbaa !1607
  %i.zf = call zeroext i16 %i.ze(ptr noundef nonnull %i.jm, ptr noundef nonnull %i.yl) #58, !inline_history !2832 ; 2 uses
  %i.zg = zext i16 %i.zf to i32                   ; 3 uses
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !27
  %i.zi = load i16, ptr %i.wk, align 8, !tbaa !729
  %i.zj = and i16 %i.zi, 12
  %.not575.i = icmp eq i16 %i.zj, 0
  br i1 %.not575.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.zk = ptrtoint ptr %i.yl to i64               ; 2 uses
  %i.zl = trunc i64 %i.zk to i32
  %i.zm = load ptr, ptr %i.vc, align 8, !tbaa !667
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = trunc i64 %i.zn to i32
  %i.zp = sub nsw i32 %i.zl, %i.zo                ; 2 uses
  %i.zq = add nsw i32 %i.zp, %i.zg
  %i.zr = load i32, ptr %i.wl, align 8, !tbaa !761
  %.not576.i = icmp sgt i32 %i.zq, %i.zr
  br i1 %.not576.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.zs = sext i32 %i.zp to i64
  %i.zt = getelementptr inbounds i8, ptr %i.ue, i64 %i.zs
  %i.zu = zext i16 %i.zf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zt, ptr nonnull align 1 %i.yl, i64 %i.zu, i1 false)
  %i.zv = load ptr, ptr %i.vc, align 8, !tbaa !667
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = sub i64 %i.zk, %i.zw
  %i.zy = getelementptr inbounds i8, ptr %i.ue, i64 %i.zx
  store ptr %i.zy, ptr %i.ym, align 8, !tbaa !259
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.zz = load i8, ptr %i.uk, align 4, !tbaa !1612
  %i.aaa = zext i8 %i.zz to i32
  %i.aab = sub nsw i32 %.pre-phi1074.i, %i.aaa
  call fastcc void @dropCell(ptr noundef nonnull %i.jm, i32 noundef %i.aab, i32 noundef %i.zg, ptr noundef %i.a), !inline_history !2832
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !27
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cg
  %i.aac = phi i32 [ %.pre.i, %bb.ck ], [ 0, %bb.cg ] ; 2 uses
  %i.aad = phi i32 [ %i.zd, %bb.ck ], [ %i.xp, %bb.cg ]
  %i.aae = icmp eq i32 %i.aac, 0
  br i1 %i.aae, label %bb.bz, label %.thread.i87

bb.cm:                                            ; preds = %bb.cd
  store i32 %i.wn, ptr %i.h, align 4
  %i.aaf = add nuw nsw i32 %i.xd, 3
  %i.aag = and i32 %i.aaf, 2147483644
  %i.aah = zext nneg i32 %i.aag to i64            ; 3 uses
  %i.aai = mul nuw nsw i64 %i.aah, 10
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.uj, i64 52 ; 2 uses
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !135
  %i.aal = zext i32 %i.aak to i64
  %i.aam = add nuw nsw i64 %i.aai, %i.aal
  %i.aan = call fastcc ptr @sqlite3Malloc(i64 noundef %i.aam), !inline_history !2833 ; 15 uses
  store ptr %i.aan, ptr %i.ap, align 8, !tbaa !2825
  %i.aao = icmp eq ptr %i.aan, null
  br i1 %i.aao, label %sqlite3DbFree.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aap = ptrtoaddr ptr %i.aan to i64
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %i.aah ; 14 uses
  store ptr %i.aaq, ptr %i.aq, align 8, !tbaa !2826
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.aaq, i64 %i.aah ; 2 uses
  %i.aas = load ptr, ptr %i.b, align 16, !tbaa !1653 ; 4 uses
  store ptr %i.aas, ptr %i.ar, align 8, !tbaa !2824
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %i.aau = load i8, ptr %i.aat, align 8, !tbaa !858 ; 3 uses
  %i.aav = zext i8 %i.aau to i16
  %i.aaw = shl nuw nsw i16 %i.aav, 2              ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.aay = load i8, ptr %i.aax, align 2, !tbaa !1606 ; 3 uses
  %i.aaz = zext i8 %i.aay to i32                  ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aas, i64 80 ; 2 uses
  %i.abb = icmp ne i8 %i.aay, 0
  %i.abc = zext nneg i16 %i.aaw to i64
  %wide.trip.count940.i = zext nneg i32 %i.uy to i64 ; 3 uses
  %i.abd = add i64 %i.aap, -40
  br label %bb.co

bb.co:                                            ; preds = %bb.cy, %bb.cn
  %indvars.iv936.i = phi i64 [ 0, %bb.cn ], [ %indvars.iv.next937.i, %bb.cy ] ; 6 uses
  %.0530782.i = phi i32 [ 0, %bb.cn ], [ %.4534.ph.i, %bb.cy ] ; 3 uses
  %.promoted769776781.i = phi i32 [ 0, %bb.cn ], [ %.promoted769777.i, %bb.cy ] ; 2 uses
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv936.i
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !1653 ; 9 uses
  %i.abg = ptrtoaddr ptr %i.abf to i64
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 24 ; 2 uses
  %i.abi = load i16, ptr %i.abh, align 8, !tbaa !1613 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abf, i64 80 ; 2 uses
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !667 ; 7 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abf, i64 26
  %i.abm = load i16, ptr %i.abl, align 2, !tbaa !859 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abf, i64 18 ; 2 uses
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !1610
  %i.abp = zext i16 %i.abo to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abp ; 4 uses
  %i.abr = load i8, ptr %i.abk, align 1, !tbaa !231
  %i.abs = load ptr, ptr %i.aba, align 8, !tbaa !667
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !231
  %.not620.i = icmp eq i8 %i.abr, %i.abt
  br i1 %.not620.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81666, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

bb.cq:                                            ; preds = %bb.co
  %i.abu = zext i16 %i.abi to i64
  %i.abv = sext i32 %.promoted769776781.i to i64  ; 4 uses
  %i.abw = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abf, i64 12 ; 2 uses
  %i.aby = load i8, ptr %i.abx, align 4, !tbaa !1612
  %i.abz = zext i8 %i.aby to i64
  %i.aca = add nuw nsw i64 %i.abz, %i.abu
  %i.acb = shl nuw nsw i64 %i.aca, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.abw, i8 0, i64 %i.acb, i1 false)
  %i.acc = load i8, ptr %i.abx, align 4, !tbaa !1612 ; 3 uses
  %.not621.i = icmp eq i8 %i.acc, 0
  br i1 %.not621.i, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abf, i64 28
  %i.ace = load i16, ptr %i.acd, align 4, !tbaa !338 ; 5 uses
  %i.acf = zext i16 %i.ace to i32                 ; 2 uses
  %i.acg = icmp ult i16 %i.abi, %i.ace
  br i1 %i.acg, label %bb.cs, label %.preheader729.i

.preheader729.i:                                  ; preds = %bb.cr
  %.not874.i = icmp eq i16 %i.ace, 0
  br i1 %.not874.i, label %.preheader727.i, label %.lr.ph763.i

.lr.ph763.i:                                      ; preds = %.preheader729.i
  %i.ach = zext i16 %i.abm to i64                 ; 3 uses
  %xtraiter = and i32 %i.acf, 1
  %i.aci = icmp eq i16 %i.ace, 1
  br i1 %i.aci, label %.epil.preheader, label %.lr.ph763.i.new

.lr.ph763.i.new:                                  ; preds = %.lr.ph763.i
  %unroll_iter = and i32 %i.acf, 65534
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81690, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

.preheader727.i.loopexit.unr-lcssa:               ; preds = %bb.ct
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader727.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader727.i.loopexit.unr-lcssa, %.lr.ph763.i
  %indvars.iv915.i.epil.init = phi i64 [ %i.abv, %.lr.ph763.i ], [ %indvars.iv.next916.i.1, %.preheader727.i.loopexit.unr-lcssa ] ; 2 uses
  %.0515762.i.epil.init = phi ptr [ %i.abq, %.lr.ph763.i ], [ %i.aeg, %.preheader727.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod484 = trunc i16 %i.ace to i1
  call void @llvm.assume(i1 %lcmp.mod484)
  %i.acj = load i8, ptr %.0515762.i.epil.init, align 1, !tbaa !231
  %i.ack = zext i8 %i.acj to i64
  %i.acl = shl nuw nsw i64 %i.ack, 8
  %i.acm = getelementptr inbounds nuw i8, ptr %.0515762.i.epil.init, i64 1
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !231
  %i.aco = zext i8 %i.acn to i64
  %i.acp = or disjoint i64 %i.acl, %i.aco
  %i.acq = and i64 %i.acp, %i.ach
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.acq
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv915.i.epil.init
  store ptr %i.acr, ptr %i.acs, align 8, !tbaa !259
  %i.act = getelementptr inbounds nuw i8, ptr %.0515762.i.epil.init, i64 2
  %indvars.iv.next916.i.epil = add nsw i64 %indvars.iv915.i.epil.init, 1
  br label %.preheader727.i

.preheader727.i:                                  ; preds = %.epil.preheader, %.preheader727.i.loopexit.unr-lcssa, %.preheader729.i
  %.pre-phi.i = phi i64 [ %i.abv, %.preheader729.i ], [ %indvars.iv.next916.i.1, %.preheader727.i.loopexit.unr-lcssa ], [ %indvars.iv.next916.i.epil, %.epil.preheader ] ; 5 uses
  %.0515.lcssa.i = phi ptr [ %i.abq, %.preheader729.i ], [ %i.aeg, %.preheader727.i.loopexit.unr-lcssa ], [ %i.act, %.epil.preheader ]
  %i.acu = getelementptr inbounds nuw i8, ptr %i.abf, i64 40 ; 6 uses
  %wide.trip.count.i = zext i8 %i.acc to i64      ; 5 uses
  %min.iters.check = icmp ult i8 %i.acc, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader727.i
  %i.acv = shl nsw i64 %.pre-phi.i, 3
  %i.acw = add i64 %i.abd, %i.acv
  %i.acx = sub i64 %i.abg, %i.acw
  %diff.check = icmp ugt i64 %i.acx, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 252        ; 4 uses
  %i.acy = add i64 %.pre-phi.i, %n.vec            ; 2 uses
  %i.acz = getelementptr [8 x i8], ptr %i.aan, i64 %.pre-phi.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %index ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ada, align 8, !tbaa !259
  %wide.load422 = load <2 x ptr>, ptr %i.adb, align 8, !tbaa !259
  %i.adc = getelementptr [8 x i8], ptr %i.acz, i64 %index ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  store <2 x ptr> %wide.load, ptr %i.adc, align 8, !tbaa !259
  store <2 x ptr> %wide.load422, ptr %i.add, align 8, !tbaa !259
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ade = icmp eq i64 %index.next, %n.vec
  br i1 %i.ade, label %middle.block, label %vector.body, !llvm.loop !2835

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit728.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader727.i, %middle.block
  %indvars.iv921.i.ph = phi i64 [ %.pre-phi.i, %vector.memcheck ], [ %.pre-phi.i, %.preheader727.i ], [ %i.acy, %middle.block ] ; 2 uses
  %indvars.iv919.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader727.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter485 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod486.not = icmp eq i64 %xtraiter485, 0
  br i1 %lcmp.mod486.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv921.i.prol = phi i64 [ %indvars.iv.next922.i.prol, %scalar.ph.prol ], [ %indvars.iv921.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv919.i.prol = phi i64 [ %indvars.iv.next920.i.prol, %scalar.ph.prol ], [ %indvars.iv919.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %indvars.iv919.i.prol
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !259
  %i.adh = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv921.i.prol
  store ptr %i.adg, ptr %i.adh, align 8, !tbaa !259
  %indvars.iv.next922.i.prol = add nsw i64 %indvars.iv921.i.prol, 1 ; 3 uses
  %indvars.iv.next920.i.prol = add nuw nsw i64 %indvars.iv919.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter485
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2836

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next922.i.lcssa438.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next922.i.prol, %scalar.ph.prol ]
  %indvars.iv921.i.unr = phi i64 [ %indvars.iv921.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next922.i.prol, %scalar.ph.prol ]
  %indvars.iv919.i.unr = phi i64 [ %indvars.iv919.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next920.i.prol, %scalar.ph.prol ]
  %i.adi = sub nsw i64 %indvars.iv919.i.ph, %wide.trip.count.i
  %i.adj = icmp ugt i64 %i.adi, -4
  br i1 %i.adj, label %.loopexit728.i, label %scalar.ph

bb.ct:                                            ; preds = %bb.ct, %.lr.ph763.i.new
  %indvars.iv915.i = phi i64 [ %i.abv, %.lr.ph763.i.new ], [ %indvars.iv.next916.i.1, %bb.ct ] ; 3 uses
  %.0515762.i = phi ptr [ %i.abq, %.lr.ph763.i.new ], [ %i.aeg, %bb.ct ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph763.i.new ], [ %niter.next.1, %bb.ct ]
  %i.adk = load i8, ptr %.0515762.i, align 1, !tbaa !231
  %i.adl = zext i8 %i.adk to i64
  %i.adm = shl nuw nsw i64 %i.adl, 8
  %i.adn = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 1
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !231
  %i.adp = zext i8 %i.ado to i64
  %i.adq = or disjoint i64 %i.adm, %i.adp
  %i.adr = and i64 %i.adq, %i.ach
  %i.ads = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.adr
  %i.adt = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv915.i
  store ptr %i.ads, ptr %i.adt, align 8, !tbaa !259
  %i.adu = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 2
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !231
  %i.adw = zext i8 %i.adv to i64
  %i.adx = shl nuw nsw i64 %i.adw, 8
  %i.ady = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 3
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !231
  %i.aea = zext i8 %i.adz to i64
  %i.aeb = or disjoint i64 %i.adx, %i.aea
  %i.aec = and i64 %i.aeb, %i.ach
  %i.aed = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aec
  %i.aee = getelementptr [8 x i8], ptr %i.aan, i64 %indvars.iv915.i
  %i.aef = getelementptr i8, ptr %i.aee, i64 8
  store ptr %i.aed, ptr %i.aef, align 8, !tbaa !259
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 4 ; 3 uses
  %indvars.iv.next916.i.1 = add nsw i64 %indvars.iv915.i, 2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader727.i.loopexit.unr-lcssa, label %bb.ct, !llvm.loop !2837

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv921.i = phi i64 [ %indvars.iv.next922.i.3, %scalar.ph ], [ %indvars.iv921.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv919.i = phi i64 [ %indvars.iv.next920.i.3, %scalar.ph ], [ %indvars.iv919.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %indvars.iv919.i
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !259
end_hunk_3
begin_hunk_4_@balance:bb.a
  %i.ajg = phi i32 [ %.pre1048.i, %.preheader724..preheader723_crit_edge.i ], [ %i.akg, %bb.du ] ; 2 uses
  %.lcssa791.i = phi i32 [ %.promoted790.i, %.preheader724..preheader723_crit_edge.i ], [ %i.akn, %bb.du ] ; 3 uses
  %.5542.lcssa.i = phi i32 [ %.4541802.i, %.preheader724..preheader723_crit_edge.i ], [ %.6543.i, %bb.du ]
  store i32 %.lcssa791.i, ptr %i.aix, align 4
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv952.i ; 3 uses
  %i.aji = icmp slt i32 %i.ajg, %i.ahh
  br i1 %i.aji, label %.lr.ph800.i, label %._crit_edge801.i

.lr.ph800.i:                                      ; preds = %.preheader723.i
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aix, i64 4 ; 4 uses
  %i.ajk = sext i32 %i.ajg to i64                 ; 2 uses
  br i1 %.not619.i, label %.lr.ph800.i.split.us, label %.lr.ph800.i.split

.lr.ph800.i.split.us:                             ; preds = %.lr.ph800.i, %bb.dk
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %bb.dk ], [ %i.ajk, %.lr.ph800.i ] ; 4 uses
  %i.ajl = phi i32 [ %i.ajs, %bb.dk ], [ %.lcssa791.i, %.lr.ph800.i ]
  %i.ajm = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv231
  %i.ajn = load i16, ptr %i.ajm, align 2, !tbaa !338 ; 2 uses
  %.not.i638.i.us = icmp eq i16 %i.ajn, 0
  br i1 %.not.i638.i.us, label %bb.dg, label %cachedCellSize.exit640.i.us

bb.dg:                                            ; preds = %.lr.ph800.i.split.us
  %i.ajo = trunc nsw i64 %indvars.iv231 to i32
  %i.ajp = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.ajo), !inline_history !2832
  br label %cachedCellSize.exit640.i.us

cachedCellSize.exit640.i.us:                      ; preds = %bb.dg, %.lr.ph800.i.split.us
  %.0.i639.i.us = phi i16 [ %i.ajp, %bb.dg ], [ %i.ajn, %.lr.ph800.i.split.us ]
  %i.ajq = zext i16 %.0.i639.i.us to i32
  %i.ajr = add nuw nsw i32 %i.ajq, 2
  %i.ajs = add nsw i32 %i.ajr, %i.ajl             ; 3 uses
  %i.ajt = icmp sgt i32 %i.ajs, %i.ahf
  br i1 %i.ajt, label %.split.us, label %bb.dh

bb.dh:                                            ; preds = %cachedCellSize.exit640.i.us
  store i32 %i.ajs, ptr %i.aix, align 4, !tbaa !27
  %indvars.iv.next232 = add nsw i64 %indvars.iv231, 1 ; 5 uses
  %i.aju = trunc nsw i64 %indvars.iv.next232 to i32 ; 2 uses
  store i32 %i.aju, ptr %i.ajh, align 4, !tbaa !27
  %i.ajv = icmp slt i64 %indvars.iv.next232, %i.ahi
  br i1 %i.ajv, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.ajw = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv.next232
  %i.ajx = load i16, ptr %i.ajw, align 2, !tbaa !338 ; 2 uses
  %.not.i641.i.us = icmp eq i16 %i.ajx, 0
  br i1 %.not.i641.i.us, label %bb.dj, label %cachedCellSize.exit643.i.us

bb.dj:                                            ; preds = %bb.di
  %i.ajy = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.aju), !inline_history !2832
  br label %cachedCellSize.exit643.i.us

cachedCellSize.exit643.i.us:                      ; preds = %bb.dj, %bb.di
  %.0.i642.i.us = phi i16 [ %i.ajy, %bb.dj ], [ %i.ajx, %bb.di ]
  %i.ajz = zext i16 %.0.i642.i.us to i32
  %i.aka = add nuw nsw i32 %i.ajz, 2
  br label %bb.dk

bb.dk:                                            ; preds = %cachedCellSize.exit643.i.us, %bb.dh
  %.1514.i.us = phi i32 [ 0, %bb.dh ], [ %i.aka, %cachedCellSize.exit643.i.us ]
  %i.akb = load i32, ptr %i.ajj, align 4, !tbaa !27
  %i.akc = sub nsw i32 %i.akb, %.1514.i.us
  store i32 %i.akc, ptr %i.ajj, align 4, !tbaa !27
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %i.ahi
  br i1 %exitcond235.not, label %._crit_edge801.i, label %.lr.ph800.i.split.us, !llvm.loop !2844

bb.dl:                                            ; preds = %bb.du, %.lr.ph795.i
  %.5542794.i = phi i32 [ %.4541802.i, %.lr.ph795.i ], [ %.6543.i, %bb.du ] ; 2 uses
  %i.akd = phi i32 [ %.promoted790.i, %.lr.ph795.i ], [ %i.akn, %bb.du ] ; 2 uses
  %i.ake = sext i32 %.5542794.i to i64
  %.not616.i = icmp slt i64 %i.aiz, %i.ake
  br i1 %.not616.i, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.aja, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 %i.akd, ptr %i.aix, align 4
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81791, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

bb.do:                                            ; preds = %bb.dm
  store i32 0, ptr %i.ajb, align 4, !tbaa !27
  store i32 %i.ahh, ptr %i.ajc, align 4, !tbaa !27
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl
  %.6543.i = phi i32 [ %i.ajf, %bb.do ], [ %.5542794.i, %bb.dl ] ; 2 uses
  %i.akf = load i32, ptr %i.ajd, align 4, !tbaa !27 ; 4 uses
  %i.akg = add nsw i32 %i.akf, -1                 ; 4 uses
  %i.akh = sext i32 %i.akg to i64
  %i.aki = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %i.akh
  %i.akj = load i16, ptr %i.aki, align 2, !tbaa !338 ; 2 uses
  %.not.i.i102 = icmp eq i16 %i.akj, 0
  br i1 %.not.i.i102, label %bb.dq, label %cachedCellSize.exit.i

bb.dq:                                            ; preds = %bb.dp
  %i.akk = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.akg), !inline_history !2832
  br label %cachedCellSize.exit.i

cachedCellSize.exit.i:                            ; preds = %bb.dq, %bb.dp
  %.0.i.i103 = phi i16 [ %i.akk, %bb.dq ], [ %i.akj, %bb.dp ]
  %i.akl = zext i16 %.0.i.i103 to i32
  %i.akm = add nuw nsw i32 %i.akl, 2              ; 2 uses
  %i.akn = sub nsw i32 %i.akd, %i.akm             ; 3 uses
  br i1 %.not619.i, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %cachedCellSize.exit.i
  %i.ako = icmp slt i32 %i.akf, %i.ahh
  br i1 %i.ako, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.akp = sext i32 %i.akf to i64
  %i.akq = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %i.akp
  %i.akr = load i16, ptr %i.akq, align 2, !tbaa !338 ; 2 uses
  %.not.i635.i = icmp eq i16 %i.akr, 0
  br i1 %.not.i635.i, label %bb.dt, label %cachedCellSize.exit637.i

bb.dt:                                            ; preds = %bb.ds
  %i.aks = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.akf), !inline_history !2832
  br label %cachedCellSize.exit637.i

cachedCellSize.exit637.i:                         ; preds = %bb.dt, %bb.ds
  %.0.i636.i = phi i16 [ %i.aks, %bb.dt ], [ %i.akr, %bb.ds ]
  %i.akt = zext i16 %.0.i636.i to i32
  %i.aku = add nuw nsw i32 %i.akt, 2
  br label %bb.du

bb.du:                                            ; preds = %cachedCellSize.exit637.i, %bb.dr, %cachedCellSize.exit.i
  %.0513.i = phi i32 [ %i.akm, %cachedCellSize.exit.i ], [ %i.aku, %cachedCellSize.exit637.i ], [ 0, %bb.dr ]
  %i.akv = load i32, ptr %i.ajb, align 4, !tbaa !27
  %i.akw = add nsw i32 %i.akv, %.0513.i
  store i32 %i.akw, ptr %i.ajb, align 4, !tbaa !27
  store i32 %i.akg, ptr %i.ajd, align 4, !tbaa !27
  %i.akx = icmp sgt i32 %i.akn, %i.ahf
  br i1 %i.akx, label %bb.dl, label %.preheader723.i, !llvm.loop !2845

.lr.ph800.i.split:                                ; preds = %.lr.ph800.i, %bb.dw
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dw ], [ %i.ajk, %.lr.ph800.i ] ; 4 uses
  %i.aky = phi i32 [ %i.alf, %bb.dw ], [ %.lcssa791.i, %.lr.ph800.i ]
  %i.akz = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv
  %i.ala = load i16, ptr %i.akz, align 2, !tbaa !338 ; 2 uses
  %.not.i638.i = icmp eq i16 %i.ala, 0
  br i1 %.not.i638.i, label %bb.dv, label %cachedCellSize.exit640.i

bb.dv:                                            ; preds = %.lr.ph800.i.split
  %i.alb = trunc nsw i64 %indvars.iv to i32
  %i.alc = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.alb), !inline_history !2832
  br label %cachedCellSize.exit640.i

cachedCellSize.exit640.i:                         ; preds = %bb.dv, %.lr.ph800.i.split
  %.0.i639.i = phi i16 [ %i.alc, %bb.dv ], [ %i.ala, %.lr.ph800.i.split ]
  %i.ald = zext i16 %.0.i639.i to i32
  %i.ale = add nuw nsw i32 %i.ald, 2              ; 2 uses
  %i.alf = add nsw i32 %i.ale, %i.aky             ; 3 uses
  %i.alg = icmp sgt i32 %i.alf, %i.ahf
  br i1 %i.alg, label %.split.us, label %bb.dw

bb.dw:                                            ; preds = %cachedCellSize.exit640.i
  store i32 %i.alf, ptr %i.aix, align 4, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.alh = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.alh, ptr %i.ajh, align 4, !tbaa !27
  %i.ali = load i32, ptr %i.ajj, align 4, !tbaa !27
  %i.alj = sub nsw i32 %i.ali, %i.ale
  store i32 %i.alj, ptr %i.ajj, align 4, !tbaa !27
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ahi
  br i1 %exitcond.not, label %._crit_edge801.i, label %.lr.ph800.i.split, !llvm.loop !2844

._crit_edge801.i:                                 ; preds = %bb.dw, %bb.dk, %.preheader723.i
  %i.alk = add nuw nsw i64 %indvars.iv952.i, 1    ; 2 uses
  %i.all = trunc nuw nsw i64 %i.alk to i32
  br label %bb.ea

.split.us:                                        ; preds = %cachedCellSize.exit640.i, %cachedCellSize.exit640.i.us
  %.us-phi.in = phi i64 [ %indvars.iv231, %cachedCellSize.exit640.i.us ], [ %indvars.iv, %cachedCellSize.exit640.i ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  %.not614.i = icmp eq i64 %indvars.iv952.i, 0
  br i1 %.not614.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.split.us
  %i.alm = getelementptr i8, ptr %i.ajh, i64 -4
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !27
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.split.us
  %i.alo = phi i32 [ %i.aln, %bb.dx ], [ 0, %.split.us ]
  %.not615.i = icmp slt i32 %i.alo, %.us-phi
  br i1 %.not615.i, label %._crit_edge1065.i, label %bb.dz

._crit_edge1065.i:                                ; preds = %bb.dy
  %.pre1066.i = add nuw nsw i64 %indvars.iv952.i, 1
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81824, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

bb.ea:                                            ; preds = %._crit_edge1065.i, %._crit_edge801.i
  %indvars.iv.next953.pre-phi.i = phi i64 [ %.pre1066.i, %._crit_edge1065.i ], [ %i.alk, %._crit_edge801.i ] ; 2 uses
  %.8545.ph.i = phi i32 [ %.5542.lcssa.i, %._crit_edge1065.i ], [ %i.all, %._crit_edge801.i ] ; 8 uses
  %i.alp = sext i32 %.8545.ph.i to i64
  %i.alq = icmp slt i64 %indvars.iv.next953.pre-phi.i, %i.alp
  br i1 %i.alq, label %.preheader724.i, label %bb.eb, !llvm.loop !2846

bb.eb:                                            ; preds = %bb.ea
  %i.alr = add i32 %.8545.ph.i, -1                ; 3 uses
  %.not609.i = icmp eq i8 %i.ug, 0                ; 2 uses
  %i.als = sub nsw i32 0, %i.aaz
  %i.alt = sext i32 %i.als to i64
  %i.alu = zext i32 %i.alr to i64                 ; 3 uses
  %i.alv = icmp sgt i32 %i.alr, 0
  br i1 %i.alv, label %.lr.ph, label %._crit_edge

bb.ec:                                            ; preds = %bb.ek
  %i.alw = trunc nuw i64 %i.ama to i32
  %i.alx = icmp sgt i32 %i.alw, 0
  br i1 %i.alx, label %.lr.ph, label %._crit_edge, !llvm.loop !2847

.lr.ph:                                           ; preds = %bb.eb, %bb.ec
  %indvars.iv972.i421 = phi i64 [ %i.ama, %bb.ec ], [ %i.alu, %bb.eb ] ; 5 uses
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv972.i421 ; 2 uses
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !27 ; 2 uses
  %i.ama = add nsw i64 %indvars.iv972.i421, -1    ; 4 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ama ; 2 uses
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !27 ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ama ; 3 uses
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !27 ; 2 uses
  %i.amf = sub nsw i32 %i.ame, %i.aaz             ; 2 uses
  %i.amg = sext i32 %i.amf to i64
  %i.amh = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %i.amg
  %i.ami = load i16, ptr %i.amh, align 2, !tbaa !338
  %.not.i644.i = icmp eq i16 %i.ami, 0
  br i1 %.not.i644.i, label %bb.ed, label %cachedCellSize.exit646.i

bb.ed:                                            ; preds = %.lr.ph
  %i.amj = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.amf), !inline_history !2832 ; 0 uses
  br label %cachedCellSize.exit646.i

cachedCellSize.exit646.i:                         ; preds = %bb.ed, %.lr.ph
  %i.amk = icmp eq i64 %indvars.iv972.i421, %i.alu
  %.neg.i = select i1 %i.amk, i32 0, i32 -2
  %i.aml = sext i32 %i.ame to i64                 ; 3 uses
  %i.amm = add nsw i64 %i.aml, %i.alt             ; 2 uses
  br i1 %.not609.i, label %cachedCellSize.exit646.split.us.i, label %cachedCellSize.exit646.split.i

cachedCellSize.exit646.split.us.i:                ; preds = %cachedCellSize.exit646.i, %bb.eg
  %indvars.iv966.i = phi i64 [ %indvars.iv.next967.i, %bb.eg ], [ %i.amm, %cachedCellSize.exit646.i ] ; 2 uses
  %indvars.iv964.i = phi i64 [ %indvars.iv.next965.i, %bb.eg ], [ %i.aml, %cachedCellSize.exit646.i ] ; 3 uses
  %.0511.us.i = phi i32 [ %.pre-phi1070.i, %bb.eg ], [ %i.alz, %cachedCellSize.exit646.i ] ; 3 uses
  %.0509.us.i = phi i32 [ %i.amy, %bb.eg ], [ %i.amc, %cachedCellSize.exit646.i ] ; 3 uses
  %indvars.iv.next965.i = add nsw i64 %indvars.iv964.i, -1 ; 3 uses
  %indvars237 = trunc i64 %indvars.iv.next965.i to i32 ; 3 uses
  %i.amn = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv.next965.i
  %i.amo = load i16, ptr %i.amn, align 2, !tbaa !338 ; 2 uses
  %.not.i647.us.i = icmp eq i16 %i.amo, 0
  br i1 %.not.i647.us.i, label %bb.ee, label %cachedCellSize.exit649.us.i

bb.ee:                                            ; preds = %cachedCellSize.exit646.split.us.i
  %i.amp = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %indvars237), !inline_history !2832
  br label %cachedCellSize.exit649.us.i

cachedCellSize.exit649.us.i:                      ; preds = %bb.ee, %cachedCellSize.exit646.split.us.i
  %.0.i648.us.i = phi i16 [ %i.amp, %bb.ee ], [ %i.amo, %cachedCellSize.exit646.split.us.i ]
  %i.amq = zext i16 %.0.i648.us.i to i32          ; 2 uses
  %i.amr = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv966.i
  %i.ams = load i16, ptr %i.amr, align 2, !tbaa !338
  %i.amt = zext i16 %i.ams to i32                 ; 2 uses
  %.not608.us.i = icmp eq i32 %.0511.us.i, 0
  br i1 %.not608.us.i, label %cachedCellSize.exit649.us._crit_edge.i, label %bb.ef

cachedCellSize.exit649.us._crit_edge.i:           ; preds = %cachedCellSize.exit649.us.i
  %.pre1069.i = add nuw nsw i32 %i.amt, 2
  br label %bb.eg

bb.ef:                                            ; preds = %cachedCellSize.exit649.us.i
  %i.amu = add i32 %.0511.us.i, 2
  %i.amv = add i32 %i.amu, %i.amt                 ; 2 uses
  %.neg715.us.i = add i32 %.0509.us.i, %.neg.i
  %i.amw = sub i32 %.neg715.us.i, %i.amq
  %i.amx = icmp sgt i32 %i.amv, %i.amw
  br i1 %i.amx, label %.thread678.i.loopexit.split.loop.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %cachedCellSize.exit649.us._crit_edge.i
  %.pre-phi1070.i = phi i32 [ %.pre1069.i, %cachedCellSize.exit649.us._crit_edge.i ], [ %i.amv, %bb.ef ] ; 2 uses
  %.neg716.us.i = add i32 %.0509.us.i, -2
  %i.amy = sub i32 %.neg716.us.i, %i.amq          ; 2 uses
  store i32 %indvars237, ptr %i.amd, align 4, !tbaa !27
  %indvars.iv.next967.i = add nsw i64 %indvars.iv966.i, -1
  %i.amz = icmp sgt i64 %indvars.iv964.i, 1
  br i1 %i.amz, label %cachedCellSize.exit646.split.us.i, label %.thread678.i, !llvm.loop !2848

cachedCellSize.exit646.split.i:                   ; preds = %cachedCellSize.exit646.i, %bb.ei
  %indvars.iv958.i = phi i64 [ %indvars.iv.next959.i, %bb.ei ], [ %i.amm, %cachedCellSize.exit646.i ] ; 2 uses
  %indvars.iv956.i = phi i64 [ %indvars.iv.next957.i, %bb.ei ], [ %i.aml, %cachedCellSize.exit646.i ] ; 3 uses
  %.0511.i = phi i32 [ %i.anh, %bb.ei ], [ %i.alz, %cachedCellSize.exit646.i ] ; 2 uses
  %.0509.i = phi i32 [ %i.ani, %bb.ei ], [ %i.amc, %cachedCellSize.exit646.i ] ; 2 uses
  %indvars.iv.next957.i = add nsw i64 %indvars.iv956.i, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next957.i to i32 ; 3 uses
  %i.ana = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv.next957.i
  %i.anb = load i16, ptr %i.ana, align 2, !tbaa !338 ; 2 uses
  %.not.i647.i = icmp eq i16 %i.anb, 0
  br i1 %.not.i647.i, label %bb.eh, label %cachedCellSize.exit649.i

bb.eh:                                            ; preds = %cachedCellSize.exit646.split.i
  %i.anc = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %indvars), !inline_history !2832
  br label %cachedCellSize.exit649.i

cachedCellSize.exit649.i:                         ; preds = %bb.eh, %cachedCellSize.exit646.split.i
  %.0.i648.i = phi i16 [ %i.anc, %bb.eh ], [ %i.anb, %cachedCellSize.exit646.split.i ]
  %.not608.i = icmp eq i32 %.0511.i, 0
  br i1 %.not608.i, label %bb.ei, label %.thread678.i.loopexit307.split.loop.exit

bb.ei:                                            ; preds = %cachedCellSize.exit649.i
  %i.and = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv958.i
  %i.ane = load i16, ptr %i.and, align 2, !tbaa !338
  %i.anf = zext i16 %i.ane to i32
  %i.ang = zext i16 %.0.i648.i to i32
  %i.anh = add nuw nsw i32 %i.anf, 2              ; 2 uses
  %.neg716.i = add i32 %.0509.i, -2
  %i.ani = sub i32 %.neg716.i, %i.ang             ; 2 uses
  store i32 %indvars, ptr %i.amd, align 4, !tbaa !27
  %indvars.iv.next959.i = add nsw i64 %indvars.iv958.i, -1
  %i.anj = icmp sgt i64 %indvars.iv956.i, 1
  br i1 %i.anj, label %cachedCellSize.exit646.split.i, label %.thread678.i, !llvm.loop !2848

.thread678.i.loopexit.split.loop.exit:            ; preds = %bb.ef
  %indvars238.le = trunc i64 %indvars.iv964.i to i32
  br label %.thread678.i

.thread678.i.loopexit307.split.loop.exit:         ; preds = %cachedCellSize.exit649.i
  %indvars236.le = trunc i64 %indvars.iv956.i to i32
  br label %.thread678.i

.thread678.i:                                     ; preds = %bb.ei, %bb.eg, %.thread678.i.loopexit307.split.loop.exit, %.thread678.i.loopexit.split.loop.exit
  %i.ank = phi i32 [ %indvars237, %bb.eg ], [ %indvars238.le, %.thread678.i.loopexit.split.loop.exit ], [ %indvars236.le, %.thread678.i.loopexit307.split.loop.exit ], [ %indvars, %bb.ei ]
  %.us-phi.i = phi i32 [ %i.amy, %bb.eg ], [ %.0509.us.i, %.thread678.i.loopexit.split.loop.exit ], [ %.0509.i, %.thread678.i.loopexit307.split.loop.exit ], [ %i.ani, %bb.ei ]
  %.us-phi805.i = phi i32 [ %.pre-phi1070.i, %bb.eg ], [ %.0511.us.i, %.thread678.i.loopexit.split.loop.exit ], [ %.0511.i, %.thread678.i.loopexit307.split.loop.exit ], [ %i.anh, %bb.ei ]
  store i32 %.us-phi805.i, ptr %i.aly, align 4, !tbaa !27
  store i32 %.us-phi.i, ptr %i.amb, align 4, !tbaa !27
  %.not610.i = icmp eq i64 %indvars.iv972.i421, 1
  br i1 %.not610.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.thread678.i
  %i.anl = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv972.i421
  %i.anm = getelementptr i8, ptr %i.anl, i64 -8
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !27
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.thread678.i
  %i.ano = phi i32 [ %i.ann, %bb.ej ], [ 0, %.thread678.i ]
  %.not611.i = icmp sgt i32 %i.ank, %i.ano
  br i1 %.not611.i, label %bb.ec, label %bb.el, !llvm.loop !2847

bb.el:                                            ; preds = %bb.ek
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81868, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

._crit_edge:                                      ; preds = %bb.ec, %bb.eb
  %i.anp = load ptr, ptr %i.aba, align 8, !tbaa !667
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !231 ; 2 uses
  %i.anr = zext i8 %i.anq to i32                  ; 3 uses
  %i.ans = icmp sgt i32 %.8545.ph.i, 0            ; 2 uses
  br i1 %i.ans, label %.lr.ph811.i, label %.._crit_edge823.i_crit_edge

.._crit_edge823.i_crit_edge:                      ; preds = %._crit_edge
  %.pre240 = and i32 %i.anr, 8
  br label %._crit_edge823.i

.lr.ph811.i:                                      ; preds = %._crit_edge
  %i.ant = sub nsw i32 %i.jp, %.1536.i
  %i.anu = and i32 %i.anr, 8                      ; 3 uses
  %i.anv = icmp eq i32 %i.anu, 0
  %i.anw = select i1 %i.anv, i32 12, i32 8
  %i.anx = getelementptr inbounds nuw i8, ptr %i.uj, i64 33
  %i.any = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.anz = zext i32 %i.ant to i64
  %wide.trip.count982.i = zext nneg i32 %.8545.ph.i to i64 ; 6 uses
  br label %bb.em

bb.em:                                            ; preds = %bb.fa, %.lr.ph811.i
  %indvars.iv976.i = phi i64 [ 0, %.lr.ph811.i ], [ %indvars.iv.next977.i, %bb.fa ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #58
  %.not602.i = icmp samesign ugt i64 %indvars.iv976.i, %i.wm
  br i1 %.not602.i, label %bb.ew, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv976.i ; 2 uses
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !1653 ; 3 uses
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv976.i
  store ptr %i.aob, ptr %i.aoc, align 8, !tbaa !1653
  store ptr %i.aob, ptr %i.k, align 8, !tbaa !1653
  store ptr null, ptr %i.aoa, align 8, !tbaa !1653
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aob, i64 112 ; 2 uses
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !698 ; 6 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 40
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !531 ; 5 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoe, i64 52
  %i.aoi = load i16, ptr %i.aoh, align 4, !tbaa !530
  %i.aoj = and i16 %i.aoi, 4
  %.not.i650.i = icmp eq i16 %i.aoj, 0
end_hunk_4
begin_hunk_5_@balance:bb.a
  %i.bav = load ptr, ptr %i.wh, align 8, !tbaa !1607
  %i.baw = call zeroext i16 %i.bav(ptr noundef %i.jm, ptr noundef nonnull %i.bat) #58, !inline_history !2832
  %i.bax = zext i16 %i.baw to i32
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %sqlite3PutVarint.exit.i, %bb.fx
  %.3550.i = phi i32 [ %i.baa, %sqlite3PutVarint.exit.i ], [ %i.azk, %bb.gf ], [ %i.azk, %bb.ge ], [ %i.azk, %bb.fx ]
  %.0483.i = phi ptr [ %i.azt, %sqlite3PutVarint.exit.i ], [ %i.bat, %bb.gf ], [ %i.bat, %bb.ge ], [ %i.azn, %bb.fx ] ; 3 uses
  %.0482.i = phi ptr [ null, %sqlite3PutVarint.exit.i ], [ %i.azt, %bb.gf ], [ %i.azt, %bb.ge ], [ %i.azt, %bb.fx ]
  %.0481.i = phi i32 [ %.0.i657.i, %sqlite3PutVarint.exit.i ], [ %i.bax, %bb.gf ], [ %i.azr, %bb.ge ], [ %i.azr, %bb.fx ] ; 3 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gh, %bb.gg
  %indvars.iv1012.i = phi i64 [ %indvars.iv.next1013.i, %bb.gh ], [ 0, %bb.gg ] ; 3 uses
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv1012.i
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !27
  %.not598.i = icmp sgt i32 %i.baz, %.3550.i
  %indvars.iv.next1013.i = add nuw nsw i64 %indvars.iv1012.i, 1
  br i1 %.not598.i, label %bb.gi, label %bb.gh, !llvm.loop !2861

bb.gi:                                            ; preds = %bb.gh
  %i.bba = add nsw i32 %.0481.i, %.0529846.i
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv1012.i
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !259 ; 2 uses
  %i.bbd = icmp ult ptr %.0483.i, %i.bbc
  %i.bbe = sext i32 %.0481.i to i64
  %i.bbf = getelementptr inbounds i8, ptr %.0483.i, i64 %i.bbe
  %i.bbg = icmp ugt ptr %i.bbf, %i.bbc
  %or.cond632.i = select i1 %i.bbd, i1 %i.bbg, i1 false
  br i1 %or.cond632.i, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82107, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

bb.gk:                                            ; preds = %bb.gi
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.azi, i64 4
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !774
  %i.bbj = trunc i64 %indvars.iv1016.i to i32
  %i.bbk = add i32 %.1536.i, %i.bbj
  %i.bbl = call fastcc i32 @insertCell(ptr noundef %i.jm, i32 noundef %i.bbk, ptr noundef nonnull %.0483.i, i32 noundef %.0481.i, ptr noundef %.0482.i, i32 noundef %i.bbi), !inline_history !2832 ; 2 uses
  %.not599.i = icmp eq i32 %i.bbl, 0
  br i1 %.not599.i, label %bb.fv, label %.thread705.i

._crit_edge849.i:                                 ; preds = %bb.fv, %.thread702.i
  %i.bbm = sub nsw i32 1, %.0496.lcssa11251127.i  ; 2 uses
  %i.bbn = icmp slt i32 %i.bbm, %.0496.lcssa11251127.i
  br i1 %i.bbn, label %.lr.ph858.i, label %._crit_edge859.i

.lr.ph858.i:                                      ; preds = %._crit_edge849.i
  %i.bbo = zext i1 %.not619.i to i32              ; 2 uses
  %i.bbp = load i32, ptr %i.e, align 16
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gs, %.lr.ph858.i
  %.11854.i = phi i32 [ %i.bbm, %.lr.ph858.i ], [ %i.bcu, %bb.gs ] ; 4 uses
  %i.bbq = call i32 @llvm.abs.i32(i32 %.11854.i, i1 true) ; 3 uses
  %i.bbr = zext nneg i32 %i.bbq to i64            ; 5 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bbr ; 2 uses
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !231
  %.not590.i = icmp eq i8 %i.bbt, 0
  br i1 %.not590.i, label %bb.gm, label %bb.gs

bb.gm:                                            ; preds = %bb.gl
  %i.bbu = icmp sgt i32 %.11854.i, -1
  br i1 %i.bbu, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bbv = add nsw i32 %i.bbq, -1
  %i.bbw = sext i32 %i.bbv to i64                 ; 2 uses
  %i.bbx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bbw
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !27
  %i.bbz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bbw
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !27
  %.not591.i = icmp slt i32 %i.bby, %i.bca
  br i1 %.not591.i, label %bb.gs, label %.thread707.i

bb.go:                                            ; preds = %bb.gm
  %i.bcb = icmp eq i32 %.11854.i, 0
  br i1 %i.bcb, label %bb.gr, label %.thread707.i

.thread707.i:                                     ; preds = %bb.go, %bb.gn
  %.not592.i = icmp samesign ugt i32 %i.bbq, %.0499.i
  br i1 %.not592.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %.thread707.i
  %i.bcc = getelementptr [4 x i8], ptr %i.f, i64 %i.bbr
  %i.bcd = getelementptr i8, ptr %i.bcc, i64 -4
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !27
  %i.bcf = add nsw i32 %i.bce, %i.bbo
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.thread707.i
  %i.bcg = phi i32 [ %i.bcf, %bb.gp ], [ %i.aze, %.thread707.i ]
  %i.bch = getelementptr [4 x i8], ptr %i.e, i64 %i.bbr ; 2 uses
  %i.bci = getelementptr i8, ptr %i.bch, i64 -4
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !27
  %i.bck = add nsw i32 %i.bcj, %i.bbo             ; 2 uses
  %i.bcl = load i32, ptr %i.bch, align 4, !tbaa !27
  %i.bcm = sub nsw i32 %i.bcl, %i.bck
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.go
  %.0480.i = phi i32 [ %i.bck, %bb.gq ], [ 0, %bb.go ]
  %.0479.i = phi i32 [ %i.bcg, %bb.gq ], [ 0, %bb.go ]
  %.0478.i = phi i32 [ %i.bcm, %bb.gq ], [ %i.bbp, %bb.go ]
  %i.bcn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bbr
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !1653 ; 2 uses
  %i.bcp = call fastcc i32 @editPage(ptr noundef %i.bco, i32 noundef %.0479.i, i32 noundef %.0480.i, i32 noundef %.0478.i, ptr noundef %2), !inline_history !2832 ; 2 uses
  %.not595.i = icmp eq i32 %i.bcp, 0
  br i1 %.not595.i, label %.thread708.i, label %.thread705.i

.thread708.i:                                     ; preds = %bb.gr
  store i8 1, ptr %i.bbs, align 1, !tbaa !231
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bbr
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !27
  %i.bcs = sub nsw i32 %i.ahf, %i.bcr
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bco, i64 20
  store i32 %i.bcs, ptr %i.bct, align 4, !tbaa !1603
  br label %bb.gs

bb.gs:                                            ; preds = %.thread708.i, %bb.gn, %bb.gl
  %i.bcu = add i32 %.11854.i, 1                   ; 2 uses
  %exitcond1022.not.i = icmp eq i32 %i.bcu, %.0496.lcssa11251127.i
  br i1 %exitcond1022.not.i, label %._crit_edge859.i, label %bb.gl, !llvm.loop !2862

._crit_edge859.i:                                 ; preds = %bb.gs, %._crit_edge849.i
  store i32 0, ptr %i.a, align 4
  br i1 %.not125, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %._crit_edge859.i
  %i.bcv = load i16, ptr %i.un, align 8, !tbaa !1613
  %i.bcw = icmp eq i16 %i.bcv, 0
  br i1 %i.bcw, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.jm, i64 9
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !776
  %i.bcz = zext i8 %i.bcy to i32
  %i.bda = load ptr, ptr %i.c, align 16, !tbaa !1653 ; 6 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 20
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !1603
  %.not588.i = icmp slt i32 %i.bdc, %i.bcz
  br i1 %.not588.i, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bdd = call fastcc i32 @defragmentPage(ptr noundef nonnull %i.bda, i32 noundef -1), !inline_history !2832
  store i32 %i.bdd, ptr %i.a, align 4, !tbaa !27
  call fastcc void @copyNodeContent(ptr noundef nonnull %i.bda, ptr noundef nonnull %i.jm, ptr noundef %i.a), !inline_history !2832
  %i.bde = load i32, ptr %i.a, align 4, !tbaa !27 ; 2 uses
  %i.bdf = icmp eq i32 %i.bde, 0
  br i1 %i.bdf, label %bb.gw, label %freePage.exit.i

bb.gw:                                            ; preds = %bb.gv
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bda, i64 72
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !775
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bda, i64 4
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !774
  %i.bdk = call fastcc i32 @freePage2(ptr noundef %i.bdh, ptr noundef nonnull %i.bda, i32 noundef %i.bdj), !inline_history !2863
  br label %freePage.exit.i

bb.gx:                                            ; preds = %bb.gu, %bb.gt, %._crit_edge859.i
  %i.bdl = load i8, ptr %i.avr, align 1, !tbaa !754
  %i.bdm = icmp ne i8 %i.bdl, 0
  %i.bdn = icmp eq i8 %i.aau, 0
  %or.cond5.not878.i = select i1 %i.bdm, i1 %i.bdn, i1 false
  %or.cond873.i = and i1 %i.ans, %or.cond5.not878.i
  br i1 %or.cond873.i, label %.lr.ph862.preheader.i, label %freePage.exit.i

.lr.ph862.preheader.i:                            ; preds = %bb.gx
  %wide.trip.count1027.i = zext nneg i32 %.0496.lcssa11251127.i to i64
  br label %.lr.ph862.i

.lr.ph862.i:                                      ; preds = %.lr.ph862.i, %.lr.ph862.preheader.i
  %indvars.iv1023.i = phi i64 [ 0, %.lr.ph862.preheader.i ], [ %indvars.iv.next1024.i, %.lr.ph862.i ] ; 2 uses
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1023.i
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !1653 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 80
  %i.bdr = load ptr, ptr %i.bdq, align 8, !tbaa !667
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  %i.bdt = load i32, ptr %i.bds, align 1
  %i.bdu = call i32 @llvm.bswap.i32(i32 %i.bdt)
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdp, i64 4
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !774
  call fastcc void @ptrmapPut(ptr noundef nonnull %i.uj, i32 noundef %i.bdu, i8 noundef zeroext 5, i32 noundef %i.bdw, ptr noundef %i.a), !inline_history !2832
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %exitcond1028.not.i = icmp eq i64 %indvars.iv.next1024.i, %wide.trip.count1027.i
  br i1 %exitcond1028.not.i, label %freePage.exit.loopexit.i, label %.lr.ph862.i, !llvm.loop !2864

freePage.exit.loopexit.i:                         ; preds = %.lr.ph862.i
  %.promoted863.pre.i = load i32, ptr %i.a, align 4
  br label %freePage.exit.i

freePage.exit.i:                                  ; preds = %freePage.exit.loopexit.i, %bb.gx, %bb.gw, %bb.gv
  %.promoted863.i = phi i32 [ %.promoted863.pre.i, %freePage.exit.loopexit.i ], [ %i.bdk, %bb.gw ], [ %i.bde, %bb.gv ], [ 0, %bb.gx ] ; 2 uses
  %.not589865.i = icmp sgt i32 %.0496.lcssa11251127.i, %.0499.i
  br i1 %.not589865.i, label %.thread705.i, label %.lr.ph867.preheader.i

.lr.ph867.preheader.i:                            ; preds = %freePage.exit.i
  %i.bdx = zext nneg i32 %.0496.lcssa11251127.i to i64
  br label %.lr.ph867.i

.lr.ph867.i:                                      ; preds = %freePage.exit658.i, %.lr.ph867.preheader.i
  %indvars.iv1029.i = phi i64 [ %i.bdx, %.lr.ph867.preheader.i ], [ %indvars.iv.next1030.i, %freePage.exit658.i ] ; 2 uses
  %i.bdy = phi i32 [ %.promoted863.i, %.lr.ph867.preheader.i ], [ %i.beh, %freePage.exit658.i ] ; 2 uses
  %i.bdz = icmp eq i32 %i.bdy, 0
  br i1 %i.bdz, label %bb.gy, label %freePage.exit658.i

bb.gy:                                            ; preds = %.lr.ph867.i
  %i.bea = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv1029.i
  %i.beb = load ptr, ptr %i.bea, align 8, !tbaa !1653 ; 3 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 72
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !775
  %i.bee = getelementptr inbounds nuw i8, ptr %i.beb, i64 4
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !774
  %i.beg = call fastcc i32 @freePage2(ptr noundef %i.bed, ptr noundef %i.beb, i32 noundef %i.bef), !inline_history !2863
  br label %freePage.exit658.i

freePage.exit658.i:                               ; preds = %bb.gy, %.lr.ph867.i
  %i.beh = phi i32 [ %i.bdy, %.lr.ph867.i ], [ %i.beg, %bb.gy ] ; 2 uses
  %indvars.iv.next1030.i = add nuw nsw i64 %indvars.iv1029.i, 1 ; 2 uses
  %exitcond1035.not.i = icmp eq i64 %indvars.iv.next1030.i, %wide.trip.count940.i
  br i1 %exitcond1035.not.i, label %.thread705.i, label %.lr.ph867.i, !llvm.loop !2865

.thread705.i:                                     ; preds = %bb.ft, %bb.gk, %bb.gr, %freePage.exit658.i, %freePage.exit.i, %bb.gj, %.thread692.i, %bb.el, %bb.dz, %bb.dn, %bb.cs, %bb.cp, %bb.cc, %.thread.i87
  %.ph = phi i32 [ %i.beh, %freePage.exit658.i ], [ %.promoted863.i, %freePage.exit.i ], [ 11, %bb.gj ], [ 11, %bb.dz ], [ 11, %bb.cs ], [ %i.bbl, %bb.gk ], [ %i.wq, %.thread.i87 ], [ %i.arw, %.thread692.i ], [ 11, %bb.el ], [ 11, %bb.cp ], [ 11, %bb.dn ], [ %i.bcp, %bb.gr ], [ %i.wx, %bb.cc ], [ %i.aza, %bb.ft ] ; 4 uses
  %.3.i.ph = phi i32 [ %.0496.lcssa11251127.i, %freePage.exit658.i ], [ %.0496.lcssa11251127.i, %freePage.exit.i ], [ %.0496.lcssa11251127.i, %bb.gj ], [ 0, %bb.dz ], [ 0, %bb.cs ], [ %.0496.lcssa11251127.i, %bb.gk ], [ 0, %.thread.i87 ], [ %.2498.ph.i, %.thread692.i ], [ 0, %bb.el ], [ 0, %bb.cp ], [ 0, %bb.dn ], [ %.0496.lcssa11251127.i, %bb.gr ], [ 0, %bb.cc ], [ %.0496.lcssa11251127.i, %bb.ft ] ; 4 uses
  %.pr = load ptr, ptr %i.ap, align 8, !tbaa !2825 ; 4 uses
  %.not.i659.i = icmp eq ptr %.pr, null
  br i1 %.not.i659.i, label %sqlite3DbFree.exit.i, label %bb.gz

bb.gz:                                            ; preds = %.thread705.i
  %i.bei = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i.i = icmp eq i32 %i.bei, 0
  br i1 %.not.i.i.i, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bej = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i665.i = icmp eq ptr %i.bej, null
  br i1 %.not.i.i.i665.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.bek(ptr noundef nonnull %i.bej) #58, !inline_history !2866
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.hb, %bb.ha
  %i.bel = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.bem = call i32 %i.bel(ptr noundef nonnull %.pr) #58, !inline_history !2867
  %i.ben = sext i32 %i.bem to i64
  %i.beo = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.bep = sub nsw i64 %i.beo, %i.ben
  store i64 %i.bep, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.beq = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ber = add nsw i64 %i.beq, -1
  store i64 %i.ber, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.bes = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.bes(ptr noundef nonnull %.pr) #58, !inline_history !2868
  %i.bet = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.bet, null
  br i1 %.not.i4.i.i.i, label %sqlite3DbFree.exit.i, label %bb.hc

bb.hc:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.beu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.beu(ptr noundef nonnull %i.bet) #58, !inline_history !2869
  br label %sqlite3DbFree.exit.i

bb.hd:                                            ; preds = %bb.gz
  %i.bev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.bev(ptr noundef nonnull %.pr) #58, !inline_history !2868
  br label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %bb.cm, %bb.hd, %bb.hc, %sqlite3_mutex_enter.exit.i.i.i, %.thread705.i
  %.3.i305 = phi i32 [ %.3.i.ph, %.thread705.i ], [ %.3.i.ph, %bb.hd ], [ %.3.i.ph, %bb.hc ], [ %.3.i.ph, %sqlite3_mutex_enter.exit.i.i.i ], [ 0, %bb.cm ] ; 2 uses
  %i.bew = phi i32 [ %.ph, %.thread705.i ], [ %.ph, %bb.hd ], [ %.ph, %bb.hc ], [ %.ph, %sqlite3_mutex_enter.exit.i.i.i ], [ 7, %bb.cm ] ; 2 uses
  %wide.trip.count1040.i = zext nneg i32 %i.uy to i64
  br label %bb.he

.preheader.i:                                     ; preds = %releasePage.exit.i90
  %i.bex = icmp sgt i32 %.3.i305, 0
  br i1 %i.bex, label %.lr.ph871.preheader.i, label %balance_nonroot.exit

.lr.ph871.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count1046.i = zext nneg i32 %.3.i305 to i64
  br label %.lr.ph871.i

bb.he:                                            ; preds = %releasePage.exit.i90, %sqlite3DbFree.exit.i
  %indvars.iv1036.i = phi i64 [ 0, %sqlite3DbFree.exit.i ], [ %indvars.iv.next1037.i, %releasePage.exit.i90 ] ; 2 uses
  %i.bey = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv1036.i
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !1653 ; 2 uses
  %.not.i660.i = icmp eq ptr %i.bez, null
  br i1 %.not.i660.i, label %releasePage.exit.i90, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bfa = getelementptr i8, ptr %i.bez, i64 112
  %.val.i.i88 = load ptr, ptr %i.bfa, align 8, !tbaa !698 ; 7 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 52
  %i.bfc = load i16, ptr %i.bfb, align 4, !tbaa !530
  %i.bfd = and i16 %i.bfc, 32
  %.not.i.i.i.i89 = icmp eq i16 %i.bfd, 0
  br i1 %.not.i.i.i.i89, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bfe = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 40
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !531 ; 4 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 152 ; 2 uses
  %i.bfh = load i32, ptr %i.bfg, align 8, !tbaa !532
  %i.bfi = add nsw i32 %i.bfh, -1
  store i32 %i.bfi, ptr %i.bfg, align 8, !tbaa !532
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bff, i64 168 ; 2 uses
  %i.bfk = load ptr, ptr %i.bfj, align 8, !tbaa !533
  %i.bfl = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 32
  store ptr %i.bfk, ptr %i.bfl, align 8, !tbaa !534
  store ptr %.val.i.i88, ptr %i.bfj, align 8, !tbaa !533
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bff, i64 72
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !535 ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 48
  %i.bfp = load i32, ptr %i.bfo, align 8, !tbaa !536
  %i.bfq = add i32 %i.bfp, -1
  %i.bfr = zext i32 %i.bfq to i64
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bff, i64 200
  %i.bft = load i64, ptr %i.bfs, align 8, !tbaa !83
  %i.bfu = mul nsw i64 %i.bft, %i.bfr
  %i.bfv = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 8
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !527
  %i.bfx = load ptr, ptr %i.bfn, align 8, !tbaa !483
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 144
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !537
  %i.bga = call i32 %i.bfz(ptr noundef nonnull %i.bfn, i64 noundef %i.bfu, ptr noundef %i.bfw) #58, !inline_history !2870 ; 0 uses
  br label %releasePage.exit.i90

bb.hh:                                            ; preds = %bb.hf
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i.i88), !inline_history !2832
  br label %releasePage.exit.i90

releasePage.exit.i90:                             ; preds = %bb.hh, %bb.hg, %bb.he
  %indvars.iv.next1037.i = add nuw nsw i64 %indvars.iv1036.i, 1 ; 2 uses
  %exitcond1041.not.i = icmp eq i64 %indvars.iv.next1037.i, %wide.trip.count1040.i
  br i1 %exitcond1041.not.i, label %.preheader.i, label %bb.he, !llvm.loop !2871

.lr.ph871.i:                                      ; preds = %releasePage.exit664.i, %.lr.ph871.preheader.i
  %indvars.iv1042.i = phi i64 [ 0, %.lr.ph871.preheader.i ], [ %indvars.iv.next1043.i, %releasePage.exit664.i ] ; 2 uses
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1042.i
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !1653 ; 2 uses
  %.not.i661.i = icmp eq ptr %i.bgc, null
  br i1 %.not.i661.i, label %releasePage.exit664.i, label %bb.hi

bb.hi:                                            ; preds = %.lr.ph871.i
  %i.bgd = getelementptr i8, ptr %i.bgc, i64 112
  %.val.i662.i = load ptr, ptr %i.bgd, align 8, !tbaa !698 ; 7 uses
  %i.bge = getelementptr inbounds nuw i8, ptr %.val.i662.i, i64 52
  %i.bgf = load i16, ptr %i.bge, align 4, !tbaa !530
  %i.bgg = and i16 %i.bgf, 32
  %.not.i.i.i663.i = icmp eq i16 %i.bgg, 0
  br i1 %.not.i.i.i663.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bgh = getelementptr inbounds nuw i8, ptr %.val.i662.i, i64 40
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !531 ; 4 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 152 ; 2 uses
  %i.bgk = load i32, ptr %i.bgj, align 8, !tbaa !532
  %i.bgl = add nsw i32 %i.bgk, -1
  store i32 %i.bgl, ptr %i.bgj, align 8, !tbaa !532
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgi, i64 168 ; 2 uses
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !533
  %i.bgo = getelementptr inbounds nuw i8, ptr %.val.i662.i, i64 32
  store ptr %i.bgn, ptr %i.bgo, align 8, !tbaa !534
  store ptr %.val.i662.i, ptr %i.bgm, align 8, !tbaa !533
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgi, i64 72
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !535 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %.val.i662.i, i64 48
  %i.bgs = load i32, ptr %i.bgr, align 8, !tbaa !536
  %i.bgt = add i32 %i.bgs, -1
  %i.bgu = zext i32 %i.bgt to i64
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgi, i64 200
  %i.bgw = load i64, ptr %i.bgv, align 8, !tbaa !83
  %i.bgx = mul nsw i64 %i.bgw, %i.bgu
  %i.bgy = getelementptr inbounds nuw i8, ptr %.val.i662.i, i64 8
  %i.bgz = load ptr, ptr %i.bgy, align 8, !tbaa !527
  %i.bha = load ptr, ptr %i.bgq, align 8, !tbaa !483
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 144
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !537
  %i.bhd = call i32 %i.bhc(ptr noundef nonnull %i.bgq, i64 noundef %i.bgx, ptr noundef %i.bgz) #58, !inline_history !2870 ; 0 uses
  br label %releasePage.exit664.i

bb.hk:                                            ; preds = %bb.hi
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i662.i), !inline_history !2832
  br label %releasePage.exit664.i

releasePage.exit664.i:                            ; preds = %bb.hk, %bb.hj, %.lr.ph871.i
  %indvars.iv.next1043.i = add nuw nsw i64 %indvars.iv1042.i, 1 ; 2 uses
  %exitcond1047.not.i = icmp eq i64 %indvars.iv.next1043.i, %wide.trip.count1046.i
  br i1 %exitcond1047.not.i, label %balance_nonroot.exit, label %.lr.ph871.i, !llvm.loop !2872

balance_nonroot.exit:                             ; preds = %releasePage.exit664.i, %bb.bp, %.preheader.i
  %.0.i91 = phi i32 [ 7, %bb.bp ], [ %i.bew, %.preheader.i ], [ %i.bew, %releasePage.exit664.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %.not71 = icmp eq ptr %.057, null
  br i1 %.not71, label %.thread113, label %bb.hl

bb.hl:                                            ; preds = %balance_nonroot.exit
  call fastcc void @pcache1Free(ptr noundef nonnull %.057)
  br label %.thread113

.thread113:                                       ; preds = %bb.aj, %sqlite3PagerWrite.exit, %bb.an, %balance_quick.exit, %bb.hl, %balance_nonroot.exit
  %.361 = phi i32 [ %.1.i, %balance_quick.exit ], [ %i.ks, %bb.an ], [ %.0.i91, %bb.hl ], [ %.0.i91, %balance_nonroot.exit ], [ %.0.i77, %sqlite3PagerWrite.exit ], [ %i.kf, %bb.aj ]
  %.1 = phi ptr [ %.057, %balance_quick.exit ], [ %.057, %bb.an ], [ %i.ue, %bb.hl ], [ %i.ue, %balance_nonroot.exit ], [ %.057, %sqlite3PagerWrite.exit ], [ %.057, %bb.aj ]
  store i8 0, ptr %i.bb, align 4, !tbaa !1612
  %.val.i105 = load ptr, ptr %i.je, align 8, !tbaa !698 ; 7 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %.val.i105, i64 52
  %i.bhf = load i16, ptr %i.bhe, align 4, !tbaa !530
  %i.bhg = and i16 %i.bhf, 32
end_hunk_5
begin_hunk_6_@sqlite3SetTextEncoding:strHash.exit.i.i.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeCommit(ptr nofree noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !582
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %sqlite3BtreeEnter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !583
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !583
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.g = load i8, ptr %i.f, align 2, !tbaa !584
  %.not4.i = icmp eq i8 %i.g, 0
  br i1 %.not4.i, label %bb.c, label %sqlite3BtreeEnter.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @btreeLockCarefully(ptr noundef nonnull %0)
  br label %sqlite3BtreeEnter.exit

sqlite3BtreeEnter.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %i.h = tail call fastcc i32 @sqlite3BtreeCommitPhaseOne(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %sqlite3BtreeEnter.exit
  %i.j = tail call fastcc i32 @sqlite3BtreeCommitPhaseTwo(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %sqlite3BtreeEnter.exit
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.h, %sqlite3BtreeEnter.exit ]
  %i.k = load i8, ptr %i.a, align 1, !tbaa !582
  %.not.i6 = icmp eq i8 %i.k, 0
  br i1 %.not.i6, label %sqlite3BtreeLeave.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !583
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !tbaa !583
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %sqlite3BtreeLeave.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @unlockBtreeMutex(ptr noundef nonnull %0)
  br label %sqlite3BtreeLeave.exit

sqlite3BtreeLeave.exit:                           ; preds = %bb.e, %bb.f, %bb.g
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3FindCollSeq(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !231     ; 2 uses
  %.not6.i.i.i.i = icmp eq i8 %i.b, 0
  br i1 %.not6.i.i.i.i, label %strHash.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.c = phi i8 [ %i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.b ]
  %.08.i.i.i.i = phi i32 [ %i.h, %.lr.ph.i.i.i.i ], [ 0, %bb.b ]
  %.047.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %2, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i, i64 1 ; 2 uses
  %i.e = and i8 %i.c, -33
  %i.f = zext i8 %i.e to i32
  %i.g = add i32 %.08.i.i.i.i, %i.f
  %i.h = mul i32 %i.g, -1640531535                ; 2 uses
  %i.i = load i8, ptr %i.d, align 1, !tbaa !231   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %strHash.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !952

strHash.exit.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %bb.b ], [ %i.h, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !953  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %strHash.exit.i.i.i
  %i.l = load i32, ptr %i.a, align 8, !tbaa !954
  %i.m = urem i32 %.0.lcssa.i.i.i.i, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.n ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %strHash.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 620
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.a, %bb.d ]
  %.020.in.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  %.020.i.i.i = load i32, ptr %.020.in.i.i.i, align 4, !tbaa !27 ; 2 uses
  %.not2631.i.i.i = icmp eq i32 %.020.i.i.i, 0
  br i1 %.not2631.i.i.i, label %sqlite3HashFind.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.e
  %.021.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %sqlite3StrICmp.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.133.i.i.i = phi i32 [ %i.ah, %sqlite3StrICmp.exit.i.i.i ], [ %.020.i.i.i, %.lr.ph.i.preheader.i.i ]
  %.12232.i.in.i.i = phi ptr [ %.12232.i.i.i, %sqlite3StrICmp.exit.i.i.i ], [ %.021.in.i.i.i, %.lr.ph.i.preheader.i.i ]
  %.12232.i.i.i = load ptr, ptr %.12232.i.in.i.i, align 8, !tbaa !118 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.12232.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !955
  %i.s = icmp eq i32 %.0.lcssa.i.i.i.i, %i.r
  br i1 %i.s, label %bb.f, label %sqlite3StrICmp.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.12232.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !956
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.013.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.af, %bb.j ] ; 2 uses
  %.012.i.i.i.i = phi ptr [ %2, %bb.f ], [ %i.ag, %bb.j ] ; 2 uses
  %i.v = load i8, ptr %.013.i.i.i.i, align 1, !tbaa !231 ; 3 uses
  %i.w = load i8, ptr %.012.i.i.i.i, align 1, !tbaa !231 ; 2 uses
  %i.x = icmp eq i8 %i.v, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i8 %i.v, 0
  br i1 %i.y, label %sqlite3HashFind.exit.i, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = zext i8 %i.v to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !231
  %i.ac = zext i8 %i.w to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !231
  %.not.i27.i.i.i = icmp eq i8 %i.ab, %i.ae
  br i1 %.not.i27.i.i.i, label %bb.j, label %sqlite3StrICmp.exit.i.i.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 1
  br label %bb.g

sqlite3StrICmp.exit.i.i.i:                        ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ah = add i32 %.133.i.i.i, -1                 ; 2 uses
  %.not26.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not26.i.i.i, label %sqlite3HashFind.exit.i, label %.lr.ph.i.i.i, !llvm.loop !957

sqlite3HashFind.exit.i:                           ; preds = %sqlite3StrICmp.exit.i.i.i, %bb.h, %bb.e
  %.0.i.i.i = phi ptr [ @findElementWithHash.nullElement, %bb.e ], [ %.12232.i.i.i, %bb.h ], [ @findElementWithHash.nullElement, %sqlite3StrICmp.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !119 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null                 ; 2 uses
  %i.al = icmp ne i32 %3, 0
  %or.cond.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i, label %bb.k, label %findCollSeqEntry.exit

bb.k:                                             ; preds = %sqlite3HashFind.exit.i
  %i.am = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #59, !inline_history !2950
  %i.an = and i64 %i.am, 1073741823               ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, 1
  %i.ap = add nuw nsw i64 %i.an, 121              ; 3 uses
  %.not.i.i32.i = icmp eq ptr %0, null
  br i1 %.not.i.i32.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef %i.ap), !inline_history !2951
  br label %sqlite3DbMallocRaw.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.ap), !inline_history !2951
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.m, %bb.l
  %.0.i.i33.i = phi ptr [ %i.aq, %bb.l ], [ %i.ar, %bb.m ] ; 11 uses
  %.not.i.i = icmp eq ptr %.0.i.i33.i, null
  br i1 %.not.i.i, label %findCollSeqEntry.exit.thread, label %bb.n

bb.n:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i33.i, i8 0, i64 %i.ap, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i33.i, i64 120 ; 5 uses
  store ptr %i.as, ptr %.0.i.i33.i, align 8, !tbaa !1165
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i33.i, i64 8
  store i8 1, ptr %i.at, align 8, !tbaa !1322
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i33.i, i64 40
  store ptr %i.as, ptr %i.au, align 8, !tbaa !1165
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i33.i, i64 48
  store i8 2, ptr %i.av, align 8, !tbaa !1322
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i33.i, i64 80
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !1165
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i33.i, i64 88
  store i8 3, ptr %i.ax, align 8, !tbaa !1322
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %i.ao, i1 false)
  %i.ay = tail call fastcc ptr @sqlite3HashInsert(ptr noundef nonnull %i.a, ptr noundef nonnull %i.as, ptr noundef nonnull %.0.i.i33.i), !inline_history !2950 ; 12 uses
  %.not31.i = icmp eq ptr %i.ay, null
  br i1 %.not31.i, label %findCollSeqEntry.exit.thread15, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !563
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %sqlite3DbFree.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !564
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.q, label %sqlite3DbFree.exit.i

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.az, align 1, !tbaa !563
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !565
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 400
  store atomic volatile i32 1, ptr %i.bi monotonic, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !566
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !566
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i16 0, ptr %i.bm, align 4, !tbaa !567
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !309 ; 2 uses
  %.not.i34.i = icmp eq ptr %i.bo, null
  br i1 %.not.i34.i, label %sqlite3DbFree.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.bo, ptr noundef nonnull @.str.125), !inline_history !2952
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !309 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i32 7, ptr %i.bq, align 8, !tbaa !310
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !569 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3DbFree.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.t ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !321
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !321
  %i.bu = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.bu, align 8, !tbaa !310
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 224
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !569 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not16.i.i, label %sqlite3DbFree.exit.i, label %.lr.ph.i.i, !llvm.loop !570

sqlite3DbFree.exit.i:                             ; preds = %.lr.ph.i.i, %bb.o, %bb.p, %bb.s, %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !104
  %i.bx = icmp ult ptr %i.ay, %i.bw
  br i1 %i.bx, label %bb.u, label %bb.y

bb.u:                                             ; preds = %sqlite3DbFree.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !178
  %.not22.i = icmp ult ptr %i.ay, %i.bz
  br i1 %.not22.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !59
  store ptr %i.cb, ptr %i.ay, align 8, !tbaa !53
  store ptr %i.ay, ptr %i.ca, align 8, !tbaa !59
  br label %findCollSeqEntry.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !103
  %.not23.i = icmp ult ptr %i.ay, %i.cd
  br i1 %.not23.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57
  store ptr %i.cf, ptr %i.ay, align 8, !tbaa !53
  store ptr %i.ay, ptr %i.ce, align 8, !tbaa !57
  br label %findCollSeqEntry.exit.thread

bb.y:                                             ; preds = %bb.w, %sqlite3DbFree.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !102
  %.not24.i = icmp eq ptr %i.ch, null
  br i1 %.not24.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @measureAllocationSize(ptr noundef nonnull %0, ptr noundef nonnull %i.ay)
  br label %findCollSeqEntry.exit.thread

bb.aa:                                            ; preds = %bb.y
  %i.ci = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i11 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i11, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i12, label %sqlite3_mutex_enter.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.ck(ptr noundef nonnull %i.cj) #58, !inline_history !2953
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.ac, %bb.ab
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.cm = tail call i32 %i.cl(ptr noundef nonnull %i.ay) #58, !inline_history !2954
  %i.cn = sext i32 %i.cm to i64
  %i.co = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.cp = sub nsw i64 %i.co, %i.cn
  store i64 %i.cp, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.cq = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.cr = add nsw i64 %i.cq, -1
  store i64 %i.cr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.cs(ptr noundef nonnull %i.ay) #58, !inline_history !2955
  %i.ct = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i4.i.i, label %findCollSeqEntry.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.cu(ptr noundef nonnull %i.ct) #58, !inline_history !2956
  br label %findCollSeqEntry.exit.thread

bb.ae:                                            ; preds = %bb.aa
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.cv(ptr noundef nonnull %i.ay) #58, !inline_history !2955
  br label %findCollSeqEntry.exit.thread

findCollSeqEntry.exit:                            ; preds = %sqlite3HashFind.exit.i
  br i1 %i.ak, label %findCollSeqEntry.exit.thread, label %findCollSeqEntry.exit.thread15

findCollSeqEntry.exit.thread15:                   ; preds = %bb.n, %findCollSeqEntry.exit
  %.2.i18 = phi ptr [ %i.aj, %findCollSeqEntry.exit ], [ %.0.i.i33.i, %bb.n ]
  %i.cw = zext i8 %1 to i64
  %i.cx = getelementptr [40 x i8], ptr %.2.i18, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 -40
  br label %findCollSeqEntry.exit.thread

bb.af:                                            ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1320
  br label %findCollSeqEntry.exit.thread

findCollSeqEntry.exit.thread:                     ; preds = %bb.ae, %bb.ad, %sqlite3_mutex_enter.exit.i.i, %bb.z, %bb.x, %bb.v, %sqlite3DbMallocRaw.exit.i.i, %findCollSeqEntry.exit, %findCollSeqEntry.exit.thread15, %bb.af
  %.0 = phi ptr [ %i.cy, %findCollSeqEntry.exit.thread15 ], [ null, %findCollSeqEntry.exit ], [ %i.da, %bb.af ], [ null, %sqlite3DbMallocRaw.exit.i.i ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.z ], [ null, %sqlite3_mutex_enter.exit.i.i ], [ null, %bb.ad ], [ null, %bb.ae ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sqlite3HashFind(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !231     ; 2 uses
  %.not6.i.i = icmp eq i8 %i.a, 0
  br i1 %.not6.i.i, label %strHash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.b = phi i8 [ %i.h, %.lr.ph.i.i ], [ %i.a, %bb.a ]
  %.08.i.i = phi i32 [ %i.g, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.047.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.047.i.i, i64 1 ; 2 uses
  %i.d = and i8 %i.b, -33
  %i.e = zext i8 %i.d to i32
  %i.f = add i32 %.08.i.i, %i.e
  %i.g = mul i32 %i.f, -1640531535                ; 2 uses
  %i.h = load i8, ptr %i.c, align 1, !tbaa !231   ; 2 uses
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %strHash.exit.i, label %.lr.ph.i.i, !llvm.loop !952

strHash.exit.i:                                   ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.g, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !953  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %strHash.exit.i
  %i.k = load i32, ptr %0, align 8, !tbaa !954
  %i.l = urem i32 %.0.lcssa.i.i, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.m ; 2 uses
  br label %bb.d

end_hunk_6
begin_hunk_7_@rowSetTreeToList:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2724 ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.e, label %tailrecurse

bb.e:                                             ; preds = %bb.d
  store ptr %.tr, ptr %2, align 8, !tbaa !2727
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @rowSetNDeepTree(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #39 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2727   ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %common.ret26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %1, -1                       ; 2 uses
  %i.e = tail call fastcc ptr @rowSetNDeepTree(ptr noundef %0, i32 noundef %i.d) ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !2727   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %common.ret26, label %bb.d

common.ret26:                                     ; preds = %bb.e, %bb.c, %bb.a, %bb.d
  %common.ret26.op = phi ptr [ %i.f, %bb.d ], [ %i.a, %bb.e ], [ %i.e, %bb.c ], [ null, %bb.a ]
  ret ptr %common.ret26.op

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !2728
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2724
  store ptr %i.j, ptr %0, align 8, !tbaa !2727
  %i.k = tail call fastcc ptr @rowSetNDeepTree(ptr noundef %0, i32 noundef %i.d)
  store ptr %i.k, ptr %i.i, align 8, !tbaa !2724
  br label %common.ret26

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2724
  store ptr %i.m, ptr %0, align 8, !tbaa !2727
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %common.ret26
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @memdbOpen(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %sqlite3Strlen30.exit.thread, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #59
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 1073741823                 ; 3 uses
  %i.e = icmp samesign ugt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %sqlite3Strlen30.exit.thread

bb.b:                                             ; preds = %sqlite3Strlen30.exit
  %i.f = load i8, ptr %1, align 1, !tbaa !231
  switch i8 %i.f, label %sqlite3Strlen30.exit.thread [
    i8 47, label %bb.c
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !197
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !198
  %i.i = tail call ptr %i.h(i32 noundef 11) #58, !inline_history !199 ; 3 uses
  %.not.i68 = icmp eq ptr %i.i, null
  br i1 %.not.i68, label %sqlite3_mutex_enter.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.j(ptr noundef nonnull %i.i) #58, !inline_history !20
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.c, %sqlite3MutexAlloc.exit, %bb.d
  %.not.i6889 = phi i1 [ false, %bb.d ], [ true, %sqlite3MutexAlloc.exit ], [ true, %bb.c ] ; 4 uses
  %.0.i6788 = phi ptr [ %i.i, %bb.d ], [ null, %sqlite3MutexAlloc.exit ], [ null, %bb.c ] ; 4 uses
  %i.k = load i32, ptr @memdb_g.0, align 8, !tbaa !1506 ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sqlite3_mutex_enter.exit
  %i.m = load ptr, ptr @memdb_g.1, align 8, !tbaa !1509
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !3012

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1511 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !516
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %1) #59
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.p, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %sqlite3_mutex_enter.exit
  %narrow = add nuw nsw i32 %i.d, 75
  %i.t = zext nneg i32 %narrow to i64
  %i.u = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.t) ; 15 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  br i1 %.not.i6889, label %.critedge66, label %.critedge66.sink.split

bb.h:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr @memdb_g.1, align 8, !tbaa !1509
  %i.x = load i32, ptr @memdb_g.0, align 8, !tbaa !1506
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8
  %i.ab = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.w, i64 noundef %i.aa) ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i70 = icmp eq i32 %i.ad, 0
  br i1 %.not.i70, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.af(ptr noundef nonnull %i.ae) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.k, %bb.j
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %i.u) #58, !inline_history !277
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ak = sub nsw i64 %i.aj, %i.ai
  store i64 %i.ak, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.am = add nsw i64 %i.al, -1
  store i64 %i.am, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.an(ptr noundef nonnull %i.u) #58, !inline_history !278
  %i.ao = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ao, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.ap(ptr noundef nonnull %i.ao) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.m:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.aq(ptr noundef nonnull %i.u) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.l, %bb.m
  br i1 %.not.i6889, label %.critedge66, label %.critedge66.sink.split

bb.n:                                             ; preds = %bb.h
  %i.ar = load i32, ptr @memdb_g.0, align 8, !tbaa !1506 ; 2 uses
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr @memdb_g.0, align 8, !tbaa !1506
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.at
  store ptr %i.u, ptr %i.au, align 8, !tbaa !1511
  store ptr %i.ab, ptr @memdb_g.1, align 8, !tbaa !1509
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, i8 0, i64 72, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 3, ptr %i.av, align 4, !tbaa !638
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 392), align 8, !tbaa !637
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !1516
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !516
  %i.ba = add nuw nsw i32 %i.d, 1
  %i.bb = zext nneg i32 %i.ba to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.bb, i1 false)
  %i.bc = tail call i32 @sqlite3_initialize(), !inline_history !3013
  %.not.i73 = icmp eq i32 %i.bc, 0
  br i1 %.not.i73, label %sqlite3_mutex_alloc.exit, label %sqlite3_mutex_alloc.exit.thread

sqlite3_mutex_alloc.exit.thread:                  ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %i.bd, align 8, !tbaa !513
  br label %bb.o

sqlite3_mutex_alloc.exit:                         ; preds = %bb.n
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !198
  %i.bf = tail call ptr %i.be(i32 noundef 0) #58, !inline_history !3013 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !513
  %i.bh = icmp eq ptr %i.bf, null
  br i1 %i.bh, label %bb.o, label %memdbEnter.exit

bb.o:                                             ; preds = %sqlite3_mutex_alloc.exit.thread, %sqlite3_mutex_alloc.exit
  %i.bi = load i32, ptr @memdb_g.0, align 8, !tbaa !1506
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr @memdb_g.0, align 8, !tbaa !1506
  tail call void @sqlite3_free(ptr noundef nonnull %i.u)
  br i1 %.not.i6889, label %.critedge66, label %.critedge66.sink.split

memdbEnter.exit:                                  ; preds = %sqlite3_mutex_alloc.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 1, ptr %i.bk, align 8, !tbaa !1513
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.bl(ptr noundef nonnull %i.bf) #58, !inline_history !1512
  br label %.critedge

bb.p:                                             ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.o, i64 32
  %.054.val = load ptr, ptr %i.bm, align 8, !tbaa !513 ; 2 uses
  %.not.i.i79 = icmp eq ptr %.054.val, null
  br i1 %.not.i.i79, label %memdbEnter.exit81, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.bn(ptr noundef nonnull %.054.val) #58, !inline_history !1512
  br label %memdbEnter.exit81

memdbEnter.exit81:                                ; preds = %bb.p, %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1513
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !1513
  br label %.critedge

.critedge:                                        ; preds = %memdbEnter.exit, %memdbEnter.exit81
  %.155 = phi ptr [ %i.u, %memdbEnter.exit ], [ %i.o, %memdbEnter.exit81 ] ; 2 uses
  br i1 %.not.i6889, label %sqlite3_mutex_leave.exit83, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.br(ptr noundef nonnull %.0.i6788) #58, !inline_history !23
  br label %sqlite3_mutex_leave.exit83

sqlite3Strlen30.exit.thread:                      ; preds = %bb.a, %bb.b, %sqlite3Strlen30.exit
  %i.bs = tail call fastcc ptr @sqlite3Malloc(i64 noundef 72) ; 5 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.critedge66, label %bb.s

bb.s:                                             ; preds = %sqlite3Strlen30.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bs, i8 0, i64 72, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  store i32 3, ptr %i.bu, align 4, !tbaa !638
  %i.bv = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 392), align 8, !tbaa !637
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !1516
  br label %sqlite3_mutex_leave.exit83

sqlite3_mutex_leave.exit83:                       ; preds = %bb.r, %.critedge, %bb.s
  %.3 = phi ptr [ %i.bs, %bb.s ], [ %.155, %.critedge ], [ %.155, %bb.r ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.3, ptr %i.bx, align 8, !tbaa !512
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %sqlite3_mutex_leave.exit83
  %i.by = or i32 %3, 128
  store i32 %i.by, ptr %4, align 4, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %sqlite3_mutex_leave.exit83
  store ptr @memdb_io_methods, ptr %2, align 8, !tbaa !483
  %i.bz = getelementptr i8, ptr %.3, i64 32
  %.3.val = load ptr, ptr %i.bz, align 8, !tbaa !513 ; 2 uses
  %.not.i.i84 = icmp eq ptr %.3.val, null
  br i1 %.not.i.i84, label %.critedge66, label %.critedge66.sink.split

.critedge66.sink.split:                           ; preds = %bb.u, %bb.o, %sqlite3_free.exit, %bb.g
  %.3.val.sink = phi ptr [ %.0.i6788, %bb.o ], [ %.0.i6788, %sqlite3_free.exit ], [ %.0.i6788, %bb.g ], [ %.3.val, %bb.u ]
  %.359.ph = phi i32 [ 7, %bb.o ], [ 7, %sqlite3_free.exit ], [ 7, %bb.g ], [ 0, %bb.u ]
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.ca(ptr noundef nonnull %.3.val.sink) #58
  br label %.critedge66

.critedge66:                                      ; preds = %.critedge66.sink.split, %bb.u, %bb.o, %sqlite3_free.exit, %bb.g, %sqlite3Strlen30.exit.thread
  %.359 = phi i32 [ 7, %sqlite3_free.exit ], [ 7, %sqlite3Strlen30.exit.thread ], [ 7, %bb.o ], [ 0, %bb.u ], [ 7, %bb.g ], [ %.359.ph, %.critedge66.sink.split ]
  ret i32 %.359
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @memdbAccess(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) #21 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !27
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @memdbFullPathname(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %2, ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef %1) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @memdbDlOpen(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1033
  %i.e = tail call ptr %i.d(ptr noundef %i.b, ptr noundef %1) #58
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal void @memdbDlError(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1045
  tail call void %i.d(ptr noundef %i.b, i32 noundef %1, ptr noundef %2) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @memdbDlSym(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1039
  %i.e = tail call ptr %i.d(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #58
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal void @memdbDlClose(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !807
  tail call void %i.d(ptr noundef %i.b, ptr noundef %1) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @memdbRandomness(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415
  %i.e = tail call i32 %i.d(ptr noundef %i.b, i32 noundef %1, ptr noundef %2) #58
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @memdbSleep(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1273
  %i.e = tail call i32 %i.d(ptr noundef %i.b, i32 noundef %1) #58
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @memdbGetLastError(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !652
  %i.e = tail call i32 %i.d(ptr noundef %i.b, i32 noundef %1, ptr noundef %2) #58
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @memdbCurrentTimeInt64(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
end_hunk_7
begin_hunk_8_@jsonStringExpandAndAppend:bb.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @jsonStringGrow(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3080 ; 3 uses
  %i.d = icmp ugt i64 %i.c, %i.a
  %i.e = shl i64 %i.c, 1
  %i.f = add nuw nsw i64 %i.a, 10
  %i.g = add nuw nsw i64 %i.f, %i.c
  %i.h = select i1 %i.d, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !3081
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !3164
  %.not27 = icmp eq i8 %i.l, 0
  br i1 %.not27, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @sqlite3_initialize(), !inline_history !2558
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %sqlite3_malloc64.exit.i, label %bb.d

sqlite3_malloc64.exit.i:                          ; preds = %bb.c
  %i.n = add i64 %i.h, 9
  %i.o = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.n), !inline_history !2558 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.t

bb.d:                                             ; preds = %sqlite3_malloc64.exit.i, %bb.c
  %i.q = load i8, ptr %i.k, align 1, !tbaa !3164
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.k, align 1, !tbaa !3164
  %i.s = load ptr, ptr %0, align 8, !tbaa !3165   ; 4 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %sqlite3_result_error_nomem.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !296  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %i.v = load i16, ptr %i.u, align 4, !tbaa !166
  %i.w = and i16 %i.v, -28672
  %.not.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.t), !inline_history !3166
  %.pre.i.i = load ptr, ptr %i.s, align 8, !tbaa !296
  br label %sqlite3VdbeMemSetNull.exit.i.i

bb.g:                                             ; preds = %bb.e
  store i16 1, ptr %i.u, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetNull.exit.i.i

sqlite3VdbeMemSetNull.exit.i.i:                   ; preds = %bb.g, %bb.f
  %i.x = phi ptr [ %.pre.i.i, %bb.f ], [ %i.t, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 7, ptr %i.y, align 4, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 103 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !563
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %sqlite3_result_error_nomem.exit.i

bb.h:                                             ; preds = %sqlite3VdbeMemSetNull.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !564
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.i, label %sqlite3_result_error_nomem.exit.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ab, align 1, !tbaa !563
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 220
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !565
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 400
  store atomic volatile i32 1, ptr %i.ak monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 408 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !566
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !566
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 412
  store i16 0, ptr %i.ao, align 4, !tbaa !567
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 344 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !309 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i3.i.i, label %sqlite3_result_error_nomem.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.125), !inline_history !3167
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !309 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i32 7, ptr %i.as, align 8, !tbaa !310
  %.0.in17.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 224
  %.018.i.i.i = load ptr, ptr %.0.in17.i.i.i, align 8, !tbaa !569 ; 2 uses
  %.not1619.i.i.i = icmp eq ptr %.018.i.i.i, null
  br i1 %.not1619.i.i.i, label %sqlite3_result_error_nomem.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.020.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.018.i.i.i, %bb.l ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 52 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !321
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !321
  %i.aw = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 24
  store i32 7, ptr %i.aw, align 8, !tbaa !310
  %.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 224
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !569 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not16.i.i.i, label %sqlite3_result_error_nomem.exit.i, label %.lr.ph.i.i.i, !llvm.loop !570

sqlite3_result_error_nomem.exit.i:                ; preds = %.lr.ph.i.i.i, %bb.l, %bb.k, %bb.h, %sqlite3VdbeMemSetNull.exit.i.i, %bb.d
  %i.ax = load i8, ptr %i.i, align 8, !tbaa !3081
  %.not.i.i28 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i28, label %bb.m, label %jsonStringOom.exit

bb.m:                                             ; preds = %sqlite3_result_error_nomem.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !3079
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 5 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !2118 ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = add i64 %i.bb, -1
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !2118
  br label %jsonStringOom.exit

bb.o:                                             ; preds = %bb.m
  %i.be = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.bg(ptr noundef nonnull %i.bf) #58, !inline_history !3168
  br label %sqlite3_mutex_enter.exit.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i:                 ; preds = %bb.q, %bb.p
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.bi = tail call i32 %i.bh(ptr noundef nonnull %i.ba) #58, !inline_history !3169
  %i.bj = sext i32 %i.bi to i64
  %i.bk = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.bl = sub nsw i64 %i.bk, %i.bj
  store i64 %i.bl, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.bn = add nsw i64 %i.bm, -1
  store i64 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.bo(ptr noundef nonnull %i.ba) #58, !inline_history !3170
  %i.bp = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i4.i.i.i.i, label %jsonStringOom.exit, label %bb.r

bb.r:                                             ; preds = %sqlite3_mutex_enter.exit.i.i.i.i
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.bq(ptr noundef nonnull %i.bp) #58, !inline_history !3171
  br label %jsonStringOom.exit

bb.s:                                             ; preds = %bb.o
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.br(ptr noundef nonnull %i.ba) #58, !inline_history !3170
  br label %jsonStringOom.exit

jsonStringOom.exit:                               ; preds = %sqlite3_result_error_nomem.exit.i, %bb.n, %sqlite3_mutex_enter.exit.i.i.i.i, %bb.r, %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !3079
  store i64 100, ptr %i.b, align 8, !tbaa !3080
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.bu, align 8, !tbaa !3097
  store i8 1, ptr %i.i, align 8, !tbaa !3081
  br label %bb.ab

bb.t:                                             ; preds = %sqlite3_malloc64.exit.i
  store i64 1, ptr %i.o, align 8, !tbaa !2118
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !3079
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !3097
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 1 %i.bx, i64 %i.bz, i1 false)
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !3079
  store i8 0, ptr %i.i, align 8, !tbaa !3081
  br label %bb.aa

bb.u:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !3079
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8 ; 4 uses
  %i.cd = tail call i32 @sqlite3_initialize(), !inline_history !3172
  %.not.i.i29 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i29, label %sqlite3_realloc64.exit.i, label %sqlite3_realloc64.exit.thread.i

sqlite3_realloc64.exit.i:                         ; preds = %bb.u
  %i.ce = add i64 %i.h, 9
  %i.cf = tail call fastcc ptr @sqlite3Realloc(ptr noundef nonnull %i.cc, i64 noundef %i.ce), !inline_history !3172 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %sqlite3_realloc64.exit.thread.i, label %sqlite3RCStrResize.exit

sqlite3_realloc64.exit.thread.i:                  ; preds = %sqlite3_realloc64.exit.i, %bb.u
  %i.ch = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i8.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i8.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %sqlite3_realloc64.exit.thread.i
  %i.ci = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i30, label %sqlite3_mutex_enter.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.cj(ptr noundef nonnull %i.ci) #58, !inline_history !3173
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.w, %bb.v
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.cl = tail call i32 %i.ck(ptr noundef nonnull %i.cc) #58, !inline_history !3174
  %i.cm = sext i32 %i.cl to i64
  %i.cn = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.co = sub nsw i64 %i.cn, %i.cm
  store i64 %i.co, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.cq = add nsw i64 %i.cp, -1
  store i64 %i.cq, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.cr(ptr noundef nonnull %i.cc) #58, !inline_history !3175
  %i.cs = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i4.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.ct(ptr noundef nonnull %i.cs) #58, !inline_history !3176
  br label %bb.z

bb.y:                                             ; preds = %sqlite3_realloc64.exit.thread.i
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.cu(ptr noundef nonnull %i.cc) #58, !inline_history !3175
  br label %bb.z

sqlite3RCStrResize.exit:                          ; preds = %sqlite3_realloc64.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cv, ptr %i.ca, align 8, !tbaa !3079
  br label %bb.aa

bb.z:                                             ; preds = %sqlite3_mutex_enter.exit.i.i, %bb.x, %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !3164
  %i.cy = or i8 %i.cx, 1
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !3164
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 34
  store ptr %i.cz, ptr %i.ca, align 8, !tbaa !3079
  store i64 100, ptr %i.b, align 8, !tbaa !3080
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.da, align 8, !tbaa !3097
  store i8 1, ptr %i.i, align 8, !tbaa !3081
  br label %bb.ab

bb.aa:                                            ; preds = %sqlite3RCStrResize.exit, %bb.t
  store i64 %i.h, ptr %i.b, align 8, !tbaa !3080
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.aa, %bb.z, %jsonStringOom.exit
  %.0 = phi i32 [ 7, %bb.z ], [ 7, %jsonStringOom.exit ], [ 0, %bb.aa ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonAppendPathName(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3095
  %i.d = icmp eq i8 %i.c, 11
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3099
  %i.j = add i32 %i.i, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !3103
  tail call void (i32, ptr, ptr, ...) @jsonPrintf(i32 noundef 30, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.637, i64 noundef %i.n)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3087 ; 2 uses
  %i.r = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %i.o, i32 noundef %i.q, ptr noundef %i.a)
  %i.s = add i32 %i.r, %i.q
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !3100
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 3 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !27   ; 4 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i8, ptr %i.v, align 1, !tbaa !231
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !231
  %i.ac = and i8 %i.ab, 2
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %wide.trip.count = zext i32 %i.w to i64
  br label %.preheader

bb.e:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !3177

.preheader:                                       ; preds = %.preheader.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !231
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !231
  %i.ai = and i8 %i.ah, 6
  %.not20 = icmp eq i8 %i.ai, 0
  br i1 %.not20, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.c, %bb.d
  %.sink25 = phi i32 [ 4, %bb.c ], [ 4, %bb.d ], [ 4, %.preheader ], [ 2, %bb.e ]
  %.str.639.sink = phi ptr [ @.str.638, %bb.c ], [ @.str.638, %bb.d ], [ @.str.638, %.preheader ], [ @.str.639, %bb.e ]
  %i.aj = add i32 %i.w, %.sink25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void (i32, ptr, ptr, ...) @jsonPrintf(i32 noundef %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %.str.639.sink, i32 noundef %i.w, ptr noundef %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jsonPrintf(i32 noundef %0, ptr noundef %1, ptr noundef %2, ...) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sqlite3_str, align 8        ; 8 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3097
  %i.c = sext i32 %0 to i64
  %i.d = add i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !3080
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @jsonStringGrow(ptr noundef nonnull %1, i32 noundef %0)
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3079
  %i.j = load i64, ptr %i.a, align 8, !tbaa !3097
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.k = icmp slt i32 %0, 1
  br i1 %i.k, label %sqlite3_vsnprintf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !290
  store ptr null, ptr %3, align 8, !tbaa !308
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_8
begin_hunk_9_@sqlite3AddDefaultValue:bb.a
  %i.bu = sext i32 %i.bl to i64
  %i.bv = getelementptr inbounds [24 x i8], ptr %i.bt, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  store ptr %i.az, ptr %i.bv, align 8, !tbaa !3229
  br label %sqlite3ExprListAppend.exit.i

sqlite3ExprListAppend.exit.i:                     ; preds = %bb.r, %bb.q, %.split19.i
  %phi.call.i = phi ptr [ %i.bk, %.split19.i ], [ %i.bb, %bb.r ], [ %i.br, %bb.q ]
  store ptr %phi.call.i, ptr %i.ba, align 8, !tbaa !231
  br label %sqlite3ColumnSetExpr.exit

bb.s:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.by = zext i16 %i.bd to i64                   ; 2 uses
  %i.bz = getelementptr [24 x i8], ptr %i.bx, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !3229 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.cb, null
  br i1 %.not.i21.i, label %sqlite3ExprDelete.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr %0, align 8, !tbaa !657
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.cc, ptr noundef %i.cb), !inline_history !3365
  %.pre.i = load i16, ptr %i.bc, align 4, !tbaa !3362
  %.pre23.i = zext i16 %.pre.i to i64
  br label %sqlite3ExprDelete.exit.i

sqlite3ExprDelete.exit.i:                         ; preds = %bb.t, %bb.s
  %.pre-phi.i = phi i64 [ %i.by, %bb.s ], [ %.pre23.i, %bb.t ]
  %i.cd = getelementptr [24 x i8], ptr %i.bx, i64 %.pre-phi.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  store ptr %i.az, ptr %i.ce, align 8, !tbaa !3229
  br label %sqlite3ColumnSetExpr.exit

sqlite3ColumnSetExpr.exit:                        ; preds = %sqlite3ExprListAppend.exit.i, %sqlite3ExprDelete.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %sqlite3ColumnSetExpr.exit, %bb.g, %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !1092 ; 2 uses
  %i.ch = icmp ugt i8 %i.cg, 1
  br i1 %i.ch, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !3291
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @renameUnmapExprCb, ptr %i.cj, align 8, !tbaa !3292
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @renameUnmapSelectCb, ptr %i.ck, align 8, !tbaa !3293
  store i8 3, ptr %i.cf, align 4, !tbaa !1092
  %.not.i.i32 = icmp eq ptr %1, null
  br i1 %.not.i.i32, label %sqlite3RenameExprUnmap.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %4, ptr noundef nonnull %1) #61, !inline_history !3387 ; 0 uses
  br label %sqlite3RenameExprUnmap.exit

sqlite3RenameExprUnmap.exit:                      ; preds = %bb.v, %bb.w
  store i8 %i.cg, ptr %i.cf, align 4, !tbaa !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %bb.x

bb.x:                                             ; preds = %sqlite3RenameExprUnmap.exit, %bb.u
  %.not.i33 = icmp eq ptr %1, null
  br i1 %.not.i33, label %sqlite3ExprDelete.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.a, ptr noundef %1), !inline_history !148
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.x, %bb.y
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3PExpr(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 65581) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !657
  %i.b = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef 72) ; 10 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.c = trunc i32 %1 to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !2750
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  store i16 -1, ptr %i.d, align 2, !tbaa !3276
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %3, ptr %i.e, align 8, !tbaa !1162
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !372
  %i.h = and i32 %i.g, 4194824                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !372
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !3277
  %i.l = add nsw i32 %i.k, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %i.n = phi i32 [ %i.l, %bb.c ], [ 1, %bb.b ]    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !3277
  %.not25.i = icmp eq ptr %2, null
  br i1 %.not25.i, label %sqlite3ExprAttachSubtrees.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.p, align 8, !tbaa !376
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !372
  %i.s = and i32 %i.r, 4194824
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = or i32 %i.m, %i.s
  store i32 %i.u, ptr %i.t, align 4, !tbaa !372
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !3277 ; 2 uses
  %.not26.i = icmp slt i32 %i.w, %i.n
  br i1 %.not26.i, label %sqlite3ExprAttachSubtrees.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !3277
  br label %sqlite3ExprAttachSubtrees.exit

sqlite3ExprAttachSubtrees.exit:                   ; preds = %bb.d, %bb.e, %bb.f
  %i.y = phi i32 [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.x, %bb.f ]
  %i.z = load ptr, ptr %0, align 8, !tbaa !657
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 148
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !27 ; 2 uses
  %i.ac = icmp sgt i32 %i.y, %i.ab
  br i1 %i.ac, label %bb.g, label %sqlite3ExprCheckHeight.exit

bb.g:                                             ; preds = %sqlite3ExprAttachSubtrees.exit
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.819, i32 noundef %i.ab), !inline_history !3388
  br label %sqlite3ExprCheckHeight.exit

bb.h:                                             ; preds = %bb.a
  %.not.i16 = icmp eq ptr %2, null
  br i1 %.not.i16, label %sqlite3ExprDelete.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %0, align 8, !tbaa !657
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.ad, ptr noundef %2), !inline_history !148
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.h, %bb.i
  %.not.i17 = icmp eq ptr %3, null
  br i1 %.not.i17, label %sqlite3ExprCheckHeight.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3ExprDelete.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !657
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.ae, ptr noundef %3), !inline_history !148
  br label %sqlite3ExprCheckHeight.exit

sqlite3ExprCheckHeight.exit:                      ; preds = %bb.j, %sqlite3ExprDelete.exit, %bb.g, %sqlite3ExprAttachSubtrees.exit
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tokenExpr(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 65536) %1, ptr %2, i32 %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !657
  %i.b = zext i32 %3 to i64                       ; 3 uses
  %i.c = add nuw nsw i64 %i.b, 73
  %i.d = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.c) ; 15 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %sqlite3RenameTokenMap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i32 %1 to i8
  store i8 %i.e, ptr %i.d, align 8, !tbaa !2750
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.f, align 1, !tbaa !3237
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 8388608, ptr %i.g, align 4, !tbaa !372
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !3234
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 0, ptr %i.k, align 4, !tbaa !3389
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i16 0, ptr %i.l, align 8, !tbaa !3235
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.n, align 8, !tbaa !231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 1 %2, i64 %i.b, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b
  store i8 0, ptr %i.o, align 1, !tbaa !231
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !383
  %i.r = ptrtoint ptr %2 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.u, ptr %i.v, align 4, !tbaa !231
  %i.w = load i8, ptr %i.m, align 8, !tbaa !231   ; 4 uses
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !231
  %.not28 = icmp sgt i8 %i.z, -1
  br i1 %.not28, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i8 %i.w, 34
  %i.ab = select i1 %i.aa, i32 75497600, i32 75497472
  store i32 %i.ab, ptr %i.g, align 4, !tbaa !372
  %i.ac = icmp eq i8 %i.w, 91
  %spec.store.select.i.i = select i1 %i.ac, i8 93, i8 %i.w ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %.020.i.i = phi i32 [ %i.an, %bb.f ], [ 1, %bb.c ] ; 3 uses
  %i.ad = sext i32 %.020.i.i to i64
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !231 ; 2 uses
  %i.ag = icmp eq i8 %i.af, %spec.store.select.i.i
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = add nsw i32 %.020.i.i, 1                ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.m, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !231
  %i.al = icmp eq i8 %i.ak, %spec.store.select.i.i
  br i1 %i.al, label %bb.f, label %sqlite3DequoteExpr.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %spec.store.select.sink.i.i = phi i8 [ %spec.store.select.i.i, %bb.e ], [ %i.af, %bb.d ]
  %.121.i.i = phi i32 [ %i.ah, %bb.e ], [ %.020.i.i, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i.i
  store i8 %spec.store.select.sink.i.i, ptr %i.am, align 1, !tbaa !231
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.an = add nsw i32 %.121.i.i, 1
  br label %bb.d

sqlite3DequoteExpr.exit:                          ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i.i
  store i8 0, ptr %i.ao, align 1, !tbaa !231
  br label %bb.g

bb.g:                                             ; preds = %sqlite3DequoteExpr.exit, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 1, ptr %i.ap, align 8, !tbaa !3277
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !1092
  switch i8 %i.ar, label %bb.h [
    i8 3, label %sqlite3RenameTokenMap.exit
    i8 1, label %sqlite3RenameTokenMap.exit
    i8 0, label %sqlite3RenameTokenMap.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %0, align 8, !tbaa !657   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.as, i64 noundef 32), !inline_history !3348
  br label %sqlite3DbMallocRaw.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.au = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !3348
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi ptr [ %i.at, %bb.i ], [ %i.au, %bb.j ] ; 7 uses
  %.not.i.i29 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i29, label %sqlite3RenameTokenMap.exit, label %bb.k

bb.k:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.aw, i8 0, i64 12, i1 false)
  store ptr %i.d, ptr %.0.i.i.i, align 8, !tbaa !3283
  store ptr %2, ptr %i.av, align 8, !tbaa !259
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !3349
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !3350
  store ptr %.0.i.i.i, ptr %i.ax, align 8, !tbaa !3349
  br label %sqlite3RenameTokenMap.exit

sqlite3RenameTokenMap.exit:                       ; preds = %bb.g, %bb.g, %bb.g, %bb.k, %sqlite3DbMallocRaw.exit.i.i, %bb.a
  ret ptr %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sqlite3ExprIdToTrueFalse(ptr nofree noundef captures(none) %0) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !372  ; 2 uses
  %i.c = and i32 %i.b, 67110912
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %sqlite3IsTrueOrFalse.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.013.i.i = phi ptr [ %i.e, %bb.b ], [ %i.p, %bb.f ] ; 2 uses
  %.012.i.i = phi ptr [ @.str.621, %bb.b ], [ %i.q, %bb.f ] ; 2 uses
  %i.f = load i8, ptr %.013.i.i, align 1, !tbaa !231 ; 3 uses
  %i.g = load i8, ptr %.012.i.i, align 1, !tbaa !231 ; 2 uses
  %i.h = icmp eq i8 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i8 %i.f, 0
  br i1 %i.i, label %.loopexit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = zext i8 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !231
  %i.m = zext i8 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !231
  %.not.i.i = icmp eq i8 %i.l, %i.o
  br i1 %.not.i.i, label %bb.f, label %sqlite3StrICmp.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %bb.c

sqlite3StrICmp.exit.i:                            ; preds = %bb.e, %bb.i
  %.013.i2.i = phi ptr [ %i.ab, %bb.i ], [ %i.e, %bb.e ] ; 2 uses
  %.012.i3.i = phi ptr [ %i.ac, %bb.i ], [ @.str.622, %bb.e ] ; 2 uses
  %i.r = load i8, ptr %.013.i2.i, align 1, !tbaa !231 ; 3 uses
  %i.s = load i8, ptr %.012.i3.i, align 1, !tbaa !231 ; 2 uses
  %i.t = icmp eq i8 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.u = icmp eq i8 %i.r, 0
  br i1 %i.u, label %.loopexit, label %bb.i

bb.h:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.v = zext i8 %i.r to i64
  %i.w = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !231
  %i.y = zext i8 %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !231
  %.not.i4.i = icmp eq i8 %i.x, %i.aa
  br i1 %.not.i4.i, label %bb.i, label %sqlite3IsTrueOrFalse.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i2.i, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i3.i, i64 1
  br label %sqlite3StrICmp.exit.i

.loopexit:                                        ; preds = %bb.d, %bb.g
  %.0.i.ph = phi i32 [ 536870912, %bb.g ], [ 268435456, %bb.d ]
  store i8 -85, ptr %0, align 8, !tbaa !2750
  %i.ad = or i32 %.0.i.ph, %i.b
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !372
  br label %sqlite3IsTrueOrFalse.exit

sqlite3IsTrueOrFalse.exit:                        ; preds = %bb.h, %bb.a, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sqlite3AddNotNull(ptr nofree captures(address_is_null) %.352.val, i32 noundef %0) unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %.352.val, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.352.val, i64 54 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !914  ; 2 uses
  %i.d = icmp slt i16 %i.c, 1
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i16 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.352.val, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !913
  %i.h = add nuw nsw i64 %i.e, 4294967295
end_hunk_9
begin_hunk_10_@sqlite3Select:bb.a
bb.bh:                                            ; preds = %bb.bc
  %.not150.i = icmp eq ptr %.0218234.i, null
  br i1 %.not150.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.if = load i32, ptr %.0218234.i, align 8, !tbaa !27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ig = phi i32 [ %i.if, %bb.bi ], [ 0, %bb.bh ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.0128235.i, i64 124
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !3458
  %i.ii = call fastcc ptr @exprListAppendList(ptr noundef nonnull %0, ptr noundef %.0218234.i, ptr noundef %i.ho, i32 noundef 0), !inline_history !3446
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %.1219.i = phi ptr [ %i.ii, %bb.bj ], [ %i.ia, %bb.bg ] ; 8 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.0128235.i, i64 72
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !2756 ; 2 uses
  %.not152.i = icmp eq ptr %i.ik, null
  br i1 %.not152.i, label %sqlite3ExprListAppend.exit.i, label %sqlite3ExprDup.exit.i

sqlite3ExprDup.exit.i:                            ; preds = %bb.bk
  %i.il = call fastcc ptr @exprDup(ptr noundef %i.dp, ptr noundef nonnull readonly %i.ik, i32 noundef 0, ptr noundef null), !inline_history !3460 ; 3 uses
  %i.im = icmp eq ptr %.1219.i, null
  br i1 %i.im, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %sqlite3ExprDup.exit.i
  %i.in = load ptr, ptr %0, align 8, !tbaa !657
  %i.io = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.in, ptr noundef %i.il), !inline_history !3461
  br label %sqlite3ExprListAppend.exit.i

bb.bm:                                            ; preds = %sqlite3ExprDup.exit.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.1219.i, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !27
  %i.ir = load i32, ptr %.1219.i, align 8, !tbaa !27 ; 3 uses
  %.not.i193.i = icmp sgt i32 %i.iq, %i.ir
  br i1 %.not.i193.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.is = load ptr, ptr %0, align 8, !tbaa !657
  %i.it = call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.is, ptr noundef %.1219.i, ptr noundef %i.il), !inline_history !3461
  br label %sqlite3ExprListAppend.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.iu = add nsw i32 %i.ir, 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.1219.i, i64 8
  store i32 %i.iu, ptr %.1219.i, align 8, !tbaa !27
  %i.iw = sext i32 %i.ir to i64
  %i.ix = getelementptr inbounds [24 x i8], ptr %i.iv, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, i8 0, i64 16, i1 false)
  store ptr %i.il, ptr %i.ix, align 8, !tbaa !3229
  br label %sqlite3ExprListAppend.exit.i

sqlite3ExprListAppend.exit.i:                     ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bk
  %.2.i = phi ptr [ %.1219.i, %bb.bk ], [ %i.io, %bb.bl ], [ %i.it, %bb.bn ], [ %.1219.i, %bb.bo ] ; 3 uses
  %i.iz = load i32, ptr %i.hh, align 4, !tbaa !944 ; 2 uses
  %i.ja = add nsw i32 %i.iz, 1                    ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0128235.i, i64 92
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !3462
  %i.jc = add nsw i32 %i.iz, 2                    ; 2 uses
  store i32 %i.jc, ptr %i.hh, align 4, !tbaa !944
  %i.jd = getelementptr inbounds nuw i8, ptr %.0128235.i, i64 96
  store i32 %i.jc, ptr %i.jd, align 8, !tbaa !3463
  %i.je = load i32, ptr %i.hi, align 8, !tbaa !189 ; 3 uses
  %i.jf = load i32, ptr %i.hj, align 4, !tbaa !934
  %.not.i.i195.i = icmp sgt i32 %i.jf, %i.je
  br i1 %.not.i.i195.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %sqlite3ExprListAppend.exit.i
  %i.jg = call fastcc i32 @growOp3(ptr noundef nonnull %.0.i.i1075, i32 noundef 77, i32 noundef 0, i32 noundef %i.ja, i32 noundef 0), !inline_history !3464 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit.i

bb.bq:                                            ; preds = %sqlite3ExprListAppend.exit.i
  %i.jh = add nsw i32 %i.je, 1
  store i32 %i.jh, ptr %i.hi, align 8, !tbaa !189
  %i.ji = load ptr, ptr %i.hk, align 8, !tbaa !188
  %i.jj = sext i32 %i.je to i64
  %i.jk = getelementptr inbounds [32 x i8], ptr %i.ji, i64 %i.jj ; 6 uses
  store i8 77, ptr %i.jk, align 8, !tbaa !576
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  store i16 0, ptr %i.jl, align 2, !tbaa !577
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  store i32 0, ptr %i.jm, align 4, !tbaa !572
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i32 %i.ja, ptr %i.jn, align 8, !tbaa !574
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store i8 0, ptr %i.jp, align 1, !tbaa !936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jo, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit.i

sqlite3VdbeAddOp2.exit.i:                         ; preds = %bb.bq, %bb.bp
  %i.jq = getelementptr inbounds nuw i8, ptr %.0128235.i, i64 64
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !2754 ; 2 uses
  %.not146.i = icmp eq ptr %i.jr, null
  br i1 %.not146.i, label %._crit_edge.i, label %bb.bc, !llvm.loop !3465

._crit_edge.i:                                    ; preds = %sqlite3VdbeAddOp2.exit.i
  %i.js = icmp eq ptr %.2.i, null
  br i1 %i.js, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %._crit_edge.i
  %i.jt = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.dp, i64 noundef 72), !inline_history !3466 ; 7 uses
  %.not.i197.i = icmp eq ptr %i.jt, null
  br i1 %.not.i197.i, label %sqlite3ExprInt32.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jt, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.jt, align 8, !tbaa !2750
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 50
  store i16 -1, ptr %i.ju, align 2, !tbaa !3276
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  store i32 545261568, ptr %i.jv, align 4, !tbaa !372
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  store i32 1, ptr %i.jw, align 8, !tbaa !3277
  br label %sqlite3ExprInt32.exit.i

sqlite3ExprInt32.exit.i:                          ; preds = %bb.bs, %bb.br
  %i.jx = load ptr, ptr %0, align 8, !tbaa !657
  %i.jy = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.jx, ptr noundef %i.jt), !inline_history !3461
  br label %bb.bt

bb.bt:                                            ; preds = %sqlite3ExprInt32.exit.i, %._crit_edge.i
  %.3220.i = phi ptr [ %i.jy, %sqlite3ExprInt32.exit.i ], [ %.2.i, %._crit_edge.i ]
  %i.jz = call fastcc ptr @sqlite3SelectNew(ptr noundef nonnull %0, ptr noundef %.3220.i, ptr noundef %i.dr, ptr noundef %i.dt, ptr noundef %i.dv, ptr noundef %i.dx, ptr noundef %i.ez, i32 noundef 0, ptr noundef null), !inline_history !3446 ; 8 uses
  %i.ka = load ptr, ptr %0, align 8, !tbaa !657
  %i.kb = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.ka, i64 noundef 80), !inline_history !3467 ; 10 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  store ptr null, ptr %i.dq, align 8, !tbaa !2765
  %.not.i199.i = icmp eq ptr %i.jz, null
  br i1 %.not.i199.i, label %sqlite3SelectDelete.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @clearSelect(ptr noundef %i.dp, ptr noundef nonnull %i.jz, i32 noundef 1), !inline_history !3468
  br label %sqlite3SelectDelete.exit.i

bb.bw:                                            ; preds = %bb.bt
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  store i32 1, ptr %i.kd, align 4, !tbaa !27
  store i32 1, ptr %i.kb, align 8, !tbaa !27
  %i.ke = getelementptr i8, ptr %i.kb, i64 8
  %i.kf = getelementptr i8, ptr %i.kb, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kf, i8 0, i64 56, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 36
  store i32 -1, ptr %i.kg, align 4, !tbaa !3355
  %i.kh = getelementptr i8, ptr %i.kb, i64 72     ; 5 uses
  store ptr null, ptr %i.ke, align 8, !tbaa !389
  store ptr null, ptr %i.kh, align 8, !tbaa !231
  store ptr %i.kb, ptr %i.dq, align 8, !tbaa !2765
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 35 ; 2 uses
  %i.kj = load i8, ptr %i.ki, align 1             ; 2 uses
  %i.kk = and i8 %i.kj, 1
  %.not.i200.i = icmp eq i8 %i.kk, 0
  br i1 %.not.i200.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store ptr null, ptr %i.kh, align 8, !tbaa !231
  %i.kl = and i8 %i.kj, -2
  store i8 %i.kl, ptr %i.ki, align 1
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.km = load ptr, ptr %i.kh, align 8, !tbaa !231 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.km, null
  br i1 %.not24.i.i, label %bb.bz, label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.by
  %i.kn = load ptr, ptr %0, align 8, !tbaa !657
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.kn, ptr noundef nonnull %i.km), !inline_history !3469
  store ptr null, ptr %i.kh, align 8, !tbaa !231
  br label %bb.bz

bb.bz:                                            ; preds = %sqlite3DbFree.exit.i.i, %bb.by, %bb.bx
  %i.ko = load ptr, ptr %0, align 8, !tbaa !657
  %i.kp = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.ko, i64 noundef 24), !inline_history !3469 ; 4 uses
  store ptr %i.kp, ptr %i.kh, align 8, !tbaa !231
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %.not.i26.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i26.i.i, label %sqlite3SelectDelete.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kr = load ptr, ptr %0, align 8, !tbaa !657
  call fastcc void @clearSelect(ptr noundef %i.kr, ptr noundef nonnull %i.jz, i32 noundef 1), !inline_history !3470
  br label %sqlite3SelectDelete.exit.i

bb.cc:                                            ; preds = %bb.bz
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kb, i64 33 ; 2 uses
  %i.kt = load i16, ptr %i.ks, align 1
  %i.ku = or i16 %i.kt, 4
  store i16 %i.ku, ptr %i.ks, align 1
  store ptr %i.jz, ptr %i.kp, align 8, !tbaa !390
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, i8 0, i64 16, i1 false)
  %i.kw = load ptr, ptr %i.dq, align 8, !tbaa !2765
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 33 ; 2 uses
  %i.ky = load i16, ptr %i.kx, align 1
  %i.kz = or i16 %i.ky, 16
  store i16 %i.kz, ptr %i.kx, align 1
  %i.la = load ptr, ptr %i.dq, align 8, !tbaa !2765
  call fastcc void @sqlite3SrcListAssignCursors(ptr noundef nonnull %0, ptr noundef %i.la), !inline_history !3446
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jz, i64 4 ; 4 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !393
  %i.ld = or i32 %i.lc, 134217792
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !393
  %i.le = call fastcc ptr @sqlite3ResultSetOfSelect(ptr noundef nonnull %0, ptr noundef %i.jz, i8 noundef signext 64), !inline_history !3446 ; 3 uses
  %i.lf = and i32 %i.dn, 8
  %i.lg = load i32, ptr %i.lb, align 4, !tbaa !393
  %i.lh = or i32 %i.lg, %i.lf
  store i32 %i.lh, ptr %i.lb, align 4, !tbaa !393
  %i.li = icmp eq ptr %i.le, null
  br i1 %i.li, label %sqlite3SelectDelete.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i223.i, ptr noundef nonnull align 8 dereferenceable(120) %i.le, i64 120, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %.0.i.i223.i, i64 48 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !802
  %i.ll = or i32 %i.lk, 16384
  store i32 %i.ll, ptr %i.lj, align 8, !tbaa !802
  %i.lm = load ptr, ptr %i.dq, align 8, !tbaa !2765
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  store ptr %.0.i.i223.i, ptr %i.ln, align 8, !tbaa !2745
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %15, i8 0, i64 48, i1 false)
  store ptr @sqlite3WindowExtraAggFuncDepth, ptr %i.ei, align 8, !tbaa !3292
  store ptr @sqlite3WalkerDepthIncrease, ptr %i.ej, align 8, !tbaa !3293
  store ptr @sqlite3WalkerDepthDecrease, ptr %i.eh, align 8, !tbaa !3471
  %i.lo = call fastcc i32 @sqlite3WalkSelect(ptr noundef nonnull %15, ptr noundef nonnull %i.jz), !inline_history !3446 ; 0 uses
  br label %sqlite3SelectDelete.exit.i

sqlite3SelectDelete.exit.i:                       ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bv, %bb.bu
  %.not9551198 = phi i1 [ false, %bb.cc ], [ true, %bb.bv ], [ true, %bb.cd ], [ true, %bb.bu ], [ true, %bb.cb ], [ true, %bb.ca ]
  %.1127.i = phi ptr [ %.0.i.i223.i, %bb.cc ], [ %.0.i.i223.i, %bb.bv ], [ %i.le, %bb.cd ], [ %.0.i.i223.i, %bb.bu ], [ %.0.i.i223.i, %bb.cb ], [ %.0.i.i223.i, %bb.ca ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.dp, i64 103
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !563
  %.not148.i = icmp eq i8 %i.lq, 0
  %i.lr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i.i202.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i202.i, label %sqlite3FaultSim.exit.thread.i.i, label %sqlite3FaultSim.exit.i.i

sqlite3FaultSim.exit.i.i:                         ; preds = %sqlite3SelectDelete.exit.i
  %i.ls = call i32 %i.lr(i32 noundef 300) #58, !inline_history !3472
  %.not.i203.i = icmp eq i32 %i.ls, 0
  br i1 %.not.i203.i, label %sqlite3FaultSim.exit.thread.i.i, label %bb.ce

bb.ce:                                            ; preds = %sqlite3FaultSim.exit.i.i
  %i.lt = load ptr, ptr %0, align 8, !tbaa !657   ; 7 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 103 ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !563
  %i.lw = icmp eq i8 %i.lv, 0
  br i1 %i.lw, label %bb.cf, label %sqlite3DbFree.exit.i

bb.cf:                                            ; preds = %bb.ce
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 104
  %i.ly = load i8, ptr %i.lx, align 8, !tbaa !564
  %i.lz = icmp eq i8 %i.ly, 0
  br i1 %i.lz, label %bb.cg, label %sqlite3DbFree.exit.i

bb.cg:                                            ; preds = %bb.cf
  store i8 1, ptr %i.lu, align 1, !tbaa !563
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 220
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !565
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 400
  store atomic volatile i32 1, ptr %i.md monotonic, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.me = getelementptr inbounds nuw i8, ptr %i.lt, i64 408 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !566
  %i.mg = add i32 %i.mf, 1
  store i32 %i.mg, ptr %i.me, align 8, !tbaa !566
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lt, i64 412
  store i16 0, ptr %i.mh, align 4, !tbaa !567
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lt, i64 344 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !309 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i17.i.i, label %sqlite3DbFree.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.mj, ptr noundef nonnull @.str.125), !inline_history !3473
  %i.mk = load ptr, ptr %i.mi, align 8, !tbaa !309 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store i32 7, ptr %i.ml, align 8, !tbaa !310
  %.0.in17.i.i.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 224
  %.018.i.i.i = load ptr, ptr %.0.in17.i.i.i, align 8, !tbaa !569 ; 2 uses
  %.not1619.i.i.i = icmp eq ptr %.018.i.i.i, null
  br i1 %.not1619.i.i.i, label %sqlite3DbFree.exit.i, label %.lr.ph.i.i204.i

.lr.ph.i.i204.i:                                  ; preds = %bb.cj, %.lr.ph.i.i204.i
  %.020.i.i.i = phi ptr [ %.0.i.i205.i, %.lr.ph.i.i204.i ], [ %.018.i.i.i, %bb.cj ] ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 52 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !321
  %i.mo = add nsw i32 %i.mn, 1
  store i32 %i.mo, ptr %i.mm, align 4, !tbaa !321
  %i.mp = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 24
  store i32 7, ptr %i.mp, align 8, !tbaa !310
  %.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 224
  %.0.i.i205.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !569 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %.0.i.i205.i, null
  br i1 %.not16.i.i.i, label %sqlite3DbFree.exit.i, label %.lr.ph.i.i204.i, !llvm.loop !570

sqlite3FaultSim.exit.thread.i.i:                  ; preds = %sqlite3FaultSim.exit.i.i, %sqlite3SelectDelete.exit.i
  %i.mq = load ptr, ptr %0, align 8, !tbaa !657   ; 2 uses
  %.not.i18.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i18.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %sqlite3FaultSim.exit.thread.i.i
  %i.mr = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.mq, i64 noundef 24), !inline_history !3474
  br label %sqlite3OomFault.exit.i.i

bb.cl:                                            ; preds = %sqlite3FaultSim.exit.thread.i.i
  %i.ms = call fastcc ptr @sqlite3Malloc(i64 noundef 24), !inline_history !3474
  br label %sqlite3OomFault.exit.i.i

sqlite3OomFault.exit.i.i:                         ; preds = %bb.cl, %bb.ck
  %.0.i206.i = phi ptr [ %i.ms, %bb.cl ], [ %i.mr, %bb.ck ] ; 5 uses
  %.not16.i.i1076 = icmp eq ptr %.0.i206.i, null
  br i1 %.not16.i.i1076, label %sqlite3DbFree.exit.i, label %bb.cm

bb.cm:                                            ; preds = %sqlite3OomFault.exit.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !1002
  store ptr %i.mu, ptr %.0.i206.i, align 8, !tbaa !1003
  store ptr %.0.i206.i, ptr %i.mt, align 8, !tbaa !1002
  %i.mv = getelementptr inbounds nuw i8, ptr %.0.i206.i, i64 8
  store ptr %.1127.i, ptr %i.mv, align 8, !tbaa !1006
  %i.mw = getelementptr inbounds nuw i8, ptr %.0.i206.i, i64 16
  store ptr @sqlite3DbFree, ptr %i.mw, align 8, !tbaa !1005
  br label %sqlite3WindowRewrite.exit

sqlite3DbFree.exit.i:                             ; preds = %.lr.ph.i.i204.i, %sqlite3OomFault.exit.i.i, %bb.cj, %bb.ci, %bb.cf, %bb.ce
  %i.mx = load ptr, ptr %0, align 8, !tbaa !657
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.mx, ptr noundef nonnull %.1127.i), !inline_history !3446
  br label %sqlite3WindowRewrite.exit

sqlite3WindowRewrite.exit.thread1157:             ; preds = %bb.ao, %.thread.i, %sqlite3DbMallocRaw.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #58
  br label %.loopexit1205

sqlite3WindowRewrite.exit:                        ; preds = %bb.cm, %sqlite3DbFree.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #58
  %.not955 = and i1 %.not9551198, %.not148.i
  br i1 %.not955, label %sqlite3WindowRewrite.exit.thread, label %.loopexit1205

sqlite3WindowRewrite.exit.thread:                 ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %sqlite3WindowRewrite.exit
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !2765
  %i.na = load i32, ptr %i.bz, align 4, !tbaa !393 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.nb, i8 0, i64 40, i1 false)
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 13 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !2769
  store ptr %i.nd, ptr %17, align 8, !tbaa !3475
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 7 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !2763 ; 2 uses
  %.not9561220 = icmp eq ptr %i.nf, null
  br i1 %.not9561220, label %.lr.ph1223, label %.critedge

.lr.ph1223:                                       ; preds = %sqlite3WindowRewrite.exit.thread
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 9 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.e, i64 103 ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 7 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.nl = and i32 %i.na, 8
  %i.nm = icmp ne i32 %i.nl, 0                    ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.nq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ns = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.nt = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.nu = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.nv = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.nw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.nx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph1223, %bb.gz
  %.08731222 = phi i32 [ 0, %.lr.ph1223 ], [ %i.abl, %bb.gz ] ; 11 uses
  %.08971221 = phi ptr [ %i.mz, %.lr.ph1223 ], [ %.1898.ph, %bb.gz ] ; 14 uses
  %i.ny = load i32, ptr %.08971221, align 8, !tbaa !27
  %i.nz = icmp slt i32 %.08731222, %i.ny
  br i1 %i.nz, label %bb.co, label %bb.kp

bb.co:                                            ; preds = %bb.cn
  %i.oa = getelementptr inbounds nuw i8, ptr %.08971221, i64 8 ; 3 uses
  %i.ob = sext i32 %.08731222 to i64              ; 5 uses
  %i.oc = getelementptr inbounds [72 x i8], ptr %i.oa, i64 %i.ob ; 6 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 24 ; 5 uses
end_hunk_10
begin_hunk_11_@sqlite3SrcListAppendFromTerm:bb.a
  %i.d = load ptr, ptr %6, align 8, !tbaa !3611
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3613
  %.not52 = icmp eq ptr %i.f, null
  br i1 %.not52, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ @.str.1008, %bb.b ], [ @.str.1009, %bb.c ]
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1007, ptr noundef nonnull %i.g)
  br label %bb.aj

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = tail call fastcc ptr @sqlite3SrcListAppend(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.h, align 8, !tbaa !27
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [72 x i8], ptr %i.h, i64 %i.k ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.n = load i8, ptr %i.m, align 4, !tbaa !1092  ; 2 uses
  %i.o = icmp ugt i8 %i.n, 1
  br i1 %i.o, label %bb.f, label %sqlite3RenameTokenMap.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.l, i64 -64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !389  ; 2 uses
  %.not53 = icmp eq ptr %i.q, null
  br i1 %.not53, label %sqlite3RenameTokenMap.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not54 = icmp eq ptr %3, null
  br i1 %.not54, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %3, align 8, !tbaa !382
  %.not55 = icmp eq ptr %i.r, null
  br i1 %.not55, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.s = phi ptr [ %2, %bb.i ], [ %3, %bb.h ]
  %.not.i = icmp eq i8 %i.n, 3
  br i1 %.not.i, label %sqlite3RenameTokenMap.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %0, align 8, !tbaa !657    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.t, i64 noundef 32), !inline_history !3348
  br label %sqlite3DbMallocRaw.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.v = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !3348
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.u, %bb.l ], [ %i.v, %bb.m ] ; 5 uses
  %.not.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i, label %sqlite3RenameTokenMap.exit, label %bb.n

bb.n:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store ptr %i.q, ptr %.0.i.i.i, align 8, !tbaa !3283
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !3272
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3349
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !3350
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !3349
  br label %sqlite3RenameTokenMap.exit

sqlite3RenameTokenMap.exit:                       ; preds = %bb.n, %sqlite3DbMallocRaw.exit.i.i, %bb.j, %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !381 ; 2 uses
  %.not56 = icmp eq i32 %i.ab, 0
  br i1 %.not56, label %bb.w, label %bb.o

bb.o:                                             ; preds = %sqlite3RenameTokenMap.exit
  %i.ac = load ptr, ptr %4, align 8, !tbaa !382   ; 2 uses
  %i.ad = zext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i63, label %sqlite3NameFromToken.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = add nuw nsw i64 %i.ad, 1
  %i.af = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.ae), !inline_history !3342 ; 10 uses
  %.not9.i.i = icmp eq ptr %i.af, null
  br i1 %.not9.i.i, label %sqlite3NameFromToken.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.ac, i64 range(i64 -2147483648, 4294967296) %i.ad, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !231
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !231 ; 3 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !231
  %.not.i7.i = icmp sgt i8 %i.ak, -1
  br i1 %.not.i7.i, label %sqlite3NameFromToken.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = icmp eq i8 %i.ah, 91
  %spec.store.select.i.i = select i1 %i.al, i8 93, i8 %i.ah ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.u ], [ 0, %bb.r ] ; 3 uses
  %.020.i.i = phi i32 [ %i.aw, %bb.u ], [ 1, %bb.r ] ; 3 uses
  %i.am = sext i32 %.020.i.i to i64
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !231 ; 2 uses
  %i.ap = icmp eq i8 %i.ao, %spec.store.select.i.i
  br i1 %i.ap, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aq = add nsw i32 %.020.i.i, 1                ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.af, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !231
  %i.au = icmp eq i8 %i.at, %spec.store.select.i.i
  br i1 %i.au, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %spec.store.select.sink.i.i = phi i8 [ %spec.store.select.i.i, %bb.t ], [ %i.ao, %bb.s ]
  %.121.i.i = phi i32 [ %i.aq, %bb.t ], [ %.020.i.i, %bb.s ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i.i
  store i8 %spec.store.select.sink.i.i, ptr %i.av, align 1, !tbaa !231
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.aw = add nsw i32 %.121.i.i, 1
  br label %bb.s

bb.v:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i.i
  store i8 0, ptr %i.ax, align 1, !tbaa !231
  br label %sqlite3NameFromToken.exit

sqlite3NameFromToken.exit:                        ; preds = %bb.o, %bb.p, %bb.q, %bb.v
  %.0.i = phi ptr [ null, %bb.o ], [ %i.af, %bb.q ], [ %i.af, %bb.v ], [ null, %bb.p ]
  %i.ay = getelementptr i8, ptr %i.l, i64 -56
  store ptr %.0.i, ptr %i.ay, align 8, !tbaa !386
  br label %bb.w

bb.w:                                             ; preds = %sqlite3NameFromToken.exit, %sqlite3RenameTokenMap.exit
  %.not57 = icmp eq ptr %5, null
  br i1 %.not57, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = getelementptr i8, ptr %i.l, i64 -37     ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %i.bb = and i8 %i.ba, 1
  %.not.i64 = icmp eq i8 %i.bb, 0
  br i1 %.not.i64, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr %i.l, align 8, !tbaa !231
  %i.bc = and i8 %i.ba, -2
  store i8 %i.bc, ptr %i.az, align 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !231 ; 2 uses
  %.not24.i = icmp eq ptr %i.bd, null
  br i1 %.not24.i, label %bb.aa, label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %bb.z
  %i.be = load ptr, ptr %0, align 8, !tbaa !657
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.be, ptr noundef nonnull %i.bd), !inline_history !3614
  store ptr null, ptr %i.l, align 8, !tbaa !231
  br label %bb.aa

bb.aa:                                            ; preds = %sqlite3DbFree.exit.i, %bb.z, %bb.y
  %i.bf = load ptr, ptr %0, align 8, !tbaa !657
  %i.bg = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.bf, i64 noundef 24), !inline_history !3614 ; 4 uses
  store ptr %i.bg, ptr %i.l, align 8, !tbaa !231
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %sqlite3SrcItemAttachSubquery.exit.thread, label %bb.ab

sqlite3SrcItemAttachSubquery.exit.thread:         ; preds = %bb.aa
  %i.bi = load ptr, ptr %0, align 8, !tbaa !657
  tail call fastcc void @clearSelect(ptr noundef %i.bi, ptr noundef nonnull %5, i32 noundef 1), !inline_history !3615
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bj = getelementptr i8, ptr %i.l, i64 -39     ; 4 uses
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = or i16 %i.bk, 4
  store i16 %i.bl, ptr %i.bj, align 1
  store ptr %5, ptr %i.bg, align 8, !tbaa !390
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !393
  %i.bp = and i32 %i.bo, 2048
  %.not59 = icmp eq i32 %i.bp, 0
  br i1 %.not59, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = load i16, ptr %i.bj, align 1
  %i.br = or i16 %i.bq, 16384
  store i16 %i.br, ptr %i.bj, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %sqlite3SrcItemAttachSubquery.exit.thread, %bb.ac, %bb.ab, %bb.w
  %i.bs = icmp eq ptr %6, null
  br i1 %i.bs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bt = getelementptr i8, ptr %i.l, i64 -8
  store ptr null, ptr %i.bt, align 8, !tbaa !231
  br label %sqlite3SelectDelete.exit

bb.af:                                            ; preds = %bb.ad
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !3613
  %.not60 = icmp eq ptr %i.bv, null
  br i1 %.not60, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bw = getelementptr i8, ptr %i.l, i64 -39     ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = or i16 %i.bx, 2048
  store i16 %i.by, ptr %i.bw, align 1
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !3613
  %i.ca = getelementptr i8, ptr %i.l, i64 -8
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !231
  br label %sqlite3SelectDelete.exit

bb.ah:                                            ; preds = %bb.af
  %i.cb = load ptr, ptr %6, align 8, !tbaa !3611
  %i.cc = getelementptr i8, ptr %i.l, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !231
  br label %sqlite3SelectDelete.exit

bb.ai:                                            ; preds = %bb.d
  %i.cd = icmp eq ptr %6, null
  br i1 %i.cd, label %sqlite3ClearOnOrUsing.exit, label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ai
  %i.ce = load ptr, ptr %6, align 8, !tbaa !3611  ; 2 uses
  %.not.i66 = icmp eq ptr %i.ce, null
  br i1 %.not.i66, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.a, ptr noundef %i.ce)
  br label %sqlite3ClearOnOrUsing.exit

bb.al:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !3613 ; 2 uses
  %.not9.i = icmp eq ptr %i.cg, null
  br i1 %.not9.i, label %sqlite3ClearOnOrUsing.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @sqlite3IdListDelete(ptr noundef %i.a, ptr noundef nonnull %i.cg)
  br label %sqlite3ClearOnOrUsing.exit

sqlite3ClearOnOrUsing.exit:                       ; preds = %bb.ai, %bb.ak, %bb.al, %bb.am
  %.not.i67 = icmp eq ptr %5, null
  br i1 %.not.i67, label %sqlite3SelectDelete.exit, label %bb.an

bb.an:                                            ; preds = %sqlite3ClearOnOrUsing.exit
  tail call fastcc void @clearSelect(ptr noundef %i.a, ptr noundef nonnull %5, i32 noundef 1), !inline_history !2743
  br label %sqlite3SelectDelete.exit

sqlite3SelectDelete.exit:                         ; preds = %bb.an, %sqlite3ClearOnOrUsing.exit, %bb.ae, %bb.ah, %bb.ag
  %.0 = phi ptr [ %i.h, %bb.ae ], [ %i.h, %bb.ag ], [ %i.h, %bb.ah ], [ null, %sqlite3ClearOnOrUsing.exit ], [ null, %bb.an ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3SelectNew(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.Select, align 8             ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  %i.a = load ptr, ptr %0, align 8, !tbaa !657
  %i.b = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef 120) ; 20 uses
  %i.c = icmp eq ptr %i.b, null                   ; 18 uses
  %spec.store.select = select i1 %i.c, ptr %9, ptr %i.b ; 3 uses
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !657
  %i.f = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.e, i64 noundef 73), !inline_history !3275 ; 8 uses
  %.not24.i.i = icmp eq ptr %i.f, null
  br i1 %.not24.i.i, label %sqlite3Expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store i8 -76, ptr %i.f, align 8, !tbaa !2750
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  store i16 -1, ptr %i.g, align 2, !tbaa !3276
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !231
  store i8 0, ptr %i.h, align 8, !tbaa !231
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 1, ptr %i.j, align 8, !tbaa !3277
  br label %sqlite3Expr.exit

sqlite3Expr.exit:                                 ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !657
  %i.l = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.k, ptr noundef %i.f), !inline_history !3280
  br label %bb.d

bb.d:                                             ; preds = %sqlite3Expr.exit, %bb.a
  %.038 = phi ptr [ %i.l, %sqlite3Expr.exit ], [ %1, %bb.a ]
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  store ptr %.038, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2764
  store i8 -117, ptr %spec.store.select, align 8, !tbaa !3273
  %spec.store.select.sroa.sel45.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel45.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel45.v.sroa.sel.v.sroa.sel.v, i64 4
  store i32 %7, ptr %spec.store.select.sroa.sel45.v.sroa.sel.v.sroa.sel, align 4, !tbaa !393
  %spec.store.select.sroa.sel48.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel48.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel48.v.sroa.sel.v.sroa.sel.v, i64 8
  store i32 0, ptr %spec.store.select.sroa.sel48.v.sroa.sel.v.sroa.sel, align 8, !tbaa !3515
  %spec.store.select.sroa.sel51.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel51.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel51.v.sroa.sel.v.sroa.sel.v, i64 12
  store i32 0, ptr %spec.store.select.sroa.sel51.v.sroa.sel.v.sroa.sel, align 4, !tbaa !3516
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3485
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !3485
  %spec.store.select.sroa.sel54.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel54.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel54.v.sroa.sel.v.sroa.sel.v, i64 16
  store i32 %i.o, ptr %spec.store.select.sroa.sel54.v.sroa.sel.v.sroa.sel, align 8, !tbaa !397
  %spec.store.select.sroa.sel57.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel57.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel57.v.sroa.sel.v.sroa.sel.v, i64 2
  store i16 0, ptr %spec.store.select.sroa.sel57.v.sroa.sel.v.sroa.sel, align 2, !tbaa !3510
  %i.p = icmp eq ptr %2, null
  br i1 %i.p, label %bb.e, label %sqlite3DbMallocZero.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !657    ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.q, i64 noundef 80), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

bb.g:                                             ; preds = %bb.e
  %i.s = tail call fastcc ptr @sqlite3Malloc(i64 noundef 80), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.r, %bb.f ], [ %i.s, %bb.g ] ; 3 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %sqlite3DbMallocZero.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %.0.i.i, i8 0, i64 80, i1 false)
  br label %sqlite3DbMallocZero.exit

sqlite3DbMallocZero.exit:                         ; preds = %bb.h, %sqlite3DbMallocRaw.exit.i, %bb.d
  %.039 = phi ptr [ %2, %bb.d ], [ null, %sqlite3DbMallocRaw.exit.i ], [ %.0.i.i, %bb.h ]
  %spec.store.select.sroa.sel60.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel60.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel60.v.sroa.sel.v.sroa.sel.v, i64 32
  store ptr %.039, ptr %spec.store.select.sroa.sel60.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2765
  %spec.store.select.sroa.sel63.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel63.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel63.v.sroa.sel.v.sroa.sel.v, i64 40
  store ptr %3, ptr %spec.store.select.sroa.sel63.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2766
  %spec.store.select.sroa.sel66.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel66.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel66.v.sroa.sel.v.sroa.sel.v, i64 48
  store ptr %4, ptr %spec.store.select.sroa.sel66.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2767
  %spec.store.select.sroa.sel69.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel69.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel69.v.sroa.sel.v.sroa.sel.v, i64 56
  store ptr %5, ptr %spec.store.select.sroa.sel69.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2768
  %spec.store.select.sroa.sel72.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel72.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel72.v.sroa.sel.v.sroa.sel.v, i64 64
  store ptr %6, ptr %spec.store.select.sroa.sel72.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2769
  %spec.store.select.sroa.sel75.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel75.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel75.v.sroa.sel.v.sroa.sel.v, i64 72
  store ptr null, ptr %spec.store.select.sroa.sel75.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2763
  %spec.store.select.sroa.sel78.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel78.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel78.v.sroa.sel.v.sroa.sel.v, i64 80
  store ptr null, ptr %spec.store.select.sroa.sel78.v.sroa.sel.v.sroa.sel, align 8, !tbaa !3487
  %spec.store.select.sroa.sel81.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel81.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel81.v.sroa.sel.v.sroa.sel.v, i64 88
  store ptr %8, ptr %spec.store.select.sroa.sel81.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2770
  %spec.store.select.sroa.sel84.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel84.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel84.v.sroa.sel.v.sroa.sel.v, i64 96
  store ptr null, ptr %spec.store.select.sroa.sel84.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2771
  %spec.store.select.sroa.sel87.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel87.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel87.v.sroa.sel.v.sroa.sel.v, i64 104
  store ptr null, ptr %spec.store.select.sroa.sel87.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2792
  %spec.store.select.sroa.sel90.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, ptr %9, ptr %i.b
  %spec.store.select.sroa.sel90.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel90.v.sroa.sel.v.sroa.sel.v, i64 112
  store ptr null, ptr %spec.store.select.sroa.sel90.v.sroa.sel.v.sroa.sel, align 8, !tbaa !2784
end_hunk_11
begin_hunk_12_@sqlite3ExprListSetName:bb.a
  %i.o = load i8, ptr %i.l, align 1, !tbaa !231   ; 3 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !231
  %.not.i13 = icmp sgt i8 %i.r, -1
  br i1 %.not.i13, label %sqlite3Dequote.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i8 %i.o, 91
  %spec.store.select.i = select i1 %i.s, i8 93, i8 %i.o ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.g ] ; 3 uses
  %.020.i = phi i32 [ %i.ad, %bb.j ], [ 1, %bb.g ] ; 3 uses
  %i.t = sext i32 %.020.i to i64
  %i.u = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !231   ; 2 uses
  %i.w = icmp eq i8 %i.v, %spec.store.select.i
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %.020.i, 1                   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.l, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !231
  %i.ab = icmp eq i8 %i.aa, %spec.store.select.i
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %spec.store.select.sink.i = phi i8 [ %spec.store.select.i, %bb.i ], [ %i.v, %bb.h ]
  %.121.i = phi i32 [ %i.x, %bb.i ], [ %.020.i, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i
  store i8 %spec.store.select.sink.i, ptr %i.ac, align 1, !tbaa !231
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ad = add nsw i32 %.121.i, 1
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i
  store i8 0, ptr %i.ae, align 1, !tbaa !231
  br label %sqlite3Dequote.exit

sqlite3Dequote.exit:                              ; preds = %bb.e, %bb.f, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !1092 ; 2 uses
  %i.ah = icmp ugt i8 %i.ag, 1
  br i1 %i.ah, label %bb.l, label %sqlite3RenameTokenMap.exit

bb.l:                                             ; preds = %sqlite3Dequote.exit
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !3232
  %.not.i14 = icmp eq i8 %i.ag, 3
  br i1 %.not.i14, label %sqlite3RenameTokenMap.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %0, align 8, !tbaa !657   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.aj, i64 noundef 32), !inline_history !3348
  br label %sqlite3DbMallocRaw.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.al = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !3348
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi ptr [ %i.ak, %bb.n ], [ %i.al, %bb.o ] ; 5 uses
  %.not.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i, label %sqlite3RenameTokenMap.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %.0.i.i.i, align 8, !tbaa !3283
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !3272
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !3349
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !3350
  store ptr %.0.i.i.i, ptr %i.an, align 8, !tbaa !3349
  br label %sqlite3RenameTokenMap.exit

sqlite3RenameTokenMap.exit:                       ; preds = %bb.p, %sqlite3DbMallocRaw.exit.i.i, %bb.l, %sqlite3DbStrNDup.exit, %sqlite3Dequote.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprListSetSpan(ptr %.0.val, ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !27
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr [24 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -8       ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3232
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoaddr ptr %1 to i64
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = trunc i64 %i.h to i32
  %i.j = trunc i64 %i.g to i32
  %i.k = sub i32 %i.i, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.09.i = phi ptr [ %i.q, %bb.d ], [ %1, %bb.c ] ; 4 uses
  %i.l = load i8, ptr %.09.i, align 1, !tbaa !231
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !231
  %i.p = and i8 %i.o, 1
  %.not.i = icmp eq i8 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i, i64 1
  %indvars.iv.next.i = add i32 %indvars.iv.i, -1
  br i1 %.not.i, label %bb.e, label %bb.d, !llvm.loop !3383

bb.e:                                             ; preds = %bb.d
  %i.r = sext i32 %indvars.iv.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %bb.f ], [ %i.r, %bb.e ] ; 5 uses
  %i.s = getelementptr i8, ptr %.09.i, i64 %indvars.iv11.i
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !231
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !231
  %i.y = and i8 %i.x, 1
  %.not10.i = icmp eq i8 %i.y, 0
  %indvars.iv.next12.i = add nsw i64 %indvars.iv11.i, -1
  br i1 %.not10.i, label %bb.g, label %bb.f, !llvm.loop !3384

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i64 %indvars.iv11.i, 1
  %i.aa = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %.0.val, i64 noundef %i.z), !inline_history !3385 ; 4 uses
  %.not9.i.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i.i, label %sqlite3DbSpanDup.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %.09.i, i64 range(i64 -2147483648, 4294967296) %indvars.iv11.i, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv11.i
  store i8 0, ptr %i.ab, align 1, !tbaa !231
  br label %sqlite3DbSpanDup.exit

sqlite3DbSpanDup.exit:                            ; preds = %bb.g, %bb.h
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !3232
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 1
  %i.ae = and i16 %i.ad, -4
  %i.af = or disjoint i16 %i.ae, 1
  store i16 %i.af, ptr %i.ac, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %sqlite3DbSpanDup.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3Expr(ptr noundef %0, i32 noundef range(i32 60, 181) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %sqlite3Strlen30.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #59
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 1073741823
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %narrow = add nuw nsw i32 %.0.i, 73
  %i.e = zext nneg i32 %narrow to i64
  %i.f = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.e), !inline_history !3363 ; 8 uses
  %.not24.i = icmp eq ptr %i.f, null
  br i1 %.not24.i, label %sqlite3ExprAlloc.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3Strlen30.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  %i.g = trunc nuw i32 %1 to i8
  store i8 %i.g, ptr %i.f, align 8, !tbaa !2750
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  store i16 -1, ptr %i.h, align 2, !tbaa !3276
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !231
  %.not26.i = icmp eq i32 %.0.i, 0
  br i1 %.not26.i, label %sqlite3DequoteExpr.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %.0.i to i64               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 1 %2, i64 %i.k, i1 false)
  br label %sqlite3DequoteExpr.exit.i

sqlite3DequoteExpr.exit.i:                        ; preds = %bb.c, %bb.d
  %i.l = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !231
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 1, ptr %i.n, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit

sqlite3ExprAlloc.exit:                            ; preds = %sqlite3Strlen30.exit, %sqlite3DequoteExpr.exit.i
  ret ptr %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sqlite3SrcListShiftJoinType(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #19 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.preheader1, label %.loopexit

.preheader1:                                      ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader1, %bb.c
  %indvars.iv = phi i64 [ %i.d, %.preheader1 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.0 = phi i32 [ 0, %.preheader1 ], [ %i.j, %bb.c ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = getelementptr [72 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3278  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %i.g, ptr %i.h, align 8, !tbaa !3278
  %i.i = zext i8 %i.g to i32
  %i.j = or i32 %.0, %i.i                         ; 2 uses
  %i.k = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.k, label %bb.c, label %bb.d, !llvm.loop !3623

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !3278
  %i.m = and i32 %i.j, 16
  %.not22 = icmp eq i32 %i.m, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.n = icmp sgt i64 %indvars.iv412, 2
  br i1 %i.n, label %.lr.ph, label %.critedge.preheader, !llvm.loop !3624

.lr.ph:                                           ; preds = %bb.d, %.preheader
  %indvars.iv412 = phi i64 [ %indvars.iv.next5, %.preheader ], [ %i.d, %bb.d ] ; 3 uses
  %indvars.iv.next5 = add nsw i64 %indvars.iv412, -1 ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %indvars.iv.next5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !3278
  %i.r = and i8 %i.q, 16
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.preheader, label %..critedge_crit_edge, !llvm.loop !3624

..critedge_crit_edge:                             ; preds = %.lr.ph
  %i.t = shl i64 %indvars.iv412, 32
  %i.u = add i64 %i.t, -8589934592
  %i.v = ashr exact i64 %i.u, 32
  br label %.critedge.preheader, !llvm.loop !3624

.critedge.preheader:                              ; preds = %.preheader, %..critedge_crit_edge
  %indvars.iv7.ph = phi i64 [ %i.v, %..critedge_crit_edge ], [ -1, %.preheader ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %.critedge ], [ %indvars.iv7.ph, %.critedge.preheader ] ; 3 uses
  %i.w = getelementptr inbounds [72 x i8], ptr %i.c, i64 %indvars.iv7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !3278
  %i.z = or i8 %i.y, 64
  store i8 %i.z, ptr %i.x, align 8, !tbaa !3278
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -1
  %i.aa = icmp sgt i64 %indvars.iv7, 0
  br i1 %i.aa, label %.critedge, label %.loopexit, !llvm.loop !3625

.loopexit:                                        ; preds = %.critedge, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3SrcListIndexedBy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !381  ; 3 uses
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %1, align 8, !tbaa !27
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [72 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.f = icmp eq i32 %i.b, 1
  %i.g = load ptr, ptr %2, align 8, !tbaa !382    ; 3 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %.sink.split, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.h = zext i32 %i.b to i64
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %sqlite3NameFromToken.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %i.i = phi i64 [ %i.h, %bb.e ], [ 1, %bb.d ]    ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !657
  %i.k = add nuw nsw i64 %i.i, 1
  %i.l = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.j, i64 noundef %i.k), !inline_history !3342 ; 10 uses
  %.not9.i.i = icmp eq ptr %i.l, null
  br i1 %.not9.i.i, label %sqlite3NameFromToken.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.g, i64 range(i64 -2147483648, 4294967296) %i.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 0, ptr %i.m, align 1, !tbaa !231
  %i.n = load i8, ptr %i.l, align 1, !tbaa !231   ; 3 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !231
  %.not.i7.i = icmp sgt i8 %i.q, -1
  br i1 %.not.i7.i, label %sqlite3NameFromToken.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = icmp eq i8 %i.n, 91
  %spec.store.select.i.i = select i1 %i.r, i8 93, i8 %i.n ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ 0, %bb.g ] ; 3 uses
  %.020.i.i = phi i32 [ %i.ac, %bb.j ], [ 1, %bb.g ] ; 3 uses
  %i.s = sext i32 %.020.i.i to i64
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !231   ; 2 uses
  %i.v = icmp eq i8 %i.u, %spec.store.select.i.i
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %.020.i.i, 1                 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.l, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !231
  %i.aa = icmp eq i8 %i.z, %spec.store.select.i.i
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %spec.store.select.sink.i.i = phi i8 [ %spec.store.select.i.i, %bb.i ], [ %i.u, %bb.h ]
  %.121.i.i = phi i32 [ %i.w, %bb.i ], [ %.020.i.i, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i.i
  store i8 %spec.store.select.sink.i.i, ptr %i.ab, align 1, !tbaa !231
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ac = add nsw i32 %.121.i.i, 1
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i.i
  store i8 0, ptr %i.ad, align 1, !tbaa !231
  br label %sqlite3NameFromToken.exit

sqlite3NameFromToken.exit:                        ; preds = %bb.e, %.thread, %bb.f, %bb.k
  %.0.i = phi ptr [ null, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.k ], [ null, %.thread ]
  %i.ae = getelementptr i8, ptr %i.e, i64 -24
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !231
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %sqlite3NameFromToken.exit
  %.sink21 = phi i16 [ 2, %sqlite3NameFromToken.exit ], [ 1, %bb.d ]
  %i.af = getelementptr i8, ptr %i.e, i64 -39     ; 2 uses
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = or i16 %i.ag, %.sink21
  store i16 %i.ah, ptr %i.af, align 1
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3SrcListFuncArgs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !27
end_hunk_12
begin_hunk_13_@sqlite3IdListAppend:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !178
  %.not.i33 = icmp ult ptr %1, %i.n
  br i1 %.not.i33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ult i64 %i.i, 129
  br i1 %i.o, label %.thread44, label %sqlite3DbRealloc.exit

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !103
  %.not19.i = icmp ult ptr %1, %i.q
  br i1 %.not19.i, label %sqlite3DbRealloc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 414
  %i.s = load i16, ptr %i.r, align 2, !tbaa !356
  %i.t = zext i16 %i.s to i64
  %.not20.i = icmp ugt i64 %i.i, %i.t
  br i1 %.not20.i, label %sqlite3DbRealloc.exit, label %.thread44

sqlite3DbRealloc.exit:                            ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %i.u = tail call fastcc ptr @dbReallocFinish(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.i), !inline_history !399 ; 3 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread, label %sqlite3DbRealloc.exit..thread44_crit_edge

sqlite3DbRealloc.exit..thread44_crit_edge:        ; preds = %sqlite3DbRealloc.exit
  %.pre = load i32, ptr %i.u, align 8, !tbaa !27
  br label %.thread44

.thread:                                          ; preds = %sqlite3DbRealloc.exit
  tail call fastcc void @sqlite3IdListDelete(ptr noundef nonnull %i.a, ptr noundef nonnull %1)
  br label %sqlite3RenameTokenMap.exit

.thread44:                                        ; preds = %sqlite3DbRealloc.exit..thread44_crit_edge, %bb.g, %bb.i, %sqlite3DbMallocZero.exit
  %i.v = phi i32 [ 0, %sqlite3DbMallocZero.exit ], [ %i.e, %bb.g ], [ %i.e, %bb.i ], [ %.pre, %sqlite3DbRealloc.exit..thread44_crit_edge ] ; 3 uses
  %.127 = phi ptr [ %.0.i.i, %sqlite3DbMallocZero.exit ], [ %1, %bb.g ], [ %1, %bb.i ], [ %i.u, %sqlite3DbRealloc.exit..thread44_crit_edge ] ; 9 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %.127, align 8, !tbaa !27
  %.not.i34 = icmp eq ptr %2, null
  br i1 %.not.i34, label %sqlite3NameFromToken.exit.thread, label %bb.j

bb.j:                                             ; preds = %.thread44
  %i.x = load ptr, ptr %2, align 8, !tbaa !382    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !381
  %i.aa = zext i32 %i.z to i64                    ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.x, null
  br i1 %.not.i.i35, label %sqlite3NameFromToken.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add nuw nsw i64 %i.aa, 1
  %i.ac = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.ab), !inline_history !3342 ; 10 uses
  %.not9.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i, label %sqlite3NameFromToken.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.x, i64 range(i64 -2147483648, 4294967296) %i.aa, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !231
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !231 ; 3 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !231
  %.not.i7.i = icmp sgt i8 %i.ah, -1
  br i1 %.not.i7.i, label %sqlite3NameFromToken.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i8 %i.ae, 91
  %spec.store.select.i.i = select i1 %i.ai, i8 93, i8 %i.ae ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.p ], [ 0, %bb.m ] ; 3 uses
  %.020.i.i = phi i32 [ %i.at, %bb.p ], [ 1, %bb.m ] ; 3 uses
  %i.aj = sext i32 %.020.i.i to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !231 ; 2 uses
  %i.am = icmp eq i8 %i.al, %spec.store.select.i.i
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = add nsw i32 %.020.i.i, 1                ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ac, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !231
  %i.ar = icmp eq i8 %i.aq, %spec.store.select.i.i
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %spec.store.select.sink.i.i = phi i8 [ %spec.store.select.i.i, %bb.o ], [ %i.al, %bb.n ]
  %.121.i.i = phi i32 [ %i.an, %bb.o ], [ %.020.i.i, %bb.n ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.i.i
  store i8 %spec.store.select.sink.i.i, ptr %i.as, align 1, !tbaa !231
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.at = add nsw i32 %.121.i.i, 1
  br label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.i.i
  store i8 0, ptr %i.au, align 1, !tbaa !231
  br label %sqlite3NameFromToken.exit

sqlite3NameFromToken.exit.thread:                 ; preds = %.thread44, %bb.k, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.127, i64 8
  %i.aw = sext i32 %i.v to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr null, ptr %i.ax, align 8, !tbaa !2747
  br label %sqlite3RenameTokenMap.exit

sqlite3NameFromToken.exit:                        ; preds = %bb.l, %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.127, i64 8
  %i.az = sext i32 %i.v to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  store ptr %i.ac, ptr %i.ba, align 8, !tbaa !2747
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !1092
  switch i8 %i.bc, label %bb.r [
    i8 3, label %sqlite3RenameTokenMap.exit
    i8 1, label %sqlite3RenameTokenMap.exit
    i8 0, label %sqlite3RenameTokenMap.exit
  ]

bb.r:                                             ; preds = %sqlite3NameFromToken.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !657   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.bd, i64 noundef 32), !inline_history !3348
  br label %sqlite3DbMallocRaw.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bf = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !3348
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.t, %bb.s
  %.0.i.i.i = phi ptr [ %i.be, %bb.s ], [ %i.bf, %bb.t ] ; 5 uses
  %.not.i.i38 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i38, label %sqlite3RenameTokenMap.exit, label %bb.u

bb.u:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  store ptr %i.ac, ptr %.0.i.i.i, align 8, !tbaa !3283
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !3272
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3349
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !3350
  store ptr %.0.i.i.i, ptr %i.bh, align 8, !tbaa !3349
  br label %sqlite3RenameTokenMap.exit

sqlite3RenameTokenMap.exit:                       ; preds = %sqlite3NameFromToken.exit, %sqlite3NameFromToken.exit, %sqlite3NameFromToken.exit, %sqlite3DbMallocRaw.exit.i, %bb.u, %sqlite3DbMallocRaw.exit.i.i, %sqlite3NameFromToken.exit.thread, %.thread
  %.1 = phi ptr [ null, %.thread ], [ %.127, %bb.u ], [ %.127, %sqlite3NameFromToken.exit.thread ], [ %.127, %sqlite3NameFromToken.exit ], [ null, %sqlite3DbMallocRaw.exit.i ], [ %.127, %sqlite3DbMallocRaw.exit.i.i ], [ %.127, %sqlite3NameFromToken.exit ], [ %.127, %sqlite3NameFromToken.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3ExprAlloc(ptr noundef %0, i32 noundef range(i32 36, 181) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !381
  %i.c = add i32 %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = add nsw i64 %i.e, 72
  %i.g = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.f) ; 9 uses
  %.not24 = icmp eq ptr %i.g, null
  br i1 %.not24, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  %i.h = trunc nuw i32 %1 to i8
  store i8 %i.h, ptr %i.g, align 8, !tbaa !2750
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  store i16 -1, ptr %i.i, align 2, !tbaa !3276
  %.not25 = icmp eq i32 %i.d, 0
  br i1 %.not25, label %sqlite3DequoteExpr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !231
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !381  ; 2 uses
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %2, align 8, !tbaa !382
  %i.o = zext i32 %i.m to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 1 %i.n, i64 %i.o, i1 false)
  %.pre = load i32, ptr %i.l, align 8, !tbaa !381
  %i.p = zext i32 %.pre to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !231
  %.not27 = icmp eq i32 %3, 0
  br i1 %.not27, label %sqlite3DequoteExpr.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.j, align 8, !tbaa !231   ; 4 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !231
  %.not28 = icmp sgt i8 %i.v, -1
  br i1 %.not28, label %sqlite3DequoteExpr.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i8 %i.s, 34
  %i.x = select i1 %i.w, i32 67108992, i32 67108864
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !372
  %i.z = icmp eq i8 %i.s, 91
  %spec.store.select.i.i = select i1 %i.z, i8 93, i8 %i.s ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %.020.i.i = phi i32 [ %i.ak, %bb.l ], [ 1, %bb.i ] ; 3 uses
  %i.aa = sext i32 %.020.i.i to i64
  %i.ab = getelementptr inbounds i8, ptr %i.j, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !231 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, %spec.store.select.i.i
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %.020.i.i, 1                ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.j, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !231
  %i.ai = icmp eq i8 %i.ah, %spec.store.select.i.i
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %spec.store.select.sink.i.i = phi i8 [ %spec.store.select.i.i, %bb.k ], [ %i.ac, %bb.j ]
  %.121.i.i = phi i32 [ %i.ae, %bb.k ], [ %.020.i.i, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 %spec.store.select.sink.i.i, ptr %i.aj, align 1, !tbaa !231
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ak = add nsw i32 %.121.i.i, 1
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 0, ptr %i.al, align 1, !tbaa !231
  br label %sqlite3DequoteExpr.exit

sqlite3DequoteExpr.exit:                          ; preds = %bb.m, %bb.g, %bb.h, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 1, ptr %i.am, align 8, !tbaa !3277
  br label %bb.n

bb.n:                                             ; preds = %sqlite3DequoteExpr.exit, %bb.c
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3ExprInt32(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef 72) ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.a, align 8, !tbaa !2750
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i16 -1, ptr %i.b, align 2, !tbaa !3276
  %.not10 = icmp eq i32 %1, 0
  %i.c = select i1 %.not10, i32 545261568, i32 276826112
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !372
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.e, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 1, ptr %i.f, align 8, !tbaa !3277
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprAssignVarNumber(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !657    ; 8 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !231   ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !943
  %i.k = add i16 %i.j, 1                          ; 2 uses
  store i16 %i.k, ptr %i.i, align 8, !tbaa !943
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.e, align 1, !tbaa !231
  %i.m = icmp eq i8 %i.l, 63
  br i1 %i.m, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.n = icmp eq i32 %2, 2
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = sext i8 %i.g to i64
  %i.p = add nsw i64 %i.o, -48
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = add i32 %2, -1
  %i.r = call fastcc i32 @sqlite3Atoi64(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef %i.q, i8 noundef zeroext 1)
  %i.s = icmp ne i32 %i.r, 0
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = phi i64 [ %i.p, %bb.f ], [ %.pre, %bb.g ] ; 3 uses
  %.0 = phi i1 [ false, %bb.f ], [ %i.s, %bb.g ]
  %i.u = icmp slt i64 %i.t, 1
  %or.cond = select i1 %.0, i1 true, i1 %i.u
  %.phi.trans.insert98 = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %.pre99 = load i32, ptr %.phi.trans.insert98, align 4, !tbaa !27 ; 2 uses
  %i.v = sext i32 %.pre99 to i64
  %i.w = icmp sgt i64 %i.t, %i.v
  %or.cond129 = select i1 %or.cond, i1 true, i1 %i.w
  br i1 %or.cond129, label %.critedge.critedge, label %bb.k

.critedge.critedge:                               ; preds = %bb.h
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1061, i32 noundef %.pre99)
  %i.x = load ptr, ptr %0, align 8, !tbaa !657
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.critedge, %.critedge2.i
  %.014.i = phi ptr [ %i.af, %.critedge2.i ], [ %1, %.critedge.critedge ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !372  ; 2 uses
  %i.aa = and i32 %i.z, 3
  %.not10.i = icmp eq i32 %i.aa, 0
  br i1 %.not10.i, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.014.i, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !231 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %bb.i, %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !376 ; 2 uses
  %cond.i = icmp eq ptr %i.af, null
  br i1 %cond.i, label %sqlite3RecordErrorOffsetOfExpr.exit, label %.lr.ph.i, !llvm.loop !377

.critedge.i:                                      ; preds = %bb.i
  %i.ag = and i32 %i.z, 1073741824
  %.not11.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i, label %bb.j, label %sqlite3RecordErrorOffsetOfExpr.exit

bb.j:                                             ; preds = %.critedge.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  store i32 %i.ac, ptr %i.ah, align 4, !tbaa !378
  br label %sqlite3RecordErrorOffsetOfExpr.exit

sqlite3RecordErrorOffsetOfExpr.exit:              ; preds = %.critedge2.i, %.critedge.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ai = trunc i64 %i.t to i16                   ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !943
  %i.al = icmp slt i16 %i.ak, %i.ai
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 %i.ai, ptr %i.aj, align 8, !tbaa !943
  %.pre97.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !984
  br label %.thread75

bb.m:                                             ; preds = %bb.k
  %i.am = sext i16 %i.ai to i32
  %i.an = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !984 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.thread75, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.0.i = phi i32 [ 2, %bb.n ], [ %i.ax, %bb.p ]  ; 2 uses
  %i.ar = sext i32 %.0.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ar ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27
  %i.au = icmp eq i32 %i.at, %i.am
  br i1 %i.au, label %sqlite3VListNumToName.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr i8, ptr %i.as, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !27
  %i.ax = add nsw i32 %i.aw, %.0.i                ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.aq
  br i1 %i.ay, label %bb.o, label %.thread75, !llvm.loop !896

sqlite3VListNumToName.exit:                       ; preds = %bb.o
  %i.az = getelementptr i8, ptr %i.as, i64 8
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.thread75, label %bb.v

bb.q:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !984 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.thread70, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !27
  %i.bg = sext i32 %2 to i64                      ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.017.i = phi i32 [ 2, %bb.r ], [ %i.br, %bb.u ] ; 2 uses
  %i.bh = sext i32 %.017.i to i64
  %i.bi = getelementptr [4 x i8], ptr %i.bc, i64 %i.bh ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8      ; 2 uses
  %i.bk = tail call i32 @strncmp(ptr noundef readonly %i.bj, ptr noundef nonnull readonly %i.e, i64 noundef %i.bg) #59
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %i.bg
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !231
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %sqlite3VListNameToNum.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bp = getelementptr i8, ptr %i.bi, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !27
  %i.br = add nsw i32 %i.bq, %.017.i              ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.bf
  br i1 %i.bs, label %bb.s, label %.thread70, !llvm.loop !897

sqlite3VListNameToNum.exit:                       ; preds = %bb.t
  %i.bt = load i32, ptr %i.bi, align 4, !tbaa !27 ; 2 uses
  %i.bu = trunc i32 %i.bt to i16
  %sext.mask = and i32 %i.bt, 65535
  %i.bv = icmp eq i32 %sext.mask, 0
  br i1 %i.bv, label %.thread70, label %.thread

.thread70:                                        ; preds = %bb.u, %sqlite3VListNameToNum.exit, %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !943
  %i.by = add i16 %i.bx, 1                        ; 2 uses
  store i16 %i.by, ptr %i.bw, align 8, !tbaa !943
  br label %bb.w

.thread75:                                        ; preds = %bb.p, %bb.m, %bb.l, %sqlite3VListNumToName.exit
  %.pre97 = phi ptr [ %i.an, %sqlite3VListNumToName.exit ], [ null, %bb.m ], [ %.pre97.pre, %bb.l ], [ %i.an, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.w

bb.v:                                             ; preds = %sqlite3VListNumToName.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %.thread

bb.w:                                             ; preds = %.thread75, %.thread70
  %i.bz = phi ptr [ %i.bc, %.thread70 ], [ %.pre97, %.thread75 ] ; 10 uses
  %.14874 = phi i16 [ %i.by, %.thread70 ], [ %i.ai, %.thread75 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cb = sext i16 %.14874 to i32
  %i.cc = sdiv i32 %2, 4                          ; 2 uses
  %i.cd = add nsw i32 %i.cc, 3                    ; 4 uses
  %i.ce = icmp eq ptr %i.bz, null
  br i1 %i.ce, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !27 ; 3 uses
  %i.ch = add nsw i32 %i.cg, %i.cd                ; 2 uses
  %i.ci = load i32, ptr %i.bz, align 4, !tbaa !27 ; 2 uses
  %i.cj = icmp sgt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.ck = sext i32 %i.ci to i64
  %i.cl = shl nsw i64 %i.ck, 1
  %i.cm = sext i32 %i.cd to i64
  %i.cn = add nsw i64 %i.cl, %i.cm                ; 3 uses
  %i.co = shl nsw i64 %i.cn, 2                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !104
  %i.cr = icmp ult ptr %i.bz, %i.cq
  br i1 %i.cr, label %bb.z, label %.thread44.i

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !178
  %.not.i.i = icmp ult ptr %i.bz, %i.ct
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = icmp ult i64 %i.co, 129
  br i1 %i.cu, label %.thread44.thread.i, label %.thread44.i

bb.ab:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !103
  %.not19.i.i = icmp ult ptr %i.bz, %i.cw
  br i1 %.not19.i.i, label %.thread44.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 414
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !356
  %i.cz = zext i16 %i.cy to i64
  %.not20.i.i = icmp ugt i64 %i.co, %i.cz
  br i1 %.not20.i.i, label %.thread44.i, label %.thread44.thread.i

bb.ad:                                            ; preds = %bb.w
  %narrow.i = add nsw i32 %i.cc, 13               ; 2 uses
  %i.da = sext i32 %narrow.i to i64
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.b, i64 noundef %i.db), !inline_history !3689 ; 3 uses
  %.not43.i = icmp eq ptr %i.dc, null
  br i1 %.not43.i, label %sqlite3VListAdd.exit, label %bb.ae

.thread44.thread.i:                               ; preds = %bb.ac, %bb.aa
  %i.dd = trunc i64 %i.cn to i32
  br label %.thread48.i

.thread44.i:                                      ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y
  %i.de = tail call fastcc ptr @dbReallocFinish(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bz, i64 noundef %i.co), !inline_history !3689 ; 3 uses
  %.not4346.i = icmp eq ptr %i.de, null
  br i1 %.not4346.i, label %sqlite3VListAdd.exit, label %.thread44..thread48_crit_edge.i

.thread44..thread48_crit_edge.i:                  ; preds = %.thread44.i
  %i.df = trunc i64 %i.cn to i32
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.pre.pre.i = load i32, ptr %.phi.trans.insert.phi.trans.insert.i, align 4, !tbaa !27
  br label %.thread48.i

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 2, ptr %i.dg, align 4, !tbaa !27
  br label %.thread48.i

.thread48.i:                                      ; preds = %bb.ae, %.thread44..thread48_crit_edge.i, %.thread44.thread.i
  %.pre.i = phi i32 [ %.pre.pre.i, %.thread44..thread48_crit_edge.i ], [ 2, %bb.ae ], [ %i.cg, %.thread44.thread.i ] ; 2 uses
  %i.dh = phi i32 [ %i.df, %.thread44..thread48_crit_edge.i ], [ %narrow.i, %bb.ae ], [ %i.dd, %.thread44.thread.i ]
  %phi.call4750.i = phi ptr [ %i.de, %.thread44..thread48_crit_edge.i ], [ %i.dc, %bb.ae ], [ %i.bz, %.thread44.thread.i ] ; 2 uses
  store i32 %i.dh, ptr %phi.call4750.i, align 4, !tbaa !27
  %.pre55.i = add nsw i32 %.pre.i, %i.cd
  br label %bb.af

bb.af:                                            ; preds = %.thread48.i, %bb.x
  %.pre-phi.i = phi i32 [ %.pre55.i, %.thread48.i ], [ %i.ch, %bb.x ]
  %i.di = phi i32 [ %.pre.i, %.thread48.i ], [ %i.cg, %bb.x ]
  %.139.i = phi ptr [ %phi.call4750.i, %.thread48.i ], [ %i.bz, %bb.x ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.139.i, i64 4
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %.139.i, i64 %i.dk ; 3 uses
  store i32 %i.cb, ptr %i.dl, align 4, !tbaa !27
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  store i32 %i.cd, ptr %i.dm, align 4, !tbaa !27
  %i.dn = getelementptr i8, ptr %i.dl, i64 8      ; 2 uses
  store i32 %.pre-phi.i, ptr %i.dj, align 4, !tbaa !27
  %i.do = sext i32 %2 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dn, ptr nonnull readonly align 1 %i.e, i64 %i.do, i1 false)
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 %i.do
  store i8 0, ptr %i.dp, align 1, !tbaa !231
  br label %sqlite3VListAdd.exit

sqlite3VListAdd.exit:                             ; preds = %bb.ad, %.thread44.i, %bb.af
  %.1.i = phi ptr [ %.139.i, %bb.af ], [ %i.bz, %.thread44.i ], [ null, %bb.ad ]
  store ptr %.1.i, ptr %i.ca, align 8, !tbaa !984
  br label %.thread

.thread:                                          ; preds = %sqlite3VListNameToNum.exit, %bb.v, %sqlite3VListAdd.exit, %bb.c
  %.3 = phi i16 [ %i.k, %bb.c ], [ %i.ai, %bb.v ], [ %.14874, %sqlite3VListAdd.exit ], [ %i.bu, %sqlite3VListNameToNum.exit ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i16 %.3, ptr %i.dq, align 8, !tbaa !3235
  %i.dr = sext i16 %.3 to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !27
  %i.du = icmp slt i32 %i.dt, %i.dr
  br i1 %i.du, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %.thread
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1062)
  %i.dv = load ptr, ptr %0, align 8, !tbaa !657
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.ag, %.critedge2.i60
  %.014.i58 = phi ptr [ %i.ed, %.critedge2.i60 ], [ %1, %bb.ag ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.014.i58, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !372 ; 2 uses
  %i.dy = and i32 %i.dx, 3
  %.not10.i59 = icmp eq i32 %i.dy, 0
  br i1 %.not10.i59, label %bb.ah, label %.critedge2.i60

bb.ah:                                            ; preds = %.lr.ph.i57
  %i.dz = getelementptr inbounds nuw i8, ptr %.014.i58, i64 52
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !231 ; 2 uses
  %i.eb = icmp slt i32 %i.ea, 1
  br i1 %i.eb, label %.critedge2.i60, label %.critedge.i62

.critedge2.i60:                                   ; preds = %bb.ah, %.lr.ph.i57
  %i.ec = getelementptr inbounds nuw i8, ptr %.014.i58, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !376 ; 2 uses
  %cond.i61 = icmp eq ptr %i.ed, null
  br i1 %cond.i61, label %.critedge, label %.lr.ph.i57, !llvm.loop !377

.critedge.i62:                                    ; preds = %bb.ah
  %i.ee = and i32 %i.dx, 1073741824
  %.not11.i63 = icmp eq i32 %i.ee, 0
  br i1 %.not11.i63, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %.critedge.i62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 84
  store i32 %i.ea, ptr %i.ef, align 4, !tbaa !378
  br label %.critedge

.critedge:                                        ; preds = %.critedge2.i60, %bb.ai, %.critedge.i62, %sqlite3RecordErrorOffsetOfExpr.exit, %.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3ExprAddCollateToken(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !381  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %sqlite3ExprAlloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !657
  %i.d = add i32 %i.b, 1                          ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = add nsw i64 %i.e, 72
  %i.g = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.f), !inline_history !3363 ; 11 uses
  %.not24.i = icmp eq ptr %i.g, null
  br i1 %.not24.i, label %sqlite3ExprAlloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  store i8 114, ptr %i.g, align 8, !tbaa !2750
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  store i16 -1, ptr %i.h, align 2, !tbaa !3276
  %.not25.i = icmp eq i32 %i.d, 0
  br i1 %.not25.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !231
  %i.k = load i32, ptr %i.a, align 8, !tbaa !381  ; 2 uses
  %.not26.i = icmp eq i32 %i.k, 0
  br i1 %.not26.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !382
  %i.m = zext i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 1 %i.l, i64 %i.m, i1 false)
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !381
  %i.n = zext i32 %.pre.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi i64 [ %i.n, %bb.e ], [ 0, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !231
  %.not27.i = icmp eq i32 %3, 0
  br i1 %.not27.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.i, align 8, !tbaa !231   ; 4 uses
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !231
  %.not28.i = icmp sgt i8 %i.t, -1
  br i1 %.not28.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i8 %i.q, 34
  %i.v = select i1 %i.u, i32 67108992, i32 67108864 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !372
  %i.x = icmp eq i8 %i.q, 91
  %spec.store.select.i.i.i = select i1 %i.x, i8 93, i8 %i.q ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.k ], [ 0, %bb.h ] ; 3 uses
  %.020.i.i.i = phi i32 [ %i.ai, %bb.k ], [ 1, %bb.h ] ; 3 uses
  %i.y = sext i32 %.020.i.i.i to i64
  %i.z = getelementptr inbounds i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !231  ; 2 uses
  %i.ab = icmp eq i8 %i.aa, %spec.store.select.i.i.i
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add nsw i32 %.020.i.i.i, 1              ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.i, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !231
  %i.ag = icmp eq i8 %i.af, %spec.store.select.i.i.i
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %spec.store.select.sink.i.i.i = phi i8 [ %spec.store.select.i.i.i, %bb.j ], [ %i.aa, %bb.i ]
  %.121.i.i.i = phi i32 [ %i.ac, %bb.j ], [ %.020.i.i.i, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i.i
  store i8 %spec.store.select.sink.i.i.i, ptr %i.ah, align 1, !tbaa !231
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.ai = add nsw i32 %.121.i.i.i, 1
  br label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i.i
  store i8 0, ptr %i.aj, align 1, !tbaa !231
  %i.ak = or disjoint i32 %i.v, 8704
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.f, %bb.c
  %i.al = phi i32 [ %i.ak, %bb.l ], [ 8704, %bb.g ], [ 8704, %bb.f ], [ 8704, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 1, ptr %i.am, align 8, !tbaa !3277
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %1, ptr %i.an, align 8, !tbaa !376
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !372
  br label %sqlite3ExprAlloc.exit.thread

sqlite3ExprAlloc.exit.thread:                     ; preds = %bb.b, %bb.m, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %i.g, %bb.m ], [ %1, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprAttachSubtrees(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %sqlite3ExprDelete.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %0, ptr noundef %2), !inline_history !148
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.b, %bb.c
  %.not.i27 = icmp eq ptr %3, null
  br i1 %.not.i27, label %sqlite3ExprDelete.exit28, label %bb.d

bb.d:                                             ; preds = %sqlite3ExprDelete.exit
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %0, ptr noundef %3), !inline_history !148
  br label %sqlite3ExprDelete.exit28

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %3, ptr %i.b, align 8, !tbaa !1162
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !372
  %i.e = and i32 %i.d, 4194824
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !372
  %i.h = or i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 4, !tbaa !372
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3277
  %i.k = add nsw i32 %i.j, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = phi i32 [ %i.k, %bb.f ], [ 1, %bb.e ]    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !3277
  %.not25 = icmp eq ptr %2, null
  br i1 %.not25, label %sqlite3ExprDelete.exit28, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.n, align 8, !tbaa !376
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !372
  %i.q = and i32 %i.p, 4194824
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !372
  %i.t = or i32 %i.s, %i.q
  store i32 %i.t, ptr %i.r, align 4, !tbaa !372
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !3277 ; 2 uses
  %.not26 = icmp slt i32 %i.v, %i.l
  br i1 %.not26, label %sqlite3ExprDelete.exit28, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.m, align 8, !tbaa !3277
  br label %sqlite3ExprDelete.exit28

sqlite3ExprDelete.exit28:                         ; preds = %bb.d, %sqlite3ExprDelete.exit, %bb.g, %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3ExprFunction(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !657    ; 2 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !381
  %i.d = add i32 %i.c, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i64 %i.f, 72
  %i.h = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.g), !inline_history !3363 ; 14 uses
  %.not24.i = icmp eq ptr %i.h, null
  br i1 %.not24.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i8 0, i64 72, i1 false)
  store i8 -84, ptr %i.h, align 8, !tbaa !2750
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 50
  store i16 -1, ptr %i.i, align 2, !tbaa !3276
  %.not25.i = icmp eq i32 %i.e, 0
  br i1 %.not25.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !231
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !381  ; 2 uses
  %.not26.i = icmp eq i32 %i.m, 0
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %2, align 8, !tbaa !382
  %i.o = zext i32 %i.m to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 1 %i.n, i64 %i.o, i1 false)
  %.pre.i = load i32, ptr %i.l, align 8, !tbaa !381
  %i.p = zext i32 %.pre.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !231
  %i.s = load i8, ptr %i.j, align 8, !tbaa !231   ; 4 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !231
  %.not28.i = icmp sgt i8 %i.v, -1
  br i1 %.not28.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp eq i8 %i.s, 34
  %i.x = select i1 %i.w, i32 67108992, i32 67108864 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !372
  %i.z = icmp eq i8 %i.s, 91
  %spec.store.select.i.i.i = select i1 %i.z, i8 93, i8 %i.s ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.k ], [ 0, %bb.h ] ; 3 uses
  %.020.i.i.i = phi i32 [ %i.ak, %bb.k ], [ 1, %bb.h ] ; 3 uses
  %i.aa = sext i32 %.020.i.i.i to i64
  %i.ab = getelementptr inbounds i8, ptr %i.j, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !231 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, %spec.store.select.i.i.i
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %.020.i.i.i, 1              ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.j, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !231
  %i.ai = icmp eq i8 %i.ah, %spec.store.select.i.i.i
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %spec.store.select.sink.i.i.i = phi i8 [ %spec.store.select.i.i.i, %bb.j ], [ %i.ac, %bb.i ]
  %.121.i.i.i = phi i32 [ %i.ae, %bb.j ], [ %.020.i.i.i, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i.i
  store i8 %spec.store.select.sink.i.i.i, ptr %i.aj, align 1, !tbaa !231
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.ak = add nsw i32 %.121.i.i.i, 1
  br label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i.i
  store i8 0, ptr %i.al, align 1, !tbaa !231
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  %.not.i26 = icmp eq ptr %1, null
  br i1 %.not.i26, label %sqlite3ExprListDelete.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.a, ptr noundef %1), !inline_history !1010
  br label %sqlite3ExprListDelete.exit

bb.o:                                             ; preds = %bb.l, %bb.g, %bb.d
  %i.am = phi i32 [ %i.x, %bb.l ], [ 0, %bb.g ], [ 0, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 1, ptr %i.an, align 8, !tbaa !3277
  %i.ao = load ptr, ptr %2, align 8, !tbaa !382
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !383
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 %i.au, ptr %i.av, align 4, !tbaa !231
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %1, align 8, !tbaa !27
  %i.ax = load ptr, ptr %0, align 8, !tbaa !657
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !27
  %i.ba = icmp sgt i32 %i.aw, %i.az
  br i1 %i.ba, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !3286
  %.not25 = icmp eq i8 %i.bc, 0
  br i1 %.not25, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1064, ptr noundef nonnull %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !372
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.bd = phi i32 [ %.pre, %bb.r ], [ %i.am, %bb.q ], [ %i.am, %bb.p ], [ %i.am, %bb.o ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %1, ptr %i.be, align 8, !tbaa !231
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.bg = or i32 %i.bd, 8
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !372
  tail call fastcc void @sqlite3ExprSetHeightAndFlags(ptr noundef nonnull %0, ptr noundef nonnull %i.h)
  %i.bh = icmp eq i32 %3, 1
  br i1 %i.bh, label %bb.t, label %sqlite3ExprListDelete.exit

bb.t:                                             ; preds = %bb.s
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !372
  %i.bj = or i32 %i.bi, 4
  store i32 %i.bj, ptr %i.bf, align 4, !tbaa !372
  br label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %bb.n, %bb.m, %bb.s, %bb.t
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprAddFunctionOrderBy(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !657    ; 7 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %sqlite3ParserAddCleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %sqlite3ExprListDelete.exit, label %bb.c

sqlite3ExprListDelete.exit:                       ; preds = %bb.b
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.a, ptr noundef nonnull %2), !inline_history !1010
  br label %sqlite3ParserAddCleanup.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.e, align 8, !tbaa !27
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %sqlite3FaultSim.exit.thread.i, label %sqlite3FaultSim.exit.i

sqlite3FaultSim.exit.i:                           ; preds = %bb.e
  %i.j = tail call i32 %i.i(i32 noundef 300) #58, !inline_history !3441
  %.not.i33 = icmp eq i32 %i.j, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !657   ; 8 uses
  br i1 %.not.i33, label %sqlite3FaultSim.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %sqlite3FaultSim.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 103 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !563
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.g, label %sqlite3ExprListDeleteGeneric.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 104
  %i.o = load i8, ptr %i.n, align 8, !tbaa !564
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.h, label %sqlite3ExprListDeleteGeneric.exit

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.k, align 1, !tbaa !563
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 220
  %i.r = load i32, ptr %i.q, align 4, !tbaa !565
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 400
  store atomic volatile i32 1, ptr %i.t monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.pre, i64 408 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !566
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !566
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 412
  store i16 0, ptr %i.x, align 4, !tbaa !567
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 344 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !309  ; 2 uses
  %.not.i17.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i, label %sqlite3ExprListDeleteGeneric.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.125), !inline_history !3442
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !309 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 7, ptr %i.ab, align 8, !tbaa !310
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !569 ; 2 uses
end_hunk_13
begin_hunk_14_@sqlite3ExprCodeExprList:bb.a
  %i.au = call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef %0, ptr noundef %i.w, i32 noundef %i.at) ; 4 uses
  %.not63 = icmp eq i32 %i.au, %i.at
  br i1 %.not63, label %sqlite3VdbeAddOp2.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not64, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !150
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 103
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !563
  %.not.i.i66 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i66, label %bb.o, label %sqlite3VdbeGetLastOp.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = load i32, ptr %i.p, align 8, !tbaa !189
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !188
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr [32 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -32
  br label %sqlite3VdbeGetLastOp.exit

sqlite3VdbeGetLastOp.exit:                        ; preds = %bb.n, %bb.o
  %.0.i.i67 = phi ptr [ %i.bc, %bb.o ], [ @sqlite3VdbeGetOp.dummy, %bb.n ] ; 5 uses
  %i.bd = load i8, ptr %.0.i.i67, align 8, !tbaa !576
  %i.be = icmp eq i8 %i.bd, 82
  br i1 %i.be, label %bb.p, label %bb.t

bb.p:                                             ; preds = %sqlite3VdbeGetLastOp.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i67, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !572
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i67, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !575
  %i.bj = add i32 %i.bi, 1                        ; 3 uses
  %i.bk = add i32 %i.bj, %i.bg
  %i.bl = icmp eq i32 %i.bk, %i.au
  br i1 %i.bl, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i67, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !574
  %i.bo = add i32 %i.bj, %i.bn
  %i.bp = icmp eq i32 %i.bo, %i.at
  br i1 %i.bp, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i67, i64 2
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !577
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !575
  br label %sqlite3VdbeAddOp2.exit

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %sqlite3VdbeGetLastOp.exit, %bb.m
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !189 ; 3 uses
  %i.bu = load i32, ptr %i.q, align 4, !tbaa !934
  %.not.i.i68 = icmp sgt i32 %i.bu, %i.bt
  br i1 %.not.i.i68, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef range(i32 -1, 511) %i.r, i32 noundef %i.au, i32 noundef %i.at, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.v:                                             ; preds = %bb.t
  %i.bw = add nsw i32 %i.bt, 1
  store i32 %i.bw, ptr %i.p, align 8, !tbaa !189
  %i.bx = load ptr, ptr %i.s, align 8, !tbaa !188
  %i.by = sext i32 %i.bt to i64
  %i.bz = getelementptr inbounds [32 x i8], ptr %i.bx, i64 %i.by ; 6 uses
  store i8 %i.b, ptr %i.bz, align 8, !tbaa !576
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i16 0, ptr %i.ca, align 2, !tbaa !577
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.au, ptr %i.cb, align 4, !tbaa !572
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 %i.at, ptr %i.cc, align 8, !tbaa !574
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 0, ptr %i.ce, align 1, !tbaa !936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cd, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.v, %bb.u, %bb.h, %bb.g, %bb.l, %bb.s, %bb.k, %bb.e
  %.153 = phi i32 [ %i.aa, %bb.e ], [ %.05273, %bb.l ], [ %.05273, %bb.k ], [ %.05273, %bb.s ], [ %.05273, %bb.h ], [ %.05273, %bb.g ], [ %.05273, %bb.u ], [ %.05273, %bb.v ]
  %.1 = phi i32 [ %i.ab, %bb.e ], [ %.074, %bb.l ], [ %.074, %bb.k ], [ %.074, %bb.s ], [ %.074, %bb.h ], [ %.074, %bb.g ], [ %.074, %bb.u ], [ %.074, %bb.v ] ; 2 uses
  %i.cf = add nsw i32 %.153, 1                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05472, i64 24
  %i.ch = icmp slt i32 %i.cf, %.1
  br i1 %i.ch, label %bb.b, label %._crit_edge, !llvm.loop !3889

._crit_edge:                                      ; preds = %sqlite3VdbeAddOp2.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @sqlite3VtabOverloadFunction(ptr noundef %0, ptr nofree noundef nonnull readonly captures(ret: address, provenance) %1, i32 noundef range(i32 1, -2147483648) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store ptr null, ptr %i.a, align 8, !tbaa !459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store ptr null, ptr %i.b, align 8, !tbaa !459
  %i.c = icmp eq ptr %3, null
  br i1 %i.c, label %sqlite3DbMallocZero.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %3, align 8, !tbaa !2750
  %.not = icmp eq i8 %i.d, -88
  br i1 %.not, label %bb.c, label %sqlite3DbMallocZero.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %sqlite3DbMallocZero.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 63
  %i.i = load i8, ptr %i.h, align 1, !tbaa !907
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.e, label %sqlite3DbMallocZero.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.e
  %.09.i.in = phi ptr [ %i.m, %.lr.ph.i ], [ %i.k, %bb.e ]
  %.09.i = load ptr, ptr %.09.i.in, align 8, !tbaa !231, !nonnull !1098, !noundef !1098 ; 3 uses
  %i.l = load ptr, ptr %.09.i, align 8, !tbaa !709
  %.not6.i = icmp eq ptr %i.l, %0
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i, i64 40
  br i1 %.not6.i, label %sqlite3GetVTable.exit, label %.lr.ph.i

sqlite3GetVTable.exit:                            ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !711  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !712
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3890 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %sqlite3DbMallocZero.exit.thread, label %bb.f

bb.f:                                             ; preds = %sqlite3GetVTable.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !227
  %i.v = call i32 %i.r(ptr noundef nonnull %i.o, i32 noundef %2, ptr noundef %i.u, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #58
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %sqlite3DbMallocZero.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !227  ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %sqlite3Strlen30.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #59
  %i.aa = and i64 %i.z, 1073741823
  %i.ab = add nuw nsw i64 %i.aa, 73
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.g, %bb.h
  %.0.i39 = phi i64 [ %i.ab, %bb.h ], [ 73, %bb.g ] ; 3 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %sqlite3Strlen30.exit
  %i.ac = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef %.0.i39), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

bb.j:                                             ; preds = %sqlite3Strlen30.exit
  %i.ad = call fastcc ptr @sqlite3Malloc(i64 noundef %.0.i39), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.ac, %bb.i ], [ %i.ad, %bb.j ] ; 9 uses
  %.not.i40 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i40, label %sqlite3DbMallocZero.exit.thread, label %bb.k

bb.k:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 %.0.i39, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !3891
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !227
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !227 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %sqlite3Strlen30.exit42, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ag) #59
  %i.aj = and i64 %i.ai, 1073741823
  %i.ak = add nuw nsw i64 %i.aj, 1
  br label %sqlite3Strlen30.exit42

sqlite3Strlen30.exit42:                           ; preds = %bb.k, %bb.l
  %.0.i41 = phi i64 [ %i.ak, %bb.l ], [ 1, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i64 %.0.i41, i1 false)
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !459
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store ptr %i.al, ptr %i.am, align 8, !tbaa !1279
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !459
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !853
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !837
  %i.ar = or i32 %i.aq, 16
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !837
  br label %sqlite3DbMallocZero.exit.thread

sqlite3DbMallocZero.exit.thread:                  ; preds = %sqlite3DbMallocRaw.exit.i, %bb.f, %sqlite3GetVTable.exit, %bb.d, %bb.c, %bb.b, %bb.a, %sqlite3Strlen30.exit42
  %.0 = phi ptr [ %1, %bb.c ], [ %1, %bb.a ], [ %1, %bb.b ], [ %1, %bb.d ], [ %1, %sqlite3GetVTable.exit ], [ %1, %bb.f ], [ %.0.i.i, %sqlite3Strlen30.exit42 ], [ %1, %sqlite3DbMallocRaw.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3VdbeAddFunctionCall(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef range(i32 0, 256) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !976  ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !657
  %i.d = sext i32 %4 to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = add nsw i64 %i.e, 48
  %i.g = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.f) ; 10 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !657    ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !837
  %i.l = and i32 %i.k, 16
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %freeEphemeralFunction.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 488
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = icmp ult ptr %5, %i.n
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 472
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !178
  %.not.i28 = icmp ult ptr %5, %i.q
  br i1 %.not.i28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 464 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  store ptr %i.s, ptr %5, align 8, !tbaa !53
  store ptr %5, ptr %i.r, align 8, !tbaa !59
  br label %freeEphemeralFunction.exit

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 480
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103
  %.not20.i = icmp ult ptr %5, %i.u
  br i1 %.not20.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 448 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57
  store ptr %i.w, ptr %5, align 8, !tbaa !53
  store ptr %5, ptr %i.v, align 8, !tbaa !57
  br label %freeEphemeralFunction.exit

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 768
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102
  %.not21.i = icmp eq ptr %i.y, null
  br i1 %.not21.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @measureAllocationSize(ptr noundef nonnull %i.i, ptr noundef nonnull %5)
  br label %freeEphemeralFunction.exit

bb.j:                                             ; preds = %bb.h
  %i.z = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i27 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i27, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.ab(ptr noundef nonnull %i.aa) #58, !inline_history !193
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.l, %bb.k
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %5) #58, !inline_history !194
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ag = sub nsw i64 %i.af, %i.ae
  store i64 %i.ag, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ai = add nsw i64 %i.ah, -1
  store i64 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.aj(ptr noundef nonnull %5) #58, !inline_history !195
  %i.ak = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i4.i.i, label %freeEphemeralFunction.exit, label %bb.m

bb.m:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.al(ptr noundef nonnull %i.ak) #58, !inline_history !196
  br label %freeEphemeralFunction.exit

bb.n:                                             ; preds = %bb.j
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.am(ptr noundef nonnull %5) #58, !inline_history !195
  br label %freeEphemeralFunction.exit

bb.o:                                             ; preds = %bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !296
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %5, ptr %i.an, align 8, !tbaa !234
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr null, ptr %i.ao, align 8, !tbaa !132
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  store i32 0, ptr %i.ap, align 4, !tbaa !27
  %i.aq = trunc i32 %4 to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 42
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !338
  %i.as = getelementptr i8, ptr %i.b, i64 144     ; 4 uses
  %.val = load i32, ptr %i.as, align 8, !tbaa !189 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 %.val, ptr %i.at, align 8, !tbaa !27
  %.not = icmp eq i32 %6, 0
  %i.au = select i1 %.not, i32 68, i32 67         ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !934
  %.not.i.i = icmp sgt i32 %i.aw, %.val
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef range(i32 -1, 511) %i.au, i32 noundef %1, i32 noundef %2, i32 noundef %3), !inline_history !3314
  br label %sqlite3VdbeAddOp3.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ay = add nsw i32 %.val, 1
  store i32 %i.ay, ptr %i.as, align 8, !tbaa !189
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !188
  %i.bb = sext i32 %.val to i64
  %i.bc = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.bb ; 7 uses
  %i.bd = trunc nuw nsw i32 %i.au to i8
  store i8 %i.bd, ptr %i.bc, align 8, !tbaa !576
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 0, ptr %i.be, align 2, !tbaa !577
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %1, ptr %i.bf, align 4, !tbaa !572
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %2, ptr %i.bg, align 8, !tbaa !574
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 %3, ptr %i.bh, align 4, !tbaa !575
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 0, ptr %i.bj, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit.i

sqlite3VdbeAddOp3.exit.i:                         ; preds = %bb.q, %bb.p
  %.0.i.i = phi i32 [ %i.ax, %bb.p ], [ %.val, %bb.q ] ; 2 uses
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !150 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 103
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !563
  %.not.i9.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i9.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %sqlite3VdbeAddOp3.exit.i
  tail call fastcc void @freeP4FuncCtx(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.g)
  br label %sqlite3VdbeAddOp4.exit

bb.s:                                             ; preds = %sqlite3VdbeAddOp3.exit.i
  %i.bn = icmp slt i32 %.0.i.i, 0
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = load i32, ptr %i.as, align 8, !tbaa !189
  %i.bp = add nsw i32 %i.bo, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i10.i = phi i32 [ %i.bp, %bb.t ], [ %.0.i.i, %bb.s ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !188
  %i.bs = sext i32 %.0.i10.i to i64
  %i.bt = getelementptr inbounds [32 x i8], ptr %i.br, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
end_hunk_14
begin_hunk_15_@sqlite3IsShadowTableOf:bb.a
  %.12232.i.i = load ptr, ptr %.12232.i.in.i, align 8, !tbaa !118 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.12232.i.i, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !955
  %i.bb = icmp eq i32 %.0.lcssa.i.i.i, %i.ba
  br i1 %i.bb, label %bb.j, label %sqlite3StrICmp.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.12232.i.i, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !956
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.013.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %i.bo, %bb.n ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.aj, %bb.j ], [ %i.bp, %bb.n ] ; 2 uses
  %i.be = load i8, ptr %.013.i.i.i, align 1, !tbaa !231 ; 3 uses
  %i.bf = load i8, ptr %.012.i.i.i, align 1, !tbaa !231 ; 2 uses
  %i.bg = icmp eq i8 %i.be, %i.bf
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = icmp eq i8 %i.be, 0
  br i1 %i.bh, label %sqlite3HashFind.exit, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bi = zext i8 %i.be to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !231
  %i.bl = zext i8 %i.bf to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !231
  %.not.i27.i.i = icmp eq i8 %i.bk, %i.bn
  br i1 %.not.i27.i.i, label %bb.n, label %sqlite3StrICmp.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 1
  br label %bb.k

sqlite3StrICmp.exit.i.i:                          ; preds = %bb.m, %.lr.ph.i.i
  %i.bq = add i32 %.133.i.i, -1                   ; 2 uses
  %.not26.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not26.i.i, label %sqlite3HashFind.exit, label %.lr.ph.i.i, !llvm.loop !957

sqlite3HashFind.exit:                             ; preds = %sqlite3StrICmp.exit.i.i, %bb.l, %bb.i
  %.0.i.i = phi ptr [ @findElementWithHash.nullElement, %bb.i ], [ %.12232.i.i, %bb.l ], [ @findElementWithHash.nullElement, %sqlite3StrICmp.exit.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !119 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %sqlite3_strnicmp.exit.thread28, label %bb.o

bb.o:                                             ; preds = %sqlite3HashFind.exit
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !958 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !2272
  %i.bw = icmp slt i32 %i.bv, 3
  br i1 %i.bw, label %sqlite3_strnicmp.exit.thread28, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 184
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3821 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %sqlite3_strnicmp.exit.thread28, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.cb = tail call i32 %i.by(ptr noundef nonnull %i.ca) #58
  br label %sqlite3_strnicmp.exit.thread28

sqlite3_strnicmp.exit.thread28:                   ; preds = %sqlite3Strlen30.exit, %bb.p, %bb.o, %sqlite3HashFind.exit, %sqlite3_strnicmp.exit.thread, %sqlite3_strnicmp.exit, %bb.a, %bb.q
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %sqlite3_strnicmp.exit ], [ 0, %sqlite3_strnicmp.exit.thread ], [ 0, %sqlite3HashFind.exit ], [ 0, %bb.o ], [ %i.cb, %bb.q ], [ 0, %bb.p ], [ 0, %sqlite3Strlen30.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @convertToWithoutRowidTable(ptr noundef %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !657    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !976  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 198 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = and i8 %i.e, 6
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.preheader264, label %bb.f

.preheader264:                                    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !914  ; 2 uses
  %i.i = icmp sgt i16 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader264
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.k = phi i16 [ %i.h, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !913
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %i.o = load i16, ptr %i.n, align 2, !tbaa !1329
  %i.p = and i16 %i.o, 1
  %.not163 = icmp eq i16 %i.p, 0
  br i1 %.not163, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8               ; 2 uses
  %i.s = and i8 %i.r, 15
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = or disjoint i8 %i.r, 2
  store i8 %i.u, ptr %i.q, align 8
  %.pre = load i16, ptr %i.g, align 2, !tbaa !914
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.v = phi i16 [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = sext i16 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !3962

._crit_edge:                                      ; preds = %bb.e, %.preheader264
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !802
  %i.aa = or i32 %i.z, 2048
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !802
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !231 ; 2 uses
  %.not164 = icmp eq i32 %i.ac, 0
  br i1 %.not164, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !150
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 103
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !563
  %.not.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i, label %bb.h, label %sqlite3VdbeChangeP3.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !188
  %i.ai = sext i32 %i.ac to i64
  %i.aj = getelementptr inbounds [32 x i8], ptr %i.ah, i64 %i.ai
  br label %sqlite3VdbeChangeP3.exit

sqlite3VdbeChangeP3.exit:                         ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.aj, %bb.h ], [ @sqlite3VdbeGetOp.dummy, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  store i32 2, ptr %i.ak, align 4, !tbaa !575
  br label %bb.i

bb.i:                                             ; preds = %sqlite3VdbeChangeP3.exit, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.am = load i16, ptr %i.al, align 4, !tbaa !966 ; 2 uses
  %i.an = icmp sgt i16 %i.am, -1
  br i1 %i.an, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !913
  %i.aq = zext nneg i16 %i.am to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !917 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %sqlite3TokenInit.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.as) #59
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 1073741823
  br label %sqlite3TokenInit.exit

sqlite3TokenInit.exit:                            ; preds = %bb.j, %bb.k
  %.0.i.i180 = phi i32 [ %i.aw, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %narrow = add nuw nsw i32 %.0.i.i180, 73
  %i.ax = zext nneg i32 %narrow to i64
  %i.ay = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.ax), !inline_history !3363 ; 8 uses
  %.not24.i = icmp eq ptr %i.ay, null
  br i1 %.not24.i, label %sqlite3ExprAlloc.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3TokenInit.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.ay, align 8, !tbaa !2750
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 50
  store i16 -1, ptr %i.az, align 2, !tbaa !3276
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 72 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !231
  %.not26.i = icmp eq i32 %.0.i.i180, 0
  br i1 %.not26.i, label %sqlite3DequoteExpr.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = zext nneg i32 %.0.i.i180 to i64         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 1 %i.as, i64 %i.bc, i1 false)
  br label %sqlite3DequoteExpr.exit.i

sqlite3DequoteExpr.exit.i:                        ; preds = %bb.l, %bb.m
  %i.bd = phi i64 [ %i.bc, %bb.m ], [ 0, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  store i8 0, ptr %i.be, align 1, !tbaa !231
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store i32 1, ptr %i.bf, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit

sqlite3ExprAlloc.exit:                            ; preds = %sqlite3TokenInit.exit, %sqlite3DequoteExpr.exit.i
  %i.bg = load ptr, ptr %0, align 8, !tbaa !657
  %i.bh = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.bg, ptr noundef %i.ay), !inline_history !3280 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %sqlite3ExprAlloc.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !802
  %i.bl = and i32 %i.bk, -129
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !802
  br label %resizeIndexObject.exit

bb.o:                                             ; preds = %sqlite3ExprAlloc.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1092
  %i.bo = icmp ugt i8 %i.bn, 1
  br i1 %i.bo, label %bb.p, label %sqlite3RenameTokenRemap.exit

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !3229
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.08.i = load ptr, ptr %i.br, align 8, !tbaa !3282 ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.r
  %.010.i = phi ptr [ %.0.i, %bb.r ], [ %.08.i, %bb.p ] ; 3 uses
  %i.bs = load ptr, ptr %.010.i, align 8, !tbaa !3283
  %i.bt = icmp eq ptr %i.bs, %i.al
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  store ptr %i.bq, ptr %.010.i, align 8, !tbaa !3283
  br label %sqlite3RenameTokenRemap.exit

bb.r:                                             ; preds = %.lr.ph.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %.0.i = load ptr, ptr %i.bu, align 8, !tbaa !3282 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i, !llvm.loop !3285

sqlite3RenameTokenRemap.exit:                     ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 306
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !3395
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i8 %i.bw, ptr %i.bx, align 8, !tbaa !3279
  store i16 -1, ptr %i.al, align 4, !tbaa !966
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !3394
  %i.ca = zext i8 %i.bz to i32
  tail call fastcc void @sqlite3CreateIndex(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.bh, i32 noundef %i.ca, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 2)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !321
  %.not166 = icmp eq i32 %i.cc, 0
  br i1 %.not166, label %bb.t, label %bb.s

bb.s:                                             ; preds = %sqlite3RenameTokenRemap.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !802
  %i.cf = and i32 %i.ce, -129
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !802
  br label %resizeIndexObject.exit

bb.t:                                             ; preds = %sqlite3RenameTokenRemap.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %.lr.ph.i181, %bb.t
  %.08.i182.in = phi ptr [ %i.ck, %.lr.ph.i181 ], [ %i.cg, %bb.t ]
  %.08.i182 = load ptr, ptr %.08.i182.in, align 8, !tbaa !923, !nonnull !1098, !noundef !1098 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i182, i64 99
  %i.ci = load i16, ptr %i.ch, align 1            ; 2 uses
  %i.cj = and i16 %i.ci, 3
  %.not5.i = icmp eq i16 %i.cj, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i182, i64 40
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i181

bb.u:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i187

.lr.ph.i187:                                      ; preds = %.lr.ph.i187, %bb.u
  %.08.i188.in = phi ptr [ %i.cp, %.lr.ph.i187 ], [ %i.cl, %bb.u ]
  %.08.i188 = load ptr, ptr %.08.i188.in, align 8, !tbaa !923, !nonnull !1098, !noundef !1098 ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i188, i64 99
  %i.cn = load i16, ptr %i.cm, align 1            ; 2 uses
  %i.co = and i16 %i.cn, 3
  %.not5.i189 = icmp eq i16 %i.co, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i188, i64 40
  br i1 %.not5.i189, label %sqlite3PrimaryKeyIndex.exit193, label %.lr.ph.i187

sqlite3PrimaryKeyIndex.exit193:                   ; preds = %.lr.ph.i187
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i188, i64 99
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i188, i64 94 ; 3 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !924 ; 2 uses
  %i.ct = icmp ugt i16 %i.cs, 1
  br i1 %i.ct, label %.lr.ph270, label %._crit_edge271

.lr.ph270:                                        ; preds = %sqlite3PrimaryKeyIndex.exit193
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i188, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i188, i64 64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i188, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i188, i64 96 ; 2 uses
  %.pre321 = load ptr, ptr %i.cu, align 8, !tbaa !927
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph270, %bb.ac
  %i.cy = phi i16 [ %i.cs, %.lr.ph270 ], [ %i.en, %bb.ac ]
  %i.cz = phi ptr [ %.pre321, %.lr.ph270 ], [ %i.eo, %bb.ac ] ; 3 uses
  %indvars.iv302 = phi i64 [ 1, %.lr.ph270 ], [ %indvars.iv.next303, %bb.ac ] ; 6 uses
  %.0146269 = phi i32 [ 1, %.lr.ph270 ], [ %.1147, %bb.ac ] ; 5 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv302
  %i.db = load i16, ptr %i.da, align 2, !tbaa !338
  %i.dc = icmp sgt i32 %.0146269, 0
  br i1 %i.dc, label %.lr.ph.i194, label %.loopexit263

.lr.ph.i194:                                      ; preds = %bb.v
  %wide.trip.count.i = zext nneg i32 %.0146269 to i64
  br label %bb.w

bb.w:                                             ; preds = %sqlite3StrICmp.exit.i, %.lr.ph.i194
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i194 ], [ %indvars.iv.next.i, %sqlite3StrICmp.exit.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.i
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !338
  %i.df = icmp eq i16 %i.de, %i.db
  br i1 %i.df, label %bb.x, label %sqlite3StrICmp.exit.i

bb.x:                                             ; preds = %bb.w
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !2461 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !259
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv302
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !259
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %bb.x
  %.013.i.i = phi ptr [ %i.di, %bb.x ], [ %i.dv, %bb.ab ] ; 2 uses
  %.012.i.i = phi ptr [ %i.dk, %bb.x ], [ %i.dw, %bb.ab ] ; 2 uses
  %i.dl = load i8, ptr %.013.i.i, align 1, !tbaa !231 ; 3 uses
  %i.dm = load i8, ptr %.012.i.i, align 1, !tbaa !231 ; 2 uses
  %i.dn = icmp eq i8 %i.dl, %i.dm
  br i1 %i.dn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.do = icmp eq i8 %i.dl, 0
  br i1 %i.do, label %isDupColumn.exit, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dp = zext i8 %i.dl to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !231
  %i.ds = zext i8 %i.dm to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !231
  %.not.i.i195 = icmp eq i8 %i.dr, %i.du
  br i1 %.not.i.i195, label %bb.ab, label %sqlite3StrICmp.exit.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %bb.y

sqlite3StrICmp.exit.i:                            ; preds = %bb.aa, %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit263, label %bb.w, !llvm.loop !3963

isDupColumn.exit:                                 ; preds = %bb.z
  %i.dx = load i16, ptr %i.cx, align 8, !tbaa !2492
  %i.dy = add i16 %i.dx, -1
  store i16 %i.dy, ptr %i.cx, align 8, !tbaa !2492
  br label %bb.ac

.loopexit263:                                     ; preds = %sqlite3StrICmp.exit.i, %bb.v
  %i.dz = load ptr, ptr %i.cv, align 8, !tbaa !2461 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv302
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !259
  %i.ec = sext i32 %.0146269 to i64               ; 3 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ec
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !259
  %i.ee = load ptr, ptr %i.cw, align 8, !tbaa !3414 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv302
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !231
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 %i.ec
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !231
  %i.ei = load ptr, ptr %i.cu, align 8, !tbaa !927 ; 3 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv302
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !338
end_hunk_15
begin_hunk_16_@createTableStmt:bb.a

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !566
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !566
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i16 0, ptr %i.bh, align 4, !tbaa !567
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !309 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %sqlite3OomFault.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.bj, ptr noundef nonnull @.str.125), !inline_history !628
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !309 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 7, ptr %i.bl, align 8, !tbaa !310
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !569 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i57, %.lr.ph.i ], [ %.018.i, %bb.s ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !321
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !321
  %i.bp = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.bp, align 8, !tbaa !310
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i57 = load ptr, ptr %.0.in.i, align 8, !tbaa !569 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i57, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i, !llvm.loop !570

bb.t:                                             ; preds = %identLength.exit55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.as, ptr noundef nonnull align 1 dereferenceable(13) @.str.825, i64 13, i1 false)
  store i32 13, ptr %i.a, align 4, !tbaa !27
  %i.bq = load ptr, ptr %1, align 8, !tbaa !941
  call fastcc void @identPut(ptr noundef %i.as, ptr noundef %i.a, ptr noundef %i.bq)
  %i.br = load i32, ptr %i.a, align 4, !tbaa !27  ; 2 uses
  %i.bs = add nsw i32 %i.br, 1                    ; 3 uses
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr inbounds i8, ptr %i.as, i64 %i.bt
  store i8 40, ptr %i.bu, align 1, !tbaa !231
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !913 ; 3 uses
  %i.bw = load i16, ptr %i.c, align 2, !tbaa !914
  %i.bx = icmp sgt i16 %i.bw, 0
  br i1 %i.bx, label %.lr.ph70.preheader, label %._crit_edge71

.lr.ph70.preheader:                               ; preds = %bb.t
  %.str.4..str.822 = select i1 %i.an, ptr @.str.4, ptr @.str.822
  %i.by = select i1 %i.an, i64 0, i64 3           ; 2 uses
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = sext i32 %i.bs to i64
  %i.cb = getelementptr inbounds i8, ptr %i.as, i64 %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull align 1 %.str.4..str.822, i64 %i.by, i1 false)
  %i.cc = add nsw i32 %i.bs, %i.bz
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !27
  %i.cd = load ptr, ptr %i.bv, align 8, !tbaa !917
  call fastcc void @identPut(ptr noundef %i.as, ptr noundef %i.a, ptr noundef %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 9
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !2314
  %i.cg = sext i8 %i.cf to i64
  %i.ch = getelementptr [8 x i8], ptr @createTableStmt.azType, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -520
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !259 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %sqlite3Strlen30.exit.peel, label %bb.u

bb.u:                                             ; preds = %.lr.ph70.preheader
  %i.cl = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cj) #59
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = and i32 %i.cm, 1073741823
  br label %sqlite3Strlen30.exit.peel

sqlite3Strlen30.exit.peel:                        ; preds = %bb.u, %.lr.ph70.preheader
  %.0.i59.peel = phi i32 [ %i.cn, %bb.u ], [ 0, %.lr.ph70.preheader ] ; 2 uses
  %i.co = load i32, ptr %i.a, align 4, !tbaa !27  ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.as, i64 %i.cp
  %i.cr = zext nneg i32 %.0.i59.peel to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr align 1 %i.cj, i64 %i.cr, i1 false)
  %i.cs = add nsw i32 %i.co, %.0.i59.peel         ; 2 uses
  %i.ct = load i16, ptr %i.c, align 2, !tbaa !914
  %i.cu = icmp sgt i16 %i.ct, 1
  br i1 %i.cu, label %.lr.ph70.peel.next, label %._crit_edge71

.lr.ph70.peel.next:                               ; preds = %sqlite3Strlen30.exit.peel
  %i.cv = select i1 %i.an, i64 1, i64 4           ; 2 uses
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  br label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70.peel.next, %sqlite3Strlen30.exit
  %i.cx = phi i32 [ %i.dq, %sqlite3Strlen30.exit ], [ %i.cs, %.lr.ph70.peel.next ] ; 2 uses
  %.168.pn = phi ptr [ %.168, %sqlite3Strlen30.exit ], [ %i.bv, %.lr.ph70.peel.next ] ; 2 uses
  %.15066 = phi i32 [ %i.dr, %sqlite3Strlen30.exit ], [ 1, %.lr.ph70.peel.next ]
  %.168 = getelementptr inbounds nuw i8, ptr %.168.pn, i64 16 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.as, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cz, ptr noundef nonnull align 1 dereferenceable(1) %.str.821..str.823, i64 %i.cv, i1 false)
  %i.da = add nsw i32 %i.cx, %i.cw
  store i32 %i.da, ptr %i.a, align 4, !tbaa !27
  %i.db = load ptr, ptr %.168, align 8, !tbaa !917
  call fastcc void @identPut(ptr noundef %i.as, ptr noundef %i.a, ptr noundef %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %.168.pn, i64 25
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !2314
  %i.de = sext i8 %i.dd to i64
  %i.df = getelementptr [8 x i8], ptr @createTableStmt.azType, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 -520
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !259 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %sqlite3Strlen30.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph70
  %i.dj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dh) #59
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 1073741823
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %.lr.ph70, %bb.v
  %.0.i59 = phi i32 [ %i.dl, %bb.v ], [ 0, %.lr.ph70 ] ; 2 uses
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !27  ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.as, i64 %i.dn
  %i.dp = zext nneg i32 %.0.i59 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %i.dh, i64 %i.dp, i1 false)
  %i.dq = add nsw i32 %i.dm, %.0.i59              ; 3 uses
  store i32 %i.dq, ptr %i.a, align 4, !tbaa !27
  %i.dr = add nuw nsw i32 %.15066, 1              ; 2 uses
  %i.ds = load i16, ptr %i.c, align 2, !tbaa !914
  %i.dt = sext i16 %i.ds to i32
  %i.du = icmp slt i32 %i.dr, %i.dt
  br i1 %i.du, label %.lr.ph70, label %._crit_edge71, !llvm.loop !3981

._crit_edge71:                                    ; preds = %sqlite3Strlen30.exit, %sqlite3Strlen30.exit.peel, %bb.t
  %i.dv = phi i32 [ %i.bs, %bb.t ], [ %i.cs, %sqlite3Strlen30.exit.peel ], [ %i.dq, %sqlite3Strlen30.exit ]
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.as, i64 %i.dw
  %i.dy = select i1 %i.an, i64 2, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.dx, ptr noundef nonnull align 1 dereferenceable(2) %.str.133..str.824, i64 %i.dy, i1 false)
  br label %sqlite3OomFault.exit

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i, %bb.s, %bb.r, %bb.o, %bb.n, %._crit_edge71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret ptr %i.as
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3NestedParse(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [136 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.b = load ptr, ptr %0, align 8, !tbaa !657    ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !321
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.h = load i8, ptr %i.g, align 4, !tbaa !1092
  %.not21 = icmp eq i8 %i.h, 0
  br i1 %.not21, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.i = call fastcc ptr @sqlite3VMPrintf(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2) ; 13 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 103
  %i.l = load i8, ptr %i.k, align 1, !tbaa !563
  %.not22 = icmp eq i8 %i.l, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 18, ptr %i.m, align 8, !tbaa !310
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load i32, ptr %i.e, align 4, !tbaa !321
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.e, align 4, !tbaa !321
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 4 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !3286
  %i.r = add i8 %i.q, 1
  store i8 %i.r, ptr %i.p, align 2, !tbaa !3286
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.s, i64 136, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.s, i8 0, i64 136, i1 false)
  %i.t = load i32, ptr %i.c, align 4, !tbaa !703
  %i.u = or i32 %i.t, 2
  store i32 %i.u, ptr %i.c, align 4, !tbaa !703
  %i.v = call fastcc i32 @sqlite3RunParser(ptr noundef nonnull %0, ptr noundef nonnull %i.i) ; 0 uses
  store i32 %i.d, ptr %i.c, align 4, !tbaa !703
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104
  %i.y = icmp ult ptr %i.i, %i.x
  br i1 %i.y, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !178
  %.not22.i = icmp ult ptr %i.i, %i.aa
  br i1 %.not22.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !53
  store ptr %i.i, ptr %i.ab, align 8, !tbaa !59
  br label %sqlite3DbFreeNN.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !103
  %.not23.i = icmp ult ptr %i.i, %i.ae
  br i1 %.not23.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !53
  store ptr %i.i, ptr %i.af, align 8, !tbaa !57
  br label %sqlite3DbFreeNN.exit

bb.l:                                             ; preds = %bb.j, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102
  %.not24.i = icmp eq ptr %i.ai, null
  br i1 %.not24.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call fastcc void @measureAllocationSize(ptr noundef nonnull %i.b, ptr noundef nonnull %i.i)
  br label %sqlite3DbFreeNN.exit

bb.n:                                             ; preds = %bb.l
  %i.aj = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.al(ptr noundef nonnull %i.ak) #58, !inline_history !598
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.p, %bb.o
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.an = call i32 %i.am(ptr noundef nonnull %i.i) #58, !inline_history !599
  %i.ao = sext i32 %i.an to i64
  %i.ap = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.aq = sub nsw i64 %i.ap, %i.ao
  store i64 %i.aq, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.as = add nsw i64 %i.ar, -1
  store i64 %i.as, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.at(ptr noundef nonnull %i.i) #58, !inline_history !600
  %i.au = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i4.i.i, label %sqlite3DbFreeNN.exit, label %bb.q

bb.q:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.av(ptr noundef nonnull %i.au) #58, !inline_history !601
  br label %sqlite3DbFreeNN.exit

bb.r:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.aw(ptr noundef nonnull %i.i) #58, !inline_history !600
  br label %sqlite3DbFreeNN.exit

sqlite3DbFreeNN.exit:                             ; preds = %bb.i, %bb.k, %bb.m, %sqlite3_mutex_enter.exit.i.i, %bb.q, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.s, ptr noundef nonnull align 16 dereferenceable(136) %i.a, i64 136, i1 false)
  %i.ax = load i8, ptr %i.p, align 2, !tbaa !3286
  %i.ay = add i8 %i.ax, -1
  store i8 %i.ay, ptr %i.p, align 2, !tbaa !3286
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.a, %sqlite3DbFreeNN.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ChangeCookie(ptr nofree readonly captures(none) %.0.val.32.val, ptr nofree captures(none) %.16.val, i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr %.0.val.32.val, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = load i32, ptr %i.d, align 8, !tbaa !932
  %i.f = add i32 %i.e, 1                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.16.val, i64 144 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !189  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.16.val, i64 148
  %i.j = load i32, ptr %i.i, align 4, !tbaa !934
  %.not.i = icmp sgt i32 %i.j, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc i32 @growOp3(ptr noundef nonnull %.16.val, i32 noundef 102, i32 noundef %0, i32 noundef 1, i32 noundef %i.f), !inline_history !3022 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.c:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.h, 1
  store i32 %i.l, ptr %i.g, align 8, !tbaa !189
  %i.m = getelementptr inbounds nuw i8, ptr %.16.val, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !188
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.o ; 7 uses
  store i8 102, ptr %i.p, align 8, !tbaa !576
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 0, ptr %i.q, align 2, !tbaa !577
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %0, ptr %i.r, align 4, !tbaa !572
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !574
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %i.f, ptr %i.t, align 4, !tbaa !575
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.v, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3VdbeAddParseSchemaOp(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, i16 noundef zeroext range(i16 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %0, i32 noundef 151, i32 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef %2, i32 noundef -7) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !189  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %sqlite3VdbeChangeP5.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr [32 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -30
  store i16 %3, ptr %i.i, align 2, !tbaa !577
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %bb.a, %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !150    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !64   ; 6 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %sqlite3VdbeChangeP5.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %.promoted = load i32, ptr %i.n, align 4, !tbaa !938 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 2 uses
  %i.q = or i32 %.promoted, 1
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66
  %i.u = getelementptr i8, ptr %i.t, i64 17
  %.val.i.peel = load i8, ptr %i.u, align 1, !tbaa !582
  %.not6.i.peel = icmp eq i8 %.val.i.peel, 0
  br i1 %.not6.i.peel, label %sqlite3VdbeUsesBtree.exit.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.p, align 8, !tbaa !939
  %i.w = or i32 %i.v, 1
  store i32 %i.w, ptr %i.p, align 8, !tbaa !939
  br label %sqlite3VdbeUsesBtree.exit.peel

sqlite3VdbeUsesBtree.exit.peel:                   ; preds = %bb.d, %bb.c
  %exitcond.peel.not = icmp eq i32 %i.l, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %sqlite3VdbeUsesBtree.exit.peel17

sqlite3VdbeUsesBtree.exit.peel17:                 ; preds = %sqlite3VdbeUsesBtree.exit.peel
  %i.x = or i32 %.promoted, 3                     ; 3 uses
  %exitcond.peel19.not = icmp eq i32 %i.l, 2
  br i1 %exitcond.peel19.not, label %._crit_edge, label %.peel.next13

.peel.next13:                                     ; preds = %sqlite3VdbeUsesBtree.exit.peel17
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !65   ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.z = icmp eq i32 %i.l, 3
  br i1 %i.z, label %.epil.preheader, label %.peel.next13.new

.peel.next13.new:                                 ; preds = %.peel.next13
  %i.aa = and i64 %wide.trip.count, 2147483646
  %i.ab = add nsw i64 %i.aa, -4
  br label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeUsesBtree.exit.1, %.peel.next13.new
  %indvars.iv = phi i64 [ 2, %.peel.next13.new ], [ %indvars.iv.next.1, %sqlite3VdbeUsesBtree.exit.1 ] ; 4 uses
  %i.ac = phi i32 [ %i.x, %.peel.next13.new ], [ %i.ao, %sqlite3VdbeUsesBtree.exit.1 ]
  %niter = phi i64 [ 0, %.peel.next13.new ], [ %niter.next.1, %sqlite3VdbeUsesBtree.exit.1 ] ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 1, %i.ad                    ; 2 uses
  %i.af = or i32 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.aj = getelementptr i8, ptr %i.ai, i64 17
  %.val.i = load i8, ptr %i.aj, align 1, !tbaa !582
  %.not6.i = icmp eq i8 %.val.i, 0
  br i1 %.not6.i, label %sqlite3VdbeUsesBtree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !939
  %i.al = or i32 %i.ak, %i.ae
  store i32 %i.al, ptr %i.p, align 8, !tbaa !939
  br label %sqlite3VdbeUsesBtree.exit

sqlite3VdbeUsesBtree.exit:                        ; preds = %bb.e, %bb.f
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.an = shl nuw i32 1, %i.am                    ; 2 uses
  %i.ao = or i32 %i.af, %i.an                     ; 3 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66
  %i.as = getelementptr i8, ptr %i.ar, i64 17
  %.val.i.1 = load i8, ptr %i.as, align 1, !tbaa !582
  %.not6.i.1 = icmp eq i8 %.val.i.1, 0
  br i1 %.not6.i.1, label %sqlite3VdbeUsesBtree.exit.1, label %bb.g

bb.g:                                             ; preds = %sqlite3VdbeUsesBtree.exit
  %i.at = load i32, ptr %i.p, align 8, !tbaa !939
  %i.au = or i32 %i.at, %i.an
  store i32 %i.au, ptr %i.p, align 8, !tbaa !939
  br label %sqlite3VdbeUsesBtree.exit.1

sqlite3VdbeUsesBtree.exit.1:                      ; preds = %bb.g, %sqlite3VdbeUsesBtree.exit
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.ab
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !3982

._crit_edge.loopexit.unr-lcssa:                   ; preds = %sqlite3VdbeUsesBtree.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.peel.next13
  %indvars.iv.epil.init = phi i64 [ 2, %.peel.next13 ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ %i.x, %.peel.next13 ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod26 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.av = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.aw = shl nuw i32 1, %i.av                    ; 2 uses
  %i.ax = or i32 %.epil.init, %i.aw               ; 2 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %indvars.iv.epil.init
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !66
  %i.bb = getelementptr i8, ptr %i.ba, i64 17
  %.val.i.epil = load i8, ptr %i.bb, align 1, !tbaa !582
  %.not6.i.epil = icmp eq i8 %.val.i.epil, 0
  br i1 %.not6.i.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.bc = load i32, ptr %i.p, align 8, !tbaa !939
  %i.bd = or i32 %i.bc, %i.aw
  store i32 %i.bd, ptr %i.p, align 8, !tbaa !939
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %.epil.preheader, %sqlite3VdbeUsesBtree.exit.peel17, %sqlite3VdbeUsesBtree.exit.peel
  %.lcssa = phi i32 [ %i.x, %sqlite3VdbeUsesBtree.exit.peel17 ], [ %i.q, %sqlite3VdbeUsesBtree.exit.peel ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.ax, %bb.h ], [ %i.ax, %.epil.preheader ]
  store i32 %.lcssa, ptr %i.n, align 4, !tbaa !938
  br label %bb.i

end_hunk_16
begin_hunk_17_@isValidSchemaTableName:.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  br label %.preheader76

sqlite3StrICmp.exit:                              ; preds = %bb.i
  %i.bm = icmp eq ptr %2, null
  br i1 %i.bm, label %sqlite3StrICmp.exit.thread, label %.preheader

.preheader:                                       ; preds = %sqlite3StrICmp.exit, %bb.m
  %.013.i9 = phi ptr [ %i.bx, %bb.m ], [ %i.az, %sqlite3StrICmp.exit ] ; 2 uses
  %.012.i10 = phi ptr [ %i.by, %bb.m ], [ getelementptr inbounds nuw (i8, ptr @.str.365, i64 7), %sqlite3StrICmp.exit ] ; 2 uses
  %i.bn = load i8, ptr %.013.i9, align 1, !tbaa !231 ; 3 uses
  %i.bo = load i8, ptr %.012.i10, align 1, !tbaa !231 ; 2 uses
  %i.bp = icmp eq i8 %i.bn, %i.bo
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.bq = icmp eq i8 %i.bn, 0
  br i1 %i.bq, label %sqlite3StrICmp.exit.thread, label %bb.m

bb.l:                                             ; preds = %.preheader
  %i.br = zext i8 %i.bn to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !231
  %i.bu = zext i8 %i.bo to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !231
  %.not.i11 = icmp eq i8 %i.bt, %i.bw
  br i1 %.not.i11, label %bb.m, label %sqlite3StrICmp.exit13

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i9, i64 1
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i10, i64 1
  br label %.preheader

sqlite3StrICmp.exit13:                            ; preds = %bb.l, %bb.p
  %.013.i14 = phi ptr [ %i.cj, %bb.p ], [ %i.az, %bb.l ] ; 2 uses
  %.012.i15 = phi ptr [ %i.ck, %bb.p ], [ getelementptr inbounds nuw (i8, ptr @.str.768, i64 7), %bb.l ] ; 2 uses
  %i.bz = load i8, ptr %.013.i14, align 1, !tbaa !231 ; 3 uses
  %i.ca = load i8, ptr %.012.i15, align 1, !tbaa !231 ; 2 uses
  %i.cb = icmp eq i8 %i.bz, %i.ca
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %sqlite3StrICmp.exit13
  %i.cc = icmp eq i8 %i.bz, 0
  br i1 %i.cc, label %sqlite3StrICmp.exit.thread, label %bb.p

bb.o:                                             ; preds = %sqlite3StrICmp.exit13
  %i.cd = zext i8 %i.bz to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !231
  %i.cg = zext i8 %i.ca to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !231
  %.not.i16 = icmp eq i8 %i.cf, %i.ci
  br i1 %.not.i16, label %bb.p, label %sqlite3StrICmp.exit.thread

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i14, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i15, i64 1
  br label %sqlite3StrICmp.exit13

.preheader78:                                     ; preds = %sqlite3_strnicmp.exit.thread, %bb.s
  %.013.i19 = phi ptr [ %i.cv, %bb.s ], [ %i.az, %sqlite3_strnicmp.exit.thread ] ; 2 uses
  %.012.i20 = phi ptr [ %i.cw, %bb.s ], [ getelementptr inbounds nuw (i8, ptr @.str.768, i64 7), %sqlite3_strnicmp.exit.thread ] ; 2 uses
  %i.cl = load i8, ptr %.013.i19, align 1, !tbaa !231 ; 3 uses
  %i.cm = load i8, ptr %.012.i20, align 1, !tbaa !231 ; 2 uses
  %i.cn = icmp eq i8 %i.cl, %i.cm
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader78
  %i.co = icmp eq i8 %i.cl, 0
  br i1 %i.co, label %sqlite3StrICmp.exit.thread, label %bb.s

bb.r:                                             ; preds = %.preheader78
  %i.cp = zext i8 %i.cl to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !231
  %i.cs = zext i8 %i.cm to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !231
  %.not.i21 = icmp eq i8 %i.cr, %i.cu
  br i1 %.not.i21, label %bb.s, label %sqlite3StrICmp.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i19, i64 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i20, i64 1
  br label %.preheader78

sqlite3StrICmp.exit.thread:                       ; preds = %bb.r, %bb.q, %bb.h, %bb.k, %bb.o, %bb.n, %sqlite3StrICmp.exit, %sqlite3_strnicmp.exit
  %.0 = phi i32 [ 1, %bb.k ], [ 0, %sqlite3_strnicmp.exit ], [ 1, %bb.h ], [ 0, %sqlite3StrICmp.exit ], [ 1, %bb.n ], [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %bb.q ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @resolveAlias(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.Walker, align 8             ; 7 uses
  %6 = alloca %struct.Expr, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3848
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %sqlite3ExprDelete.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [24 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3229 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !657    ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3ExprDup.exit.thread, label %sqlite3ExprDup.exit

sqlite3ExprDup.exit:                              ; preds = %bb.b
  %i.h = tail call fastcc ptr @exprDup(ptr noundef %i.g, ptr noundef readonly %i.f, i32 noundef 0, ptr noundef null), !inline_history !3386 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 103
  %i.j = load i8, ptr %i.i, align 1, !tbaa !563
  %.not25 = icmp eq i8 %i.j, 0
  br i1 %.not25, label %bb.e, label %bb.c

sqlite3ExprDup.exit.thread:                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 103
  %i.l = load i8, ptr %i.k, align 1, !tbaa !563
  %.not2530 = icmp eq i8 %i.l, 0
  br i1 %.not2530, label %.thread32, label %sqlite3ExprDelete.exit

bb.c:                                             ; preds = %sqlite3ExprDup.exit
  %.not.i28 = icmp eq ptr %i.h, null
  br i1 %.not.i28, label %sqlite3ExprDelete.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.g, ptr noundef %i.h), !inline_history !148
  br label %sqlite3ExprDelete.exit

bb.e:                                             ; preds = %sqlite3ExprDup.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %bb.f, label %incrAggFunctionDepth.exit

.thread32:                                        ; preds = %sqlite3ExprDup.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.n = icmp sgt i32 %4, 0
  br i1 %i.n, label %.thread33, label %incrAggFunctionDepth.exit

.thread33:                                        ; preds = %.thread32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  br label %sqlite3WalkExpr.exit.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @incrAggDepth, ptr %i.o, align 8, !tbaa !3292
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %4, ptr %i.p, align 8, !tbaa !231
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %sqlite3WalkExpr.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %5, ptr noundef nonnull %i.h) #61, !inline_history !3663 ; 0 uses
  br label %sqlite3WalkExpr.exit.i

sqlite3WalkExpr.exit.i:                           ; preds = %.thread33, %bb.g, %bb.f
  %i.r = phi ptr [ null, %.thread33 ], [ %i.h, %bb.g ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %incrAggFunctionDepth.exit

incrAggFunctionDepth.exit:                        ; preds = %.thread32, %bb.e, %sqlite3WalkExpr.exit.i
  %i.s = phi ptr [ null, %.thread32 ], [ %i.h, %bb.e ], [ %i.r, %sqlite3WalkExpr.exit.i ] ; 5 uses
  %i.t = load i8, ptr %3, align 8, !tbaa !2750
  %i.u = icmp eq i8 %i.t, 114
  br i1 %i.u, label %bb.h, label %sqlite3ExprAddCollateString.exit

bb.h:                                             ; preds = %incrAggFunctionDepth.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !231  ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %sqlite3ExprAddCollateString.exit, label %sqlite3TokenInit.exit.i

sqlite3TokenInit.exit.i:                          ; preds = %bb.h
  %i.y = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.w) #59, !inline_history !4045
  %i.z = and i64 %i.y, 1073741823                 ; 4 uses
  %.not.i.i29 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i29, label %sqlite3ExprAddCollateString.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3TokenInit.exit.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !657
  %i.ab = add nuw nsw i64 %i.z, 73
  %i.ac = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.aa, i64 noundef %i.ab), !inline_history !4046 ; 10 uses
  %.not24.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not24.i.i.i, label %sqlite3ExprAddCollateString.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i8 0, i64 72, i1 false)
  store i8 114, ptr %i.ac, align 8, !tbaa !2750
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 50
  store i16 -1, ptr %i.ad, align 2, !tbaa !3276
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 1 %i.w, i64 %i.z, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.z
  store i8 0, ptr %i.ag, align 1, !tbaa !231
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 1, ptr %i.ah, align 8, !tbaa !3277
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.s, ptr %i.ai, align 8, !tbaa !376
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 8704, ptr %i.aj, align 4, !tbaa !372
  br label %sqlite3ExprAddCollateString.exit

sqlite3ExprAddCollateString.exit:                 ; preds = %bb.j, %bb.i, %sqlite3TokenInit.exit.i, %bb.h, %incrAggFunctionDepth.exit
  %.0 = phi ptr [ %i.s, %incrAggFunctionDepth.exit ], [ %i.s, %sqlite3TokenInit.exit.i ], [ %i.ac, %bb.j ], [ %i.s, %bb.i ], [ %i.s, %bb.h ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %.0, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %6, i64 72, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !372
  %i.am = and i32 %i.al, 16777216
  %.not26 = icmp eq i32 %i.am, 0
  br i1 %.not26, label %bb.m, label %bb.k

bb.k:                                             ; preds = %sqlite3ExprAddCollateString.exit
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !231 ; 2 uses
  %.not27 = icmp eq ptr %i.ao, null
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  store ptr %3, ptr %i.ap, align 8, !tbaa !3456
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %sqlite3ExprAddCollateString.exit
  %i.aq = call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %.0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %sqlite3ExprDup.exit.thread, %bb.d, %bb.c, %bb.m, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3ExprAddCollateString(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %sqlite3ExprAddCollateToken.exit, label %sqlite3TokenInit.exit

sqlite3TokenInit.exit:                            ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #59
  %i.c = and i64 %i.b, 1073741823                 ; 4 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %sqlite3ExprAddCollateToken.exit, label %bb.b

bb.b:                                             ; preds = %sqlite3TokenInit.exit
  %i.d = load ptr, ptr %0, align 8, !tbaa !657
  %i.e = add nuw nsw i64 %i.c, 73
  %i.f = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.d, i64 noundef %i.e), !inline_history !4047 ; 10 uses
  %.not24.i.i = icmp eq ptr %i.f, null
  br i1 %.not24.i.i, label %sqlite3ExprAddCollateToken.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store i8 114, ptr %i.f, align 8, !tbaa !2750
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  store i16 -1, ptr %i.g, align 2, !tbaa !3276
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store i8 0, ptr %i.j, align 1, !tbaa !231
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 1, ptr %i.k, align 8, !tbaa !3277
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !376
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 8704, ptr %i.m, align 4, !tbaa !372
  br label %sqlite3ExprAddCollateToken.exit

sqlite3ExprAddCollateToken.exit:                  ; preds = %bb.a, %sqlite3TokenInit.exit, %bb.b, %bb.c
  %.1.i = phi ptr [ %1, %sqlite3TokenInit.exit ], [ %i.f, %bb.c ], [ %1, %bb.b ], [ %1, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @incrAggDepth(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #20 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !2750
  %i.b = icmp eq i8 %i.a, -87
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !3234
  %i.g = trunc i32 %i.d to i8
  %i.h = add i8 %i.f, %i.g
  store i8 %i.h, ptr %i.e, align 2, !tbaa !3234
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3AuthReadCol(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !657    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = sext i32 %3 to i64
  %i.e = getelementptr inbounds [32 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !505  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 197
  %i.h = load i8, ptr %i.g, align 1, !tbaa !547
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1016
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1017
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3337
  %i.o = tail call i32 %i.j(ptr noundef %i.l, i32 noundef 20, ptr noundef %1, ptr noundef %2, ptr noundef %i.f, ptr noundef %i.n) #58 ; 4 uses
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.656, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !64
  %i.t = icmp sgt i32 %i.s, 2
  %i.u = icmp ne i32 %3, 0
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.770, ptr noundef %i.f, ptr noundef %i.q)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.v, %bb.d ], [ %i.q, %bb.c ]
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.771, ptr noundef %.0)
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.w = and i32 %i.o, -3
  %or.cond3.not = icmp eq i32 %i.w, 0
  br i1 %or.cond3.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.714), !inline_history !4048
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.e
  %.sink = phi i32 [ 23, %bb.e ], [ 1, %bb.g ]
  %.027.ph = phi i32 [ 1, %bb.e ], [ %i.o, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sink, ptr %i.x, align 8, !tbaa !310
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ %i.o, %bb.f ], [ %.027.ph, %.sink.split ]
  ret i32 %.027
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @exprRefToSrcList(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #25 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !2750
  switch i8 %i.a, label %.critedge.thread [
    i8 -88, label %bb.b
    i8 -86, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4015 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3389
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.e, !llvm.loop !4049

.preheader:                                       ; preds = %bb.d, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !4050 ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph33, label %.critedge.thread.sink.split

.lr.ph33:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !4018
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3389
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3355
  %i.t = icmp eq i32 %i.i, %i.s
  br i1 %i.t, label %.critedge.thread.sink.split, label %bb.d

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, %i.k
  br i1 %exitcond38.not, label %.critedge.thread.sink.split, label %bb.g, !llvm.loop !4051

bb.g:                                             ; preds = %.lr.ph33, %bb.f
  %indvars.iv35 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next36, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv35
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27
  %.not29 = icmp eq i32 %i.v, %i.p
  br i1 %.not29, label %.critedge.thread, label %bb.f

.critedge.thread.sink.split:                      ; preds = %bb.e, %bb.f, %.preheader
  %.sink43 = phi i16 [ 2, %bb.f ], [ 2, %.preheader ], [ 1, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.x = load i16, ptr %i.w, align 4, !tbaa !3289
  %i.y = or i16 %i.x, %.sink43
  store i16 %i.y, ptr %i.w, align 4, !tbaa !3289
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.g, %.critedge.thread.sink.split, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @selectRefEnter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2765 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !4050 ; 2 uses
  %i.i = sext i32 %i.c to i64
  %i.j = add nsw i64 %i.h, %i.i                   ; 2 uses
  store i64 %i.j, ptr %i.g, align 8, !tbaa !4050
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !4013 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !4018 ; 7 uses
  %i.n = shl i64 %i.j, 2                          ; 4 uses
  %i.o = icmp eq ptr %i.m, null
end_hunk_17
begin_hunk_18_@selectExpander:bb.a
bb.gi:                                            ; preds = %sqlite3ExprListAppend.exit.thread, %sqlite3ExprListAppend.exit
  %.0.i482631 = phi ptr [ %.0326842, %sqlite3ExprListAppend.exit.thread ], [ %.0.i482, %sqlite3ExprListAppend.exit ] ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.adx, i64 8 ; 2 uses
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !3232
  %i.aev = getelementptr inbounds nuw i8, ptr %.0.i482631, i64 8
  %i.aew = load i32, ptr %.0.i482631, align 8, !tbaa !27
  %i.aex = sext i32 %i.aew to i64
  %i.aey = getelementptr [24 x i8], ptr %i.aev, i64 %i.aex ; 2 uses
  %i.aez = getelementptr i8, ptr %i.aey, i64 -16
  store ptr %i.aeu, ptr %i.aez, align 8, !tbaa !3232
  %i.afa = getelementptr inbounds nuw i8, ptr %i.adx, i64 17
  %i.afb = load i16, ptr %i.afa, align 1
  %i.afc = and i16 %i.afb, 3
  %i.afd = getelementptr i8, ptr %i.aey, i64 -7   ; 2 uses
  %i.afe = load i16, ptr %i.afd, align 1
  %i.aff = and i16 %i.afe, -4
  %i.afg = or disjoint i16 %i.aff, %i.afc
  store i16 %i.afg, ptr %i.afd, align 1
  store ptr null, ptr %i.aet, align 8, !tbaa !3232
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %sqlite3ExprListAppend.exit
  %.0.i482632 = phi ptr [ %.0.i482631, %bb.gi ], [ null, %sqlite3ExprListAppend.exit ]
  store ptr null, ptr %i.adx, align 8, !tbaa !3229
  br label %bb.ll

bb.gk:                                            ; preds = %bb.gd
  %i.afh = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !376
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !231
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gc, %bb.gk
  %.0319 = phi ptr [ %i.afk, %bb.gk ], [ null, %bb.gc ] ; 6 uses
  %.pn = phi ptr [ %i.aed, %bb.gk ], [ %i.ady, %bb.gc ]
  %.0318.in = getelementptr inbounds nuw i8, ptr %.pn, i64 52
  %.0318 = load i32, ptr %.0318.in, align 4, !tbaa !231 ; 2 uses
  %i.afl = load i32, ptr %i.r, align 8, !tbaa !27 ; 2 uses
  %i.afm = icmp sgt i32 %i.afl, 0
  br i1 %i.afm, label %.lr.ph834, label %sqlite3RowidAlias.exit.thread1120

.lr.ph834:                                        ; preds = %bb.gl
  %.not379 = icmp eq ptr %.0319, null             ; 4 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  br label %bb.gm

bb.gm:                                            ; preds = %.lr.ph834, %sqlite3StrICmp.exit
  %i.afo = phi i32 [ %i.afl, %.lr.ph834 ], [ %i.axl, %sqlite3StrICmp.exit ]
  %.0320832 = phi i32 [ 0, %.lr.ph834 ], [ %.4324.ph, %sqlite3StrICmp.exit ] ; 4 uses
  %.1327831 = phi ptr [ %.0326842, %.lr.ph834 ], [ %.7.ph, %sqlite3StrICmp.exit ] ; 6 uses
  %.1343829 = phi ptr [ %i.ag, %.lr.ph834 ], [ %i.axk, %sqlite3StrICmp.exit ] ; 10 uses
  %.1348827 = phi i32 [ 0, %.lr.ph834 ], [ %.pre-phi, %sqlite3StrICmp.exit ] ; 4 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.1343829, i64 16
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !2745 ; 8 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.1343829, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !386 ; 2 uses
  %i.aft = icmp eq ptr %i.afs, null
  br i1 %i.aft, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.afu = load ptr, ptr %i.afq, align 8, !tbaa !941
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.0315 = phi ptr [ %i.afu, %bb.gn ], [ %i.afs, %bb.gm ] ; 6 uses
  %i.afv = load i8, ptr %i.h, align 1, !tbaa !563
  %.not377 = icmp eq i8 %i.afv, 0
  br i1 %.not377, label %bb.gp, label %sqlite3RowidAlias.exit

bb.gp:                                            ; preds = %bb.go
  %i.afw = getelementptr inbounds nuw i8, ptr %.1343829, i64 24
  %i.afx = getelementptr inbounds nuw i8, ptr %.1343829, i64 25 ; 3 uses
  %i.afy = load i16, ptr %i.afx, align 1
  %i.afz = and i16 %i.afy, 16384
  %.not378 = icmp eq i16 %i.afz, 0
  br i1 %.not378, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aga = getelementptr inbounds nuw i8, ptr %.1343829, i64 64
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !231
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !390
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 24
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !2764
  br label %sqlite3SchemaToIndex.exit.thread

bb.gr:                                            ; preds = %bb.gp
  br i1 %.not379, label %sqlite3StrICmp.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.gr, %bb.gu
  %.013.i483 = phi ptr [ %i.agp, %bb.gu ], [ %.0319, %bb.gr ] ; 2 uses
  %.012.i = phi ptr [ %i.agq, %bb.gu ], [ %.0315, %bb.gr ] ; 2 uses
  %i.agf = load i8, ptr %.013.i483, align 1, !tbaa !231 ; 3 uses
  %i.agg = load i8, ptr %.012.i, align 1, !tbaa !231 ; 2 uses
  %i.agh = icmp eq i8 %i.agf, %i.agg
  br i1 %i.agh, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %.preheader
  %i.agi = icmp eq i8 %i.agf, 0
  br i1 %i.agi, label %sqlite3StrICmp.exit.thread, label %bb.gu

bb.gt:                                            ; preds = %.preheader
  %i.agj = zext i8 %i.agf to i64
  %i.agk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !231
  %i.agm = zext i8 %i.agg to i64
  %i.agn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agm
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !231
  %.not.i484 = icmp eq i8 %i.agl, %i.ago
  br i1 %.not.i484, label %bb.gu, label %sqlite3StrICmp.exit.loopexit855

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.agp = getelementptr inbounds nuw i8, ptr %.013.i483, i64 1
  %i.agq = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  br label %.preheader

sqlite3StrICmp.exit.thread:                       ; preds = %bb.gs, %bb.gr
  %i.agr = getelementptr inbounds nuw i8, ptr %i.afq, i64 96
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !908 ; 2 uses
  %.not.i486 = icmp eq ptr %i.ags, null
  br i1 %.not.i486, label %sqlite3SchemaToIndex.exit.thread, label %.preheader.i487

.preheader.i487:                                  ; preds = %sqlite3StrICmp.exit.thread
  %i.agt = load ptr, ptr %i.adt, align 8, !tbaa !65
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gv, %.preheader.i487
  %indvars.iv.i488 = phi i64 [ %indvars.iv.next.i489, %bb.gv ], [ 0, %.preheader.i487 ] ; 2 uses
  %i.agu = getelementptr inbounds nuw [32 x i8], ptr %i.agt, i64 %indvars.iv.i488 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 24
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !105
  %i.agx = icmp eq ptr %i.agw, %i.ags
  %indvars.iv.next.i489 = add nuw nsw i64 %indvars.iv.i488, 1
  br i1 %i.agx, label %sqlite3SchemaToIndex.exit, label %bb.gv

sqlite3SchemaToIndex.exit:                        ; preds = %bb.gv
  %i.agy = load ptr, ptr %i.agu, align 8, !tbaa !505
  br label %sqlite3SchemaToIndex.exit.thread

sqlite3SchemaToIndex.exit.thread:                 ; preds = %sqlite3StrICmp.exit.thread, %sqlite3SchemaToIndex.exit, %bb.gq
  %.0316 = phi ptr [ %i.age, %bb.gq ], [ null, %sqlite3StrICmp.exit.thread ], [ null, %sqlite3SchemaToIndex.exit ] ; 4 uses
  %.0314 = phi ptr [ null, %bb.gq ], [ @.str.757, %sqlite3StrICmp.exit.thread ], [ %i.agy, %sqlite3SchemaToIndex.exit ] ; 4 uses
  %i.agz = add nuw nsw i32 %.1348827, 1           ; 4 uses
  %i.aha = icmp slt i32 %i.agz, %i.afo
  br i1 %i.aha, label %bb.gw, label %.loopexit

bb.gw:                                            ; preds = %sqlite3SchemaToIndex.exit.thread
  %i.ahb = getelementptr inbounds nuw i8, ptr %.1343829, i64 97
  %i.ahc = load i16, ptr %i.ahb, align 1
  %i.ahd = and i16 %i.ahc, 2048
  %.not381 = icmp eq i16 %i.ahd, 0
  %or.cond414 = select i1 %.not381, i1 true, i1 %.not382
  br i1 %or.cond414, label %.loopexit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ahe = getelementptr inbounds nuw i8, ptr %.1343829, i64 128
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !231 ; 5 uses
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !27
  %i.ahh = icmp sgt i32 %i.ahg, 0
  br i1 %i.ahh, label %.lr.ph815, label %.loopexit

.lr.ph815:                                        ; preds = %bb.gx
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  br label %bb.gy

bb.gy:                                            ; preds = %.lr.ph815, %bb.hh
  %indvars.iv976 = phi i64 [ 0, %.lr.ph815 ], [ %indvars.iv.next977, %bb.hh ] ; 2 uses
  %.2328812 = phi ptr [ %.1327831, %.lr.ph815 ], [ %.0.i495640, %bb.hh ] ; 7 uses
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.ahi, i64 %indvars.iv976
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !2747 ; 4 uses
  %i.ahl = icmp eq ptr %i.ahk, null
  br i1 %i.ahl, label %sqlite3Strlen30.exit.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ahm = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ahk) #59, !inline_history !4101
  %i.ahn = trunc i64 %i.ahm to i32
  %i.aho = and i32 %i.ahn, 1073741823
  br label %sqlite3Strlen30.exit.i

sqlite3Strlen30.exit.i:                           ; preds = %bb.gz, %bb.gy
  %.0.i.i491 = phi i32 [ %i.aho, %bb.gz ], [ 0, %bb.gy ] ; 3 uses
  %narrow.i = add nuw nsw i32 %.0.i.i491, 73
  %i.ahp = zext nneg i32 %narrow.i to i64
  %i.ahq = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.d, i64 noundef %i.ahp), !inline_history !3275 ; 11 uses
  %.not24.i.i492 = icmp eq ptr %i.ahq, null
  br i1 %.not24.i.i492, label %sqlite3ExprSetErrorOffset.exit, label %bb.ha

bb.ha:                                            ; preds = %sqlite3Strlen30.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ahq, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.ahq, align 8, !tbaa !2750
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 50
  store i16 -1, ptr %i.ahr, align 2, !tbaa !3276
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahq, i64 72 ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  store ptr %i.ahs, ptr %i.aht, align 8, !tbaa !231
  %.not26.i.i = icmp eq i32 %.0.i.i491, 0
  br i1 %.not26.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ahu = zext nneg i32 %.0.i.i491 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ahs, ptr readonly align 1 %i.ahk, i64 %i.ahu, i1 false)
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ha, %bb.hb
  %i.ahv = phi i64 [ %i.ahu, %bb.hb ], [ 0, %bb.ha ]
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %i.ahv
  store i8 0, ptr %i.ahw, align 1, !tbaa !231
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahq, i64 40
  store i32 1, ptr %i.ahx, align 8, !tbaa !3277
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahq, i64 52
  store i32 %.0318, ptr %i.ahy, align 4, !tbaa !231
  br label %sqlite3ExprSetErrorOffset.exit

sqlite3ExprSetErrorOffset.exit:                   ; preds = %sqlite3Strlen30.exit.i, %bb.hc
  %i.ahz = icmp eq ptr %.2328812, null
  br i1 %i.ahz, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %sqlite3ExprSetErrorOffset.exit
  %i.aia = load ptr, ptr %i.c, align 8, !tbaa !657
  %i.aib = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.aia, ptr noundef %i.ahq), !inline_history !3280
  br label %sqlite3ExprListAppend.exit496

bb.he:                                            ; preds = %sqlite3ExprSetErrorOffset.exit
  %i.aic = getelementptr inbounds nuw i8, ptr %.2328812, i64 4
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !27
  %i.aie = load i32, ptr %.2328812, align 8, !tbaa !27 ; 3 uses
  %.not.i494 = icmp sgt i32 %i.aid, %i.aie
  br i1 %.not.i494, label %sqlite3ExprListAppend.exit496.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aif = load ptr, ptr %i.c, align 8, !tbaa !657
  %i.aig = call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.aif, ptr noundef %.2328812, ptr noundef %i.ahq), !inline_history !3280
  br label %sqlite3ExprListAppend.exit496

sqlite3ExprListAppend.exit496.thread:             ; preds = %bb.he
  %i.aih = add nsw i32 %i.aie, 1
  %i.aii = getelementptr inbounds nuw i8, ptr %.2328812, i64 8
  store i32 %i.aih, ptr %.2328812, align 8, !tbaa !27
  %i.aij = sext i32 %i.aie to i64
  %i.aik = getelementptr inbounds [24 x i8], ptr %i.aii, i64 %i.aij ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ail, i8 0, i64 16, i1 false)
  store ptr %i.ahq, ptr %i.aik, align 8, !tbaa !3229
  br label %bb.hg

sqlite3ExprListAppend.exit496:                    ; preds = %bb.hd, %bb.hf
  %.0.i495 = phi ptr [ %i.aib, %bb.hd ], [ %i.aig, %bb.hf ] ; 2 uses
  %.not395 = icmp eq ptr %.0.i495, null
  br i1 %.not395, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %sqlite3ExprListAppend.exit496.thread, %sqlite3ExprListAppend.exit496
  %.0.i495639 = phi ptr [ %.2328812, %sqlite3ExprListAppend.exit496.thread ], [ %.0.i495, %sqlite3ExprListAppend.exit496 ] ; 3 uses
  %i.aim = load i32, ptr %.0.i495639, align 8, !tbaa !27
  %i.ain = sext i32 %i.aim to i64
  %i.aio = getelementptr [24 x i8], ptr %.0.i495639, i64 %i.ain ; 2 uses
  %i.aip = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.d, ptr noundef nonnull @.str.783, ptr noundef %i.ahk)
  %i.aiq = getelementptr i8, ptr %i.aio, i64 -8
  store ptr %i.aip, ptr %i.aiq, align 8, !tbaa !3232
  %i.air = getelementptr inbounds nuw i8, ptr %i.aio, i64 1 ; 2 uses
  %i.ais = load i16, ptr %i.air, align 1
  %i.ait = and i16 %i.ais, -132
  %i.aiu = or disjoint i16 %i.ait, 130
  store i16 %i.aiu, ptr %i.air, align 1
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %sqlite3ExprListAppend.exit496
  %.0.i495640 = phi ptr [ %.0.i495639, %bb.hg ], [ null, %sqlite3ExprListAppend.exit496 ] ; 2 uses
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 1 ; 2 uses
  %i.aiv = load i32, ptr %i.ahf, align 8, !tbaa !27
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = icmp slt i64 %indvars.iv.next977, %i.aiw
  br i1 %i.aix, label %bb.gy, label %.loopexit, !llvm.loop !4102

.loopexit:                                        ; preds = %bb.hh, %bb.gx, %sqlite3SchemaToIndex.exit.thread, %bb.gw
  %.3329 = phi ptr [ %.1327831, %sqlite3SchemaToIndex.exit.thread ], [ %.1327831, %bb.gw ], [ %.1327831, %bb.gx ], [ %.0.i495640, %bb.hh ] ; 2 uses
  %.0313 = phi ptr [ null, %sqlite3SchemaToIndex.exit.thread ], [ null, %bb.gw ], [ %i.ahf, %bb.gx ], [ %i.ahf, %bb.hh ] ; 3 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.afq, i64 54 ; 4 uses
  %i.aiz = load i16, ptr %i.aiy, align 2, !tbaa !914
  %i.aja = sext i16 %i.aiz to i32
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.afq, i64 48
  %i.ajc = load i32, ptr %i.ajb, align 8, !tbaa !802
  %i.ajd = and i32 %i.ajc, 512
  %i.aje = icmp ne i32 %i.ajd, 0
  %or.cond415 = select i1 %i.aje, i1 true, i1 %.not382
  %not.or.cond415 = xor i1 %or.cond415, true
  %i.ajf = zext i1 %not.or.cond415 to i32
  %.0317 = add nsw i32 %i.ajf, %i.aja             ; 2 uses
  %i.ajg = icmp sgt i32 %.0317, 0
  br i1 %i.ajg, label %.lr.ph822, label %sqlite3StrICmp.exit

.lr.ph822:                                        ; preds = %.loopexit
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.afq, i64 8 ; 2 uses
  %.not668 = icmp eq ptr %.0316, null             ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.afq, i64 107
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.afq, i64 109
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.afq, i64 116
  %i.ajl = icmp ne i32 %.1348827, 0
  %or.cond6 = select i1 %i.ajl, i1 %.not379, i1 false
  %or.cond419 = select i1 %or.cond6, i1 %.not382, i1 false
  %i.ajm = getelementptr inbounds nuw i8, ptr %.1343829, i64 56 ; 2 uses
  %i.ajn = xor i32 %.1348827, -1
  %i.ajo = icmp eq ptr %.0315, null
  %.not389 = icmp eq ptr %.0314, null
  %.not393 = icmp eq ptr %.0313, null
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0313, i64 8
  %wide.trip.count982 = zext nneg i32 %.0317 to i64
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph822, %sqlite3MatchEName.exit.thread
  %indvars.iv979 = phi i64 [ 0, %.lr.ph822 ], [ %indvars.iv.next980, %sqlite3MatchEName.exit.thread ] ; 9 uses
  %.1321820 = phi i32 [ %.0320832, %.lr.ph822 ], [ %.2322.ph, %sqlite3MatchEName.exit.thread ] ; 8 uses
  %.4330819 = phi ptr [ %.3329, %.lr.ph822 ], [ %.5331.ph, %sqlite3MatchEName.exit.thread ] ; 16 uses
  %i.ajq = load i16, ptr %i.aiy, align 2, !tbaa !914 ; 2 uses
  %i.ajr = sext i16 %i.ajq to i64
  %i.ajs = icmp eq i64 %indvars.iv979, %i.ajr
  %i.ajt = load ptr, ptr %i.ajh, align 8, !tbaa !913 ; 7 uses
  br i1 %i.ajs, label %bb.hj, label %bb.io

bb.hj:                                            ; preds = %bb.hi
  %i.aju = call i16 @llvm.smax.i16(i16 %i.ajq, i16 1)
  %wide.trip.count.i.i498 = zext nneg i16 %i.aju to i64 ; 3 uses
  %i.ajv = load i8, ptr %i.aji, align 1, !tbaa !231
  %i.ajw = zext i8 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw [16 x i8], ptr %i.ajt, i64 %i.ajw ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 11
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !915
  %i.aka = icmp eq i8 %i.ajz, -29
  br i1 %i.aka, label %bb.hk, label %sqlite3StrICmp.exit.i.i499.preheader

sqlite3StrICmp.exit.i.i499.preheader:             ; preds = %bb.hn, %bb.hj
  br label %sqlite3StrICmp.exit.i.i499

bb.hk:                                            ; preds = %bb.hj
  %i.akb = load ptr, ptr %i.ajx, align 8, !tbaa !917
  br label %bb.hl

bb.hl:                                            ; preds = %bb.ho, %bb.hk
  %.013.i.i.i507 = phi ptr [ %i.akb, %bb.hk ], [ %i.akm, %bb.ho ] ; 2 uses
  %.012.i24.i.i508 = phi ptr [ @.str.804, %bb.hk ], [ %i.akn, %bb.ho ] ; 2 uses
  %i.akc = load i8, ptr %.013.i.i.i507, align 1, !tbaa !231 ; 3 uses
  %i.akd = load i8, ptr %.012.i24.i.i508, align 1, !tbaa !231 ; 2 uses
  %i.ake = icmp eq i8 %i.akc, %i.akd
  br i1 %i.ake, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.akf = icmp eq i8 %i.akc, 0
  br i1 %i.akf, label %sqlite3StrIHash.exit.i.1.i, label %bb.ho

bb.hn:                                            ; preds = %bb.hl
  %i.akg = zext i8 %i.akc to i64
  %i.akh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.akg
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !231
  %i.akj = zext i8 %i.akd to i64
  %i.akk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.akj
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !231
  %.not.i25.i.i509 = icmp eq i8 %i.aki, %i.akl
  br i1 %.not.i25.i.i509, label %bb.ho, label %sqlite3StrICmp.exit.i.i499.preheader

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.akm = getelementptr inbounds nuw i8, ptr %.013.i.i.i507, i64 1
  %i.akn = getelementptr inbounds nuw i8, ptr %.012.i24.i.i508, i64 1
  br label %bb.hl

sqlite3StrICmp.exit.i.i499:                       ; preds = %sqlite3StrICmp.exit.i.i499.preheader, %sqlite3StrICmp.exit30.i.i501
  %indvars.iv.i.i500 = phi i64 [ %indvars.iv.next.i.i502, %sqlite3StrICmp.exit30.i.i501 ], [ 0, %sqlite3StrICmp.exit.i.i499.preheader ] ; 2 uses
  %i.ako = getelementptr inbounds nuw [16 x i8], ptr %i.ajt, i64 %indvars.iv.i.i500 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 11
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !915
  %i.akr = icmp eq i8 %i.akq, -29
  br i1 %i.akr, label %bb.hp, label %sqlite3StrICmp.exit30.i.i501

bb.hp:                                            ; preds = %sqlite3StrICmp.exit.i.i499
  %i.aks = load ptr, ptr %i.ako, align 8, !tbaa !917
  br label %bb.hq

bb.hq:                                            ; preds = %bb.ht, %bb.hp
  %.013.i26.i.i504 = phi ptr [ %i.aks, %bb.hp ], [ %i.ald, %bb.ht ] ; 2 uses
  %.012.i27.i.i505 = phi ptr [ @.str.804, %bb.hp ], [ %i.ale, %bb.ht ] ; 2 uses
  %i.akt = load i8, ptr %.013.i26.i.i504, align 1, !tbaa !231 ; 3 uses
  %i.aku = load i8, ptr %.012.i27.i.i505, align 1, !tbaa !231 ; 2 uses
  %i.akv = icmp eq i8 %i.akt, %i.aku
  br i1 %i.akv, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.akw = icmp eq i8 %i.akt, 0
  br i1 %i.akw, label %sqlite3StrIHash.exit.i.1.i, label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  %i.akx = zext i8 %i.akt to i64
  %i.aky = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.akx
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !231
  %i.ala = zext i8 %i.aku to i64
  %i.alb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ala
  %i.alc = load i8, ptr %i.alb, align 1, !tbaa !231
  %.not.i28.i.i506 = icmp eq i8 %i.akz, %i.alc
  br i1 %.not.i28.i.i506, label %bb.ht, label %sqlite3StrICmp.exit30.i.i501

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.ald = getelementptr inbounds nuw i8, ptr %.013.i26.i.i504, i64 1
  %i.ale = getelementptr inbounds nuw i8, ptr %.012.i27.i.i505, i64 1
  br label %bb.hq
end_hunk_18
begin_hunk_19_@selectExpander:bb.a
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !3232 ; 2 uses
  br label %bb.it

bb.it:                                            ; preds = %bb.iu, %bb.is
  %indvars.iv.i512 = phi i64 [ %indvars.iv.next.i514, %bb.iu ], [ 0, %bb.is ] ; 3 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 %indvars.iv.i512
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !231
  switch i8 %i.aok, label %bb.iu [
    i8 0, label %.critedge.i513
    i8 46, label %.critedge.i513
  ]

bb.iu:                                            ; preds = %bb.it
  %indvars.iv.next.i514 = add nuw nsw i64 %indvars.iv.i512, 1
  br label %bb.it, !llvm.loop !3989

.critedge.i513:                                   ; preds = %bb.it, %bb.it
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoi, i64 %indvars.iv.i512
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 1 ; 2 uses
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iw, %.critedge.i513
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i, %bb.iw ], [ 0, %.critedge.i513 ] ; 5 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 %indvars.iv117.i
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !231
  switch i8 %i.aoo, label %bb.iw [
    i8 0, label %.preheader.i61.i
    i8 46, label %.preheader.i61.i
  ]

bb.iw:                                            ; preds = %bb.iv
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1
  br label %bb.iv, !llvm.loop !3990

.preheader.i61.i:                                 ; preds = %bb.iv, %bb.iv
  %.not82.i = icmp eq i64 %indvars.iv117.i, 0
  br i1 %.not82.i, label %sqlite3_strnicmp.exit71.thread.i, label %.lr.ph.i63.i.preheader

.lr.ph.i63.i.preheader:                           ; preds = %.preheader.i61.i
  %i.aop = trunc nuw nsw i64 %indvars.iv117.i to i32
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph.i63.i.preheader, %bb.iy
  %.in.i64.i = phi i32 [ %i.aoq, %bb.iy ], [ %i.aop, %.lr.ph.i63.i.preheader ] ; 2 uses
  %.023.i65.i = phi ptr [ %i.apb, %bb.iy ], [ %.0319, %.lr.ph.i63.i.preheader ] ; 3 uses
  %.01422.i66.i = phi ptr [ %i.apa, %bb.iy ], [ %i.aom, %.lr.ph.i63.i.preheader ] ; 2 uses
  %i.aoq = add nsw i32 %.in.i64.i, -1
  %i.aor = load i8, ptr %.01422.i66.i, align 1, !tbaa !231 ; 2 uses
  %.not.i67.i = icmp eq i8 %i.aor, 0
  br i1 %.not.i67.i, label %sqlite3_strnicmp.exit71.loopexit.i, label %bb.ix

bb.ix:                                            ; preds = %.lr.ph.i63.i
  %i.aos = zext i8 %i.aor to i64
  %i.aot = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aos
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !231 ; 2 uses
  %i.aov = load i8, ptr %.023.i65.i, align 1, !tbaa !231
  %i.aow = zext i8 %i.aov to i64
  %i.aox = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aow
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !231 ; 2 uses
  %i.aoz = icmp eq i8 %i.aou, %i.aoy
  br i1 %i.aoz, label %bb.iy, label %split.i68.i

bb.iy:                                            ; preds = %bb.ix
  %i.apa = getelementptr inbounds nuw i8, ptr %.01422.i66.i, i64 1
  %i.apb = getelementptr inbounds nuw i8, ptr %.023.i65.i, i64 1
  %i.apc = icmp samesign ugt i32 %.in.i64.i, 1
  br i1 %i.apc, label %.lr.ph.i63.i, label %sqlite3_strnicmp.exit71.thread.i, !llvm.loop !418

split.i68.i:                                      ; preds = %bb.ix
  %i.apd = zext i8 %i.aou to i32
  br label %sqlite3_strnicmp.exit71.i

sqlite3_strnicmp.exit71.loopexit.i:               ; preds = %.lr.ph.i63.i
  %.pre122.i = load i8, ptr %.023.i65.i, align 1, !tbaa !231
  %.phi.trans.insert123.i = zext i8 %.pre122.i to i64
  %.phi.trans.insert124.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert123.i
  %.pre125.i = load i8, ptr %.phi.trans.insert124.i, align 1, !tbaa !231
  br label %sqlite3_strnicmp.exit71.i

sqlite3_strnicmp.exit71.i:                        ; preds = %sqlite3_strnicmp.exit71.loopexit.i, %split.i68.i
  %i.ape = phi i8 [ %i.aoy, %split.i68.i ], [ %.pre125.i, %sqlite3_strnicmp.exit71.loopexit.i ]
  %i.apf = phi i32 [ %i.apd, %split.i68.i ], [ 0, %sqlite3_strnicmp.exit71.loopexit.i ]
  %i.apg = zext i8 %i.ape to i32
  %.not57.i = icmp eq i32 %i.apf, %i.apg
  br i1 %.not57.i, label %sqlite3_strnicmp.exit71.thread.i, label %sqlite3MatchEName.exit.thread

sqlite3_strnicmp.exit71.thread.i:                 ; preds = %bb.iy, %sqlite3_strnicmp.exit71.i, %.preheader.i61.i
  %i.aph = getelementptr inbounds nuw i8, ptr %.0319, i64 %indvars.iv117.i
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !231
  %.not58.i = icmp eq i8 %i.api, 0
  br i1 %.not58.i, label %sqlite3MatchEName.exit, label %sqlite3MatchEName.exit.thread

sqlite3MatchEName.exit:                           ; preds = %sqlite3_strnicmp.exit71.thread.i, %bb.io, %bb.iq
  %i.apj = load i32, ptr %i.e, align 4, !tbaa !393
  %i.apk = and i32 %i.apj, 131072
  %i.apl = icmp ne i32 %i.apk, 0
  %i.apm = getelementptr inbounds nuw i8, ptr %i.anz, i64 14
  %i.apn = load i16, ptr %i.apm, align 2, !tbaa !1329 ; 2 uses
  %i.apo = and i16 %i.apn, 2
  %.not384 = icmp eq i16 %i.apo, 0
  %or.cond1252 = select i1 %i.apl, i1 true, i1 %.not384
  br i1 %or.cond1252, label %sqlite3MatchEName.exit._crit_edge, label %sqlite3MatchEName.exit.thread

sqlite3MatchEName.exit._crit_edge:                ; preds = %sqlite3MatchEName.exit
  %i.app = and i16 %i.apn, 1024
  %i.apq = icmp ne i16 %i.app, 0
  %or.cond4 = select i1 %i.apq, i1 %.not379, i1 false
  %or.cond417 = select i1 %or.cond4, i1 %.not382, i1 false
  br i1 %or.cond417, label %sqlite3MatchEName.exit.thread, label %sqlite3RowidAlias.exit.thread

sqlite3RowidAlias.exit.thread:                    ; preds = %sqlite3StrICmp.exit30.i.i501, %sqlite3StrICmp.exit30.i.1.i, %sqlite3StrICmp.exit30.i.2.i, %sqlite3MatchEName.exit._crit_edge
  %.0 = phi ptr [ %i.aoa, %sqlite3MatchEName.exit._crit_edge ], [ @.str.805, %sqlite3StrICmp.exit30.i.2.i ], [ @.str.769, %sqlite3StrICmp.exit30.i.1.i ], [ @.str.804, %sqlite3StrICmp.exit30.i.i501 ] ; 11 uses
  br i1 %or.cond419, label %bb.iz, label %sqlite3IdListIndex.exit.thread

bb.iz:                                            ; preds = %sqlite3RowidAlias.exit.thread
  %i.apr = load i16, ptr %i.afx, align 1
  %i.aps = and i16 %i.apr, 2048
  %.not385 = icmp eq i16 %i.aps, 0
  br i1 %.not385, label %sqlite3IdListIndex.exit.thread, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.apt = load ptr, ptr %i.ajm, align 8, !tbaa !231 ; 2 uses
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !27 ; 2 uses
  %i.apv = icmp sgt i32 %i.apu, 0
  br i1 %i.apv, label %.lr.ph.i516, label %sqlite3IdListIndex.exit.thread

.lr.ph.i516:                                      ; preds = %bb.ja
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apt, i64 8
  %wide.trip.count.i = zext nneg i32 %i.apu to i64
  br label %bb.jb

bb.jb:                                            ; preds = %sqlite3StrICmp.exit.i521, %.lr.ph.i516
  %indvars.iv.i517 = phi i64 [ 0, %.lr.ph.i516 ], [ %indvars.iv.next.i522, %sqlite3StrICmp.exit.i521 ] ; 2 uses
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.apw, i64 %indvars.iv.i517
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !2747
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jf, %bb.jb
  %.013.i.i518 = phi ptr [ %i.apy, %bb.jb ], [ %i.aqj, %bb.jf ] ; 2 uses
  %.012.i.i519 = phi ptr [ %.0, %bb.jb ], [ %i.aqk, %bb.jf ] ; 2 uses
  %i.apz = load i8, ptr %.013.i.i518, align 1, !tbaa !231 ; 3 uses
  %i.aqa = load i8, ptr %.012.i.i519, align 1, !tbaa !231 ; 2 uses
  %i.aqb = icmp eq i8 %i.apz, %i.aqa
  br i1 %i.aqb, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.aqc = icmp eq i8 %i.apz, 0
  br i1 %i.aqc, label %sqlite3MatchEName.exit.thread, label %bb.jf

bb.je:                                            ; preds = %bb.jc
  %i.aqd = zext i8 %i.apz to i64
  %i.aqe = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aqd
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !231
  %i.aqg = zext i8 %i.aqa to i64
  %i.aqh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aqg
  %i.aqi = load i8, ptr %i.aqh, align 1, !tbaa !231
  %.not.i.i520 = icmp eq i8 %i.aqf, %i.aqi
  br i1 %.not.i.i520, label %bb.jf, label %sqlite3StrICmp.exit.i521

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %i.aqj = getelementptr inbounds nuw i8, ptr %.013.i.i518, i64 1
  %i.aqk = getelementptr inbounds nuw i8, ptr %.012.i.i519, i64 1
  br label %bb.jc

sqlite3StrICmp.exit.i521:                         ; preds = %bb.je
  %indvars.iv.next.i522 = add nuw nsw i64 %indvars.iv.i517, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i522, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3IdListIndex.exit.thread, label %bb.jb, !llvm.loop !3991

sqlite3IdListIndex.exit.thread:                   ; preds = %sqlite3StrICmp.exit.i521, %bb.ja, %bb.iz, %sqlite3RowidAlias.exit.thread
  %i.aql = icmp eq ptr %.0, null                  ; 2 uses
  br i1 %i.aql, label %sqlite3Strlen30.exit.i523, label %bb.jg

bb.jg:                                            ; preds = %sqlite3IdListIndex.exit.thread
  %i.aqm = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0) #59, !inline_history !4101
  %i.aqn = trunc i64 %i.aqm to i32
  %i.aqo = and i32 %i.aqn, 1073741823
  br label %sqlite3Strlen30.exit.i523

sqlite3Strlen30.exit.i523:                        ; preds = %bb.jg, %sqlite3IdListIndex.exit.thread
  %.0.i.i524 = phi i32 [ %i.aqo, %bb.jg ], [ 0, %sqlite3IdListIndex.exit.thread ] ; 3 uses
  %narrow.i525 = add nuw nsw i32 %.0.i.i524, 73
  %i.aqp = zext nneg i32 %narrow.i525 to i64
  %i.aqq = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.d, i64 noundef %i.aqp), !inline_history !3275 ; 9 uses
  %.not24.i.i526 = icmp eq ptr %i.aqq, null
  br i1 %.not24.i.i526, label %sqlite3Expr.exit529, label %bb.jh

bb.jh:                                            ; preds = %sqlite3Strlen30.exit.i523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aqq, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.aqq, align 8, !tbaa !2750
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 50
  store i16 -1, ptr %i.aqr, align 2, !tbaa !3276
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqq, i64 72 ; 3 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8
  store ptr %i.aqs, ptr %i.aqt, align 8, !tbaa !231
  %.not26.i.i527 = icmp eq i32 %.0.i.i524, 0
  br i1 %.not26.i.i527, label %sqlite3DequoteExpr.exit.i.i528, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.aqu = zext nneg i32 %.0.i.i524 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aqs, ptr readonly align 1 %.0, i64 %i.aqu, i1 false)
  br label %sqlite3DequoteExpr.exit.i.i528

sqlite3DequoteExpr.exit.i.i528:                   ; preds = %bb.ji, %bb.jh
  %i.aqv = phi i64 [ %i.aqu, %bb.ji ], [ 0, %bb.jh ]
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %i.aqv
  store i8 0, ptr %i.aqw, align 1, !tbaa !231
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqq, i64 40
  store i32 1, ptr %i.aqx, align 8, !tbaa !3277
  br label %sqlite3Expr.exit529

sqlite3Expr.exit529:                              ; preds = %sqlite3Strlen30.exit.i523, %sqlite3DequoteExpr.exit.i.i528
  %i.aqy = load i32, ptr %i.r, align 8, !tbaa !27 ; 2 uses
  %i.aqz = icmp sgt i32 %i.aqy, 1
  br i1 %i.aqz, label %bb.jj, label %inAnyUsingClause.exit

bb.jj:                                            ; preds = %sqlite3Expr.exit529
  %i.ara = load i8, ptr %i.afw, align 8, !tbaa !3278
  %i.arb = and i8 %i.ara, 64
  %i.arc = icmp ne i8 %i.arb, 0
  %or.cond420 = select i1 %i.arc, i1 %.not382, i1 false
  %i.ard = add nsw i32 %i.aqy, %i.ajn             ; 2 uses
  %i.are = icmp sgt i32 %i.ard, 0
  %or.cond = select i1 %or.cond420, i1 %i.are, i1 false
  br i1 %or.cond, label %.lr.ph.i531, label %inAnyUsingClause.exit.thread

.lr.ph.i531:                                      ; preds = %bb.jj, %.backedge.i
  %.012.i532 = phi i32 [ %i.arf, %.backedge.i ], [ %i.ard, %bb.jj ] ; 2 uses
  %.0711.i = phi ptr [ %i.arg, %.backedge.i ], [ %.1343829, %bb.jj ] ; 3 uses
  %i.arf = add nsw i32 %.012.i532, -1
  %i.arg = getelementptr inbounds nuw i8, ptr %.0711.i, i64 72
  %i.arh = getelementptr inbounds nuw i8, ptr %.0711.i, i64 97
  %i.ari = load i16, ptr %i.arh, align 1
  %i.arj = and i16 %i.ari, 2048
  %i.ark = icmp eq i16 %i.arj, 0
  br i1 %i.ark, label %.backedge.i, label %bb.jk

.backedge.i:                                      ; preds = %sqlite3StrICmp.exit.i.i539, %bb.jl, %bb.jk, %.lr.ph.i531
  %i.arl = icmp sgt i32 %.012.i532, 1
  br i1 %i.arl, label %.lr.ph.i531, label %inAnyUsingClause.exit.thread, !llvm.loop !4103

bb.jk:                                            ; preds = %.lr.ph.i531
  %i.arm = getelementptr inbounds nuw i8, ptr %.0711.i, i64 128
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !231 ; 3 uses
  %i.aro = icmp eq ptr %i.arn, null
  br i1 %i.aro, label %.backedge.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.arp = load i32, ptr %i.arn, align 8, !tbaa !27 ; 2 uses
  %i.arq = icmp sgt i32 %i.arp, 0
  br i1 %i.arq, label %.lr.ph.i.i533, label %.backedge.i

.lr.ph.i.i533:                                    ; preds = %bb.jl
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %wide.trip.count.i.i534 = zext nneg i32 %i.arp to i64
  br label %bb.jm

bb.jm:                                            ; preds = %sqlite3StrICmp.exit.i.i539, %.lr.ph.i.i533
  %indvars.iv.i.i535 = phi i64 [ 0, %.lr.ph.i.i533 ], [ %indvars.iv.next.i.i540, %sqlite3StrICmp.exit.i.i539 ] ; 2 uses
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr %i.arr, i64 %indvars.iv.i.i535
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !2747
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jq, %bb.jm
  %.013.i.i.i536 = phi ptr [ %i.art, %bb.jm ], [ %i.ase, %bb.jq ] ; 2 uses
  %.012.i.i.i537 = phi ptr [ %.0, %bb.jm ], [ %i.asf, %bb.jq ] ; 2 uses
  %i.aru = load i8, ptr %.013.i.i.i536, align 1, !tbaa !231 ; 3 uses
  %i.arv = load i8, ptr %.012.i.i.i537, align 1, !tbaa !231 ; 2 uses
  %i.arw = icmp eq i8 %i.aru, %i.arv
  br i1 %i.arw, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.arx = icmp eq i8 %i.aru, 0
  br i1 %i.arx, label %inAnyUsingClause.exit, label %bb.jq, !llvm.loop !4103

bb.jp:                                            ; preds = %bb.jn
  %i.ary = zext i8 %i.aru to i64
  %i.arz = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ary
  %i.asa = load i8, ptr %i.arz, align 1, !tbaa !231
  %i.asb = zext i8 %i.arv to i64
  %i.asc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.asb
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !231
  %.not.i.i.i538 = icmp eq i8 %i.asa, %i.asd
  br i1 %.not.i.i.i538, label %bb.jq, label %sqlite3StrICmp.exit.i.i539

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %i.ase = getelementptr inbounds nuw i8, ptr %.013.i.i.i536, i64 1
  %i.asf = getelementptr inbounds nuw i8, ptr %.012.i.i.i537, i64 1
  br label %bb.jn

sqlite3StrICmp.exit.i.i539:                       ; preds = %bb.jp
  %indvars.iv.next.i.i540 = add nuw nsw i64 %indvars.iv.i.i535, 1 ; 2 uses
  %exitcond.not.i.i541 = icmp eq i64 %indvars.iv.next.i.i540, %wide.trip.count.i.i534
  br i1 %exitcond.not.i.i541, label %.backedge.i, label %bb.jm, !llvm.loop !3991

inAnyUsingClause.exit:                            ; preds = %bb.jo, %sqlite3Expr.exit529
  %i.asg = load i8, ptr %i.adv, align 4, !tbaa !1092
  %i.ash = icmp ugt i8 %i.asg, 1
  br i1 %i.ash, label %inAnyUsingClause.exit.thread, label %bb.ka

inAnyUsingClause.exit.thread:                     ; preds = %.backedge.i, %inAnyUsingClause.exit, %bb.jj
  br i1 %i.ajo, label %sqlite3Strlen30.exit.i542, label %bb.jr

bb.jr:                                            ; preds = %inAnyUsingClause.exit.thread
  %i.asi = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0315) #59, !inline_history !4101
  %i.asj = trunc i64 %i.asi to i32
  %i.ask = and i32 %i.asj, 1073741823
  br label %sqlite3Strlen30.exit.i542

sqlite3Strlen30.exit.i542:                        ; preds = %bb.jr, %inAnyUsingClause.exit.thread
  %.0.i.i543 = phi i32 [ %i.ask, %bb.jr ], [ 0, %inAnyUsingClause.exit.thread ] ; 3 uses
  %narrow.i544 = add nuw nsw i32 %.0.i.i543, 73
  %i.asl = zext nneg i32 %narrow.i544 to i64
  %i.asm = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.d, i64 noundef %i.asl), !inline_history !3275 ; 9 uses
  %.not24.i.i545 = icmp eq ptr %i.asm, null
  br i1 %.not24.i.i545, label %sqlite3Expr.exit548, label %bb.js

bb.js:                                            ; preds = %sqlite3Strlen30.exit.i542
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.asm, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.asm, align 8, !tbaa !2750
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 50
  store i16 -1, ptr %i.asn, align 2, !tbaa !3276
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asm, i64 72 ; 3 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  store ptr %i.aso, ptr %i.asp, align 8, !tbaa !231
  %.not26.i.i546 = icmp eq i32 %.0.i.i543, 0
  br i1 %.not26.i.i546, label %sqlite3DequoteExpr.exit.i.i547, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.asq = zext nneg i32 %.0.i.i543 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aso, ptr readonly align 1 %.0315, i64 %i.asq, i1 false)
  br label %sqlite3DequoteExpr.exit.i.i547

sqlite3DequoteExpr.exit.i.i547:                   ; preds = %bb.jt, %bb.js
  %i.asr = phi i64 [ %i.asq, %bb.jt ], [ 0, %bb.js ]
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aso, i64 %i.asr
  store i8 0, ptr %i.ass, align 1, !tbaa !231
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asm, i64 40
  store i32 1, ptr %i.ast, align 8, !tbaa !3277
  br label %sqlite3Expr.exit548

sqlite3Expr.exit548:                              ; preds = %sqlite3Strlen30.exit.i542, %sqlite3DequoteExpr.exit.i.i547
  %i.asu = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %i.c, i32 noundef 142, ptr noundef %i.asm, ptr noundef %i.aqq) ; 2 uses
  %i.asv = load i8, ptr %i.adv, align 4, !tbaa !1092
  %i.asw = icmp ugt i8 %i.asv, 1
  br i1 %i.asw, label %bb.ju, label %sqlite3RenameTokenRemap.exit

bb.ju:                                            ; preds = %sqlite3Expr.exit548
  %i.asx = load ptr, ptr %i.afn, align 8, !tbaa !376 ; 2 uses
  %.not388 = icmp eq ptr %i.asx, null
  br i1 %.not388, label %sqlite3RenameTokenRemap.exit, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %.08.i549 = load ptr, ptr %i.adw, align 8, !tbaa !3282 ; 2 uses
  %.not9.i = icmp eq ptr %.08.i549, null
  br i1 %.not9.i, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i550

.lr.ph.i550:                                      ; preds = %bb.jv, %bb.jx
  %.010.i = phi ptr [ %.0.i551, %bb.jx ], [ %.08.i549, %bb.jv ] ; 3 uses
  %i.asy = load ptr, ptr %.010.i, align 8, !tbaa !3283
  %i.asz = icmp eq ptr %i.asy, %i.asx
  br i1 %i.asz, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %.lr.ph.i550
  store ptr %i.asm, ptr %.010.i, align 8, !tbaa !3283
  br label %sqlite3RenameTokenRemap.exit

bb.jx:                                            ; preds = %.lr.ph.i550
  %i.ata = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %.0.i551 = load ptr, ptr %i.ata, align 8, !tbaa !3282 ; 2 uses
  %.not.i552 = icmp eq ptr %.0.i551, null
  br i1 %.not.i552, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i550, !llvm.loop !3285

sqlite3RenameTokenRemap.exit:                     ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.ju, %sqlite3Expr.exit548
  br i1 %.not389, label %bb.ka, label %sqlite3Strlen30.exit.i554

sqlite3Strlen30.exit.i554:                        ; preds = %sqlite3RenameTokenRemap.exit
  %i.atb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0314) #59, !inline_history !4101 ; 2 uses
  %i.atc = trunc i64 %i.atb to i32
  %i.atd = and i32 %i.atc, 1073741823             ; 2 uses
  %narrow.i556 = add nuw nsw i32 %i.atd, 73
  %i.ate = zext nneg i32 %narrow.i556 to i64
  %i.atf = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.d, i64 noundef %i.ate), !inline_history !3275 ; 8 uses
  %.not24.i.i557 = icmp eq ptr %i.atf, null
  br i1 %.not24.i.i557, label %sqlite3Expr.exit560, label %bb.jy

bb.jy:                                            ; preds = %sqlite3Strlen30.exit.i554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.atf, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.atf, align 8, !tbaa !2750
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 50
  store i16 -1, ptr %i.atg, align 2, !tbaa !3276
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atf, i64 72 ; 3 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  store ptr %i.ath, ptr %i.ati, align 8, !tbaa !231
  %.not26.i.i558 = icmp eq i32 %i.atd, 0
  br i1 %.not26.i.i558, label %sqlite3DequoteExpr.exit.i.i559, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.atj = and i64 %i.atb, 1073741823             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ath, ptr nonnull readonly align 1 %.0314, i64 %i.atj, i1 false)
  br label %sqlite3DequoteExpr.exit.i.i559

sqlite3DequoteExpr.exit.i.i559:                   ; preds = %bb.jz, %bb.jy
  %i.atk = phi i64 [ %i.atj, %bb.jz ], [ 0, %bb.jy ]
  %i.atl = getelementptr inbounds nuw i8, ptr %i.ath, i64 %i.atk
  store i8 0, ptr %i.atl, align 1, !tbaa !231
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atf, i64 40
  store i32 1, ptr %i.atm, align 8, !tbaa !3277
  br label %sqlite3Expr.exit560

sqlite3Expr.exit560:                              ; preds = %sqlite3Strlen30.exit.i554, %sqlite3DequoteExpr.exit.i.i559
  %i.atn = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %i.c, i32 noundef 142, ptr noundef %i.atf, ptr noundef %i.asu)
  br label %bb.ka

bb.ka:                                            ; preds = %inAnyUsingClause.exit, %sqlite3RenameTokenRemap.exit, %sqlite3Expr.exit560
  %.1341 = phi ptr [ %i.asu, %sqlite3RenameTokenRemap.exit ], [ %i.atn, %sqlite3Expr.exit560 ], [ %i.aqq, %inAnyUsingClause.exit ] ; 6 uses
  %i.ato = icmp eq ptr %.1341, null
  br i1 %i.ato, label %sqlite3ExprSetErrorOffset.exit562, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.atp = getelementptr inbounds nuw i8, ptr %.1341, i64 4
  %i.atq = load i32, ptr %i.atp, align 4, !tbaa !372
  %i.atr = and i32 %i.atq, 3
  %.not.i561 = icmp eq i32 %i.atr, 0
  br i1 %.not.i561, label %bb.kc, label %sqlite3ExprSetErrorOffset.exit562

bb.kc:                                            ; preds = %bb.kb
  %i.ats = getelementptr inbounds nuw i8, ptr %.1341, i64 52
  store i32 %.0318, ptr %i.ats, align 4, !tbaa !231
  br label %sqlite3ExprSetErrorOffset.exit562

sqlite3ExprSetErrorOffset.exit562:                ; preds = %bb.ka, %bb.kb, %bb.kc
  %i.att = icmp eq ptr %.4330819, null
  br i1 %i.att, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %sqlite3ExprSetErrorOffset.exit562
  %i.atu = load ptr, ptr %i.c, align 8, !tbaa !657
  %i.atv = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.atu, ptr noundef %.1341), !inline_history !3280
  br label %sqlite3ExprListAppend.exit565

bb.ke:                                            ; preds = %sqlite3ExprSetErrorOffset.exit562
  %i.atw = getelementptr inbounds nuw i8, ptr %.4330819, i64 4
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !27
  %i.aty = load i32, ptr %.4330819, align 8, !tbaa !27 ; 3 uses
  %.not.i563 = icmp sgt i32 %i.atx, %i.aty
  br i1 %.not.i563, label %sqlite3ExprListAppend.exit565.thread, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.atz = load ptr, ptr %i.c, align 8, !tbaa !657
  %i.aua = call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.atz, ptr noundef %.4330819, ptr noundef %.1341), !inline_history !3280
  br label %sqlite3ExprListAppend.exit565

sqlite3ExprListAppend.exit565.thread:             ; preds = %bb.ke
  %i.aub = add nsw i32 %i.aty, 1
  %i.auc = getelementptr inbounds nuw i8, ptr %.4330819, i64 8
  store i32 %i.aub, ptr %.4330819, align 8, !tbaa !27
  %i.aud = sext i32 %i.aty to i64
  %i.aue = getelementptr inbounds [24 x i8], ptr %i.auc, i64 %i.aud ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.auf, i8 0, i64 16, i1 false)
  store ptr %.1341, ptr %i.aue, align 8, !tbaa !3229
  br label %bb.kg

sqlite3ExprListAppend.exit565:                    ; preds = %bb.kd, %bb.kf
  %.0.i564 = phi ptr [ %i.atv, %bb.kd ], [ %i.aua, %bb.kf ] ; 2 uses
  %i.aug = icmp eq ptr %.0.i564, null
  br i1 %i.aug, label %sqlite3StrICmp.exit, label %bb.kg

bb.kg:                                            ; preds = %sqlite3ExprListAppend.exit565.thread, %sqlite3ExprListAppend.exit565
  %.0.i564649 = phi ptr [ %.4330819, %sqlite3ExprListAppend.exit565.thread ], [ %.0.i564, %sqlite3ExprListAppend.exit565 ] ; 7 uses
  %i.auh = load i32, ptr %.0.i564649, align 8, !tbaa !27
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr [24 x i8], ptr %.0.i564649, i64 %i.aui ; 6 uses
  br i1 %.not382, label %bb.lc, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.auk = load i8, ptr %i.adv, align 4, !tbaa !1092
  %i.aul = icmp ugt i8 %i.auk, 1
  br i1 %i.aul, label %bb.lc, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  br i1 %.not668, label %bb.ko, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.aum = getelementptr inbounds nuw [24 x i8], ptr %.0316, i64 %indvars.iv979
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 16
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !3232 ; 3 uses
  %i.aup = icmp eq ptr %i.auo, null
  br i1 %i.aup, label %sqlite3DbStrDup.exit, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.auq = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.auo) #59, !inline_history !602
  %i.aur = add i64 %i.auq, 1                      ; 3 uses
  br i1 %.not.i.i566, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.aus = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.d, i64 noundef %i.aur), !inline_history !603
  br label %sqlite3DbMallocRaw.exit.i567

bb.km:                                            ; preds = %bb.kk
  %i.aut = call fastcc ptr @sqlite3Malloc(i64 noundef %i.aur), !inline_history !603
  br label %sqlite3DbMallocRaw.exit.i567

sqlite3DbMallocRaw.exit.i567:                     ; preds = %bb.km, %bb.kl
  %.0.i.i568 = phi ptr [ %i.aus, %bb.kl ], [ %i.aut, %bb.km ] ; 3 uses
  %.not.i569 = icmp eq ptr %.0.i.i568, null
  br i1 %.not.i569, label %sqlite3DbStrDup.exit, label %bb.kn

bb.kn:                                            ; preds = %sqlite3DbMallocRaw.exit.i567
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i568, ptr nonnull readonly align 1 %i.auo, i64 %i.aur, i1 false)
  br label %sqlite3DbStrDup.exit

bb.ko:                                            ; preds = %bb.ki
  %i.auu = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.d, ptr noundef nonnull @.str.784, ptr noundef %.0314, ptr noundef %.0315, ptr noundef %.0)
  br label %sqlite3DbStrDup.exit

sqlite3DbStrDup.exit:                             ; preds = %bb.kn, %sqlite3DbMallocRaw.exit.i567, %bb.kj, %bb.ko
  %.sink = phi ptr [ %i.auu, %bb.ko ], [ null, %bb.kj ], [ %.0.i.i568, %bb.kn ], [ null, %sqlite3DbMallocRaw.exit.i567 ]
  %i.auv = getelementptr i8, ptr %i.auj, i64 -8
  store ptr %.sink, ptr %i.auv, align 8, !tbaa !3232
  %i.auw = load i16, ptr %i.aiy, align 2, !tbaa !914
  %i.aux = sext i16 %i.auw to i64
  %i.auy = icmp eq i64 %indvars.iv979, %i.aux
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auj, i64 1 ; 3 uses
  %i.ava = select i1 %i.auy, i16 3, i16 2
  %i.avb = load i16, ptr %i.auz, align 1
  %i.avc = and i16 %i.avb, -4
  %i.avd = or disjoint i16 %i.ava, %i.avc         ; 2 uses
  store i16 %i.avd, ptr %i.auz, align 1
  %i.ave = load i16, ptr %i.afx, align 1
  %i.avf = and i16 %i.ave, 2048
  %.not392 = icmp eq i16 %i.avf, 0
  br i1 %.not392, label %sqlite3IdListIndex.exit583.thread, label %bb.kp

bb.kp:                                            ; preds = %sqlite3DbStrDup.exit
  %i.avg = load ptr, ptr %i.ajm, align 8, !tbaa !231 ; 2 uses
  %i.avh = load i32, ptr %i.avg, align 8, !tbaa !27 ; 2 uses
  %i.avi = icmp sgt i32 %i.avh, 0
  br i1 %i.avi, label %.lr.ph.i573, label %sqlite3IdListIndex.exit583.thread

.lr.ph.i573:                                      ; preds = %bb.kp
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avg, i64 8
  %wide.trip.count.i574 = zext nneg i32 %i.avh to i64
  br label %bb.kq

bb.kq:                                            ; preds = %sqlite3StrICmp.exit.i579, %.lr.ph.i573
  %indvars.iv.i575 = phi i64 [ 0, %.lr.ph.i573 ], [ %indvars.iv.next.i580, %sqlite3StrICmp.exit.i579 ] ; 2 uses
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %indvars.iv.i575
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !2747
  br label %bb.kr

bb.kr:                                            ; preds = %bb.ku, %bb.kq
  %.013.i.i576 = phi ptr [ %i.avl, %bb.kq ], [ %i.avw, %bb.ku ] ; 2 uses
  %.012.i.i577 = phi ptr [ %.0, %bb.kq ], [ %i.avx, %bb.ku ] ; 2 uses
  %i.avm = load i8, ptr %.013.i.i576, align 1, !tbaa !231 ; 3 uses
  %i.avn = load i8, ptr %.012.i.i577, align 1, !tbaa !231 ; 2 uses
  %i.avo = icmp eq i8 %i.avm, %i.avn
  br i1 %i.avo, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.avp = icmp eq i8 %i.avm, 0
  br i1 %i.avp, label %sqlite3IdListIndex.exit583, label %bb.ku

bb.kt:                                            ; preds = %bb.kr
  %i.avq = zext i8 %i.avm to i64
  %i.avr = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.avq
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !231
  %i.avt = zext i8 %i.avn to i64
  %i.avu = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.avt
  %i.avv = load i8, ptr %i.avu, align 1, !tbaa !231
  %.not.i.i578 = icmp eq i8 %i.avs, %i.avv
  br i1 %.not.i.i578, label %bb.ku, label %sqlite3StrICmp.exit.i579

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %i.avw = getelementptr inbounds nuw i8, ptr %.013.i.i576, i64 1
  %i.avx = getelementptr inbounds nuw i8, ptr %.012.i.i577, i64 1
  br label %bb.kr

sqlite3StrICmp.exit.i579:                         ; preds = %bb.kt
  %indvars.iv.next.i580 = add nuw nsw i64 %indvars.iv.i575, 1 ; 2 uses
  %exitcond.not.i581 = icmp eq i64 %indvars.iv.next.i580, %wide.trip.count.i574
  br i1 %exitcond.not.i581, label %sqlite3IdListIndex.exit583.thread, label %bb.kq, !llvm.loop !3991

sqlite3IdListIndex.exit583.thread:                ; preds = %sqlite3StrICmp.exit.i579, %bb.kp, %sqlite3DbStrDup.exit
  br i1 %.not393, label %sqlite3IdListIndex.exit596.thread, label %bb.kv

bb.kv:                                            ; preds = %sqlite3IdListIndex.exit583.thread
  %i.avy = load i32, ptr %.0313, align 8, !tbaa !27 ; 2 uses
  %i.avz = icmp sgt i32 %i.avy, 0
  br i1 %i.avz, label %.lr.ph.i586, label %sqlite3IdListIndex.exit596.thread

.lr.ph.i586:                                      ; preds = %bb.kv
  %wide.trip.count.i587 = zext nneg i32 %i.avy to i64
  br label %bb.kw

bb.kw:                                            ; preds = %sqlite3StrICmp.exit.i592, %.lr.ph.i586
  %indvars.iv.i588 = phi i64 [ 0, %.lr.ph.i586 ], [ %indvars.iv.next.i593, %sqlite3StrICmp.exit.i592 ] ; 2 uses
  %i.awa = getelementptr inbounds nuw [8 x i8], ptr %i.ajp, i64 %indvars.iv.i588
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !2747
  br label %bb.kx
end_hunk_19
begin_hunk_20_@selectExpander:bb.a

thread-pre-split:                                 ; preds = %bb.gb, %sqlite3ProcessJoin.exit
  %.0337.lcssa = phi i32 [ 0, %sqlite3ProcessJoin.exit ], [ %i.adn, %bb.gb ]
  %.pr666 = load ptr, ptr %i.s, align 8, !tbaa !2764
  br label %bb.lm

bb.lm:                                            ; preds = %thread-pre-split, %sqlite3ExprListDelete.exit
  %i.axr = phi ptr [ %.pr666, %thread-pre-split ], [ %.9, %sqlite3ExprListDelete.exit ] ; 2 uses
  %.2339 = phi i32 [ %.0337.lcssa, %thread-pre-split ], [ %i.aeb, %sqlite3ExprListDelete.exit ]
  %.not372 = icmp eq ptr %i.axr, null
  br i1 %.not372, label %.critedge.thread, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.axs = load i32, ptr %i.axr, align 8, !tbaa !27
  %i.axt = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.axu = load i32, ptr %i.axt, align 8, !tbaa !27
  %i.axv = icmp sgt i32 %i.axs, %i.axu
  br i1 %i.axv, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.787)
  br label %.critedge.thread

bb.lp:                                            ; preds = %bb.ln
  %i.axw = and i32 %.2339, 4194312
  %.not373 = icmp eq i32 %i.axw, 0
  br i1 %.not373, label %.critedge.thread, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.axx = load i32, ptr %i.e, align 4, !tbaa !393
  %i.axy = or i32 %i.axx, 262144
  store i32 %i.axy, ptr %i.e, align 4, !tbaa !393
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ao, %bb.aj, %sqlite3ExpandSubquery.exit, %sqlite3ViewGetColumnNames.exit, %bb.l, %sqlite3LocateTableItem.exit, %._crit_edge.thread.i, %.critedge175.i, %.critedge.i447, %bb.ah, %bb.bj, %cannotBeFunction.exit.i, %sqlite3DbFree.exit.i, %bb.aq, %.thread196.i, %bb.bo, %bb.bh, %cannotBeFunction.exit, %sqlite3ExpandSubquery.exit.thread, %bb.bv, %sqlite3IndexedByLookup.exit, %sqlite3DbMallocZero.exit.thread, %bb.lm, %bb.lq, %bb.lp, %._crit_edge, %bb.b, %bb.a, %bb.lo
  %.5 = phi i32 [ 2, %._crit_edge ], [ 2, %bb.a ], [ 1, %bb.b ], [ 0, %bb.lm ], [ 2, %sqlite3DbMallocZero.exit.thread ], [ 2, %bb.lo ], [ 2, %cannotBeFunction.exit.i ], [ 0, %bb.lp ], [ 0, %bb.lq ], [ 2, %bb.bj ], [ 2, %bb.ah ], [ 2, %.critedge.i447 ], [ 2, %.critedge175.i ], [ 2, %sqlite3IndexedByLookup.exit ], [ 2, %bb.bv ], [ 2, %sqlite3ExpandSubquery.exit.thread ], [ 2, %cannotBeFunction.exit ], [ 2, %bb.bh ], [ 2, %bb.bo ], [ 2, %.thread196.i ], [ 2, %bb.aq ], [ 2, %._crit_edge.thread.i ], [ 2, %sqlite3DbFree.exit.i ], [ 2, %sqlite3LocateTableItem.exit ], [ 2, %bb.l ], [ 2, %sqlite3ViewGetColumnNames.exit ], [ 2, %sqlite3ExpandSubquery.exit ], [ 2, %bb.aj ], [ 2, %bb.ao ]
  ret i32 %.5
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sqlite3SrcListAssignCursors(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #39 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !27
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.015 = phi ptr [ %i.c, %.lr.ph ], [ %i.s, %bb.f ] ; 4 uses
  %.01114 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.f ]
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 28 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3355
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.d, align 8, !tbaa !945  ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.d, align 8, !tbaa !945
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3355
  %i.j = getelementptr inbounds nuw i8, ptr %.015, i64 25
  %i.k = load i16, ptr %i.j, align 1
  %i.l = and i16 %i.k, 4
  %.not13 = icmp eq i16 %i.l, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.015, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !231
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !390
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2765
  tail call fastcc void @sqlite3SrcListAssignCursors(ptr noundef nonnull %0, ptr noundef %i.q)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.r = add nuw nsw i32 %.01114, 1               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.015, i64 72
  %i.t = load i32, ptr %1, align 8, !tbaa !27
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %.loopexit, !llvm.loop !4107

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3LocateTableItem(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 27
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !657
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !65 ; 2 uses
  br i1 %.not.i, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.j = icmp eq ptr %i.i, %i.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.j, label %sqlite3SchemaToIndex.exit, label %.preheader.i

sqlite3SchemaToIndex.exit:                        ; preds = %.preheader.i, %bb.b
  %.1.i = phi i64 [ -32768, %bb.b ], [ %indvars.iv.i, %.preheader.i ]
  %i.k = getelementptr inbounds [32 x i8], ptr %.pre, i64 %.1.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %sqlite3SchemaToIndex.exit
  %.0.in = phi ptr [ %i.k, %sqlite3SchemaToIndex.exit ], [ %i.l, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !231
  %i.m = load ptr, ptr %2, align 8, !tbaa !389
  %i.n = tail call fastcc ptr @sqlite3LocateTable(ptr noundef %0, i32 noundef %1, ptr noundef %i.m, ptr noundef %.0)
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3SrcItemAttachSubquery(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 27 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.d, align 8, !tbaa !231
  %i.e = and i8 %i.b, -2
  store i8 %i.e, ptr %i.a, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !231  ; 2 uses
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %bb.d, label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !657
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.g, ptr noundef nonnull %i.f)
  store ptr null, ptr %i.d, align 8, !tbaa !231
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %sqlite3DbFree.exit, %bb.b
  %.not25 = icmp eq i32 %3, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8, !tbaa !657
  %i.i = tail call fastcc ptr @sqlite3SelectDup(ptr noundef %i.h, ptr noundef %2, i32 noundef 0) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %sqlite3SelectDelete.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.020 = phi ptr [ %i.i, %bb.e ], [ %2, %bb.d ]  ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !657
  %i.l = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.k, i64 noundef 24) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.l, ptr %i.m, align 8, !tbaa !231
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not.i26 = icmp eq ptr %.020, null
  br i1 %.not.i26, label %sqlite3SelectDelete.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %0, align 8, !tbaa !657
  tail call fastcc void @clearSelect(ptr noundef %i.o, ptr noundef nonnull %.020, i32 noundef 1), !inline_history !2743
  br label %sqlite3SelectDelete.exit

bb.i:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 2 uses
  %i.q = load i16, ptr %i.p, align 1
  %i.r = or i16 %i.q, 4
  store i16 %i.r, ptr %i.p, align 1
  store ptr %.020, ptr %i.l, align 8, !tbaa !390
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %sqlite3SelectDelete.exit

sqlite3SelectDelete.exit:                         ; preds = %bb.h, %bb.g, %bb.e, %bb.i
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ColumnsFromExprList(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %4 = alloca %struct.Hash, align 8               ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !657    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread228, label %bb.b

.thread228:                                       ; preds = %bb.a
  store i16 0, ptr %2, align 2, !tbaa !338
  store ptr null, ptr %3, align 8, !tbaa !4108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 4                      ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.b, i64 noundef %i.f), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.f), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 7 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i, i8 0, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %sqlite3DbMallocRaw.exit.i
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.d, i32 32767) ; 3 uses
  %i.i = trunc i32 %spec.store.select to i16
  store i16 %i.i, ptr %2, align 2, !tbaa !338
  store ptr %.0.i.i, ptr %3, align 8, !tbaa !4108
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.k = icmp sgt i32 %i.d, 0
  br i1 %i.k, label %.lr.ph173, label %.critedge

.lr.ph173:                                        ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i.i122 = icmp eq ptr %i.b, null
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 103 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 412
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph173, %sqlite3OomFault.exit
  %indvars.iv191 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next192, %sqlite3OomFault.exit ] ; 4 uses
  %.093171 = phi ptr [ %.0.i.i, %.lr.ph173 ], [ %i.gy, %sqlite3OomFault.exit ] ; 6 uses
  %i.x = load i32, ptr %i.j, align 4, !tbaa !321
  %.not107 = icmp eq i32 %i.x, 0
  br i1 %.not107, label %bb.h, label %.critedge.loopexit.split.loop.exit256

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv191 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3232 ; 5 uses
  %.not109 = icmp eq ptr %i.aa, null
  br i1 %.not109, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 17
  %i.ac = load i16, ptr %i.ab, align 1
  %i.ad = and i16 %i.ac, 3
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %.thread144, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink9 = load ptr, ptr %i.y, align 8, !tbaa !371, !nonnull !1098, !noundef !1098 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sink9, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !372 ; 2 uses
  %i.ah = and i32 %i.ag, 532480
  %.not7.i10 = icmp eq i32 %i.ah, 0
  br i1 %.not7.i10, label %.lr.ph.preheader, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.j, %.lr.ph.i
  %i.ai = phi i32 [ %i.ar, %.lr.ph.i ], [ %i.ag, %bb.j ]
  %.sink11 = phi ptr [ %.sink, %.lr.ph.i ], [ %.sink9, %bb.j ] ; 4 uses
  %i.aj = and i32 %i.ai, 524288
  %.not8.i = icmp eq i32 %i.aj, 0
  br i1 %.not8.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph13
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink11, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !231
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %.lr.ph.i

bb.l:                                             ; preds = %.lr.ph13
  %i.an = load i8, ptr %.sink11, align 8, !tbaa !2750
  %i.ao = icmp eq i8 %i.an, 114
  br i1 %i.ao, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink11, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.k
  %.1.in.i = phi ptr [ %i.am, %bb.k ], [ %i.ap, %bb.m ]
  %.sink = load ptr, ptr %.1.in.i, align 8, !tbaa !371, !nonnull !1098, !noundef !1098 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !372 ; 2 uses
  %i.as = and i32 %i.ar, 532480
  %.not7.i = icmp eq i32 %i.as, 0
  br i1 %.not7.i, label %.lr.ph.preheader, label %.lr.ph13

.lr.ph.preheader:                                 ; preds = %.lr.ph.i, %bb.l, %bb.j
  %.sink.lcssa = phi ptr [ %.sink9, %bb.j ], [ %.sink, %.lr.ph.i ], [ %.sink11, %bb.l ] ; 3 uses
  %i.at = load i8, ptr %.sink.lcssa, align 8, !tbaa !2750 ; 2 uses
  %i.au = icmp eq i8 %i.at, -114
  br i1 %i.au, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.08916315 = phi ptr [ %i.aw, %.lr.ph ], [ %.sink.lcssa, %.lr.ph.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.08916315, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1162, !nonnull !1098, !noundef !1098 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !2750 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, -114
  br i1 %i.ay, label %.lr.ph, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph.preheader
  %.089163.lcssa = phi ptr [ %.sink.lcssa, %.lr.ph.preheader ], [ %i.aw, %.lr.ph ] ; 4 uses
  %.lcssa = phi i8 [ %i.at, %.lr.ph.preheader ], [ %i.ax, %.lr.ph ]
  switch i8 %.lcssa, label %.thread142 [
    i8 -88, label %.critedge2.thread
    i8 60, label %bb.q
  ]

.critedge2.thread:                                ; preds = %.critedge2
  %i.az = getelementptr inbounds nuw i8, ptr %.089163.lcssa, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !372
  %i.bb = and i32 %i.ba, 50331648
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %.thread142

bb.n:                                             ; preds = %.critedge2.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %.089163.lcssa, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !231 ; 3 uses
  %.not111 = icmp eq ptr %i.be, null
  br i1 %.not111, label %.thread142, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.089163.lcssa, i64 48
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !3235 ; 2 uses
  %i.bh = icmp slt i16 %i.bg, 0
  br i1 %i.bh, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !966 ; 2 uses
  %i.bk = icmp sgt i16 %i.bj, -1
  br i1 %i.bk, label %.thread, label %.thread144

.thread:                                          ; preds = %bb.o, %bb.p
  %.0.in141 = phi i16 [ %i.bj, %bb.p ], [ %i.bg, %bb.o ]
  %.0 = zext nneg i16 %.0.in141 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !913
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !917
  br label %.thread142

bb.q:                                             ; preds = %.critedge2
  %i.bp = getelementptr inbounds nuw i8, ptr %.089163.lcssa, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !231
  br label %.thread142

.thread142:                                       ; preds = %.critedge2, %.critedge2.thread, %bb.n, %bb.q, %.thread
  %.1 = phi ptr [ %i.bo, %.thread ], [ %i.aa, %.critedge2 ], [ %i.bq, %bb.q ], [ %i.aa, %bb.n ], [ %i.aa, %.critedge2.thread ] ; 2 uses
  %.not112 = icmp eq ptr %.1, null
  br i1 %.not112, label %sqlite3DbStrDup.exit, label %.thread144
end_hunk_20
begin_hunk_21_@multiSelectByMerge:bb.a
.lr.ph.i.i:                                       ; preds = %bb.dj, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i433, %.lr.ph.i.i ], [ %.018.i.i, %bb.dj ] ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !321
  %i.ye = add nsw i32 %i.yd, 1
  store i32 %i.ye, ptr %i.yc, align 4, !tbaa !321
  %i.yf = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.yf, align 8, !tbaa !310
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 224
  %.0.i.i433 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !569 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i433, null
  br i1 %.not16.i.i, label %sqlite3SelectDeleteGeneric.exit, label %.lr.ph.i.i, !llvm.loop !570

sqlite3FaultSim.exit.thread.i:                    ; preds = %sqlite3FaultSim.exit.i, %bb.dd
  %i.yg = load ptr, ptr %0, align 8, !tbaa !657   ; 2 uses
  %.not.i18.i = icmp eq ptr %i.yg, null
  br i1 %.not.i18.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %sqlite3FaultSim.exit.thread.i
  %i.yh = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.yg, i64 noundef 24), !inline_history !3443
  br label %sqlite3OomFault.exit.i

bb.dl:                                            ; preds = %sqlite3FaultSim.exit.thread.i
  %i.yi = tail call fastcc ptr @sqlite3Malloc(i64 noundef 24), !inline_history !3443
  br label %sqlite3OomFault.exit.i

sqlite3OomFault.exit.i:                           ; preds = %bb.dl, %bb.dk
  %.0.i434 = phi ptr [ %i.yi, %bb.dl ], [ %i.yh, %bb.dk ] ; 5 uses
  %.not16.i = icmp eq ptr %.0.i434, null
  br i1 %.not16.i, label %sqlite3SelectDeleteGeneric.exit, label %bb.dm

bb.dm:                                            ; preds = %sqlite3OomFault.exit.i
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !1002
  store ptr %i.yk, ptr %.0.i434, align 8, !tbaa !1003
  store ptr %.0.i434, ptr %i.yj, align 8, !tbaa !1002
  %i.yl = getelementptr inbounds nuw i8, ptr %.0.i434, i64 8
  store ptr %i.xg, ptr %i.yl, align 8, !tbaa !1006
  %i.ym = getelementptr inbounds nuw i8, ptr %.0.i434, i64 16
  store ptr @sqlite3SelectDeleteGeneric, ptr %i.ym, align 8, !tbaa !1005
  br label %sqlite3ParserAddCleanup.exit

sqlite3SelectDeleteGeneric.exit:                  ; preds = %.lr.ph.i.i, %sqlite3OomFault.exit.i, %bb.dj, %bb.di, %bb.df, %bb.de
  %i.yn = load ptr, ptr %0, align 8, !tbaa !657
  tail call fastcc void @clearSelect(ptr noundef %i.yn, ptr noundef nonnull %i.xg, i32 noundef 1)
  br label %sqlite3ParserAddCleanup.exit

sqlite3ParserAddCleanup.exit:                     ; preds = %sqlite3SelectDeleteGeneric.exit, %bb.dm, %sqlite3VdbeResolveLabel.exit430
  store ptr %i.es, ptr %i.er, align 8, !tbaa !2763
  store ptr %.2323, ptr %i.et, align 8, !tbaa !3487
  %i.yo = load ptr, ptr %i.ew, align 8, !tbaa !2769 ; 2 uses
  %.not.i435 = icmp eq ptr %i.yo, null
  br i1 %.not.i435, label %sqlite3ExprListDelete.exit, label %bb.dn

bb.dn:                                            ; preds = %sqlite3ParserAddCleanup.exit
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.a, ptr noundef %i.yo), !inline_history !1010
  br label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %sqlite3ParserAddCleanup.exit, %bb.dn
  store ptr null, ptr %i.ew, align 8, !tbaa !2769
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !3529 ; 2 uses
  %i.yr = icmp eq i32 %i.yq, 0
  br i1 %i.yr, label %sqlite3VdbeExplainPop.exit, label %bb.do

bb.do:                                            ; preds = %sqlite3ExprListDelete.exit
  %i.ys = load ptr, ptr %i.b, align 8, !tbaa !976 ; 2 uses
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !150
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 103
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !563
  %.not.i.i.i436 = icmp eq i8 %i.yv, 0
  br i1 %.not.i.i.i436, label %bb.dp, label %sqlite3VdbeGetOp.exit.i.i

bb.dp:                                            ; preds = %bb.do
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 136
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !188
  %i.yy = sext i32 %i.yq to i64
  %i.yz = getelementptr inbounds [32 x i8], ptr %i.yx, i64 %i.yy
  br label %sqlite3VdbeGetOp.exit.i.i

sqlite3VdbeGetOp.exit.i.i:                        ; preds = %bb.dp, %bb.do
  %.0.i.i.i437 = phi ptr [ %i.yz, %bb.dp ], [ @sqlite3VdbeGetOp.dummy, %bb.do ]
  %i.za = getelementptr inbounds nuw i8, ptr %.0.i.i.i437, i64 8
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !574
  br label %sqlite3VdbeExplainPop.exit

sqlite3VdbeExplainPop.exit:                       ; preds = %sqlite3ExprListDelete.exit, %sqlite3VdbeGetOp.exit.i.i
  %.0.i.i438 = phi i32 [ %i.zb, %sqlite3VdbeGetOp.exit.i.i ], [ 0, %sqlite3ExprListDelete.exit ]
  store i32 %.0.i.i438, ptr %i.yp, align 8, !tbaa !3529
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !321
  %i.ze = icmp ne i32 %i.zd, 0
  %i.zf = zext i1 %i.ze to i32
  br label %.critedge354

.critedge354:                                     ; preds = %._crit_edge.thread, %sqlite3VdbeExplainPop.exit
  %.4333 = phi i32 [ %i.zf, %sqlite3VdbeExplainPop.exit ], [ 7, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret i32 %.4333
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3SelectDeleteGeneric(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @clearSelect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @multiSelectByMergeKeyInfo(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2769 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !657    ; 2 uses
  %i.f = add nsw i32 %i.d, 1
  %i.g = tail call fastcc ptr @sqlite3KeyInfoAlloc(ptr noundef %i.e, i32 noundef %i.f, i32 noundef 1) ; 4 uses
  %.not38 = icmp ne ptr %i.g, null
  %i.h = icmp sgt i32 %i.d, 0
  %or.cond = and i1 %.not38, %i.h
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3229 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !372
  %i.q = and i32 %i.p, 512
  %.not39 = icmp eq i32 %i.q, 0
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef nonnull %0, ptr noundef nonnull %i.n)
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.t = load i16, ptr %i.s, align 4, !tbaa !231
  %i.u = zext i16 %i.t to i32
  %i.v = add nsw i32 %i.u, -1
  %i.w = tail call fastcc ptr @multiSelectCollSeq(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.v) ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !1320
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.y, %bb.g ], [ %i.w, %bb.f ]  ; 2 uses
  %i.z = load ptr, ptr %.0, align 8, !tbaa !1165  ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %sqlite3ExprAddCollateString.exit, label %sqlite3TokenInit.exit.i

sqlite3TokenInit.exit.i:                          ; preds = %bb.h
  %i.ab = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.z) #59, !inline_history !4045
  %i.ac = and i64 %i.ab, 1073741823               ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %sqlite3ExprAddCollateString.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3TokenInit.exit.i
  %i.ad = load ptr, ptr %0, align 8, !tbaa !657
  %i.ae = add nuw nsw i64 %i.ac, 73
  %i.af = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.ad, i64 noundef %i.ae), !inline_history !4046 ; 10 uses
  %.not24.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not24.i.i.i, label %sqlite3ExprAddCollateString.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.af, i8 0, i64 72, i1 false)
  store i8 114, ptr %i.af, align 8, !tbaa !2750
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 50
  store i16 -1, ptr %i.ag, align 2, !tbaa !3276
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 1 %i.z, i64 %i.ac, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac
  store i8 0, ptr %i.aj, align 1, !tbaa !231
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i32 1, ptr %i.ak, align 8, !tbaa !3277
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.n, ptr %i.al, align 8, !tbaa !376
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 8704, ptr %i.am, align 4, !tbaa !372
  br label %sqlite3ExprAddCollateString.exit

sqlite3ExprAddCollateString.exit:                 ; preds = %bb.h, %sqlite3TokenInit.exit.i, %bb.i, %bb.j
  %.1.i.i = phi ptr [ %i.n, %sqlite3TokenInit.exit.i ], [ %i.af, %bb.j ], [ %i.n, %bb.i ], [ %i.n, %bb.h ]
  store ptr %.1.i.i, ptr %i.m, align 8, !tbaa !3229
  br label %bb.k

bb.k:                                             ; preds = %sqlite3ExprAddCollateString.exit, %bb.e
  %.1 = phi ptr [ %i.r, %bb.e ], [ %.0, %sqlite3ExprAddCollateString.exit ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %.1, ptr %i.an, align 8, !tbaa !2309
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !3279
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !259
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !231
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !4404

.loopexit:                                        ; preds = %bb.k, %bb.c
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @multiSelectCollSeq(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2763 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @multiSelectCollSeq(ptr noundef %0, ptr noundef %i.b, i32 noundef %2) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2764 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = icmp slt i32 %2, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr inbounds [24 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3229
  %i.m = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %0, ptr noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.b
  %.1 = phi ptr [ %i.m, %bb.c ], [ null, %.thread ], [ %i.c, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeOffset(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !189  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.e = load i32, ptr %i.d, align 4, !tbaa !934
  %.not.i = icmp sgt i32 %i.e, %i.c
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 61, i32 noundef %1, i32 noundef %2, i32 noundef 1), !inline_history !3022 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.d:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.c, 1
  store i32 %i.g, ptr %i.b, align 8, !tbaa !189
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !188
  %i.j = sext i32 %i.c to i64
  %i.k = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.j ; 7 uses
  store i8 61, ptr %i.k, align 8, !tbaa !576
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !577
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %1, ptr %i.m, align 4, !tbaa !572
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %2, ptr %i.n, align 8, !tbaa !574
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !575
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.c, %bb.d
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %0, ptr noundef nonnull @.str.911)
  br label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeAddOp3.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @generateOutputSubroutine(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef range(i32 -2147483645, -2147483648) %4, i32 noundef range(i32 -2147483647, -2147483648) %5, ptr noundef %6, i32 noundef range(i32 -2147483648, 2147483647) %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !976  ; 62 uses
  %i.c = getelementptr i8, ptr %i.b, i64 144      ; 44 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !189 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3024 ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 5 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !3024
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %sqlite3VdbeAddOp2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !934
  %.not.i.i = icmp sgt i32 %i.h, %.val
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 17, i32 noundef %5, i32 noundef 0, i32 noundef 0), !inline_history !3306
  br label %sqlite3VdbeAddOp1.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.val, 1
  store i32 %i.j, ptr %i.c, align 8, !tbaa !189
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !188
  %i.m = sext i32 %.val to i64
  %i.n = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.m ; 5 uses
  store i8 17, ptr %i.n, align 8, !tbaa !576
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i16 0, ptr %i.o, align 2, !tbaa !577
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %5, ptr %i.p, align 4, !tbaa !572
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.r, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.i, %bb.c ], [ %.val, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3376
  %i.u = add nsw i32 %5, 1                        ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !3377
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %sqlite3KeyInfoRef.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeAddOp1.exit
  %i.x = load i32, ptr %6, align 8, !tbaa !27
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %6, align 8, !tbaa !27
  br label %sqlite3KeyInfoRef.exit

sqlite3KeyInfoRef.exit:                           ; preds = %sqlite3VdbeAddOp1.exit, %bb.e
  %i.z = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %i.b, i32 noundef 92, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.w, ptr noundef %6, i32 noundef -9)
  %i.aa = add nsw i32 %i.z, 2                     ; 4 uses
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !189 ; 3 uses
  %i.ac = load i32, ptr %i.g, align 4, !tbaa !934
  %.not.i154 = icmp sgt i32 %i.ac, %i.ab
  br i1 %.not.i154, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sqlite3KeyInfoRef.exit
  %i.ad = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 14, i32 noundef %i.aa, i32 noundef %i.f, i32 noundef %i.aa), !inline_history !3022 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.g:                                             ; preds = %sqlite3KeyInfoRef.exit
  %i.ae = add nsw i32 %i.ab, 1
  store i32 %i.ae, ptr %i.c, align 8, !tbaa !189
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !188
  %i.ah = sext i32 %i.ab to i64
  %i.ai = getelementptr inbounds [32 x i8], ptr %i.ag, i64 %i.ah ; 7 uses
  store i8 14, ptr %i.ai, align 8, !tbaa !576
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i16 0, ptr %i.aj, align 2, !tbaa !577
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.aa, ptr %i.ak, align 4, !tbaa !572
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.f, ptr %i.al, align 8, !tbaa !574
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 %i.aa, ptr %i.am, align 4, !tbaa !575
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
end_hunk_21
begin_hunk_22_@isLikeOrGlob:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !976
  %i.cc = icmp sgt i16 %i.av, 31
  %i.cd = add nsw i32 %i.aw, -1
  %i.ce = shl nuw nsw i32 1, %i.cd
  %.sink5.i = select i1 %i.cc, i32 -2147483648, i32 %i.ce
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 284 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !817
  %i.ch = or i32 %i.cg, %.sink5.i
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !817
  br label %bb.w

bb.u:                                             ; preds = %sqlite3ExprSkipCollate.exit
  %i.ci = icmp eq i8 %i.am, 118
  br i1 %i.ci, label %bb.v, label %.critedge158

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !231
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %sqlite3_value_text.exit
  %.1126 = phi ptr [ %.0125, %sqlite3_value_text.exit ], [ %i.ck, %bb.v ] ; 9 uses
  %.0120 = phi ptr [ %.1.i164195, %sqlite3_value_text.exit ], [ null, %bb.v ] ; 12 uses
  %.not134 = icmp eq ptr %.1126, null
  br i1 %.not134, label %sqlite3ReleaseTempReg.exit, label %.preheader

.preheader:                                       ; preds = %bb.w
  %i.cl = load i8, ptr %.1126, align 1, !tbaa !231 ; 6 uses
  %.not135219 = icmp eq i8 %i.cl, 0
  %.not136220 = icmp eq i8 %i.cl, %.sroa.0.0.copyload
  %or.cond221 = select i1 %.not135219, i1 true, i1 %.not136220
  %.not137222 = icmp eq i8 %i.cl, %.sroa.6.0.copyload
  %or.cond149223 = select i1 %or.cond221, i1 true, i1 %.not137222
  %.not138224 = icmp eq i8 %i.cl, %.sroa.8.0.copyload
  %or.cond151225 = select i1 %or.cond149223, i1 true, i1 %.not138224
  br i1 %or.cond151225, label %sqlite3ReleaseTempReg.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.cn = ptrtoint ptr %.1126 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.af
  %i.co = phi i8 [ %i.cl, %.lr.ph ], [ %i.ee, %bb.af ] ; 3 uses
  %.0121226 = phi i32 [ 0, %.lr.ph ], [ %.2123, %bb.af ] ; 5 uses
  %i.cp = add nsw i32 %.0121226, 1                ; 3 uses
  %i.cq = icmp eq i8 %i.co, %.sink.i
  br i1 %i.cq, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds i8, ptr %.1126, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !231
  %or.cond152 = icmp sgt i8 %i.ct, 0
  br i1 %or.cond152, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = add nsw i32 %.0121226, 2
  br label %bb.af

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.cv = icmp slt i8 %i.co, 0
  br i1 %i.cv, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cw = icmp eq i8 %i.co, -1
  br i1 %i.cw, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = sext i32 %i.cp to i64
  %i.cy = getelementptr inbounds i8, ptr %.1126, i64 %i.cx ; 5 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !231 ; 2 uses
  %i.db = icmp ugt i8 %i.da, -65
  br i1 %i.db, label %bb.ad, label %sqlite3Utf8Read.exit.thread203

bb.ad:                                            ; preds = %bb.ac
  %i.dc = zext i8 %i.da to i64
  %i.dd = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -192
  %i.df = load i8, ptr %i.de, align 1, !tbaa !231
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %i.dh = load i8, ptr %i.cy, align 1, !tbaa !231 ; 2 uses
  %i.di = icmp slt i8 %i.dh, -64
  br i1 %i.di, label %.lr.ph.i167, label %._crit_edge.i

.lr.ph.i167:                                      ; preds = %bb.ad, %.lr.ph.i167
  %i.dj = phi i8 [ %i.dq, %.lr.ph.i167 ], [ %i.dh, %bb.ad ]
  %.014.i = phi i32 [ %i.dp, %.lr.ph.i167 ], [ %i.dg, %bb.ad ]
  %i.dk = phi ptr [ %i.dm, %.lr.ph.i167 ], [ %i.cy, %bb.ad ]
  %i.dl = shl i32 %.014.i, 6
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1 ; 3 uses
  %i.dn = and i8 %i.dj, 63
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = or disjoint i32 %i.dl, %i.do            ; 2 uses
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !231 ; 2 uses
  %i.dr = icmp slt i8 %i.dq, -64
  br i1 %i.dr, label %.lr.ph.i167, label %._crit_edge.i, !llvm.loop !1023

._crit_edge.i:                                    ; preds = %.lr.ph.i167, %bb.ad
  %.0 = phi ptr [ %i.cy, %bb.ad ], [ %i.dm, %.lr.ph.i167 ]
  %.0.lcssa.i166 = phi i32 [ %i.dg, %bb.ad ], [ %i.dp, %.lr.ph.i167 ] ; 3 uses
  %i.ds = icmp ult i32 %.0.lcssa.i166, 128
  %i.dt = and i32 %.0.lcssa.i166, -2048
  %i.du = icmp eq i32 %i.dt, 55296
  %or.cond.i = or i1 %i.ds, %i.du
  %i.dv = add i32 %.0.lcssa.i166, -65533
  %i.dw = icmp ult i32 %i.dv, 3
  %or.cond217 = or i1 %i.dw, %or.cond.i
  br i1 %or.cond217, label %.critedge, label %sqlite3Utf8Read.exit.thread203

sqlite3Utf8Read.exit.thread203:                   ; preds = %._crit_edge.i, %bb.ac
  %.1206 = phi ptr [ %.0, %._crit_edge.i ], [ %i.cy, %bb.ac ]
  %i.dx = load i8, ptr %i.cm, align 4, !tbaa !871
  %i.dy = icmp eq i8 %i.dx, 2
  br i1 %i.dy, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %sqlite3Utf8Read.exit.thread203
  %i.dz = ptrtoint ptr %.1206 to i64
  %i.ea = sub i64 %i.dz, %i.cn
  %i.eb = trunc i64 %i.ea to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa, %bb.z
  %.2123 = phi i32 [ %i.cu, %bb.z ], [ %i.eb, %bb.ae ], [ %i.cp, %bb.aa ] ; 3 uses
  %i.ec = sext i32 %.2123 to i64
  %i.ed = getelementptr inbounds i8, ptr %.1126, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !231 ; 5 uses
  %.not135 = icmp eq i8 %i.ee, 0
  %.not136 = icmp eq i8 %i.ee, %.sroa.0.0.copyload ; 2 uses
  %or.cond = select i1 %.not135, i1 true, i1 %.not136
  %.not137 = icmp eq i8 %i.ee, %.sroa.6.0.copyload
  %or.cond149 = select i1 %or.cond, i1 true, i1 %.not137
  %.not138 = icmp eq i8 %i.ee, %.sroa.8.0.copyload
  %or.cond151 = select i1 %or.cond149, i1 true, i1 %.not138
  br i1 %or.cond151, label %.critedge, label %bb.x, !llvm.loop !4558

.critedge:                                        ; preds = %bb.af, %sqlite3Utf8Read.exit.thread203, %bb.ab, %._crit_edge.i
  %.0121.lcssa = phi i32 [ %.0121226, %._crit_edge.i ], [ %.2123, %bb.af ], [ %.0121226, %sqlite3Utf8Read.exit.thread203 ], [ %.0121226, %bb.ab ] ; 3 uses
  %.not136.lcssa = phi i1 [ false, %._crit_edge.i ], [ %.not136, %bb.af ], [ false, %sqlite3Utf8Read.exit.thread203 ], [ false, %bb.ab ]
  %i.ef = icmp sgt i32 %.0121.lcssa, 1
  br i1 %i.ef, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.eg = icmp ne i32 %.0121.lcssa, 1
  %.not140 = icmp eq i8 %i.cl, %.sink.i
  %or.cond267 = or i1 %i.eg, %.not140
  br i1 %or.cond267, label %sqlite3ReleaseTempReg.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.critedge
  %.0121.lcssa261 = phi i32 [ 1, %bb.ag ], [ %.0121.lcssa, %.critedge ] ; 2 uses
  %i.eh = zext nneg i32 %.0121.lcssa261 to i64    ; 2 uses
  %i.ei = getelementptr i8, ptr %.1126, i64 %i.eh ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !231
  %.not141 = icmp eq i8 %i.ek, -1
  br i1 %.not141, label %sqlite3ReleaseTempReg.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not136.lcssa, label %bb.aj, label %sqlite3Strlen30.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.el = getelementptr i8, ptr %i.ei, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !231
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %bb.ak, label %sqlite3Strlen30.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.ep = load i8, ptr %i.eo, align 4, !tbaa !871
  %i.eq = icmp ne i8 %i.ep, 2
  %i.er = zext i1 %i.eq to i32
  br label %sqlite3Strlen30.exit.i

sqlite3Strlen30.exit.i:                           ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.es = phi i32 [ 0, %bb.aj ], [ 0, %bb.ai ], [ %i.er, %bb.ak ]
  store i32 %i.es, ptr %3, align 4, !tbaa !27
  %i.et = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.1126) #59, !inline_history !4101 ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %i.ev = and i32 %i.eu, 1073741823               ; 2 uses
  %narrow.i = add nuw nsw i32 %i.ev, 73
  %i.ew = zext nneg i32 %narrow.i to i64
  %i.ex = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.b, i64 noundef %i.ew), !inline_history !3275 ; 9 uses
  %.not24.i.i = icmp eq ptr %i.ex, null
  br i1 %.not24.i.i, label %.critedge156, label %bb.al

bb.al:                                            ; preds = %sqlite3Strlen30.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ex, i8 0, i64 72, i1 false)
  store i8 118, ptr %i.ex, align 8, !tbaa !2750
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 50
  store i16 -1, ptr %i.ey, align 2, !tbaa !3276
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 72 ; 12 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !231
  %.not26.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not26.i.i, label %.lr.ph238, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = and i64 %i.et, 1073741823               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr nonnull readonly align 1 %.1126, i64 %i.fb, i1 false)
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.al, %bb.am
  %i.fc = phi i64 [ %i.fb, %bb.am ], [ 0, %bb.al ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fc
  store i8 0, ptr %i.fd, align 1, !tbaa !231
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i32 1, ptr %i.fe, align 8, !tbaa !3277
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.eh
  store i8 0, ptr %i.ff, align 1, !tbaa !231
  %i.fg = zext i8 %.sink.i to i32
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph238, %bb.an
  %indvars.iv = phi i64 [ 0, %.lr.ph238 ], [ %indvars.iv.next, %bb.an ] ; 4 uses
  %.0114236 = phi i32 [ 0, %.lr.ph238 ], [ %i.fr, %bb.an ] ; 2 uses
  %i.fh = sext i32 %.0114236 to i64
  %i.fi = getelementptr inbounds i8, ptr %i.ez, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !231
  %i.fk = sext i8 %i.fj to i32
  %i.fl = icmp eq i32 %i.fk, %i.fg
  %i.fm = zext i1 %i.fl to i32
  %spec.select = add nsw i32 %.0114236, %i.fm     ; 2 uses
  %i.fn = sext i32 %spec.select to i64
  %i.fo = getelementptr inbounds i8, ptr %i.ez, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !231
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !231
  %i.fr = add nsw i32 %spec.select, 1             ; 2 uses
  %i.fs = icmp slt i32 %i.fr, %.0121.lcssa261
  br i1 %i.fs, label %bb.an, label %._crit_edge, !llvm.loop !4559

._crit_edge:                                      ; preds = %bb.an
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next
  store i8 0, ptr %i.ft, align 1, !tbaa !231
  %i.fu = load i8, ptr %i.ah, align 8, !tbaa !2750
  %.not143 = icmp eq i8 %i.fu, -88
  br i1 %.not143, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %._crit_edge
  %i.fv = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef nonnull %i.ah)
  %.not144 = icmp eq i8 %i.fv, 66
  br i1 %.not144, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !372
  %i.fy = and i32 %i.fx, 50331648
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.aq, label %.critedge156

bb.aq:                                            ; preds = %bb.ap
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !231 ; 2 uses
  %.not145 = icmp eq ptr %i.gb, null
  br i1 %.not145, label %.critedge156, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 63
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !907
  %i.ge = icmp eq i8 %i.gd, 1
  br i1 %i.ge, label %bb.as, label %.critedge156

bb.as:                                            ; preds = %bb.ar, %bb.ao, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.gf = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.ez, ptr noundef nonnull %i.a)
  %i.gg = icmp slt i32 %i.gf, 1
  br i1 %i.gg, label %bb.at, label %sqlite3ExprDelete.exit

bb.at:                                            ; preds = %bb.as
  %i.gh = icmp eq i64 %indvars.iv, 0
  br i1 %i.gh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gi = load i8, ptr %i.ez, align 8, !tbaa !231
  %i.gj = icmp eq i8 %i.gi, 45
  br i1 %i.gj, label %sqlite3ExprDelete.exit, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gk = getelementptr i8, ptr %i.ez, i64 %indvars.iv ; 3 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !231 ; 2 uses
  %i.gm = add i8 %i.gl, 1
  store i8 %i.gm, ptr %i.gk, align 1, !tbaa !231
  %i.gn = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.ez, ptr noundef nonnull %i.a)
  store i8 %i.gl, ptr %i.gk, align 1, !tbaa !231
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %sqlite3ExprDelete.exit, label %.critedge154

sqlite3ExprDelete.exit:                           ; preds = %bb.as, %bb.au, %bb.av
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.b, ptr noundef nonnull %i.ex), !inline_history !148
  %.not.i170 = icmp eq ptr %.0120, null
  br i1 %.not.i170, label %sqlite3ValueFree.exit, label %bb.aw

bb.aw:                                            ; preds = %sqlite3ExprDelete.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %.0120, i64 20
  %i.gq = load i16, ptr %i.gp, align 4, !tbaa !166
  %i.gr = and i16 %i.gq, -28672
  %.not.i.i171 = icmp eq i16 %i.gr, 0
  br i1 %.not.i.i171, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gs = getelementptr inbounds nuw i8, ptr %.0120, i64 32
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !163
  %.not3.i.i = icmp eq i32 %i.gt, 0
  br i1 %.not3.i.i, label %sqlite3VdbeMemRelease.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %.0120)
  br label %sqlite3VdbeMemRelease.exit.i

sqlite3VdbeMemRelease.exit.i:                     ; preds = %bb.ay, %bb.ax
  %i.gu = getelementptr inbounds nuw i8, ptr %.0120, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !161
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.gv, ptr noundef nonnull %.0120)
  br label %sqlite3ValueFree.exit

sqlite3ValueFree.exit:                            ; preds = %sqlite3ExprDelete.exit, %sqlite3VdbeMemRelease.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %.critedge158

.critedge154:                                     ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %.critedge156

.critedge156:                                     ; preds = %sqlite3Strlen30.exit.i, %bb.ap, %bb.aq, %bb.ar, %.critedge154
  store ptr %i.ex, ptr %2, align 8, !tbaa !371
  br i1 %i.an, label %bb.az, label %sqlite3ReleaseTempReg.exit

bb.az:                                            ; preds = %.critedge156
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !976 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  %i.gz = load i16, ptr %i.gy, align 8, !tbaa !3235 ; 2 uses
  %i.ha = sext i16 %i.gz to i32
  %i.hb = icmp sgt i16 %i.gz, 31
  %i.hc = add nsw i32 %i.ha, -1
  %i.hd = shl nuw nsw i32 1, %i.hc
  %.sink5.i172 = select i1 %i.hb, i32 -2147483648, i32 %i.hd
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 284 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !817
  %i.hg = or i32 %.sink5.i172, %i.hf
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !817
  %i.hh = load i32, ptr %3, align 4, !tbaa !27
  %.not146 = icmp eq i32 %i.hh, 0
  br i1 %.not146, label %sqlite3ReleaseTempReg.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hi = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !231
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !231
  %.not147 = icmp eq i8 %i.hl, 0
  br i1 %.not147, label %sqlite3ReleaseTempReg.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 4 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !3539 ; 2 uses
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !944
  %i.hr = add nsw i32 %i.hq, 1                    ; 2 uses
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !944
  br label %sqlite3GetTempReg.exit

bb.bd:                                            ; preds = %bb.bb
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ht = add i8 %i.hn, -1                        ; 2 uses
  store i8 %i.ht, ptr %i.hm, align 1, !tbaa !3539
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !27
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.bc, %bb.bd
  %.0.i = phi i32 [ %i.hr, %bb.bc ], [ %i.hw, %bb.bd ] ; 3 uses
  %i.hx = tail call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef nonnull %.06.i, i32 noundef %.0.i) ; 0 uses
  %i.hy = load ptr, ptr %i.gx, align 8, !tbaa !150
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 103
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !563
  %.not.i.i173 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i173, label %bb.be, label %sqlite3VdbeChangeP3.exit

bb.be:                                            ; preds = %sqlite3GetTempReg.exit
  %i.ib = getelementptr i8, ptr %i.gx, i64 144
  %.val = load i32, ptr %i.ib, align 8, !tbaa !189
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gx, i64 136
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !188
  %i.ie = sext i32 %.val to i64
  %i.if = getelementptr [32 x i8], ptr %i.id, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 -32
  br label %sqlite3VdbeChangeP3.exit

sqlite3VdbeChangeP3.exit:                         ; preds = %sqlite3GetTempReg.exit, %bb.be
  %.0.i.i174 = phi ptr [ %i.ig, %bb.be ], [ @sqlite3VdbeGetOp.dummy, %sqlite3GetTempReg.exit ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i.i174, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !575
end_hunk_22
begin_hunk_23_@codeINTerm:bb.a
  br i1 %i.gk, label %.lr.ph120.preheader.i, label %.loopexit.i

.lr.ph120.preheader.i:                            ; preds = %adjustOrderByCol.exit107.i
  %i.gl = zext nneg i32 %i.gj to i64              ; 2 uses
  %xtraiter234 = and i64 %i.gl, 7                 ; 3 uses
  %i.gm = icmp ult i32 %i.gj, 8
  br i1 %i.gm, label %.lr.ph120.i.epil.preheader, label %.lr.ph120.preheader.i.new

.lr.ph120.preheader.i.new:                        ; preds = %.lr.ph120.preheader.i
  %unroll_iter238 = and i64 %i.gl, 2147483640
  br label %.lr.ph120.i

.lr.ph120.i:                                      ; preds = %.lr.ph120.i, %.lr.ph120.preheader.i.new
  %indvars.iv129.i = phi i64 [ 0, %.lr.ph120.preheader.i.new ], [ %indvars.iv.next130.i.7, %.lr.ph120.i ] ; 9 uses
  %niter239 = phi i64 [ 0, %.lr.ph120.preheader.i.new ], [ %niter239.next.7, %.lr.ph120.i ]
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %.070.lcssa.i, i64 %indvars.iv129.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  store i16 0, ptr %i.go, align 4, !tbaa !231
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %.070.lcssa.i, i64 %indvars.iv129.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 52
  store i16 0, ptr %i.gq, align 4, !tbaa !231
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %.070.lcssa.i, i64 %indvars.iv129.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 76
  store i16 0, ptr %i.gs, align 4, !tbaa !231
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %.070.lcssa.i, i64 %indvars.iv129.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 100
  store i16 0, ptr %i.gu, align 4, !tbaa !231
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %.070.lcssa.i, i64 %indvars.iv129.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 124
  store i16 0, ptr %i.gw, align 4, !tbaa !231
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %.070.lcssa.i, i64 %indvars.iv129.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 148
  store i16 0, ptr %i.gy, align 4, !tbaa !231
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %.070.lcssa.i, i64 %indvars.iv129.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 172
  store i16 0, ptr %i.ha, align 4, !tbaa !231
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %.070.lcssa.i, i64 %indvars.iv129.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 196
  store i16 0, ptr %i.hc, align 4, !tbaa !231
  %indvars.iv.next130.i.7 = add nuw nsw i64 %indvars.iv129.i, 8 ; 2 uses
  %niter239.next.7 = add i64 %niter239, 8         ; 2 uses
  %niter239.ncmp.7 = icmp eq i64 %niter239.next.7, %unroll_iter238
  br i1 %niter239.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph120.i, !llvm.loop !4709

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph120.i
  %lcmp.mod236.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod236.not, label %.loopexit.i, label %.lr.ph120.i.epil.preheader

.lr.ph120.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph120.preheader.i
  %indvars.iv129.i.epil.init = phi i64 [ 0, %.lr.ph120.preheader.i ], [ %indvars.iv.next130.i.7, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod237 = icmp ne i64 %xtraiter234, 0
  tail call void @llvm.assume(i1 %lcmp.mod237)
  br label %.lr.ph120.i.epil

.lr.ph120.i.epil:                                 ; preds = %.lr.ph120.i.epil, %.lr.ph120.i.epil.preheader
  %indvars.iv129.i.epil = phi i64 [ %indvars.iv129.i.epil.init, %.lr.ph120.i.epil.preheader ], [ %indvars.iv.next130.i.epil, %.lr.ph120.i.epil ] ; 2 uses
  %epil.iter235 = phi i64 [ 0, %.lr.ph120.i.epil.preheader ], [ %epil.iter235.next, %.lr.ph120.i.epil ]
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %.070.lcssa.i, i64 %indvars.iv129.i.epil
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 28
  store i16 0, ptr %i.he, align 4, !tbaa !231
  %indvars.iv.next130.i.epil = add nuw nsw i64 %indvars.iv129.i.epil, 1
  %epil.iter235.next = add i64 %epil.iter235, 1   ; 2 uses
  %epil.iter235.cmp.not = icmp eq i64 %epil.iter235.next, %xtraiter234
  br i1 %epil.iter235.cmp.not, label %.loopexit.i, label %.lr.ph120.i.epil, !llvm.loop !4710

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph120.i.epil, %adjustOrderByCol.exit107.i, %bb.aj
  %i.hf = getelementptr inbounds nuw i8, ptr %.074123.i, i64 72
  %.074.i = load ptr, ptr %i.hf, align 8, !tbaa !231 ; 2 uses
  %.not.i = icmp eq ptr %.074.i, null
  br i1 %.not.i, label %removeUnindexableInClauseTerms.exit, label %bb.n, !llvm.loop !4711

removeUnindexableInClauseTerms.exit:              ; preds = %.loopexit.i
  %.pr.pre = load i8, ptr %i.bx, align 1, !tbaa !563
  %i.hg = icmp eq i8 %.pr.pre, 0
  br i1 %i.hg, label %sqlite3DbMallocRaw.exit.i, label %removeUnindexableInClauseTerms.exit.thread

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.m, %removeUnindexableInClauseTerms.exit
  %i.hh = zext nneg i32 %.0111.lcssa to i64
  %i.hi = shl nuw nsw i64 %i.hh, 2                ; 2 uses
  %i.hj = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.bv, i64 noundef %i.hi), !inline_history !878 ; 4 uses
  %.not.i139 = icmp eq ptr %i.hj, null
  br i1 %.not.i139, label %sqlite3DbMallocZero.exit, label %bb.ap

bb.ap:                                            ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hj, i8 0, i64 %i.hi, i1 false)
  br label %sqlite3DbMallocZero.exit

sqlite3DbMallocZero.exit:                         ; preds = %sqlite3DbMallocRaw.exit.i, %bb.ap
  %i.hk = call fastcc i32 @sqlite3FindInIndex(ptr noundef nonnull %0, ptr noundef %i.bw, i32 noundef 4, ptr noundef null, ptr noundef %i.hj, ptr noundef %i.a)
  br label %removeUnindexableInClauseTerms.exit.thread

removeUnindexableInClauseTerms.exit.thread:       ; preds = %sqlite3ExprDup.exit.i, %sqlite3DbMallocZero.exit, %removeUnindexableInClauseTerms.exit
  %.0118 = phi i32 [ 5, %removeUnindexableInClauseTerms.exit ], [ %i.hk, %sqlite3DbMallocZero.exit ], [ 5, %sqlite3ExprDup.exit.i ] ; 2 uses
  %.0109 = phi ptr [ null, %removeUnindexableInClauseTerms.exit ], [ %i.hj, %sqlite3DbMallocZero.exit ], [ null, %sqlite3ExprDup.exit.i ] ; 2 uses
  %.not.i140 = icmp eq ptr %i.bw, null
  br i1 %.not.i140, label %sqlite3ExprDelete.exit, label %bb.aq

bb.aq:                                            ; preds = %removeUnindexableInClauseTerms.exit.thread
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.bv, ptr noundef %i.bw), !inline_history !148
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.aq, %removeUnindexableInClauseTerms.exit.thread, %bb.l
  %.1119 = phi i32 [ %i.bu, %bb.l ], [ %.0118, %removeUnindexableInClauseTerms.exit.thread ], [ %.0118, %bb.aq ] ; 2 uses
  %.1110 = phi ptr [ null, %bb.l ], [ %.0109, %removeUnindexableInClauseTerms.exit.thread ], [ %.0109, %bb.aq ] ; 5 uses
  %i.hl = icmp eq i32 %.1119, 4
  %i.hm = zext i1 %i.hl to i32
  %.not131 = icmp eq i32 %.0120, %i.hm            ; 2 uses
  %i.hn = select i1 %.not131, i32 36, i32 32      ; 2 uses
  %i.ho = load i32, ptr %i.a, align 4, !tbaa !27  ; 11 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 16 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !189 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 148 ; 8 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !934
  %.not.i.i141 = icmp sgt i32 %i.hs, %i.hq
  br i1 %.not.i.i141, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %sqlite3ExprDelete.exit
  %i.ht = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.f, i32 noundef range(i32 -1, 511) %i.hn, i32 noundef %i.ho, i32 noundef 0, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.as:                                            ; preds = %sqlite3ExprDelete.exit
  %i.hu = add nsw i32 %i.hq, 1
  store i32 %i.hu, ptr %i.hp, align 8, !tbaa !189
  %i.hv = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !188
  %i.hx = sext i32 %i.hq to i64
  %i.hy = getelementptr inbounds [32 x i8], ptr %i.hw, i64 %i.hx ; 5 uses
  %i.hz = trunc nuw nsw i32 %i.hn to i8
  store i8 %i.hz, ptr %i.hy, align 8, !tbaa !576
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  store i16 0, ptr %i.ia, align 2, !tbaa !577
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store i32 %i.ho, ptr %i.ib, align 4, !tbaa !572
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  store i8 0, ptr %i.id, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.ar, %bb.as
  %i.ie = load i32, ptr %i.g, align 8, !tbaa !4221 ; 3 uses
  %i.if = or i32 %i.ie, 2048
  store i32 %i.if, ptr %i.g, align 8, !tbaa !4221
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !231
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.at, label %bb.au

bb.at:                                            ; preds = %sqlite3VdbeAddOp2.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3024
  %i.il = add nsw i32 %i.ik, -1                   ; 2 uses
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !3024
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.il, ptr %i.im, align 4, !tbaa !4337
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %sqlite3VdbeAddOp2.exit
  %i.in = and i32 %i.ie, 1048576
  %i.io = icmp eq i32 %i.in, 0
  %or.cond = select i1 %i.s, i1 %i.io, i1 false
  br i1 %or.cond, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ip = or i32 %i.ie, 264192
  store i32 %i.ip, ptr %i.g, align 8, !tbaa !4221
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.iq = load i32, ptr %i.ig, align 8, !tbaa !231 ; 2 uses
  %i.ir = add nsw i32 %i.iq, %.0111.lcssa         ; 2 uses
  store i32 %i.ir, ptr %i.ig, align 8, !tbaa !231
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !4521
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !4222 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !231 ; 3 uses
  %i.ix = sext i32 %i.ir to i64
  %i.iy = mul nsw i64 %i.ix, 20                   ; 2 uses
  %i.iz = load ptr, ptr %i.iu, align 8, !tbaa !844
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !657
  %i.jb = add nsw i64 %i.iy, 16
  %i.jc = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.ja, i64 noundef %i.jb), !inline_history !4712 ; 5 uses
  %.not.i.i143 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i143, label %bb.ce, label %sqlite3WhereMalloc.exit.i

sqlite3WhereMalloc.exit.i:                        ; preds = %bb.aw
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iu, i64 88 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !4278
  store ptr %i.je, ptr %i.jc, align 8, !tbaa !4280
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %i.iy, ptr %i.jf, align 8, !tbaa !4282
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !4278
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 3 uses
  %.not.i144 = icmp eq ptr %i.iw, null
  br i1 %.not.i144, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %sqlite3WhereMalloc.exit.i
  %i.jh = getelementptr inbounds i8, ptr %i.iw, i64 -8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !4282
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jg, ptr nonnull readonly align 8 %i.iw, i64 %i.ji, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %sqlite3WhereMalloc.exit.i, %bb.ax
  store ptr %i.jg, ptr %i.iv, align 8, !tbaa !231
  %i.jj = load i16, ptr %i.v, align 4, !tbaa !4219 ; 2 uses
  %i.jk = zext i16 %i.jj to i32                   ; 2 uses
  %i.jl = icmp slt i32 %3, %i.jk
  br i1 %i.jl, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %bb.ay
  %i.jm = sext i32 %i.iq to i64
  %i.jn = getelementptr inbounds [20 x i8], ptr %i.jg, i64 %i.jm ; 7 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.jp = sub i32 %5, %3
  %i.jq = icmp eq i32 %.1119, 1                   ; 2 uses
  %.not133 = icmp eq ptr %.1110, null             ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 6 uses
  %i.js = select i1 %.not131, i8 40, i8 39
  %i.jt = sext i32 %3 to i64                      ; 2 uses
  %i.ju = load ptr, ptr %i.jo, align 8, !tbaa !4216
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.jt
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !4254
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1160
  %i.jy = icmp eq ptr %i.jx, %i.b
  br i1 %i.jy, label %bb.az, label %bb.bm

bb.az:                                            ; preds = %.lr.ph171
  br i1 %i.jq, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %.not133, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jz = load i32, ptr %.1110, align 4, !tbaa !27
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1.peel = phi i32 [ 1, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.ka = phi i32 [ %i.jz, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.kb = load i32, ptr %i.hp, align 8, !tbaa !189 ; 4 uses
  %i.kc = load i32, ptr %i.hr, align 4, !tbaa !934
  %.not.i148.peel = icmp sgt i32 %i.kc, %i.kb
  br i1 %.not.i148.peel, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kd = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.f, i32 noundef 96, i32 noundef %i.ho, i32 noundef %i.ka, i32 noundef %5), !inline_history !3022
  br label %sqlite3VdbeAddOp3.exit.peel

bb.be:                                            ; preds = %bb.bc
  %i.ke = add nsw i32 %i.kb, 1
  store i32 %i.ke, ptr %i.hp, align 8, !tbaa !189
  %i.kf = load ptr, ptr %i.jr, align 8, !tbaa !188
  %i.kg = sext i32 %i.kb to i64
  %i.kh = getelementptr inbounds [32 x i8], ptr %i.kf, i64 %i.kg ; 7 uses
  store i8 96, ptr %i.kh, align 8, !tbaa !576
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 2
  store i16 0, ptr %i.ki, align 2, !tbaa !577
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store i32 %i.ho, ptr %i.kj, align 4, !tbaa !572
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i32 %i.ka, ptr %i.kk, align 8, !tbaa !574
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  store i32 %5, ptr %i.kl, align 4, !tbaa !575
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  store i8 0, ptr %i.kn, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.km, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit.peel

bb.bf:                                            ; preds = %bb.az
  %i.ko = load i32, ptr %i.hp, align 8, !tbaa !189 ; 4 uses
  %i.kp = load i32, ptr %i.hr, align 4, !tbaa !934
  %.not.i.i145.peel = icmp sgt i32 %i.kp, %i.ko
  br i1 %.not.i.i145.peel, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kq = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.f, i32 noundef 137, i32 noundef %i.ho, i32 noundef %5, i32 noundef 0), !inline_history !977
  br label %sqlite3VdbeAddOp3.exit.peel

bb.bh:                                            ; preds = %bb.bf
  %i.kr = add nsw i32 %i.ko, 1
  store i32 %i.kr, ptr %i.hp, align 8, !tbaa !189
  %i.ks = load ptr, ptr %i.jr, align 8, !tbaa !188
  %i.kt = sext i32 %i.ko to i64
  %i.ku = getelementptr inbounds [32 x i8], ptr %i.ks, i64 %i.kt ; 6 uses
  store i8 -119, ptr %i.ku, align 8, !tbaa !576
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  store i16 0, ptr %i.kv, align 2, !tbaa !577
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  store i32 %i.ho, ptr %i.kw, align 4, !tbaa !572
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store i32 %5, ptr %i.kx, align 8, !tbaa !574
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  store i8 0, ptr %i.kz, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ky, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp3.exit.peel

sqlite3VdbeAddOp3.exit.peel:                      ; preds = %bb.bg, %bb.bh, %bb.bd, %bb.be
  %.0.i.i146.peel.sink = phi i32 [ %i.kb, %bb.be ], [ %i.kd, %bb.bd ], [ %i.kq, %bb.bg ], [ %i.ko, %bb.bh ]
  %.2.peel = phi i32 [ %.1.peel, %bb.be ], [ %.1.peel, %bb.bd ], [ 0, %bb.bg ], [ 0, %bb.bh ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  store i32 %.0.i.i146.peel.sink, ptr %i.la, align 4, !tbaa !4338
  %i.lb = load i32, ptr %i.hp, align 8, !tbaa !189 ; 3 uses
  %i.lc = load i32, ptr %i.hr, align 4, !tbaa !934
  %.not.i.i149.peel = icmp sgt i32 %i.lc, %i.lb
  br i1 %.not.i.i149.peel, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %sqlite3VdbeAddOp3.exit.peel
  %i.ld = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.f, i32 noundef 51, i32 noundef %5, i32 noundef 0, i32 noundef 0), !inline_history !3306 ; 0 uses
  br label %sqlite3VdbeAddOp1.exit.peel

bb.bj:                                            ; preds = %sqlite3VdbeAddOp3.exit.peel
  %i.le = add nsw i32 %i.lb, 1
  store i32 %i.le, ptr %i.hp, align 8, !tbaa !189
  %i.lf = load ptr, ptr %i.jr, align 8, !tbaa !188
  %i.lg = sext i32 %i.lb to i64
  %i.lh = getelementptr inbounds [32 x i8], ptr %i.lf, i64 %i.lg ; 5 uses
  store i8 51, ptr %i.lh, align 8, !tbaa !576
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  store i16 0, ptr %i.li, align 2, !tbaa !577
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store i32 %5, ptr %i.lj, align 4, !tbaa !572
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  store i8 0, ptr %i.ll, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lk, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit.peel

sqlite3VdbeAddOp1.exit.peel:                      ; preds = %bb.bi, %bb.bj
  store i32 %i.ho, ptr %i.jn, align 4, !tbaa !4342
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store i8 %i.js, ptr %i.lm, align 4, !tbaa !4340
  br i1 %i.s, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %sqlite3VdbeAddOp1.exit.peel
  %i.ln = sub i32 %5, %3
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !4343
  br label %bb.bl

bb.bl:                                            ; preds = %sqlite3VdbeAddOp1.exit.peel, %bb.bk
  %.sink = phi i32 [ %3, %bb.bk ], [ 0, %sqlite3VdbeAddOp1.exit.peel ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  store i32 %.sink, ptr %i.lp, align 4, !tbaa !4341
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jn, i64 20
  %.pre = load i16, ptr %i.v, align 4, !tbaa !4219 ; 2 uses
  %.pre188 = zext i16 %.pre to i32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph171
  %.pre-phi = phi i32 [ %.pre188, %bb.bl ], [ %i.jk, %.lr.ph171 ]
  %i.lr = phi i16 [ %.pre, %bb.bl ], [ %i.jj, %.lr.ph171 ]
  %.1117.peel = phi ptr [ %i.lq, %bb.bl ], [ %i.jn, %.lr.ph171 ]
  %.3.peel = phi i32 [ %.2.peel, %bb.bl ], [ 0, %.lr.ph171 ]
  %indvars.iv.next183.peel = add nsw i64 %i.jt, 1 ; 2 uses
  %i.ls = zext nneg i32 %.pre-phi to i64
  %i.lt = icmp slt i64 %indvars.iv.next183.peel, %i.ls
  br i1 %i.lt, label %.peel.next, label %._crit_edge172

.peel.next:                                       ; preds = %bb.bm, %bb.bz
  %i.lu = phi i16 [ %i.nu, %bb.bz ], [ %i.lr, %bb.bm ]
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %bb.bz ], [ %indvars.iv.next183.peel, %bb.bm ] ; 3 uses
  %.0169 = phi i32 [ %.3, %bb.bz ], [ %.3.peel, %bb.bm ] ; 6 uses
  %.0116166 = phi ptr [ %.1117, %bb.bz ], [ %.1117.peel, %bb.bm ] ; 4 uses
  %i.lv = load ptr, ptr %i.jo, align 8, !tbaa !4216
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %indvars.iv182
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !4254
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !1160
  %i.lz = icmp eq ptr %i.ly, %i.b
  br i1 %i.lz, label %bb.bn, label %bb.bz

bb.bn:                                            ; preds = %.peel.next
  %i.ma = trunc nsw i64 %indvars.iv182 to i32
  %i.mb = add i32 %i.jp, %i.ma                    ; 6 uses
  br i1 %i.jq, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.mc = load i32, ptr %i.hp, align 8, !tbaa !189 ; 4 uses
  %i.md = load i32, ptr %i.hr, align 4, !tbaa !934
  %.not.i.i145 = icmp sgt i32 %i.md, %i.mc
  br i1 %.not.i.i145, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.me = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.f, i32 noundef 137, i32 noundef %i.ho, i32 noundef %i.mb, i32 noundef 0), !inline_history !977
  br label %sqlite3VdbeAddOp2.exit147

bb.bq:                                            ; preds = %bb.bo
  %i.mf = add nsw i32 %i.mc, 1
  store i32 %i.mf, ptr %i.hp, align 8, !tbaa !189
  %i.mg = load ptr, ptr %i.jr, align 8, !tbaa !188
  %i.mh = sext i32 %i.mc to i64
  %i.mi = getelementptr inbounds [32 x i8], ptr %i.mg, i64 %i.mh ; 6 uses
  store i8 -119, ptr %i.mi, align 8, !tbaa !576
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  store i16 0, ptr %i.mj, align 2, !tbaa !577
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 %i.ho, ptr %i.mk, align 4, !tbaa !572
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store i32 %i.mb, ptr %i.ml, align 8, !tbaa !574
end_hunk_23
begin_hunk_24_@codeReturningTrigger:bb.a
  call fastcc void @sqlite3GenerateColumnNames(ptr noundef nonnull %0, ptr noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !2764 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %sqlite3ExprListDelete.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @exprListDeleteNN(ptr noundef %i.c, ptr noundef %i.v), !inline_history !1010
  br label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %bb.e, %bb.f
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !3647 ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !657    ; 14 uses
  %i.y = load i32, ptr %i.w, align 8, !tbaa !27
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph82.i, label %sqlite3ExpandReturning.exit

.lr.ph82.i:                                       ; preds = %sqlite3ExprListDelete.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 54 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 412 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 464 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 424 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 456 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 448 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 440 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 432 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 408
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 103 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 428 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.lr.ph82.i
  %indvars.iv85.i = phi i64 [ 0, %.lr.ph82.i ], [ %indvars.iv.next86.i, %.loopexit.i ] ; 2 uses
  %.081.i = phi ptr [ null, %.lr.ph82.i ], [ %.4.i, %.loopexit.i ] ; 10 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv85.i ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !3229 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.ao, align 8, !tbaa !2750
  switch i8 %i.aq, label %sqlite3ExprDup.exit.i [
    i8 -76, label %isAsteriskTerm.exit.i
    i8 -114, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1162
  %i.at = load i8, ptr %i.as, align 8, !tbaa !2750
  %.not5.i.i = icmp eq i8 %i.at, -76
  br i1 %.not5.i.i, label %bb.j, label %sqlite3ExprDup.exit.i

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1035), !inline_history !4802
  br label %isAsteriskTerm.exit.i

isAsteriskTerm.exit.i:                            ; preds = %bb.j, %bb.h
  %i.au = load i16, ptr %i.ab, align 2, !tbaa !914
  %i.av = icmp sgt i16 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %isAsteriskTerm.exit.i, %bb.ae
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ae ], [ 0, %isAsteriskTerm.exit.i ] ; 3 uses
  %.179.i = phi ptr [ %.2.i, %bb.ae ], [ %.081.i, %isAsteriskTerm.exit.i ] ; 8 uses
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !913
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 14
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !1329
  %i.ba = and i16 %i.az, 2
  %.not51.i = icmp eq i16 %i.ba, 0
  br i1 %.not51.i, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %.lr.ph.i
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !917 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %sqlite3Strlen30.exit.i.thread.i, label %sqlite3Strlen30.exit.i.i

sqlite3Strlen30.exit.i.i:                         ; preds = %bb.k
  %i.bd = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bb) #59, !inline_history !4803
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1073741823               ; 5 uses
  %narrow.i.i = add nuw nsw i32 %i.bf, 73         ; 2 uses
  %i.bg = zext nneg i32 %narrow.i.i to i64        ; 3 uses
  %i.bh = load i16, ptr %i.ad, align 4, !tbaa !567
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp samesign ugt i32 %narrow.i.i, %i.bi
  br i1 %i.bj, label %bb.l, label %bb.o

sqlite3Strlen30.exit.i.thread.i:                  ; preds = %bb.k
  %i.bk = load i16, ptr %i.ad, align 4, !tbaa !567
  %i.bl = icmp ult i16 %i.bk, 73
  br i1 %i.bl, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %sqlite3Strlen30.exit.i.thread.i, %sqlite3Strlen30.exit.i.i
  %i.bm = phi i64 [ 73, %sqlite3Strlen30.exit.i.thread.i ], [ %i.bg, %sqlite3Strlen30.exit.i.i ] ; 2 uses
  %.0.i.i104.i = phi i32 [ 0, %sqlite3Strlen30.exit.i.thread.i ], [ %i.bf, %sqlite3Strlen30.exit.i.i ] ; 2 uses
  %i.bn = load i32, ptr %i.ak, align 8, !tbaa !566
  %.not39.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not39.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %i.am, align 4, !tbaa !27
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.am, align 4, !tbaa !27
  br label %sqlite3DbMallocRawNN.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bq = load i8, ptr %i.al, align 1, !tbaa !563
  %.not40.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not40.i.i, label %sqlite3DbMallocRawNN.exit.i, label %sqlite3Expr.exit.i

bb.o:                                             ; preds = %sqlite3Strlen30.exit.i.i
  %i.br = icmp samesign ult i32 %i.bf, 56
  br i1 %i.br, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %bb.o, %sqlite3Strlen30.exit.i.thread.i
  %.0.i.i103107.i = phi i32 [ %i.bf, %bb.o ], [ 0, %sqlite3Strlen30.exit.i.thread.i ] ; 3 uses
  %i.bs = phi i64 [ %i.bg, %bb.o ], [ 73, %sqlite3Strlen30.exit.i.thread.i ]
  %i.bt = load ptr, ptr %i.ae, align 8, !tbaa !59 ; 3 uses
  %.not.i68.i = icmp eq ptr %i.bt, null
  br i1 %.not.i68.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !53
  store ptr %i.bu, ptr %i.ae, align 8, !tbaa !59
  br label %sqlite3DbMallocRawNN.exit.thread.sink.split.i

bb.q:                                             ; preds = %.thread.i
  %i.bv = load ptr, ptr %i.ag, align 8, !tbaa !58 ; 3 uses
  %.not36.i.i = icmp eq ptr %i.bv, null
  br i1 %.not36.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !53
  store ptr %i.bw, ptr %i.ag, align 8, !tbaa !58
  br label %sqlite3DbMallocRawNN.exit.thread.sink.split.i

bb.s:                                             ; preds = %bb.q, %bb.o
  %.0.i.i103106.i = phi i32 [ %.0.i.i103107.i, %bb.q ], [ %i.bf, %bb.o ] ; 3 uses
  %i.bx = phi i64 [ %i.bs, %bb.q ], [ %i.bg, %bb.o ]
  %i.by = load ptr, ptr %i.ah, align 8, !tbaa !57 ; 3 uses
  %.not37.i.i = icmp eq ptr %i.by, null
  br i1 %.not37.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !53
  store ptr %i.bz, ptr %i.ah, align 8, !tbaa !57
  br label %sqlite3DbMallocRawNN.exit.thread.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 3 uses
  %.not38.i.i = icmp eq ptr %i.ca, null
  br i1 %.not38.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !53
  store ptr %i.cb, ptr %i.ai, align 8, !tbaa !52
  br label %sqlite3DbMallocRawNN.exit.thread.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.cc = load i32, ptr %i.aj, align 8, !tbaa !27
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.aj, align 8, !tbaa !27
  br label %sqlite3DbMallocRawNN.exit.i

sqlite3DbMallocRawNN.exit.i:                      ; preds = %bb.w, %bb.n, %bb.m
  %.sink.i = phi i64 [ %i.bx, %bb.w ], [ %i.bm, %bb.n ], [ %i.bm, %bb.m ]
  %.0.i.i102.i = phi i32 [ %.0.i.i103106.i, %bb.w ], [ %.0.i.i104.i, %bb.n ], [ %.0.i.i104.i, %bb.m ]
  %i.ce = call fastcc ptr @dbMallocRawFinish(ptr noundef nonnull %i.x, i64 noundef %.sink.i) #61, !inline_history !4804 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not24.i.i.i, label %sqlite3Expr.exit.i, label %sqlite3DbMallocRawNN.exit.thread.i

sqlite3DbMallocRawNN.exit.thread.sink.split.i:    ; preds = %bb.v, %bb.t, %bb.r, %bb.p
  %.0.i.i101.ph.i = phi i32 [ %.0.i.i103107.i, %bb.p ], [ %.0.i.i103107.i, %bb.r ], [ %.0.i.i103106.i, %bb.t ], [ %.0.i.i103106.i, %bb.v ]
  %.0.i6773.ph.i = phi ptr [ %i.bt, %bb.p ], [ %i.bv, %bb.r ], [ %i.by, %bb.t ], [ %i.ca, %bb.v ]
  %i.cf = load i32, ptr %i.af, align 8, !tbaa !27
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.af, align 8, !tbaa !27
  br label %sqlite3DbMallocRawNN.exit.thread.i

sqlite3DbMallocRawNN.exit.thread.i:               ; preds = %sqlite3DbMallocRawNN.exit.thread.sink.split.i, %sqlite3DbMallocRawNN.exit.i
  %.0.i.i101.i = phi i32 [ %.0.i.i102.i, %sqlite3DbMallocRawNN.exit.i ], [ %.0.i.i101.ph.i, %sqlite3DbMallocRawNN.exit.thread.sink.split.i ] ; 2 uses
  %.0.i6773.i = phi ptr [ %i.ce, %sqlite3DbMallocRawNN.exit.i ], [ %.0.i6773.ph.i, %sqlite3DbMallocRawNN.exit.thread.sink.split.i ] ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i6773.i, i8 0, i64 72, i1 false)
  store i8 60, ptr %.0.i6773.i, align 8, !tbaa !2750
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i6773.i, i64 50
  store i16 -1, ptr %i.ch, align 2, !tbaa !3276
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i6773.i, i64 72 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i6773.i, i64 8
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !231
  %.not26.i.i.i = icmp eq i32 %.0.i.i101.i, 0
  br i1 %.not26.i.i.i, label %sqlite3DequoteExpr.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %sqlite3DbMallocRawNN.exit.thread.i
  %i.ck = zext nneg i32 %.0.i.i101.i to i64       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr readonly align 1 %i.bb, i64 %i.ck, i1 false)
  br label %sqlite3DequoteExpr.exit.i.i.i

sqlite3DequoteExpr.exit.i.i.i:                    ; preds = %bb.x, %sqlite3DbMallocRawNN.exit.thread.i
  %i.cl = phi i64 [ %i.ck, %bb.x ], [ 0, %sqlite3DbMallocRawNN.exit.thread.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cl
  store i8 0, ptr %i.cm, align 1, !tbaa !231
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i6773.i, i64 40
  store i32 1, ptr %i.cn, align 8, !tbaa !3277
  br label %sqlite3Expr.exit.i

sqlite3Expr.exit.i:                               ; preds = %sqlite3DequoteExpr.exit.i.i.i, %sqlite3DbMallocRawNN.exit.i, %bb.n
  %.0.i6774.i = phi ptr [ null, %sqlite3DbMallocRawNN.exit.i ], [ %.0.i6773.i, %sqlite3DequoteExpr.exit.i.i.i ], [ null, %bb.n ] ; 3 uses
  %i.co = icmp eq ptr %.179.i, null
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %sqlite3Expr.exit.i
  %i.cp = load ptr, ptr %0, align 8, !tbaa !657
  %i.cq = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.cp, ptr noundef %.0.i6774.i), !inline_history !4805
  br label %sqlite3ExprListAppend.exit.i

bb.z:                                             ; preds = %sqlite3Expr.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.179.i, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !27
  %i.ct = load i32, ptr %.179.i, align 8, !tbaa !27 ; 3 uses
  %.not.i.i = icmp sgt i32 %i.cs, %i.ct
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %0, align 8, !tbaa !657
  %i.cv = call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.cu, ptr noundef %.179.i, ptr noundef %.0.i6774.i), !inline_history !4805
  br label %sqlite3ExprListAppend.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.cw = add nsw i32 %i.ct, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.179.i, i64 8
  store i32 %i.cw, ptr %.179.i, align 8, !tbaa !27
  %i.cy = sext i32 %i.ct to i64
  %i.cz = getelementptr inbounds [24 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  store ptr %.0.i6774.i, ptr %i.cz, align 8, !tbaa !3229
  br label %sqlite3ExprListAppend.exit.i

sqlite3ExprListAppend.exit.i:                     ; preds = %bb.ab, %bb.aa, %bb.y
  %.0.i53.i = phi ptr [ %i.cq, %bb.y ], [ %i.cv, %bb.aa ], [ %.179.i, %bb.ab ] ; 4 uses
  %i.db = load i8, ptr %i.al, align 1, !tbaa !563
  %.not52.i = icmp eq i8 %i.db, 0
  br i1 %.not52.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %sqlite3ExprListAppend.exit.i
  %i.dc = load i32, ptr %.0.i53.i, align 8, !tbaa !27
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [24 x i8], ptr %.0.i53.i, i64 %i.dd ; 2 uses
  %i.df = load ptr, ptr %i.ac, align 8, !tbaa !913
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.i
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !917 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %sqlite3DbStrDup.exit.i, label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.ac
  %i.dj = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dh) #59, !inline_history !4806
  %i.dk = add i64 %i.dj, 1                        ; 2 uses
  %i.dl = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.x, i64 noundef %i.dk), !inline_history !4807 ; 3 uses
  %.not.i55.i = icmp eq ptr %i.dl, null
  br i1 %.not.i55.i, label %sqlite3DbStrDup.exit.i, label %bb.ad

bb.ad:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull readonly align 1 %i.dh, i64 %i.dk, i1 false)
  br label %sqlite3DbStrDup.exit.i

sqlite3DbStrDup.exit.i:                           ; preds = %bb.ad, %sqlite3DbMallocRaw.exit.i.i, %bb.ac
  %.0.i56.i = phi ptr [ null, %bb.ac ], [ %i.dl, %bb.ad ], [ null, %sqlite3DbMallocRaw.exit.i.i ]
  %i.dm = getelementptr i8, ptr %i.de, i64 -8
  store ptr %.0.i56.i, ptr %i.dm, align 8, !tbaa !3232
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 1
  %i.dp = and i16 %i.do, -4
  store i16 %i.dp, ptr %i.dn, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %sqlite3DbStrDup.exit.i, %sqlite3ExprListAppend.exit.i, %.lr.ph.i
  %.2.i = phi ptr [ %.179.i, %.lr.ph.i ], [ %.0.i53.i, %sqlite3DbStrDup.exit.i ], [ %.0.i53.i, %sqlite3ExprListAppend.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dq = load i16, ptr %i.ab, align 2, !tbaa !914
  %i.dr = sext i16 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next.i, %i.dr
  br i1 %i.ds, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !4808

sqlite3ExprDup.exit.i:                            ; preds = %bb.i, %bb.h
  %i.dt = call fastcc ptr @exprDup(ptr noundef %i.x, ptr noundef nonnull readonly %i.ao, i32 noundef 0, ptr noundef null), !inline_history !4809 ; 3 uses
  %i.du = icmp eq ptr %.081.i, null
  br i1 %i.du, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %sqlite3ExprDup.exit.i
  %i.dv = load ptr, ptr %0, align 8, !tbaa !657
  %i.dw = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.dv, ptr noundef %i.dt), !inline_history !4805
  br label %sqlite3ExprListAppend.exit60.i

bb.ag:                                            ; preds = %sqlite3ExprDup.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.081.i, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !27
  %i.dz = load i32, ptr %.081.i, align 8, !tbaa !27 ; 3 uses
  %.not.i58.i = icmp sgt i32 %i.dy, %i.dz
  br i1 %.not.i58.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr %0, align 8, !tbaa !657
  %i.eb = call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.ea, ptr noundef %.081.i, ptr noundef %i.dt), !inline_history !4805
  br label %sqlite3ExprListAppend.exit60.i

bb.ai:                                            ; preds = %bb.ag
  %i.ec = add nsw i32 %i.dz, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.081.i, i64 8
  store i32 %i.ec, ptr %.081.i, align 8, !tbaa !27
  %i.ee = sext i32 %i.dz to i64
  %i.ef = getelementptr inbounds [24 x i8], ptr %i.ed, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  store ptr %i.dt, ptr %i.ef, align 8, !tbaa !3229
  br label %sqlite3ExprListAppend.exit60.i

sqlite3ExprListAppend.exit60.i:                   ; preds = %bb.ai, %bb.ah, %bb.af
  %.0.i59.i = phi ptr [ %i.dw, %bb.af ], [ %i.eb, %bb.ah ], [ %.081.i, %bb.ai ] ; 5 uses
  %i.eh = load i8, ptr %i.al, align 1, !tbaa !563
  %.not49.i = icmp eq i8 %i.eh, 0
  br i1 %.not49.i, label %bb.aj, label %.loopexit.i

bb.aj:                                            ; preds = %sqlite3ExprListAppend.exit60.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !3232 ; 3 uses
  %.not50.i = icmp eq ptr %i.ej, null
  br i1 %.not50.i, label %.loopexit.i, label %sqlite3DbMallocRaw.exit.i62.i

sqlite3DbMallocRaw.exit.i62.i:                    ; preds = %bb.aj
  %i.ek = load i32, ptr %.0.i59.i, align 8, !tbaa !27
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr [24 x i8], ptr %.0.i59.i, i64 %i.el ; 2 uses
  %i.en = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ej) #59, !inline_history !4806
  %i.eo = add i64 %i.en, 1                        ; 2 uses
  %i.ep = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.x, i64 noundef %i.eo), !inline_history !4807 ; 3 uses
  %.not.i64.i = icmp eq ptr %i.ep, null
  br i1 %.not.i64.i, label %sqlite3DbStrDup.exit66.i, label %bb.ak

bb.ak:                                            ; preds = %sqlite3DbMallocRaw.exit.i62.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr nonnull readonly align 1 %i.ej, i64 %i.eo, i1 false)
  br label %sqlite3DbStrDup.exit66.i

sqlite3DbStrDup.exit66.i:                         ; preds = %bb.ak, %sqlite3DbMallocRaw.exit.i62.i
  %i.eq = getelementptr i8, ptr %i.em, i64 -8
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !3232
  %i.er = getelementptr inbounds nuw i8, ptr %i.an, i64 17
  %i.es = load i16, ptr %i.er, align 1
  %i.et = and i16 %i.es, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 1
  %i.ew = and i16 %i.ev, -4
  %i.ex = or disjoint i16 %i.ew, %i.et
  store i16 %i.ex, ptr %i.eu, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ae, %sqlite3DbStrDup.exit66.i, %bb.aj, %sqlite3ExprListAppend.exit60.i, %isAsteriskTerm.exit.i, %bb.g
  %.4.i = phi ptr [ %.081.i, %bb.g ], [ %.0.i59.i, %sqlite3ExprListAppend.exit60.i ], [ %.0.i59.i, %sqlite3DbStrDup.exit66.i ], [ %.0.i59.i, %bb.aj ], [ %.081.i, %isAsteriskTerm.exit.i ], [ %.2.i, %bb.ae ] ; 2 uses
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %i.ey = load i32, ptr %i.w, align 8, !tbaa !27
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp slt i64 %indvars.iv.next86.i, %i.ez
  br i1 %i.fa, label %bb.g, label %sqlite3ExpandReturning.exit, !llvm.loop !4810

sqlite3ExpandReturning.exit:                      ; preds = %.loopexit.i, %sqlite3ExprListDelete.exit
  %.0.lcssa.i = phi ptr [ null, %sqlite3ExprListDelete.exit ], [ %.4.i, %.loopexit.i ] ; 7 uses
  %i.fb = load i32, ptr %i.s, align 4, !tbaa !321
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.al, label %bb.av

bb.al:                                            ; preds = %sqlite3ExpandReturning.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 180 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3302
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fg = load i32, ptr %.0.lcssa.i, align 8, !tbaa !27
  store i32 %i.fg, ptr %i.fd, align 4, !tbaa !3302
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !945 ; 2 uses
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fh, align 8, !tbaa !945
  %i.fk = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store i32 %i.fi, ptr %i.fk, align 8, !tbaa !3305
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store ptr %0, ptr %6, align 8, !tbaa !3356
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %3, ptr %i.fl, align 8, !tbaa !231
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 1024, ptr %i.fm, align 8, !tbaa !3360
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_24
begin_hunk_25_@fkLookupParent:bb.a
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anm, i64 76
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !3024
  %i.ans = add nsw i32 %i.anr, %i.anp
  %i.ant = icmp slt i32 %i.ans, 0
  br i1 %i.ant, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %sqlite3HaltConstraint.exit
  tail call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.anm, ptr noundef nonnull readonly %.0.i, i32 noundef %i.ann), !inline_history !3730
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i, i64 144
  %.pre274 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !189
  br label %sqlite3VdbeResolveLabel.exit

bb.ch:                                            ; preds = %sqlite3HaltConstraint.exit
  %i.anu = getelementptr inbounds nuw i8, ptr %.0.i, i64 144
  %i.anv = load i32, ptr %i.anu, align 8, !tbaa !189 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anm, i64 88
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !1008
  %i.any = sext i32 %i.ann to i64
  %i.anz = getelementptr inbounds [4 x i8], ptr %i.anx, i64 %i.any
  store i32 %i.anv, ptr %i.anz, align 4, !tbaa !27
  br label %sqlite3VdbeResolveLabel.exit

sqlite3VdbeResolveLabel.exit:                     ; preds = %bb.cg, %bb.ch
  %i.aoa = phi i32 [ %.pre274, %bb.cg ], [ %i.anv, %bb.ch ] ; 3 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !934
  %.not.i.i245 = icmp sgt i32 %i.aoc, %i.aoa
  br i1 %.not.i.i245, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %sqlite3VdbeResolveLabel.exit
  %i.aod = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 124, i32 noundef %i.q, i32 noundef 0, i32 noundef 0), !inline_history !3306 ; 0 uses
  br label %sqlite3VdbeAddOp1.exit

bb.cj:                                            ; preds = %sqlite3VdbeResolveLabel.exit
  %i.aoe = getelementptr inbounds nuw i8, ptr %.0.i, i64 144
  %i.aof = add nsw i32 %i.aoa, 1
  store i32 %i.aof, ptr %i.aoe, align 8, !tbaa !189
  %i.aog = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !188
  %i.aoi = sext i32 %i.aoa to i64
  %i.aoj = getelementptr inbounds [32 x i8], ptr %i.aoh, i64 %i.aoi ; 5 uses
  store i8 124, ptr %i.aoj, align 8, !tbaa !576
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 2
  store i16 0, ptr %i.aok, align 2, !tbaa !577
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoj, i64 4
  store i32 %i.q, ptr %i.aol, align 4, !tbaa !572
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aoj, i64 1
  store i8 0, ptr %i.aon, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aom, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %bb.ci, %bb.cj
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fkScanChildren(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, i32 noundef range(i32 -1, 2) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.Walker, align 8             ; 11 uses
  %9 = alloca %struct.NameContext, align 8        ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !657    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !976  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %sqlite3GetVdbe.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3339
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1351
  %i.i = and i32 %i.h, 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.l = load i16, ptr %i.k, align 1
  %i.m = or i16 %i.l, 128
  store i16 %i.m, ptr %i.k, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.n = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0), !inline_history !3340
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.a, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ %i.c, %bb.a ] ; 11 uses
  %i.o = icmp slt i32 %7, 0
  br i1 %i.o, label %bb.f, label %sqlite3VdbeAddOp2.exit

bb.f:                                             ; preds = %sqlite3GetVdbe.exit
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = load i8, ptr %i.p, align 4, !tbaa !231
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !189  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.v = load i32, ptr %i.u, align 4, !tbaa !934
  %.not.i.i = icmp sgt i32 %i.v, %i.t
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 60, i32 noundef %i.r, i32 noundef 0, i32 noundef 0), !inline_history !977
  br label %sqlite3VdbeAddOp2.exit

bb.h:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.t, 1
  store i32 %i.x, ptr %i.s, align 8, !tbaa !189
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !188
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [32 x i8], ptr %i.z, i64 %i.aa ; 5 uses
  store i8 60, ptr %i.ab, align 8, !tbaa !576
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i16 0, ptr %i.ac, align 2, !tbaa !577
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.r, ptr %i.ad, align 4, !tbaa !572
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 0, ptr %i.af, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.h, %bb.g, %sqlite3GetVdbe.exit
  %.083 = phi i32 [ 0, %sqlite3GetVdbe.exit ], [ %i.w, %bb.g ], [ %i.t, %bb.h ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !27
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sqlite3VdbeAddOp2.exit
  %.not92 = icmp eq ptr %3, null
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not93 = icmp eq ptr %5, null
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 308
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %sqlite3ExprAnd.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3ExprAnd.exit ] ; 3 uses
  %.084124 = phi ptr [ null, %.lr.ph ], [ %.1.i, %sqlite3ExprAnd.exit ] ; 5 uses
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !927
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !338
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ap = phi i16 [ %i.ao, %bb.j ], [ -1, %bb.i ]
  %i.aq = tail call fastcc ptr @exprTableRegister(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %6, i16 noundef signext %i.ap)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %.in = select i1 %.not93, ptr %i.ak, ptr %i.ar
  %i.as = load i32, ptr %.in, align 4, !tbaa !27
  %i.at = zext i32 %i.as to i64
  %i.au = load ptr, ptr %4, align 8, !tbaa !3313
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !913
  %sext = shl i64 %i.at, 48
  %i.ax = ashr exact i64 %sext, 44
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !917 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %sqlite3Strlen30.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.az) #59, !inline_history !4101
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 1073741823
  br label %sqlite3Strlen30.exit.i

sqlite3Strlen30.exit.i:                           ; preds = %bb.l, %bb.k
  %.0.i.i94 = phi i32 [ %i.bd, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %narrow.i = add nuw nsw i32 %.0.i.i94, 73
  %i.be = zext nneg i32 %narrow.i to i64
  %i.bf = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.be), !inline_history !3275 ; 8 uses
  %.not24.i.i = icmp eq ptr %i.bf, null
  br i1 %.not24.i.i, label %sqlite3Expr.exit, label %bb.m

bb.m:                                             ; preds = %sqlite3Strlen30.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bf, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.bf, align 8, !tbaa !2750
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 50
  store i16 -1, ptr %i.bg, align 2, !tbaa !3276
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 72 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !231
  %.not26.i.i = icmp eq i32 %.0.i.i94, 0
  br i1 %.not26.i.i, label %sqlite3DequoteExpr.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = zext nneg i32 %.0.i.i94 to i64          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr readonly align 1 %i.az, i64 %i.bj, i1 false)
  br label %sqlite3DequoteExpr.exit.i.i

sqlite3DequoteExpr.exit.i.i:                      ; preds = %bb.n, %bb.m
  %i.bk = phi i64 [ %i.bj, %bb.n ], [ 0, %bb.m ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bk
  store i8 0, ptr %i.bl, align 1, !tbaa !231
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i32 1, ptr %i.bm, align 8, !tbaa !3277
  br label %sqlite3Expr.exit

sqlite3Expr.exit:                                 ; preds = %sqlite3Strlen30.exit.i, %sqlite3DequoteExpr.exit.i.i
  %i.bn = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 54, ptr noundef %i.aq, ptr noundef %i.bf) ; 5 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !657
  %i.bp = icmp eq ptr %.084124, null
  br i1 %i.bp, label %sqlite3ExprAnd.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3Expr.exit
  %i.bq = icmp eq ptr %i.bn, null
  br i1 %i.bq, label %sqlite3ExprAnd.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.084124, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !372
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !372
  %i.bv = or i32 %i.bu, %i.bs
  %i.bw = and i32 %i.bv, 536870923
  %i.bx = icmp eq i32 %i.bw, 536870912
  br i1 %i.bx, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.by = load i8, ptr %i.al, align 4, !tbaa !1092
  %i.bz = icmp ugt i8 %i.by, 1
  br i1 %i.bz, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = tail call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %.084124), !inline_history !4191 ; 0 uses
  %i.cb = tail call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %i.bn), !inline_history !4191 ; 0 uses
  %i.cc = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.bo, i64 noundef 72), !inline_history !4192 ; 7 uses
  %.not.i.i95 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i95, label %sqlite3ExprAnd.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.cc, align 8, !tbaa !2750
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 50
  store i16 -1, ptr %i.cd, align 2, !tbaa !3276
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 545261568, ptr %i.ce, align 4, !tbaa !372
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store i32 1, ptr %i.cf, align 8, !tbaa !3277
  br label %sqlite3ExprAnd.exit

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.cg = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 44, ptr noundef nonnull %.084124, ptr noundef nonnull %i.bn), !inline_history !4191
  br label %sqlite3ExprAnd.exit

sqlite3ExprAnd.exit:                              ; preds = %sqlite3Expr.exit, %bb.o, %bb.r, %bb.s, %bb.t
  %.1.i = phi ptr [ %.084124, %bb.o ], [ %i.bn, %sqlite3Expr.exit ], [ %i.cg, %bb.t ], [ null, %bb.r ], [ %i.cc, %bb.s ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.ag, align 8, !tbaa !27
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %bb.i, label %._crit_edge, !llvm.loop !4831

._crit_edge:                                      ; preds = %sqlite3ExprAnd.exit, %sqlite3VdbeAddOp2.exit
  %.084.lcssa = phi ptr [ null, %sqlite3VdbeAddOp2.exit ], [ %.1.i, %sqlite3ExprAnd.exit ] ; 6 uses
  %i.ck = load ptr, ptr %4, align 8, !tbaa !3313
  %i.cl = icmp eq ptr %2, %i.ck
  %i.cm = icmp sgt i32 %7, 0
  %or.cond = and i1 %i.cm, %i.cl
  br i1 %or.cond, label %bb.u, label %sqlite3ExprAnd.exit111

bb.u:                                             ; preds = %._crit_edge
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !802
  %i.cp = and i32 %i.co, 128
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 94 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !924
  %.not130 = icmp eq i16 %i.cs, 0
  br i1 %.not130, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 308
  br label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %0, align 8, !tbaa !657
  %i.cx = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.cw, i64 noundef 73), !inline_history !4832 ; 10 uses
  %.not24.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not24.i.i.i, label %exprTableRegister.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cx, i8 0, i64 72, i1 false)
  store i8 -80, ptr %i.cx, align 8, !tbaa !2750
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 50
  store i16 -1, ptr %i.cy, align 2, !tbaa !3276
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 72 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !231
  store i8 0, ptr %i.cz, align 8, !tbaa !231
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store i32 1, ptr %i.db, align 8, !tbaa !3277
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 44
  store i32 %6, ptr %i.dc, align 4, !tbaa !3389
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store i8 68, ptr %i.dd, align 1, !tbaa !3237
  br label %exprTableRegister.exit

exprTableRegister.exit:                           ; preds = %bb.v, %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3355
  %i.dg = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef 73), !inline_history !4833 ; 11 uses
  %.not24.i.i.i96 = icmp eq ptr %i.dg, null
  br i1 %.not24.i.i.i96, label %exprTableColumn.exit, label %bb.x

bb.x:                                             ; preds = %exprTableRegister.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dg, i8 0, i64 64, i1 false)
  store i8 -88, ptr %i.dg, align 8, !tbaa !2750
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 50
  store i16 -1, ptr %i.dh, align 2, !tbaa !3276
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 72 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !231
  store i8 0, ptr %i.di, align 8, !tbaa !231
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i32 1, ptr %i.dk, align 8, !tbaa !3277
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  store ptr %2, ptr %i.dl, align 8, !tbaa !231
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 44
  store i32 %i.df, ptr %i.dm, align 4, !tbaa !3389
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  store i16 -1, ptr %i.dn, align 8, !tbaa !3235
  br label %exprTableColumn.exit

exprTableColumn.exit:                             ; preds = %exprTableRegister.exit, %bb.x
  %i.do = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 53, ptr noundef %i.cx, ptr noundef %i.dg)
  br label %sqlite3PExpr.exit

bb.y:                                             ; preds = %.lr.ph127, %sqlite3ExprAnd.exit106
  %indvars.iv132 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next133, %sqlite3ExprAnd.exit106 ] ; 2 uses
  %.0126 = phi ptr [ null, %.lr.ph127 ], [ %.1.i104, %sqlite3ExprAnd.exit106 ] ; 5 uses
  %i.dp = load ptr, ptr %i.ct, align 8, !tbaa !927
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv132
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !338 ; 2 uses
  %i.ds = tail call fastcc ptr @exprTableRegister(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %6, i16 noundef signext %i.dr)
  %i.dt = load ptr, ptr %i.cu, align 8, !tbaa !913
  %i.du = sext i16 %i.dr to i64
  %i.dv = getelementptr inbounds [16 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !917 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %sqlite3Strlen30.exit.i97, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dy = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dw) #59, !inline_history !4101
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 1073741823
  br label %sqlite3Strlen30.exit.i97

sqlite3Strlen30.exit.i97:                         ; preds = %bb.z, %bb.y
  %.0.i.i98 = phi i32 [ %i.ea, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %narrow.i99 = add nuw nsw i32 %.0.i.i98, 73
  %i.eb = zext nneg i32 %narrow.i99 to i64
  %i.ec = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.eb), !inline_history !3275 ; 8 uses
  %.not24.i.i100 = icmp eq ptr %i.ec, null
  br i1 %.not24.i.i100, label %sqlite3Expr.exit103, label %bb.aa

bb.aa:                                            ; preds = %sqlite3Strlen30.exit.i97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ec, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.ec, align 8, !tbaa !2750
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 50
  store i16 -1, ptr %i.ed, align 2, !tbaa !3276
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 72 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !231
  %.not26.i.i101 = icmp eq i32 %.0.i.i98, 0
  br i1 %.not26.i.i101, label %sqlite3DequoteExpr.exit.i.i102, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = zext nneg i32 %.0.i.i98 to i64          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr readonly align 1 %i.dw, i64 %i.eg, i1 false)
  br label %sqlite3DequoteExpr.exit.i.i102

sqlite3DequoteExpr.exit.i.i102:                   ; preds = %bb.ab, %bb.aa
  %i.eh = phi i64 [ %i.eg, %bb.ab ], [ 0, %bb.aa ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eh
  store i8 0, ptr %i.ei, align 1, !tbaa !231
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store i32 1, ptr %i.ej, align 8, !tbaa !3277
  br label %sqlite3Expr.exit103

sqlite3Expr.exit103:                              ; preds = %sqlite3Strlen30.exit.i97, %sqlite3DequoteExpr.exit.i.i102
  %i.ek = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 45, ptr noundef %i.ds, ptr noundef %i.ec) ; 5 uses
  %i.el = load ptr, ptr %0, align 8, !tbaa !657
  %i.em = icmp eq ptr %.0126, null
  br i1 %i.em, label %sqlite3ExprAnd.exit106, label %bb.ac

bb.ac:                                            ; preds = %sqlite3Expr.exit103
  %i.en = icmp eq ptr %i.ek, null
  br i1 %i.en, label %sqlite3ExprAnd.exit106, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %.0126, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !372
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !372
  %i.es = or i32 %i.er, %i.ep
  %i.et = and i32 %i.es, 536870923
  %i.eu = icmp eq i32 %i.et, 536870912
  br i1 %i.eu, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ev = load i8, ptr %i.cv, align 4, !tbaa !1092
  %i.ew = icmp ugt i8 %i.ev, 1
  br i1 %i.ew, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ex = tail call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %.0126), !inline_history !4191 ; 0 uses
  %i.ey = tail call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %i.ek), !inline_history !4191 ; 0 uses
  %i.ez = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.el, i64 noundef 72), !inline_history !4192 ; 7 uses
  %.not.i.i105 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i105, label %sqlite3ExprAnd.exit106, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ez, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.ez, align 8, !tbaa !2750
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 50
  store i16 -1, ptr %i.fa, align 2, !tbaa !3276
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i32 545261568, ptr %i.fb, align 4, !tbaa !372
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store i32 1, ptr %i.fc, align 8, !tbaa !3277
  br label %sqlite3ExprAnd.exit106

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  %i.fd = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 44, ptr noundef nonnull %.0126, ptr noundef nonnull %i.ek), !inline_history !4191
  br label %sqlite3ExprAnd.exit106

sqlite3ExprAnd.exit106:                           ; preds = %sqlite3Expr.exit103, %bb.ac, %bb.af, %bb.ag, %bb.ah
  %.1.i104 = phi ptr [ %.0126, %bb.ac ], [ %i.ek, %sqlite3Expr.exit103 ], [ %i.fd, %bb.ah ], [ null, %bb.af ], [ %i.ez, %bb.ag ] ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.fe = load i16, ptr %i.cr, align 2, !tbaa !924
  %i.ff = zext i16 %i.fe to i64
  %i.fg = icmp samesign ult i64 %indvars.iv.next133, %i.ff
  br i1 %i.fg, label %bb.y, label %._crit_edge128, !llvm.loop !4834

._crit_edge128:                                   ; preds = %sqlite3ExprAnd.exit106, %.preheader
  %.0.lcssa = phi ptr [ null, %.preheader ], [ %.1.i104, %sqlite3ExprAnd.exit106 ] ; 6 uses
  %i.fh = load ptr, ptr %0, align 8, !tbaa !657
  %i.fi = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.fh, i64 noundef 72), !inline_history !3432 ; 9 uses
  %.not.i107 = icmp eq ptr %i.fi, null
  br i1 %.not.i107, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fi, i8 0, i64 72, i1 false)
  store i8 19, ptr %i.fi, align 8, !tbaa !2750
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 50
  store i16 -1, ptr %i.fj, align 2, !tbaa !3276
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 40 ; 2 uses
  store i32 1, ptr %i.fk, align 8, !tbaa !3277
  %.not25.i.i = icmp eq ptr %.0.lcssa, null
  br i1 %.not25.i.i, label %sqlite3ExprAttachSubtrees.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store ptr %.0.lcssa, ptr %i.fl, align 8, !tbaa !376
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !372
  %i.fo = and i32 %i.fn, 4194824
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !372
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 40
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !3277 ; 2 uses
  %.not26.i.i108 = icmp slt i32 %i.fr, 1
  br i1 %.not26.i.i108, label %sqlite3ExprAttachSubtrees.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fs = add nuw nsw i32 %i.fr, 1                ; 2 uses
  store i32 %i.fs, ptr %i.fk, align 8, !tbaa !3277
  br label %sqlite3ExprAttachSubtrees.exit.i

sqlite3ExprAttachSubtrees.exit.i:                 ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ft = phi i32 [ 1, %bb.ai ], [ 1, %bb.aj ], [ %i.fs, %bb.ak ]
  %i.fu = load ptr, ptr %0, align 8, !tbaa !657
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 148
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !27 ; 2 uses
  %i.fx = icmp sgt i32 %i.ft, %i.fw
  br i1 %i.fx, label %bb.al, label %sqlite3PExpr.exit

bb.al:                                            ; preds = %sqlite3ExprAttachSubtrees.exit.i
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.819, i32 noundef %i.fw), !inline_history !3433
  br label %sqlite3PExpr.exit

bb.am:                                            ; preds = %._crit_edge128
  %.not.i16.i = icmp eq ptr %.0.lcssa, null
  br i1 %.not.i16.i, label %sqlite3PExpr.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fy = load ptr, ptr %0, align 8, !tbaa !657
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.fy, ptr noundef %.0.lcssa), !inline_history !3434
  br label %sqlite3PExpr.exit

sqlite3PExpr.exit:                                ; preds = %bb.al, %sqlite3ExprAttachSubtrees.exit.i, %bb.an, %bb.am, %exprTableColumn.exit
  %.082 = phi ptr [ %i.do, %exprTableColumn.exit ], [ null, %bb.am ], [ null, %bb.an ], [ %i.fi, %sqlite3ExprAttachSubtrees.exit.i ], [ %i.fi, %bb.al ] ; 5 uses
  %i.fz = load ptr, ptr %0, align 8, !tbaa !657
  %i.ga = icmp eq ptr %.084.lcssa, null
  br i1 %i.ga, label %sqlite3ExprAnd.exit111, label %bb.ao

bb.ao:                                            ; preds = %sqlite3PExpr.exit
  %i.gb = icmp eq ptr %.082, null
  br i1 %i.gb, label %sqlite3ExprAnd.exit111.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gc = getelementptr inbounds nuw i8, ptr %.084.lcssa, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !372
  %i.ge = getelementptr inbounds nuw i8, ptr %.082, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !372
  %i.gg = or i32 %i.gf, %i.gd
  %i.gh = and i32 %i.gg, 536870923
  %i.gi = icmp eq i32 %i.gh, 536870912
  br i1 %i.gi, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.gk = load i8, ptr %i.gj, align 4, !tbaa !1092
  %i.gl = icmp ugt i8 %i.gk, 1
  br i1 %i.gl, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gm = tail call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %.084.lcssa), !inline_history !4191 ; 0 uses
  %i.gn = tail call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %.082), !inline_history !4191 ; 0 uses
  %i.go = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.fz, i64 noundef 72), !inline_history !4192 ; 7 uses
  %.not.i.i110 = icmp eq ptr %i.go, null
  br i1 %.not.i.i110, label %sqlite3ExprAnd.exit111.thread121, label %bb.as

sqlite3ExprAnd.exit111.thread121:                 ; preds = %bb.ar
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gp, i8 0, i64 40, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.gq, align 8, !tbaa !3359
  store ptr %0, ptr %9, align 8, !tbaa !3356
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  br label %sqlite3ResolveExprNames.exit

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.go, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.go, align 8, !tbaa !2750
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 50
  store i16 -1, ptr %i.gr, align 2, !tbaa !3276
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 545261568, ptr %i.gs, align 4, !tbaa !372
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  store i32 1, ptr %i.gt, align 8, !tbaa !3277
  br label %sqlite3ExprAnd.exit111.thread

bb.at:                                            ; preds = %bb.aq, %bb.ap
  %i.gu = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 44, ptr noundef nonnull %.084.lcssa, ptr noundef nonnull %.082), !inline_history !4191
  br label %sqlite3ExprAnd.exit111

sqlite3ExprAnd.exit111.thread:                    ; preds = %bb.ao, %bb.as
  %.1.ph = phi ptr [ %i.go, %bb.as ], [ %.084.lcssa, %bb.ao ]
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gv, i8 0, i64 40, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.gw, align 8, !tbaa !3359
  store ptr %0, ptr %9, align 8, !tbaa !3356
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  br label %bb.au

sqlite3ExprAnd.exit111:                           ; preds = %bb.at, %sqlite3PExpr.exit, %._crit_edge
  %.1 = phi ptr [ %.084.lcssa, %._crit_edge ], [ %i.gu, %bb.at ], [ %.082, %sqlite3PExpr.exit ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gx, i8 0, i64 40, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.gy, align 8, !tbaa !3359
  store ptr %0, ptr %9, align 8, !tbaa !3356
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  %i.gz = icmp eq ptr %.1, null
  br i1 %i.gz, label %sqlite3ResolveExprNames.exit, label %bb.au

bb.au:                                            ; preds = %sqlite3ExprAnd.exit111.thread, %sqlite3ExprAnd.exit111
end_hunk_25
begin_hunk_26_@exprTableRegister:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 126
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 142
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 158
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 174
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 190
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 206
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 222
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 238
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 254
  %i.ba = load i16, ptr %i.ak, align 2, !tbaa !1329
  %i.bb = load i16, ptr %i.al, align 2, !tbaa !1329
  %i.bc = load i16, ptr %i.am, align 2, !tbaa !1329
  %i.bd = load i16, ptr %i.an, align 2, !tbaa !1329
  %i.be = load i16, ptr %i.ao, align 2, !tbaa !1329
  %i.bf = load i16, ptr %i.ap, align 2, !tbaa !1329
  %i.bg = load i16, ptr %i.aq, align 2, !tbaa !1329
  %i.bh = load i16, ptr %i.ar, align 2, !tbaa !1329
  %i.bi = insertelement <8 x i16> poison, i16 %i.ba, i64 0
  %i.bj = insertelement <8 x i16> %i.bi, i16 %i.bb, i64 1
  %i.bk = insertelement <8 x i16> %i.bj, i16 %i.bc, i64 2
  %i.bl = insertelement <8 x i16> %i.bk, i16 %i.bd, i64 3
  %i.bm = insertelement <8 x i16> %i.bl, i16 %i.be, i64 4
  %i.bn = insertelement <8 x i16> %i.bm, i16 %i.bf, i64 5
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 6
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 7
  %i.bq = load i16, ptr %i.as, align 2, !tbaa !1329
  %i.br = load i16, ptr %i.at, align 2, !tbaa !1329
  %i.bs = load i16, ptr %i.au, align 2, !tbaa !1329
  %i.bt = load i16, ptr %i.av, align 2, !tbaa !1329
  %i.bu = load i16, ptr %i.aw, align 2, !tbaa !1329
  %i.bv = load i16, ptr %i.ax, align 2, !tbaa !1329
  %i.bw = load i16, ptr %i.ay, align 2, !tbaa !1329
  %i.bx = load i16, ptr %i.az, align 2, !tbaa !1329
  %i.by = insertelement <8 x i16> poison, i16 %i.bq, i64 0
  %i.bz = insertelement <8 x i16> %i.by, i16 %i.br, i64 1
  %i.ca = insertelement <8 x i16> %i.bz, i16 %i.bs, i64 2
  %i.cb = insertelement <8 x i16> %i.ca, i16 %i.bt, i64 3
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bu, i64 4
  %i.cd = insertelement <8 x i16> %i.cc, i16 %i.bv, i64 5
  %i.ce = insertelement <8 x i16> %i.cd, i16 %i.bw, i64 6
  %i.cf = insertelement <8 x i16> %i.ce, i16 %i.bx, i64 7
  %i.cg = lshr <8 x i16> %i.bp, splat (i16 5)
  %i.ch = lshr <8 x i16> %i.cf, splat (i16 5)
  %i.ci = and <8 x i16> %i.cg, splat (i16 1)
  %i.cj = and <8 x i16> %i.ch, splat (i16 1)
  %i.ck = xor <8 x i16> %i.ci, splat (i16 1)
  %i.cl = xor <8 x i16> %i.cj, splat (i16 1)
  %i.cm = add <8 x i16> %i.ck, %vec.phi           ; 2 uses
  %i.cn = add <8 x i16> %i.cl, %vec.phi36         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !4835

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.cn, %i.cm
  %i.cp = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.t, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !2231

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.cp, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cq = and i64 %i.l, 3                         ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %i.cq
  %n.vec37 = sub nsw i64 %i.l, %i.cs              ; 2 uses
  %i.ct = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi39 = phi <4 x i16> [ %i.ct, %vec.epilog.ph ], [ %i.dn, %vec.epilog.vector.body ]
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index38
  %i.cv = getelementptr [16 x i8], ptr %i.k, i64 %index38
  %i.cw = getelementptr [16 x i8], ptr %i.k, i64 %index38
  %i.cx = getelementptr [16 x i8], ptr %i.k, i64 %index38
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 14
  %i.cz = getelementptr i8, ptr %i.cv, i64 30
  %i.da = getelementptr i8, ptr %i.cw, i64 46
  %i.db = getelementptr i8, ptr %i.cx, i64 62
  %i.dc = load i16, ptr %i.cy, align 2, !tbaa !1329
  %i.dd = load i16, ptr %i.cz, align 2, !tbaa !1329
  %i.de = load i16, ptr %i.da, align 2, !tbaa !1329
  %i.df = load i16, ptr %i.db, align 2, !tbaa !1329
  %i.dg = insertelement <4 x i16> poison, i16 %i.dc, i64 0
  %i.dh = insertelement <4 x i16> %i.dg, i16 %i.dd, i64 1
  %i.di = insertelement <4 x i16> %i.dh, i16 %i.de, i64 2
  %i.dj = insertelement <4 x i16> %i.di, i16 %i.df, i64 3
  %i.dk = lshr <4 x i16> %i.dj, splat (i16 5)
  %i.dl = and <4 x i16> %i.dk, splat (i16 1)
  %i.dm = xor <4 x i16> %i.dl, splat (i16 1)
  %i.dn = add <4 x i16> %i.dm, %vec.phi39         ; 2 uses
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4836

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dp = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dn)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ]
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 14
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !1329
  %i.dt = lshr i16 %i.ds, 5
  %i.du = and i16 %i.dt, 1
  %i.dv = xor i16 %i.du, 1
  %spec.select.i = add i16 %i.dv, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4837

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !1329 ; 3 uses
  %i.dy = and i16 %i.dx, 32
  %.not.i = icmp eq i16 %i.dy, 0
  br i1 %.not.i, label %sqlite3TableColumnToStorage.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ea = load i16, ptr %i.dz, align 8, !tbaa !1095
  %i.eb = sub i16 %3, %.0.lcssa.i
  %i.ec = add i16 %i.eb, %i.ea
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %.sqlite3TableColumnToStorage.exit_crit_edge, %._crit_edge.i, %bb.e
  %i.ed = phi i16 [ %.pre, %.sqlite3TableColumnToStorage.exit_crit_edge ], [ %i.dx, %bb.e ], [ %i.dx, %._crit_edge.i ] ; 2 uses
  %.018.i = phi i16 [ %3, %.sqlite3TableColumnToStorage.exit_crit_edge ], [ %i.ec, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.ee = sext i16 %.018.i to i32
  %i.ef = add i32 %2, 1
  %i.eg = add i32 %i.ef, %i.ee
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3389
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !2314
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !3237
  %i.el = and i16 %i.ed, 512
  %i.em = icmp eq i16 %i.el, 0
  br i1 %i.em, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.en = load ptr, ptr %i.m, align 8, !tbaa !917 ; 3 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.en) ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.en, i64 %strlen.i ; 2 uses
  %i.eo = and i16 %i.ed, 4
  %.not10.i = icmp eq i16 %i.eo, 0
  br i1 %.not10.i, label %.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.f
  %scevgep12.i = getelementptr i8, ptr %scevgep.i, i64 1
  %strlen13.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep12.i)
  %i.ep = getelementptr i8, ptr %i.en, i64 %strlen13.i
  %i.eq = getelementptr i8, ptr %i.ep, i64 %strlen.i
  %scevgep14.i = getelementptr i8, ptr %i.eq, i64 1
  br label %.thread

.thread:                                          ; preds = %.preheader.preheader.i, %bb.f
  %.2.i = phi ptr [ %scevgep.i, %bb.f ], [ %scevgep14.i, %.preheader.preheader.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br label %sqlite3TokenInit.exit.i

bb.g:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1320
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1165 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %sqlite3ExprAddCollateString.exit, label %sqlite3TokenInit.exit.i

sqlite3TokenInit.exit.i:                          ; preds = %.thread, %bb.g
  %.030 = phi ptr [ %i.er, %.thread ], [ %i.eu, %bb.g ] ; 2 uses
  %i.ew = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.030) #59, !inline_history !4045
  %i.ex = and i64 %i.ew, 1073741823               ; 4 uses
  %.not.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i, label %sqlite3ExprAddCollateString.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3TokenInit.exit.i
  %i.ey = load ptr, ptr %0, align 8, !tbaa !657
  %i.ez = add nuw nsw i64 %i.ex, 73
  %i.fa = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.ey, i64 noundef %i.ez), !inline_history !4046 ; 10 uses
  %.not24.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not24.i.i.i, label %sqlite3ExprAddCollateString.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fa, i8 0, i64 72, i1 false)
  store i8 114, ptr %i.fa, align 8, !tbaa !2750
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 50
  store i16 -1, ptr %i.fb, align 2, !tbaa !3276
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 72 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fc, ptr nonnull readonly align 1 %.030, i64 %i.ex, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ex
  store i8 0, ptr %i.fe, align 1, !tbaa !231
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  store i32 1, ptr %i.ff, align 8, !tbaa !3277
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store ptr %i.b, ptr %i.fg, align 8, !tbaa !376
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 8704, ptr %i.fh, align 4, !tbaa !372
  br label %sqlite3ExprAddCollateString.exit

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %2, ptr %i.fi, align 4, !tbaa !3389
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 68, ptr %i.fj, align 1, !tbaa !3237
  br label %sqlite3ExprAddCollateString.exit

sqlite3ExprAddCollateString.exit:                 ; preds = %bb.a, %bb.i, %bb.h, %sqlite3TokenInit.exit.i, %bb.g, %bb.j
  %.023 = phi ptr [ %i.b, %bb.g ], [ %i.b, %bb.j ], [ %i.b, %sqlite3TokenInit.exit.i ], [ %i.fa, %bb.i ], [ %i.b, %bb.h ], [ null, %bb.a ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fkActionTrigger(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef readnone captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !657    ; 34 uses
  %i.d = icmp ne ptr %3, null                     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 45
  %i.f = zext i1 %i.d to i64                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !231
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !557  ; 2 uses
  %i.l = and i64 %i.k, 34359738368
  %.not = icmp eq i64 %i.l, 0
  %spec.store.select = select i1 %.not, i32 %i.i, i32 0 ; 5 uses
  %i.m = icmp ne i32 %spec.store.select, 7        ; 3 uses
  %i.n = and i64 %i.k, 524288
  %.not180 = icmp eq i64 %i.n, 0
  %or.cond195 = or i1 %.not180, %i.m
  br i1 %or.cond195, label %bb.b, label %bb.cg

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.f ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2464 ; 2 uses
  %i.r = icmp eq i32 %spec.store.select, 0
  %i.s = icmp ne ptr %i.q, null
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.cg, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store ptr null, ptr %i.a, align 8, !tbaa !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store ptr null, ptr %i.b, align 8, !tbaa !350
  %i.t = call fastcc i32 @sqlite3FkLocateIndex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a, ptr noundef nonnull %i.b)
  %.not181 = icmp eq i32 %i.t, 0
  br i1 %.not181, label %.preheader, label %.sink.split411

.preheader:                                       ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !27
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.ab = icmp ne i32 %spec.store.select, 10
  %or.cond3 = or i1 %i.d, %i.ab
  %or.cond196 = and i1 %i.m, %or.cond3
  %trunc362 = trunc nuw i32 %spec.store.select to i8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %sqlite3ExprListSetName.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3ExprListSetName.exit ] ; 3 uses
  %.0160366 = phi ptr [ null, %.lr.ph ], [ %.1161, %sqlite3ExprListSetName.exit ] ; 6 uses
  %.0164364 = phi ptr [ null, %.lr.ph ], [ %.1165, %sqlite3ExprListSetName.exit ] ; 8 uses
  %.0166363 = phi ptr [ null, %.lr.ph ], [ %.1.i, %sqlite3ExprListSetName.exit ] ; 5 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !350 ; 2 uses
  %.not188 = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %.in = select i1 %.not188, ptr %i.x, ptr %i.ad
  %i.ae = load i32, ptr %.in, align 4, !tbaa !27
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !913
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !923 ; 2 uses
  %.not189 = icmp eq ptr %i.ag, null
  br i1 %.not189, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !927
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.in190.in = phi ptr [ %i.aj, %bb.e ], [ %i.z, %bb.d ]
  %.in190 = load i16, ptr %.in190.in, align 2, !tbaa !338
  %i.ak = sext i16 %.in190 to i64
  %i.al = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !917 ; 6 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %sqlite3TokenInit.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.am) #59
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 1073741823
  br label %sqlite3TokenInit.exit

sqlite3TokenInit.exit:                            ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.aq, %bb.g ], [ 0, %bb.f ] ; 9 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !3313
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !913
  %i.au = sext i32 %i.ae to i64                   ; 2 uses
  %i.av = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !917 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null                 ; 2 uses
  br i1 %i.ax, label %sqlite3TokenInit.exit198, label %bb.h

bb.h:                                             ; preds = %sqlite3TokenInit.exit
  %i.ay = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.aw) #59
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 1073741823
  br label %sqlite3TokenInit.exit198

sqlite3TokenInit.exit198:                         ; preds = %sqlite3TokenInit.exit, %bb.h
  %.0.i.i197 = phi i32 [ %i.ba, %bb.h ], [ 0, %sqlite3TokenInit.exit ] ; 4 uses
  %i.bb = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef 76), !inline_history !3363 ; 9 uses
  %.not24.i = icmp eq ptr %i.bb, null
  br i1 %.not24.i, label %sqlite3ExprAlloc.exit, label %sqlite3DequoteExpr.exit.i

sqlite3DequoteExpr.exit.i:                        ; preds = %sqlite3TokenInit.exit198
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.bb, align 8, !tbaa !2750
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 50
  store i16 -1, ptr %i.bc, align 2, !tbaa !3276
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 72 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bd, ptr noundef nonnull align 1 dereferenceable(3) @.str.685, i64 3, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 75
  store i8 0, ptr %i.bf, align 1, !tbaa !231
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 1, ptr %i.bg, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit

sqlite3ExprAlloc.exit:                            ; preds = %sqlite3TokenInit.exit198, %sqlite3DequoteExpr.exit.i
  %narrow = add nuw nsw i32 %.0.i.i, 73
  %i.bh = zext nneg i32 %narrow to i64            ; 4 uses
  %i.bi = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.bh), !inline_history !3363 ; 8 uses
  %.not24.i199 = icmp eq ptr %i.bi, null
  br i1 %.not24.i199, label %sqlite3ExprAlloc.exit204, label %bb.i

bb.i:                                             ; preds = %sqlite3ExprAlloc.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.bi, align 8, !tbaa !2750
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 50
  store i16 -1, ptr %i.bj, align 2, !tbaa !3276
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 72 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !231
  %.not26.i201 = icmp eq i32 %.0.i.i, 0
  br i1 %.not26.i201, label %sqlite3DequoteExpr.exit.i203, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = zext nneg i32 %.0.i.i to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 1 %i.am, i64 %i.bm, i1 false)
  br label %sqlite3DequoteExpr.exit.i203

sqlite3DequoteExpr.exit.i203:                     ; preds = %bb.i, %bb.j
  %i.bn = phi i64 [ %i.bm, %bb.j ], [ 0, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn
  store i8 0, ptr %i.bo, align 1, !tbaa !231
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i32 1, ptr %i.bp, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit204

sqlite3ExprAlloc.exit204:                         ; preds = %sqlite3ExprAlloc.exit, %sqlite3DequoteExpr.exit.i203
  %i.bq = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 142, ptr noundef %i.bb, ptr noundef %i.bi)
  %narrow361 = add nuw nsw i32 %.0.i.i197, 73
  %i.br = zext nneg i32 %narrow361 to i64
  %i.bs = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.br), !inline_history !3363 ; 8 uses
  %.not24.i205 = icmp eq ptr %i.bs, null
  br i1 %.not24.i205, label %sqlite3ExprAlloc.exit210, label %bb.k

bb.k:                                             ; preds = %sqlite3ExprAlloc.exit204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bs, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.bs, align 8, !tbaa !2750
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 50
  store i16 -1, ptr %i.bt, align 2, !tbaa !3276
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 72 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !231
  %.not26.i207 = icmp eq i32 %.0.i.i197, 0
  br i1 %.not26.i207, label %sqlite3DequoteExpr.exit.i209, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = zext nneg i32 %.0.i.i197 to i64         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 1 %i.aw, i64 %i.bw, i1 false)
  br label %sqlite3DequoteExpr.exit.i209

sqlite3DequoteExpr.exit.i209:                     ; preds = %bb.k, %bb.l
  %i.bx = phi i64 [ %i.bw, %bb.l ], [ 0, %bb.k ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  store i8 0, ptr %i.by, align 1, !tbaa !231
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 1, ptr %i.bz, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit210

sqlite3ExprAlloc.exit210:                         ; preds = %sqlite3ExprAlloc.exit204, %sqlite3DequoteExpr.exit.i209
  %i.ca = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 54, ptr noundef %i.bq, ptr noundef %i.bs) ; 5 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !657
  %i.cc = icmp eq ptr %.0166363, null
  br i1 %i.cc, label %sqlite3ExprAnd.exit, label %bb.m

bb.m:                                             ; preds = %sqlite3ExprAlloc.exit210
  %i.cd = icmp eq ptr %i.ca, null
  br i1 %i.cd, label %sqlite3ExprAnd.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %.0166363, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !372
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !372
  %i.ci = or i32 %i.ch, %i.cf
  %i.cj = and i32 %i.ci, 536870923
  %i.ck = icmp eq i32 %i.cj, 536870912
  br i1 %i.ck, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.aa, align 4, !tbaa !1092
  %i.cm = icmp ugt i8 %i.cl, 1
  br i1 %i.cm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %.0166363), !inline_history !4191 ; 0 uses
  %i.co = call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %i.ca), !inline_history !4191 ; 0 uses
  %i.cp = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.cb, i64 noundef 72), !inline_history !4192 ; 7 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %sqlite3ExprAnd.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cp, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.cp, align 8, !tbaa !2750
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 50
  store i16 -1, ptr %i.cq, align 2, !tbaa !3276
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 545261568, ptr %i.cr, align 4, !tbaa !372
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store i32 1, ptr %i.cs, align 8, !tbaa !3277
  br label %sqlite3ExprAnd.exit

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.ct = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 44, ptr noundef nonnull %.0166363, ptr noundef nonnull %i.ca), !inline_history !4191
  br label %sqlite3ExprAnd.exit

sqlite3ExprAnd.exit:                              ; preds = %sqlite3ExprAlloc.exit210, %bb.m, %bb.p, %bb.q, %bb.r
  %.1.i = phi ptr [ %.0166363, %bb.m ], [ %i.ca, %sqlite3ExprAlloc.exit210 ], [ %i.ct, %bb.r ], [ null, %bb.p ], [ %i.cp, %bb.q ] ; 2 uses
  br i1 %i.d, label %bb.s, label %sqlite3ExprAnd.exit237

bb.s:                                             ; preds = %sqlite3ExprAnd.exit
  %i.cu = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef 76), !inline_history !3363 ; 9 uses
  %.not24.i211 = icmp eq ptr %i.cu, null
  br i1 %.not24.i211, label %sqlite3ExprAlloc.exit216, label %sqlite3DequoteExpr.exit.i215

sqlite3DequoteExpr.exit.i215:                     ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cu, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.cu, align 8, !tbaa !2750
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 50
  store i16 -1, ptr %i.cv, align 2, !tbaa !3276
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 72 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cw, ptr noundef nonnull align 1 dereferenceable(3) @.str.685, i64 3, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 75
  store i8 0, ptr %i.cy, align 1, !tbaa !231
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store i32 1, ptr %i.cz, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit216

sqlite3ExprAlloc.exit216:                         ; preds = %bb.s, %sqlite3DequoteExpr.exit.i215
  %i.da = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.bh), !inline_history !3363 ; 8 uses
  %.not24.i217 = icmp eq ptr %i.da, null
  br i1 %.not24.i217, label %sqlite3ExprAlloc.exit222, label %bb.t

bb.t:                                             ; preds = %sqlite3ExprAlloc.exit216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.da, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.da, align 8, !tbaa !2750
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 50
  store i16 -1, ptr %i.db, align 2, !tbaa !3276
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 72 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !231
  %.not26.i219 = icmp eq i32 %.0.i.i, 0
  br i1 %.not26.i219, label %sqlite3DequoteExpr.exit.i221, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = zext nneg i32 %.0.i.i to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr align 1 %i.am, i64 %i.de, i1 false)
  br label %sqlite3DequoteExpr.exit.i221

sqlite3DequoteExpr.exit.i221:                     ; preds = %bb.t, %bb.u
  %i.df = phi i64 [ %i.de, %bb.u ], [ 0, %bb.t ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.df
  store i8 0, ptr %i.dg, align 1, !tbaa !231
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store i32 1, ptr %i.dh, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit222

sqlite3ExprAlloc.exit222:                         ; preds = %sqlite3ExprAlloc.exit216, %sqlite3DequoteExpr.exit.i221
  %i.di = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 142, ptr noundef %i.cu, ptr noundef %i.da)
  %i.dj = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef 76), !inline_history !3363 ; 9 uses
  %.not24.i223 = icmp eq ptr %i.dj, null
  br i1 %.not24.i223, label %sqlite3ExprAlloc.exit228, label %sqlite3DequoteExpr.exit.i227

sqlite3DequoteExpr.exit.i227:                     ; preds = %sqlite3ExprAlloc.exit222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dj, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.dj, align 8, !tbaa !2750
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 50
  store i16 -1, ptr %i.dk, align 2, !tbaa !3276
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 72 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.dl, ptr noundef nonnull align 1 dereferenceable(3) @.str.684, i64 3, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 75
  store i8 0, ptr %i.dn, align 1, !tbaa !231
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i32 1, ptr %i.do, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit228

sqlite3ExprAlloc.exit228:                         ; preds = %sqlite3ExprAlloc.exit222, %sqlite3DequoteExpr.exit.i227
  %i.dp = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.bh), !inline_history !3363 ; 8 uses
  %.not24.i229 = icmp eq ptr %i.dp, null
  br i1 %.not24.i229, label %sqlite3ExprAlloc.exit234, label %bb.v

bb.v:                                             ; preds = %sqlite3ExprAlloc.exit228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.dp, align 8, !tbaa !2750
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 50
  store i16 -1, ptr %i.dq, align 2, !tbaa !3276
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 72 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !231
  %.not26.i231 = icmp eq i32 %.0.i.i, 0
  br i1 %.not26.i231, label %sqlite3DequoteExpr.exit.i233, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = zext nneg i32 %.0.i.i to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr align 1 %i.am, i64 %i.dt, i1 false)
  br label %sqlite3DequoteExpr.exit.i233

sqlite3DequoteExpr.exit.i233:                     ; preds = %bb.v, %bb.w
  %i.du = phi i64 [ %i.dt, %bb.w ], [ 0, %bb.v ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.du
  store i8 0, ptr %i.dv, align 1, !tbaa !231
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store i32 1, ptr %i.dw, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit234

sqlite3ExprAlloc.exit234:                         ; preds = %sqlite3ExprAlloc.exit228, %sqlite3DequoteExpr.exit.i233
  %i.dx = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 142, ptr noundef %i.dj, ptr noundef %i.dp)
  %i.dy = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 45, ptr noundef %i.di, ptr noundef %i.dx) ; 5 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !657
  %i.ea = icmp eq ptr %.0160366, null
  br i1 %i.ea, label %sqlite3ExprAnd.exit237, label %bb.x

bb.x:                                             ; preds = %sqlite3ExprAlloc.exit234
  %i.eb = icmp eq ptr %i.dy, null
  br i1 %i.eb, label %sqlite3ExprAnd.exit237, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %.0160366, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !372
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !372
  %i.eg = or i32 %i.ef, %i.ed
  %i.eh = and i32 %i.eg, 536870923
  %i.ei = icmp eq i32 %i.eh, 536870912
  br i1 %i.ei, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ej = load i8, ptr %i.aa, align 4, !tbaa !1092
  %i.ek = icmp ugt i8 %i.ej, 1
  br i1 %i.ek, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.el = call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %.0160366), !inline_history !4191 ; 0 uses
  %i.em = call fastcc i32 @sqlite3ExprDeferredDelete(ptr noundef nonnull %0, ptr noundef nonnull %i.dy), !inline_history !4191 ; 0 uses
  %i.en = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.dz, i64 noundef 72), !inline_history !4192 ; 7 uses
  %.not.i.i236 = icmp eq ptr %i.en, null
  br i1 %.not.i.i236, label %sqlite3ExprAnd.exit237, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.en, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.en, align 8, !tbaa !2750
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 50
  store i16 -1, ptr %i.eo, align 2, !tbaa !3276
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 545261568, ptr %i.ep, align 4, !tbaa !372
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store i32 1, ptr %i.eq, align 8, !tbaa !3277
  br label %sqlite3ExprAnd.exit237

bb.ac:                                            ; preds = %bb.z, %bb.y
  %i.er = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 44, ptr noundef nonnull %.0160366, ptr noundef nonnull %i.dy), !inline_history !4191
  br label %sqlite3ExprAnd.exit237

sqlite3ExprAnd.exit237:                           ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.x, %sqlite3ExprAlloc.exit234, %sqlite3ExprAnd.exit
  %.1161 = phi ptr [ %.0160366, %sqlite3ExprAnd.exit ], [ %.0160366, %bb.x ], [ %i.dy, %sqlite3ExprAlloc.exit234 ], [ %i.er, %bb.ac ], [ null, %bb.aa ], [ %i.en, %bb.ab ] ; 2 uses
  br i1 %or.cond196, label %bb.ad, label %sqlite3ExprListSetName.exit

bb.ad:                                            ; preds = %sqlite3ExprAnd.exit237
  switch i8 %trunc362, label %bb.an [
    i8 10, label %bb.ae
    i8 9, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.es = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef 76), !inline_history !3363 ; 9 uses
  %.not24.i238 = icmp eq ptr %i.es, null
  br i1 %.not24.i238, label %sqlite3ExprAlloc.exit243, label %sqlite3DequoteExpr.exit.i242

sqlite3DequoteExpr.exit.i242:                     ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.es, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.es, align 8, !tbaa !2750
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 50
  store i16 -1, ptr %i.et, align 2, !tbaa !3276
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 72 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.eu, ptr noundef nonnull align 1 dereferenceable(3) @.str.684, i64 3, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 75
  store i8 0, ptr %i.ew, align 1, !tbaa !231
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  store i32 1, ptr %i.ex, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit243

sqlite3ExprAlloc.exit243:                         ; preds = %bb.ae, %sqlite3DequoteExpr.exit.i242
  %i.ey = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.bh), !inline_history !3363 ; 8 uses
  %.not24.i244 = icmp eq ptr %i.ey, null
  br i1 %.not24.i244, label %sqlite3ExprAlloc.exit249, label %bb.af

bb.af:                                            ; preds = %sqlite3ExprAlloc.exit243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ey, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.ey, align 8, !tbaa !2750
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 50
  store i16 -1, ptr %i.ez, align 2, !tbaa !3276
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 72 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !231
  %.not26.i246 = icmp eq i32 %.0.i.i, 0
  br i1 %.not26.i246, label %sqlite3DequoteExpr.exit.i248, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fc = zext nneg i32 %.0.i.i to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr align 1 %i.am, i64 %i.fc, i1 false)
  br label %sqlite3DequoteExpr.exit.i248

sqlite3DequoteExpr.exit.i248:                     ; preds = %bb.af, %bb.ag
  %i.fd = phi i64 [ %i.fc, %bb.ag ], [ 0, %bb.af ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fd
  store i8 0, ptr %i.fe, align 1, !tbaa !231
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  store i32 1, ptr %i.ff, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit249

sqlite3ExprAlloc.exit249:                         ; preds = %sqlite3ExprAlloc.exit243, %sqlite3DequoteExpr.exit.i248
  %i.fg = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 142, ptr noundef %i.es, ptr noundef %i.ey)
  br label %sqlite3ExprAlloc.exit255

bb.ah:                                            ; preds = %bb.ad
  %i.fh = load ptr, ptr %2, align 8, !tbaa !3313  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !913
  %i.fk = getelementptr inbounds [16 x i8], ptr %i.fj, i64 %i.au ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 14
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !1329
  %i.fn = and i16 %i.fm, 96
  %.not192 = icmp eq i16 %i.fn, 0
  br i1 %.not192, label %bb.ai, label %sqlite3ColumnExpr.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.fo = getelementptr i8, ptr %i.fk, i64 12
  %.val = load i16, ptr %i.fo, align 4, !tbaa !3362 ; 3 uses
  %i.fp = zext i16 %.val to i32
  %i.fq = icmp eq i16 %.val, 0
  br i1 %i.fq, label %sqlite3ColumnExpr.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 63
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !907
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %bb.ak, label %sqlite3ColumnExpr.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 80
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !231 ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %sqlite3ColumnExpr.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fx = load i32, ptr %i.fv, align 8, !tbaa !27
  %i.fy = icmp slt i32 %i.fx, %i.fp
  br i1 %i.fy, label %sqlite3ColumnExpr.exit.thread, label %sqlite3ColumnExpr.exit

sqlite3ColumnExpr.exit:                           ; preds = %bb.al
  %i.fz = zext i16 %.val to i64
  %i.ga = getelementptr [24 x i8], ptr %i.fv, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 -16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !3229 ; 2 uses
  %.not193 = icmp eq ptr %i.gc, null
  br i1 %.not193, label %sqlite3ColumnExpr.exit.thread, label %sqlite3ExprDup.exit

sqlite3ExprDup.exit:                              ; preds = %sqlite3ColumnExpr.exit
  %i.gd = call fastcc ptr @exprDup(ptr noundef %i.c, ptr noundef nonnull readonly %i.gc, i32 noundef 0, ptr noundef null), !inline_history !3386
  br label %sqlite3ExprAlloc.exit255

sqlite3ColumnExpr.exit.thread:                    ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %sqlite3ColumnExpr.exit
  %i.ge = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef 72), !inline_history !3363 ; 6 uses
  %.not24.i250 = icmp eq ptr %i.ge, null
  br i1 %.not24.i250, label %sqlite3ExprAlloc.exit255, label %bb.am

bb.am:                                            ; preds = %sqlite3ColumnExpr.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ge, i8 0, i64 72, i1 false)
  store i8 122, ptr %i.ge, align 8, !tbaa !2750
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 50
  store i16 -1, ptr %i.gf, align 2, !tbaa !3276
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  store i32 1, ptr %i.gg, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit255

bb.an:                                            ; preds = %bb.ad
  %i.gh = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef 72), !inline_history !3363 ; 6 uses
  %.not24.i256 = icmp eq ptr %i.gh, null
  br i1 %.not24.i256, label %sqlite3ExprAlloc.exit255, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gh, i8 0, i64 72, i1 false)
  store i8 122, ptr %i.gh, align 8, !tbaa !2750
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 50
  store i16 -1, ptr %i.gi, align 2, !tbaa !3276
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store i32 1, ptr %i.gj, align 8, !tbaa !3277
  br label %sqlite3ExprAlloc.exit255

sqlite3ExprAlloc.exit255:                         ; preds = %bb.ao, %bb.an, %bb.am, %sqlite3ColumnExpr.exit.thread, %sqlite3ExprDup.exit, %sqlite3ExprAlloc.exit249
  %.1159 = phi ptr [ %i.fg, %sqlite3ExprAlloc.exit249 ], [ %i.ge, %bb.am ], [ %i.gd, %sqlite3ExprDup.exit ], [ null, %sqlite3ColumnExpr.exit.thread ], [ null, %bb.an ], [ %i.gh, %bb.ao ] ; 3 uses
  %i.gk = icmp eq ptr %.0164364, null
  br i1 %i.gk, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %sqlite3ExprAlloc.exit255
  %i.gl = load ptr, ptr %0, align 8, !tbaa !657
  %i.gm = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.gl, ptr noundef %.1159), !inline_history !3280
  br label %sqlite3ExprListAppend.exit

bb.aq:                                            ; preds = %sqlite3ExprAlloc.exit255
  %i.gn = getelementptr inbounds nuw i8, ptr %.0164364, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !27
  %i.gp = load i32, ptr %.0164364, align 8, !tbaa !27 ; 3 uses
  %.not.i262 = icmp sgt i32 %i.go, %i.gp
  br i1 %.not.i262, label %sqlite3ExprListAppend.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gq = load ptr, ptr %0, align 8, !tbaa !657
  %i.gr = call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.gq, ptr noundef %.0164364, ptr noundef %.1159), !inline_history !3280
  br label %sqlite3ExprListAppend.exit

sqlite3ExprListAppend.exit.thread:                ; preds = %bb.aq
  %i.gs = add nsw i32 %i.gp, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.0164364, i64 8
  store i32 %i.gs, ptr %.0164364, align 8, !tbaa !27
  %i.gu = sext i32 %i.gp to i64
  %i.gv = getelementptr inbounds [24 x i8], ptr %i.gt, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i8 0, i64 16, i1 false)
  store ptr %.1159, ptr %i.gv, align 8, !tbaa !3229
  br label %bb.as

sqlite3ExprListAppend.exit:                       ; preds = %bb.ap, %bb.ar
  %.0.i263 = phi ptr [ %i.gm, %bb.ap ], [ %i.gr, %bb.ar ] ; 2 uses
  %.not.i264 = icmp eq ptr %.0.i263, null
  br i1 %.not.i264, label %sqlite3ExprListSetName.exit, label %bb.as

bb.as:                                            ; preds = %sqlite3ExprListAppend.exit.thread, %sqlite3ExprListAppend.exit
  %.0.i263338 = phi ptr [ %.0164364, %sqlite3ExprListAppend.exit.thread ], [ %.0.i263, %sqlite3ExprListAppend.exit ] ; 3 uses
  %i.gx = load i32, ptr %.0.i263338, align 8, !tbaa !27
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr [24 x i8], ptr %.0.i263338, i64 %i.gy
  %i.ha = zext nneg i32 %.0.i.i197 to i64         ; 3 uses
  br i1 %i.ax, label %sqlite3DbStrNDup.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hb = load ptr, ptr %0, align 8, !tbaa !657
  %i.hc = add nuw nsw i64 %i.ha, 1
  %i.hd = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.hb, i64 noundef %i.hc), !inline_history !4838 ; 4 uses
  %.not9.i.i = icmp eq ptr %i.hd, null
  br i1 %.not9.i.i, label %sqlite3DbStrNDup.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr nonnull readonly align 1 %i.aw, i64 range(i64 -2147483648, 4294967296) %i.ha, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ha
  store i8 0, ptr %i.he, align 1, !tbaa !231
  br label %sqlite3DbStrNDup.exit.i

sqlite3DbStrNDup.exit.i:                          ; preds = %bb.au, %bb.at, %bb.as
  %i.hf = phi ptr [ null, %bb.at ], [ %i.hd, %bb.au ], [ null, %bb.as ]
  %i.hg = getelementptr i8, ptr %i.gz, i64 -8
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !3232
  br label %sqlite3ExprListSetName.exit

sqlite3ExprListSetName.exit:                      ; preds = %sqlite3DbStrNDup.exit.i, %sqlite3ExprListAppend.exit, %sqlite3ExprAnd.exit237
  %.1165 = phi ptr [ %.0164364, %sqlite3ExprAnd.exit237 ], [ null, %sqlite3ExprListAppend.exit ], [ %.0.i263338, %sqlite3DbStrNDup.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hh = load i32, ptr %i.u, align 8, !tbaa !27
  %i.hi = sext i32 %i.hh to i64
  %i.hj = icmp slt i64 %indvars.iv.next, %i.hi
  br i1 %i.hj, label %bb.d, label %._crit_edge, !llvm.loop !4839

._crit_edge:                                      ; preds = %sqlite3ExprListSetName.exit, %.preheader
  %.0166.lcssa = phi ptr [ null, %.preheader ], [ %.1.i, %sqlite3ExprListSetName.exit ] ; 2 uses
  %.0164.lcssa = phi ptr [ null, %.preheader ], [ %.1165, %sqlite3ExprListSetName.exit ] ; 3 uses
  %.0160.lcssa = phi ptr [ null, %.preheader ], [ %.1161, %sqlite3ExprListSetName.exit ] ; 7 uses
  %i.hk = load ptr, ptr %i.b, align 8, !tbaa !350 ; 2 uses
  %.not.i266 = icmp eq ptr %i.hk, null
  br i1 %.not.i266, label %sqlite3DbFree.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.c, ptr noundef nonnull %i.hk)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %._crit_edge, %bb.av
  %i.hl = load ptr, ptr %2, align 8, !tbaa !3313
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !941 ; 5 uses
  %i.hn = icmp eq ptr %i.hm, null                 ; 3 uses
  br i1 %i.hn, label %sqlite3Strlen30.exit, label %bb.aw

bb.aw:                                            ; preds = %sqlite3DbFree.exit
  %i.ho = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.hm) #59
  %i.hp = and i64 %i.ho, 1073741823
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %sqlite3DbFree.exit, %bb.aw
  %.0.i267 = phi i64 [ %i.hp, %bb.aw ], [ 0, %sqlite3DbFree.exit ] ; 3 uses
  br i1 %i.m, label %bb.bh, label %bb.ax

bb.ax:                                            ; preds = %sqlite3Strlen30.exit
  %i.hq = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef 102), !inline_history !3275 ; 11 uses
  %.not24.i.i = icmp eq ptr %i.hq, null
  br i1 %.not24.i.i, label %sqlite3Expr.exit, label %sqlite3Expr.exit.thread

sqlite3Expr.exit.thread:                          ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hq, i8 0, i64 72, i1 false)
  store i8 118, ptr %i.hq, align 8, !tbaa !2750
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 50
  store i16 -1, ptr %i.hr, align 2, !tbaa !3276
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 72 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.hs, ptr noundef nonnull align 1 dereferenceable(29) @.str.117, i64 29, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 101
  store i8 0, ptr %i.hu, align 1, !tbaa !231
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 40 ; 2 uses
  store i32 1, ptr %i.hv, align 8, !tbaa !3277
  %i.hw = load ptr, ptr %0, align 8, !tbaa !657
  %i.hx = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.hw, i64 noundef 72), !inline_history !3432 ; 9 uses
  %.not.i269340 = icmp eq ptr %i.hx, null
  br i1 %.not.i269340, label %bb.bc, label %bb.az

sqlite3Expr.exit:                                 ; preds = %bb.ax
  %i.hy = load ptr, ptr %0, align 8, !tbaa !657
  %i.hz = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.hy, i64 noundef 72), !inline_history !3432 ; 6 uses
  %.not.i269 = icmp eq ptr %i.hz, null
  br i1 %.not.i269, label %sqlite3PExpr.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %sqlite3Expr.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hz, i8 0, i64 72, i1 false)
  store i8 72, ptr %i.hz, align 8, !tbaa !2750
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 50
  store i16 -1, ptr %i.ia, align 2, !tbaa !3276
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  store i32 1, ptr %i.ib, align 8, !tbaa !3277
  br label %sqlite3ExprAttachSubtrees.exit.i

bb.az:                                            ; preds = %sqlite3Expr.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hx, i8 0, i64 72, i1 false)
  store i8 72, ptr %i.hx, align 8, !tbaa !2750
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 50
  store i16 -1, ptr %i.ic, align 2, !tbaa !3276
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 40 ; 2 uses
  store i32 1, ptr %i.id, align 8, !tbaa !3277
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store ptr %i.hq, ptr %i.ie, align 8, !tbaa !376
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !372
  %i.ih = and i32 %i.ig, 4194824
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !372
  %i.ij = load i32, ptr %i.hv, align 8, !tbaa !3277 ; 2 uses
  %.not26.i.i270 = icmp slt i32 %i.ij, 1
  br i1 %.not26.i.i270, label %sqlite3ExprAttachSubtrees.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ik = add nuw nsw i32 %i.ij, 1                ; 2 uses
  store i32 %i.ik, ptr %i.id, align 8, !tbaa !3277
  br label %sqlite3ExprAttachSubtrees.exit.i

sqlite3ExprAttachSubtrees.exit.i:                 ; preds = %bb.ay, %bb.ba, %bb.az
  %i.il = phi ptr [ %i.hz, %bb.ay ], [ %i.hx, %bb.az ], [ %i.hx, %bb.ba ] ; 2 uses
  %i.im = phi i32 [ 1, %bb.ay ], [ 1, %bb.az ], [ %i.ik, %bb.ba ]
  %i.in = load ptr, ptr %0, align 8, !tbaa !657
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 148
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !27 ; 2 uses
  %i.iq = icmp sgt i32 %i.im, %i.ip
  br i1 %i.iq, label %bb.bb, label %sqlite3PExpr.exit

bb.bb:                                            ; preds = %sqlite3ExprAttachSubtrees.exit.i
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.819, i32 noundef %i.ip), !inline_history !3433
  br label %sqlite3PExpr.exit

bb.bc:                                            ; preds = %sqlite3Expr.exit.thread
  %i.ir = load ptr, ptr %0, align 8, !tbaa !657
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.ir, ptr noundef %i.hq), !inline_history !3434
  br label %sqlite3PExpr.exit.thread

sqlite3PExpr.exit:                                ; preds = %bb.bb, %sqlite3ExprAttachSubtrees.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  store i8 2, ptr %i.is, align 1, !tbaa !3237
  br label %sqlite3PExpr.exit.thread

sqlite3PExpr.exit.thread:                         ; preds = %sqlite3Expr.exit, %bb.bc, %sqlite3PExpr.exit
  %i.it = phi ptr [ %i.il, %sqlite3PExpr.exit ], [ null, %sqlite3Expr.exit ], [ null, %bb.bc ]
  %i.iu = load ptr, ptr %0, align 8, !tbaa !657
  %i.iv = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.iu, i64 noundef 80), !inline_history !4747 ; 9 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %.sink.split, label %.split173

.split173:                                        ; preds = %sqlite3PExpr.exit.thread
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i32 1, ptr %i.ix, align 4, !tbaa !27
  store i32 1, ptr %i.iv, align 8, !tbaa !27
  %i.iy = getelementptr i8, ptr %i.iv, i64 8      ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.iz, i8 0, i64 56, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 36
  store i32 -1, ptr %i.ja, align 4, !tbaa !3355
  %i.jb = getelementptr i8, ptr %i.iv, i64 72     ; 2 uses
  store ptr null, ptr %i.iy, align 8, !tbaa !389
  store ptr null, ptr %i.jb, align 8, !tbaa !231
  br i1 %i.hn, label %sqlite3DbStrDup.exit, label %bb.bd

bb.bd:                                            ; preds = %.split173
  %i.jc = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.hm) #59, !inline_history !602
  %i.jd = add i64 %i.jc, 1                        ; 3 uses
  %.not.i.i273 = icmp eq ptr %i.c, null
  br i1 %.not.i.i273, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.je = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.c, i64 noundef %i.jd), !inline_history !603
  br label %sqlite3DbMallocRaw.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.jf = call fastcc ptr @sqlite3Malloc(i64 noundef %i.jd), !inline_history !603
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.bf, %bb.be
  %.0.i.i274 = phi ptr [ %i.je, %bb.be ], [ %i.jf, %bb.bf ] ; 3 uses
  %.not.i275 = icmp eq ptr %.0.i.i274, null
  br i1 %.not.i275, label %sqlite3DbStrDup.exit, label %bb.bg

bb.bg:                                            ; preds = %sqlite3DbMallocRaw.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i274, ptr nonnull readonly align 1 %i.hm, i64 %i.jd, i1 false)
  br label %sqlite3DbStrDup.exit

sqlite3DbStrDup.exit:                             ; preds = %.split173, %sqlite3DbMallocRaw.exit.i, %bb.bg
  %.0.i276 = phi ptr [ null, %.split173 ], [ %.0.i.i274, %bb.bg ], [ null, %sqlite3DbMallocRaw.exit.i ]
  store ptr %.0.i276, ptr %i.iy, align 8, !tbaa !389
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 35 ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1
  %i.ji = or i8 %i.jh, 1
  store i8 %i.ji, ptr %i.jg, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !908
  store ptr %i.jk, ptr %i.jb, align 8, !tbaa !231
  br label %.sink.split

.sink.split:                                      ; preds = %sqlite3PExpr.exit.thread, %sqlite3DbStrDup.exit
  %.sink409 = phi ptr [ %i.iv, %sqlite3DbStrDup.exit ], [ null, %sqlite3PExpr.exit.thread ]
  %i.jl = load ptr, ptr %0, align 8, !tbaa !657
  %i.jm = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.jl, ptr noundef %i.it)
  %i.jn = call fastcc ptr @sqlite3SelectNew(ptr noundef nonnull %0, ptr noundef %i.jm, ptr noundef %.sink409, ptr noundef %.0166.lcssa, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %sqlite3Strlen30.exit
  %.1167 = phi ptr [ %.0166.lcssa, %sqlite3Strlen30.exit ], [ null, %.sink.split ] ; 4 uses
  %.0163 = phi ptr [ null, %sqlite3Strlen30.exit ], [ %i.jn, %.sink.split ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.c, i64 408 ; 4 uses
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !566
  %i.jq = add i32 %i.jp, 1                        ; 2 uses
  store i32 %i.jq, ptr %i.jo, align 8, !tbaa !566
  %i.jr = getelementptr inbounds nuw i8, ptr %i.c, i64 412 ; 2 uses
  store i16 0, ptr %i.jr, align 4, !tbaa !567
  %.not39.i = icmp eq i32 %i.jq, 0
  br i1 %.not39.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.js = getelementptr inbounds nuw i8, ptr %i.c, i64 428 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !27
  %i.ju = add i32 %i.jt, 1
  store i32 %i.ju, ptr %i.js, align 4, !tbaa !27
  br label %sqlite3DbMallocRaw.exit.i279

bb.bj:                                            ; preds = %bb.bh
  %i.jv = getelementptr inbounds nuw i8, ptr %i.c, i64 103
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !563
  %.not40.i = icmp eq i8 %i.jw, 0
  br i1 %.not40.i, label %sqlite3DbMallocRaw.exit.i279, label %sqlite3DbMallocZero.exit.thread

sqlite3DbMallocRaw.exit.i279:                     ; preds = %bb.bi, %bb.bj
  %i.jx = call fastcc ptr @dbMallocRawFinish(ptr noundef nonnull %i.c, i64 noundef 160) #61, !inline_history !3071 ; 12 uses
  %.not.i281 = icmp eq ptr %i.jx, null
  br i1 %.not.i281, label %sqlite3DbMallocZero.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %sqlite3DbMallocRaw.exit.i279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.jx, i8 0, i64 160, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 72 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 56
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !144
  %i.ka = load ptr, ptr %0, align 8, !tbaa !657
  %i.kb = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.ka, i64 noundef 80), !inline_history !4747 ; 9 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %sqlite3SrcListAppend.exit283.thread, label %bb.bl

sqlite3SrcListAppend.exit283.thread:              ; preds = %bb.bk
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 96
  store ptr null, ptr %i.kd, align 8, !tbaa !2564
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  store i32 1, ptr %i.ke, align 4, !tbaa !27
  store i32 1, ptr %i.kb, align 8, !tbaa !27
  %i.kf = getelementptr i8, ptr %i.kb, i64 8      ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kb, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kg, i8 0, i64 56, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 36
  store i32 -1, ptr %i.kh, align 4, !tbaa !3355
  %i.ki = getelementptr i8, ptr %i.kb, i64 72     ; 2 uses
  store ptr null, ptr %i.kf, align 8, !tbaa !389
  store ptr null, ptr %i.ki, align 8, !tbaa !231
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 96
  store ptr %i.kb, ptr %i.kj, align 8, !tbaa !2564
  br i1 %i.hn, label %sqlite3DbStrNDup.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kk = add nuw nsw i64 %.0.i267, 1
  %i.kl = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.c, i64 noundef %i.kk), !inline_history !2286 ; 4 uses
  %.not9.i = icmp eq ptr %i.kl, null
  br i1 %.not9.i, label %sqlite3DbStrNDup.exit, label %bb.bn

end_hunk_26
begin_hunk_27_@jsonParseFuncArg:bb.a
  %i.dc = icmp eq ptr %.0.i107, null
  br i1 %i.dc, label %.critedge.thread158, label %bb.ae

bb.ae:                                            ; preds = %sqlite3DbMallocRaw.exit
  %i.dd = load ptr, ptr %.081, align 8, !tbaa !3128
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i107, ptr align 1 %i.dd, i64 %i.cz, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.cy, ptr %i.de, align 8, !tbaa !3130
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  store i32 %i.cy, ptr %i.df, align 4, !tbaa !3127
  %i.dg = getelementptr inbounds nuw i8, ptr %.081, i64 49
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !3091
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 49
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !3091
  %i.dj = getelementptr inbounds nuw i8, ptr %.081, i64 36 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3198 ; 2 uses
  %i.dl = icmp ugt i32 %i.dk, 1
  br i1 %i.dl, label %bb.af, label %sqlite3DbFree.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.dm = add i32 %i.dk, -1
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !3198
  br label %jsonParseFree.exit

sqlite3DbFree.exit.i:                             ; preds = %bb.ae
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %.081)
  %i.dn = getelementptr inbounds nuw i8, ptr %.081, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !3129
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.do, ptr noundef nonnull %.081)
  br label %jsonParseFree.exit

bb.ag:                                            ; preds = %bb.aa
  br i1 %.not171, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dp = tail call fastcc i32 @jsonArgIsJsonb(ptr noundef %1, ptr noundef nonnull %.0.i.i)
  %.not95 = icmp eq i32 %i.dp, 0
  br i1 %.not95, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not101, label %jsonParseFree.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = tail call fastcc i32 @jsonBlobMakeEditable(ptr noundef nonnull %.0.i.i, i32 noundef 0)
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %jsonParseFree.exit125.thread166, label %jsonParseFree.exit

bb.ak:                                            ; preds = %bb.ag, %bb.ah
  %.pre245 = load i16, ptr %i.a, align 4, !tbaa !166 ; 4 uses
  %i.ds = and i16 %.pre245, 514
  %i.dt = icmp eq i16 %i.ds, 514
  br i1 %i.dt, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.du = load i8, ptr %i.cm, align 2, !tbaa !351
  %i.dv = icmp eq i8 %i.du, 1
  br i1 %i.dv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dw = load ptr, ptr %i.cn, align 8, !tbaa !297
  br label %sqlite3_value_text.exit

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.dx = and i16 %.pre245, 1
  %.not9.i.i = icmp eq i16 %i.dx, 0
  br i1 %.not9.i.i, label %bb.ao, label %sqlite3_value_text.exit

bb.ao:                                            ; preds = %bb.an
  %i.dy = tail call fastcc ptr @valueToText(ptr noundef nonnull %1, i8 noundef zeroext 1), !inline_history !596
  %.pre = load i16, ptr %i.a, align 4, !tbaa !166
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.am, %bb.an, %bb.ao
  %i.dz = phi i16 [ %.pre245, %bb.am ], [ %.pre245, %bb.an ], [ %.pre, %bb.ao ] ; 2 uses
  %.0.i.i110 = phi ptr [ %i.dw, %bb.am ], [ null, %bb.an ], [ %i.dy, %bb.ao ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 4 uses
  store ptr %.0.i.i110, ptr %i.ea, align 8, !tbaa !3125
  %i.eb = and i16 %i.dz, 2
  %.not.i.i111 = icmp eq i16 %i.eb, 0
  br i1 %.not.i.i111, label %.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %sqlite3_value_text.exit
  %i.ec = load i8, ptr %i.cm, align 2, !tbaa !351
  %i.ed = icmp eq i8 %i.ec, 1
  br i1 %i.ed, label %bb.aq, label %.thread.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ee = load i32, ptr %i.co, align 8, !tbaa !818
  br label %sqlite3_value_bytes.exit

.thread.i.i:                                      ; preds = %bb.ap, %sqlite3_value_text.exit
  %i.ef = zext i16 %i.dz to i32                   ; 3 uses
  %i.eg = and i32 %i.ef, 16
  %.not20.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not20.i.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.thread.i.i
  %i.eh = and i32 %i.ef, 1024
  %.not22.i.i = icmp eq i32 %i.eh, 0
  %i.ei = load i32, ptr %i.co, align 8, !tbaa !818 ; 2 uses
  br i1 %.not22.i.i, label %sqlite3_value_bytes.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ej = load i32, ptr %1, align 8, !tbaa !231
  %i.ek = add nsw i32 %i.ej, %i.ei
  br label %sqlite3_value_bytes.exit

bb.at:                                            ; preds = %.thread.i.i
  %i.el = and i32 %i.ef, 1
  %.not21.i.i = icmp eq i32 %i.el, 0
  br i1 %.not21.i.i, label %bb.au, label %sqlite3_value_bytes.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.em = tail call fastcc i32 @valueBytes(ptr noundef nonnull %1, i8 noundef zeroext 1), !inline_history !882
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.aq, %bb.ar, %bb.as, %bb.au
  %.0.i.i112 = phi i32 [ %i.ee, %bb.aq ], [ %i.ei, %bb.ar ], [ %i.ek, %bb.as ], [ %i.em, %bb.au ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 4 uses
  store i32 %.0.i.i112, ptr %i.en, align 8, !tbaa !3126
  %i.eo = load i8, ptr %i.cp, align 1, !tbaa !563
  %.not96 = icmp eq i8 %i.eo, 0
  br i1 %.not96, label %bb.av, label %jsonParseFree.exit125.thread166

sqlite3_value_bytes.exit.thread:                  ; preds = %bb.at
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store i32 0, ptr %i.ep, align 8, !tbaa !3126
  %i.eq = load i8, ptr %i.cp, align 1, !tbaa !563
  %.not96135 = icmp eq i8 %i.eq, 0
  br i1 %.not96135, label %.thread, label %jsonParseFree.exit125.thread166

bb.av:                                            ; preds = %sqlite3_value_bytes.exit
  %i.er = icmp eq i32 %.0.i.i112, 0
  br i1 %i.er, label %.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.es = tail call fastcc i32 @jsonConvertTextToBlob(ptr noundef nonnull %.0.i.i, ptr noundef %i.cq)
  %.not98 = icmp eq i32 %i.es, 0
  br i1 %.not98, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36 ; 2 uses
  br i1 %.not97, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 46
  store i8 1, ptr %i.ev, align 2, !tbaa !5142
  br label %jsonParseFree.exit

bb.az:                                            ; preds = %bb.ax
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !3198 ; 2 uses
  %i.ex = icmp ugt i32 %i.ew, 1
  br i1 %i.ex, label %bb.ba, label %sqlite3DbFree.exit.i114

bb.ba:                                            ; preds = %bb.az
  %i.ey = add i32 %i.ew, -1
  store i32 %i.ey, ptr %i.eu, align 4, !tbaa !3198
  br label %jsonParseFree.exit

sqlite3DbFree.exit.i114:                          ; preds = %bb.az
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %.0.i.i)
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !3129
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.ez, ptr noundef nonnull %.0.i.i)
  br label %jsonParseFree.exit

bb.bb:                                            ; preds = %bb.aw
  %i.fa = load i16, ptr %i.a, align 4, !tbaa !166
  %i.fb = zext i16 %i.fa to i32                   ; 2 uses
  %i.fc = and i32 %i.fb, 18
  %.not6.i = icmp eq i32 %i.fc, 0
  %i.fd = and i32 %i.fb, 4096
  %.not7.i = icmp eq i32 %i.fd, 0
  %or.cond.i = or i1 %.not6.i, %.not7.i
  br i1 %or.cond.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fe = load ptr, ptr %i.cr, align 8, !tbaa !827
  %i.ff = icmp eq ptr %i.fe, @sqlite3RCStrUnref
  br i1 %i.ff, label %sqlite3ValueIsOfClass.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.fg = load i32, ptr %i.en, align 8, !tbaa !3126
  %i.fh = tail call i32 @sqlite3_initialize(), !inline_history !2558
  %.not.i.i118 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i118, label %sqlite3_malloc64.exit.i, label %jsonParseFree.exit125.thread166

sqlite3_malloc64.exit.i:                          ; preds = %bb.bd
  %i.fi = sext i32 %i.fg to i64
  %i.fj = add nsw i64 %i.fi, 9
  %i.fk = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.fj), !inline_history !2558 ; 3 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %jsonParseFree.exit125.thread166, label %bb.be

bb.be:                                            ; preds = %sqlite3_malloc64.exit.i
  store i64 1, ptr %i.fk, align 8, !tbaa !2118
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 3 uses
  %i.fn = load ptr, ptr %i.ea, align 8, !tbaa !3125
  %i.fo = load i32, ptr %i.en, align 8, !tbaa !3126
  %i.fp = sext i32 %i.fo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fm, ptr align 1 %i.fn, i64 %i.fp, i1 false)
  store ptr %i.fm, ptr %i.ea, align 8, !tbaa !3125
  %i.fq = load i32, ptr %i.en, align 8, !tbaa !3126
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fm, i64 %i.fr
  store i8 0, ptr %i.fs, align 1, !tbaa !231
  br label %bb.bf

sqlite3ValueIsOfClass.exit:                       ; preds = %bb.bc
  %i.ft = load ptr, ptr %i.ea, align 8, !tbaa !3125
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !2118
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !2118
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %sqlite3ValueIsOfClass.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store i8 1, ptr %i.fx, align 8, !tbaa !3124
  %i.fy = tail call fastcc i32 @jsonCacheInsert(ptr noundef nonnull %0, ptr noundef %.0.i.i)
  %i.fz = icmp eq i32 %i.fy, 7
  br i1 %i.fz, label %jsonParseFree.exit125.thread166, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not101, label %jsonParseFree.exit, label %bb.x

.thread:                                          ; preds = %bb.av, %sqlite3_value_bytes.exit.thread
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  br i1 %.not97, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 46
  store i8 1, ptr %i.gc, align 2, !tbaa !5142
  br label %jsonParseFree.exit

bb.bi:                                            ; preds = %.thread
  %i.gd = load i32, ptr %i.ga, align 4, !tbaa !3198 ; 2 uses
  %i.ge = icmp ugt i32 %i.gd, 1
  br i1 %i.ge, label %bb.bj, label %sqlite3DbFree.exit.i121

bb.bj:                                            ; preds = %bb.bi
  %i.gf = add i32 %i.gd, -1
  store i32 %i.gf, ptr %i.ga, align 4, !tbaa !3198
  br label %jsonParseFree.exit122

sqlite3DbFree.exit.i121:                          ; preds = %bb.bi
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %.0.i.i)
  %i.gg = load ptr, ptr %i.gb, align 8, !tbaa !3129
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.gg, ptr noundef nonnull %.0.i.i)
  br label %jsonParseFree.exit122

jsonParseFree.exit122:                            ; preds = %bb.bj, %sqlite3DbFree.exit.i121
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.gh, align 4, !tbaa !27
  %i.gi = load ptr, ptr %0, align 8, !tbaa !296
  %i.gj = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.gi, ptr noundef nonnull @.str.619, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !838 ; 0 uses
  br label %jsonParseFree.exit

.critedge:                                        ; preds = %sqlite3DbMallocRaw.exit.i
  %.not.i123 = icmp eq ptr %.081, null
  br i1 %.not.i123, label %jsonParseFree.exit128, label %.critedge.thread158

.critedge.thread158:                              ; preds = %sqlite3DbMallocRaw.exit, %.critedge
  %i.gk = getelementptr inbounds nuw i8, ptr %.081, i64 36 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3198 ; 2 uses
  %i.gm = icmp ugt i32 %i.gl, 1
  br i1 %i.gm, label %bb.bk, label %sqlite3DbFree.exit.i124

bb.bk:                                            ; preds = %.critedge.thread158
  %i.gn = add i32 %i.gl, -1
  store i32 %i.gn, ptr %i.gk, align 4, !tbaa !3198
  br label %jsonParseFree.exit125

sqlite3DbFree.exit.i124:                          ; preds = %.critedge.thread158
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %.081)
  %i.go = getelementptr inbounds nuw i8, ptr %.081, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !3129
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.gp, ptr noundef nonnull %.081)
  br label %jsonParseFree.exit125

jsonParseFree.exit125:                            ; preds = %bb.bk, %sqlite3DbFree.exit.i124
  %.not.i126 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i126, label %jsonParseFree.exit128, label %jsonParseFree.exit125.thread166

jsonParseFree.exit125.thread166:                  ; preds = %sqlite3_value_bytes.exit, %bb.bf, %bb.bd, %sqlite3_malloc64.exit.i, %bb.aj, %sqlite3_value_bytes.exit.thread, %jsonParseFree.exit125
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !3198 ; 2 uses
  %i.gs = icmp ugt i32 %i.gr, 1
  br i1 %i.gs, label %bb.bl, label %sqlite3DbFree.exit.i127

bb.bl:                                            ; preds = %jsonParseFree.exit125.thread166
  %i.gt = add i32 %i.gr, -1
  store i32 %i.gt, ptr %i.gq, align 4, !tbaa !3198
  br label %jsonParseFree.exit128

sqlite3DbFree.exit.i127:                          ; preds = %jsonParseFree.exit125.thread166
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %.0.i.i)
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !3129
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.gv, ptr noundef nonnull %.0.i.i)
  br label %jsonParseFree.exit128

jsonParseFree.exit128:                            ; preds = %.critedge, %jsonParseFree.exit125, %bb.bl, %sqlite3DbFree.exit.i127
  %i.gw = load ptr, ptr %0, align 8, !tbaa !296   ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 20 ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 4, !tbaa !166
  %i.gz = and i16 %i.gy, -28672
  %.not.i.i129 = icmp eq i16 %i.gz, 0
  br i1 %.not.i.i129, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %jsonParseFree.exit128
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.gw), !inline_history !828
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !296
  br label %sqlite3VdbeMemSetNull.exit.i

bb.bn:                                            ; preds = %jsonParseFree.exit128
  store i16 1, ptr %i.gx, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.bn, %bb.bm
  %i.ha = phi ptr [ %.pre.i, %bb.bm ], [ %i.gw, %bb.bn ]
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.hb, align 4, !tbaa !27
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !161 ; 7 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 103 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !563
  %i.hg = icmp eq i8 %i.hf, 0
  br i1 %i.hg, label %bb.bo, label %jsonParseFree.exit

bb.bo:                                            ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 104
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !564
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %bb.bp, label %jsonParseFree.exit

bb.bp:                                            ; preds = %bb.bo
  store i8 1, ptr %i.he, align 1, !tbaa !563
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 220
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !565
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hd, i64 400
  store atomic volatile i32 1, ptr %i.hn monotonic, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hd, i64 408 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !566
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !566
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hd, i64 412
  store i16 0, ptr %i.hr, align 4, !tbaa !567
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hd, i64 344 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !309 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ht, null
  br i1 %.not.i3.i, label %jsonParseFree.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ht, ptr noundef nonnull @.str.125), !inline_history !829
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !309 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  store i32 7, ptr %i.hv, align 8, !tbaa !310
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.hu, i64 224
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !569 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %jsonParseFree.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bs, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i130, %.lr.ph.i.i ], [ %.018.i.i, %bb.bs ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !321
  %i.hy = add nsw i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !321
  %i.hz = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.hz, align 8, !tbaa !310
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 224
  %.0.i.i130 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !569 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i130, null
  br i1 %.not16.i.i, label %jsonParseFree.exit, label %.lr.ph.i.i, !llvm.loop !570

jsonParseFree.exit:                               ; preds = %bb.bg, %.lr.ph.i.i, %bb.bs, %bb.br, %bb.bo, %sqlite3VdbeMemSetNull.exit.i, %sqlite3DbFree.exit.i114, %bb.ba, %sqlite3DbFree.exit.i, %bb.af, %bb.ai, %bb.aj, %bb.w, %bb.a, %jsonParseFree.exit122, %bb.bh, %bb.ay
  %.187 = phi ptr [ %.0.i.i, %bb.aj ], [ null, %bb.a ], [ null, %sqlite3DbFree.exit.i114 ], [ null, %.lr.ph.i.i ], [ %i.cc, %bb.w ], [ %.0.i.i, %bb.bh ], [ null, %jsonParseFree.exit122 ], [ %.0.i.i, %bb.ay ], [ %.0.i.i, %sqlite3DbFree.exit.i ], [ %.0.i.i, %bb.ai ], [ %.0.i.i, %bb.af ], [ null, %bb.ba ], [ null, %sqlite3VdbeMemSetNull.exit.i ], [ null, %bb.bo ], [ null, %bb.br ], [ null, %bb.bs ], [ %.0.i.i, %bb.bg ]
  ret ptr %.187
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonReturnParse(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 4 uses
  %2 = alloca %struct.JsonString, align 8         ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.c = load i8, ptr %i.b, align 1, !tbaa !3089
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !296    ; 3 uses
end_hunk_27
begin_hunk_28_@unicodeAddExceptions:bb.a
  %i.dr = lshr i32 %i.dq, 10
  %i.ds = and i32 %i.dq, 1023
  %i.dt = add nuw nsw i32 %i.dr, %i.ds
  %i.du = icmp samesign uge i32 %.3141145, %i.dt
  %i.dv = zext i1 %i.du to i32
  br label %sqlite3FtsUnicodeIsalnum.exit115

sqlite3FtsUnicodeIsalnum.exit115:                 ; preds = %bb.o, %bb.p, %bb.r
  %.3140 = phi i32 [ %.3, %bb.o ], [ %.3141145, %bb.r ], [ %.3, %bb.p ] ; 5 uses
  %.5138 = phi ptr [ %.5, %bb.o ], [ %.5139146, %bb.r ], [ %.5, %bb.p ] ; 2 uses
  %.022.i106 = phi i32 [ %i.dd, %bb.o ], [ %i.dv, %bb.r ], [ 1, %bb.p ]
  %.not90 = icmp eq i32 %.022.i106, %1
  br i1 %.not90, label %bb.u, label %bb.s

bb.s:                                             ; preds = %sqlite3FtsUnicodeIsalnum.exit115
  %i.dw = add i32 %.3140, -818
  %or.cond.i116 = icmp ult i32 %i.dw, -50
  br i1 %or.cond.i116, label %.preheader, label %sqlite3FtsUnicodeIsdiacritic.exit118

sqlite3FtsUnicodeIsdiacritic.exit118:             ; preds = %bb.s
  %i.dx = icmp samesign ult i32 %.3140, 800       ; 2 uses
  %.216 = select i1 %i.dx, i32 -768, i32 -800
  %.217 = select i1 %i.dx, i32 134389727, i32 221688
  %i.dy = add nsw i32 %.3140, %.216
  %i.dz = shl nuw i32 1, %i.dy
  %i.ea = and i32 %i.dz, %.217
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.s, %sqlite3FtsUnicodeIsdiacritic.exit118
  %i.ec = icmp sgt i32 %.072175, 0
  br i1 %i.ec, label %.lr.ph167.preheader, label %.critedge4

.lr.ph167.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.072175 to i64
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !27
  %i.ef = icmp slt i32 %i.ee, %.3140
  br i1 %i.ef, label %bb.t, label %.critedge4.loopexit.split.loop.exit207

bb.t:                                             ; preds = %.lr.ph167
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond189.not, label %.critedge4, label %.lr.ph167, !llvm.loop !5323

.critedge4.loopexit.split.loop.exit207:           ; preds = %.lr.ph167
  %i.eg = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.t, %.critedge4.loopexit.split.loop.exit207, %.preheader
  %.070.lcssa = phi i32 [ 0, %.preheader ], [ %i.eg, %.critedge4.loopexit.split.loop.exit207 ], [ %.072175, %bb.t ] ; 3 uses
  %i.eh = icmp sgt i32 %.072175, %.070.lcssa
  br i1 %i.eh, label %.lr.ph172.preheader, label %._crit_edge173

.lr.ph172.preheader:                              ; preds = %.critedge4
  %i.ei = sext i32 %.072175 to i64
  %i.ej = xor i32 %.070.lcssa, -1
  %i.ek = add i32 %.072175, %i.ej
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = sub nsw i64 %i.ei, %i.el
  %i.eo = shl nsw i64 %i.en, 2                    ; 2 uses
  %scevgep190 = getelementptr i8, ptr %i.bu, i64 %i.eo
  %scevgep192 = getelementptr i8, ptr %scevgep191, i64 %i.eo
  %i.ep = add nuw nsw i64 %i.em, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep190, ptr noundef nonnull align 4 dereferenceable(1) %scevgep192, i64 %i.ep, i1 false), !tbaa !27
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %.lr.ph172.preheader, %.critedge4
  %i.eq = zext nneg i32 %.070.lcssa to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.eq
  store i32 %.3140, ptr %i.er, align 4, !tbaa !27
  %i.es = add nsw i32 %.072175, 1
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge173, %sqlite3FtsUnicodeIsdiacritic.exit118, %sqlite3FtsUnicodeIsalnum.exit115
  %.1 = phi i32 [ %i.es, %._crit_edge173 ], [ %.072175, %sqlite3FtsUnicodeIsdiacritic.exit118 ], [ %.072175, %sqlite3FtsUnicodeIsalnum.exit115 ] ; 2 uses
  %i.et = icmp ult ptr %.5138, %i.c
  br i1 %i.et, label %.lr.ph177, label %._crit_edge178, !llvm.loop !5324

._crit_edge178:                                   ; preds = %bb.u
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !5295
  store i32 %.1, ptr %i.bo, align 4, !tbaa !5307
  br label %.critedge101

.critedge101:                                     ; preds = %bb.a, %bb.k, %._crit_edge, %._crit_edge178, %sqlite3_realloc64.exit
  %.182 = phi i32 [ 7, %sqlite3_realloc64.exit ], [ 0, %._crit_edge ], [ 0, %._crit_edge178 ], [ 7, %bb.k ], [ 0, %bb.a ]
  ret i32 %.182
}

; Function Attrs: nounwind uwtable
define internal i32 @fts3auxConnectMethod(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = add i32 %2, -6
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259  ; 7 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #59 ; 2 uses
  %i.e = icmp eq i32 %2, 5
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.d, 4294967295
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %.lr.ph.i.preheader, label %bb.l

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = load i8, ptr %i.c, align 1, !tbaa !231
  %i.i = and i8 %i.h, -33
  %i.j = icmp eq i8 %i.i, 84
  br i1 %i.j, label %.lr.ph.i.1, label %sqlite3_strnicmp.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !231
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 69
  br i1 %i.n, label %.lr.ph.i.2, label %sqlite3_strnicmp.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !231
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 77
  br i1 %i.r, label %.lr.ph.i.3, label %sqlite3_strnicmp.exit

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !231
  %i.u = and i8 %i.t, -33
  %i.v = icmp eq i8 %i.u, 80
  br i1 %i.v, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3
  %.lcssa = phi i32 [ 116, %.lr.ph.i.preheader ], [ 101, %.lr.ph.i.1 ], [ 109, %.lr.ph.i.2 ], [ 112, %.lr.ph.i.3 ]
  %.023.i.lcssa61 = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.1 ], [ %i.o, %.lr.ph.i.2 ], [ %i.s, %.lr.ph.i.3 ]
  %i.w = load i8, ptr %.023.i.lcssa61, align 1, !tbaa !231
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !231
  %i.aa = zext i8 %i.z to i32
  %i.ab = icmp eq i32 %.lcssa, %i.aa
  br i1 %i.ab, label %sqlite3_strnicmp.exit.thread, label %bb.l

sqlite3_strnicmp.exit.thread:                     ; preds = %.lr.ph.i.3, %sqlite3_strnicmp.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !259 ; 2 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #59
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %sqlite3_strnicmp.exit.thread
  %.sink = phi i64 [ 32, %sqlite3_strnicmp.exit.thread ], [ 24, %bb.b ]
  %.043 = phi ptr [ %i.ad, %sqlite3_strnicmp.exit.thread ], [ %i.c, %bb.b ]
  %.0 = phi i64 [ %i.ae, %sqlite3_strnicmp.exit.thread ], [ %i.d, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.sink
  %.042 = load ptr, ptr %i.af, align 8, !tbaa !259 ; 2 uses
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.042) #59
  %i.ah = tail call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef nonnull @.str.1513) ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.e, label %sqlite3_malloc64.exit.thread

bb.e:                                             ; preds = %bb.d
  %sext54 = shl i64 %.0, 32
  %i.ai = ashr exact i64 %sext54, 32              ; 3 uses
  %sext = shl i64 %i.ag, 32
  %i.aj = ashr exact i64 %sext, 32                ; 2 uses
  %i.ak = add nsw i64 %i.ai, 562
  %i.al = add nsw i64 %i.ak, %i.aj                ; 2 uses
  %i.am = tail call i32 @sqlite3_initialize(), !inline_history !401
  %.not.i48 = icmp eq i32 %i.am, 0
  br i1 %.not.i48, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit:                            ; preds = %bb.e
  %i.an = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.al), !inline_history !401 ; 10 uses
  %.not47 = icmp eq ptr %i.an, null
  br i1 %.not47, label %sqlite3_malloc64.exit.thread, label %bb.f

bb.f:                                             ; preds = %sqlite3_malloc64.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.an, i8 0, i64 %i.al, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !5325
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 560 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !5328
  %i.as = getelementptr i8, ptr %i.aq, i64 %i.ai
  %i.at = getelementptr i8, ptr %i.as, i64 1      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store ptr %i.at, ptr %i.au, align 8, !tbaa !5331
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store ptr %0, ptr %i.av, align 8, !tbaa !5332
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 524
  store i32 1, ptr %i.aw, align 4, !tbaa !5333
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 1 %.043, i64 %i.ai, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.042, i64 %i.aj, i1 false)
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !5325
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !5331 ; 7 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !231 ; 3 uses
  switch i8 %i.ba, label %sqlite3Fts3Dequote.exit [
    i8 96, label %bb.g
    i8 91, label %bb.g
    i8 39, label %bb.g
    i8 34, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.bb = icmp eq i8 %i.ba, 91
  %spec.store.select.i = select i1 %i.bb, i8 93, i8 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !231 ; 2 uses
  %.not36.i = icmp eq i8 %i.bd, 0
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.g, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.g ] ; 4 uses
  %i.be = phi i8 [ %i.bq, %bb.k ], [ %i.bd, %bb.g ] ; 2 uses
  %i.bf = phi i64 [ %i.bo, %bb.k ], [ 1, %bb.g ]
  %.038.i = phi i32 [ %.1.i, %bb.k ], [ 0, %bb.g ]
  %.03137.i = phi i32 [ %.132.i, %bb.k ], [ 1, %bb.g ] ; 2 uses
  %i.bg = icmp eq i8 %i.be, %spec.store.select.i
  br i1 %i.bg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.i49
  %i.bh = getelementptr inbounds i8, ptr %i.az, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !231
  %.not35.i = icmp eq i8 %i.bj, %spec.store.select.i
  br i1 %.not35.i, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  store i8 %spec.store.select.i, ptr %i.bk, align 1, !tbaa !231
  %i.bl = add nsw i32 %.03137.i, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i49
  %i.bm = add nsw i32 %.03137.i, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  store i8 %i.be, ptr %i.bn, align 1, !tbaa !231
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.132.i = phi i32 [ %i.bl, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.1.i = add nuw nsw i32 %.038.i, 1              ; 2 uses
  %i.bo = sext i32 %.132.i to i64                 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.az, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !231 ; 2 uses
  %.not.i50 = icmp eq i8 %i.bq, 0
  br i1 %.not.i50, label %._crit_edge.loopexit.i.loopexit, label %.lr.ph.i49, !llvm.loop !5334

._crit_edge.loopexit.i.loopexit:                  ; preds = %bb.k
  %i.br = zext nneg i32 %.1.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %._crit_edge.loopexit.i.loopexit, %bb.g
  %.0.lcssa.i = phi i64 [ 0, %bb.g ], [ %i.br, %._crit_edge.loopexit.i.loopexit ], [ %indvars.iv.i, %bb.h ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.lcssa.i
  store i8 0, ptr %i.bs, align 1, !tbaa !231
  br label %sqlite3Fts3Dequote.exit

sqlite3Fts3Dequote.exit:                          ; preds = %bb.f, %._crit_edge.i
  store ptr %i.an, ptr %4, align 8, !tbaa !3038
  br label %sqlite3_malloc64.exit.thread

bb.l:                                             ; preds = %bb.c, %sqlite3_strnicmp.exit, %bb.a
  tail call void (ptr, ptr, ...) @sqlite3Fts3ErrMsg(ptr noundef %5, ptr noundef nonnull @.str.1514)
  br label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit.thread:                     ; preds = %bb.e, %sqlite3_malloc64.exit, %bb.d, %bb.l, %sqlite3Fts3Dequote.exit
  %.044 = phi i32 [ 1, %bb.l ], [ %i.ah, %bb.d ], [ 0, %sqlite3Fts3Dequote.exit ], [ 7, %sqlite3_malloc64.exit ], [ 7, %bb.e ]
  ret i32 %.044
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fts3auxBestIndexMethod(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3064
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3065 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3066
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !3068
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 1, ptr %i.k, align 4, !tbaa !3069
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !1145   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.thread96

.thread96:                                        ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.n, align 8, !tbaa !3070
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 2.000000e+04, ptr %i.o, align 8, !tbaa !3039
  br label %bb.r

.lr.ph:                                           ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1150
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %.05272 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.j ] ; 2 uses
  %.05471 = phi i32 [ -1, %.lr.ph ], [ %.4, %bb.j ] ; 3 uses
  %.05770 = phi i32 [ -1, %.lr.ph ], [ %.360, %bb.j ] ; 3 uses
  %.06169 = phi i32 [ -1, %.lr.ph ], [ %.364, %bb.j ] ; 3 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %indvars.iv ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !3042
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !3041  ; 6 uses
  %i.w = load i32, ptr %i.r, align 4, !tbaa !3040 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.g
  %.pre = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i8 %i.v, 2
  %i.z = trunc nuw nsw i64 %indvars.iv to i32     ; 4 uses
  %spec.select = select i1 %i.y, i32 %i.z, i32 %.06169
  %i.aa = icmp eq i8 %i.v, 16
  %i.ab = icmp eq i8 %i.v, 8
  %i.ac = or i1 %i.ab, %i.aa
  %.256 = select i1 %i.ac, i32 %i.z, i32 %.05471
  %i.ad = icmp eq i8 %i.v, 4
  %i.ae = icmp eq i8 %i.v, 32
  %i.af = or i1 %i.ae, %i.ad
  %spec.select67 = select i1 %i.af, i32 %i.z, i32 %.05770
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge77, %bb.h
  %.pre-phi = phi i32 [ %.pre, %._crit_edge77 ], [ %i.z, %bb.h ]
  %.263 = phi i32 [ %.06169, %._crit_edge77 ], [ %spec.select, %bb.h ]
  %.259 = phi i32 [ %.05770, %._crit_edge77 ], [ %spec.select67, %bb.h ]
  %.3 = phi i32 [ %.05471, %._crit_edge77 ], [ %.256, %bb.h ]
  %i.ag = icmp eq i32 %i.w, 4
  %i.ah = icmp eq i8 %i.v, 2
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  %spec.select66 = select i1 %or.cond, i32 %.pre-phi, i32 %.05272
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.364 = phi i32 [ %.263, %bb.i ], [ %.06169, %bb.f ] ; 3 uses
  %.360 = phi i32 [ %.259, %bb.i ], [ %.05770, %bb.f ] ; 3 uses
  %.4 = phi i32 [ %.3, %bb.i ], [ %.05471, %bb.f ] ; 3 uses
  %.2 = phi i32 [ %spec.select66, %bb.i ], [ %.05272, %bb.f ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !5335

._crit_edge:                                      ; preds = %bb.j
  %i.ai = icmp sgt i32 %.364, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  store i32 1, ptr %i.aj, align 8, !tbaa !3070
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !3045
  %i.am = zext nneg i32 %.364 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  store i32 1, ptr %i.an, align 4, !tbaa !3046
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 5.000000e+00, ptr %i.ao, align 8, !tbaa !3039
  br label %bb.p

bb.l:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.aj, align 8, !tbaa !3070
end_hunk_28
begin_hunk_29_@fts3SegReaderCursor:bb.a
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !28 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i8.i.i, label %sqlite3_bind_int64.exit.i, label %bb.af

bb.af:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.eg(ptr noundef nonnull %i.ef) #58, !inline_history !5409
  br label %sqlite3_bind_int64.exit.i

sqlite3_bind_int64.exit.i:                        ; preds = %bb.af, %sqlite3VdbeMemSetInt64.exit.i.i, %bb.ab
  %.val20.i = load i32, ptr %i.dp, align 4, !tbaa !5333
  %i.eh = sext i32 %.val20.i to i64
  %i.ei = mul nsw i64 %i.eh, %i.dq
  %i.ej = add nsw i64 %i.ei, %i.dt
  %i.ek = shl nsw i64 %i.ej, 10
  %i.el = or disjoint i64 %i.ek, 1023             ; 2 uses
  %i.em = call fastcc i32 @vdbeUnbind(ptr noundef %.pre30.i, i32 noundef 1), !inline_history !5408
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ag, label %.lr.ph

bb.ag:                                            ; preds = %sqlite3_bind_int64.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre30.i, i64 128
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !175 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 56 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 76 ; 2 uses
  %i.es = load i16, ptr %i.er, align 4, !tbaa !166
  %i.et = and i16 %i.es, -28672
  %.not.i.i22.i = icmp eq i16 %i.et, 0
  br i1 %.not.i.i22.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.eq, i64 noundef %i.el), !inline_history !5408
  br label %sqlite3VdbeMemSetInt64.exit.i23.i

bb.ai:                                            ; preds = %bb.ag
  store i64 %i.el, ptr %i.eq, align 8, !tbaa !231
  store i16 4, ptr %i.er, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetInt64.exit.i23.i

sqlite3VdbeMemSetInt64.exit.i23.i:                ; preds = %bb.ai, %bb.ah
  %i.eu = load ptr, ptr %.pre30.i, align 8, !tbaa !150
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !28 ; 2 uses
  %.not.i8.i24.i = icmp eq ptr %i.ew, null
  br i1 %.not.i8.i24.i, label %.lr.ph, label %sqlite3_bind_int64.exit25.sink.split.i

bb.aj:                                            ; preds = %.thread102
  %i.ex = getelementptr i8, ptr %0, i64 492
  %.val.i = load i32, ptr %i.ex, align 4, !tbaa !5333
  %i.ey = sext i32 %1 to i64
  %i.ez = sext i32 %.val.i to i64
  %i.fa = mul nsw i64 %i.ez, %i.ey
  %i.fb = sext i32 %2 to i64
  %i.fc = add nsw i64 %i.fa, %i.fb
  %i.fd = shl nsw i64 %i.fc, 10
  %i.fe = zext nneg i32 %3 to i64
  %i.ff = add nsw i64 %i.fd, %i.fe                ; 2 uses
  %i.fg = tail call fastcc i32 @vdbeUnbind(ptr noundef %.pre.i69, i32 noundef 0), !inline_history !5408
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ak, label %.lr.ph

bb.ak:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %.pre.i69, i64 128
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !175 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 20 ; 2 uses
  %i.fl = load i16, ptr %i.fk, align 4, !tbaa !166
  %i.fm = and i16 %i.fl, -28672
  %.not.i.i26.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i26.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.fj, i64 noundef %i.ff), !inline_history !5408
  br label %sqlite3VdbeMemSetInt64.exit.i27.i

bb.am:                                            ; preds = %bb.ak
  store i64 %i.ff, ptr %i.fj, align 8, !tbaa !231
  store i16 4, ptr %i.fk, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetInt64.exit.i27.i

sqlite3VdbeMemSetInt64.exit.i27.i:                ; preds = %bb.am, %bb.al
  %i.fn = load ptr, ptr %.pre.i69, align 8, !tbaa !150
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !28 ; 2 uses
  %.not.i8.i28.i = icmp eq ptr %i.fp, null
  br i1 %.not.i8.i28.i, label %.lr.ph, label %sqlite3_bind_int64.exit25.sink.split.i

sqlite3_bind_int64.exit25.sink.split.i:           ; preds = %sqlite3VdbeMemSetInt64.exit.i27.i, %sqlite3VdbeMemSetInt64.exit.i23.i
  %.sink.i = phi ptr [ %i.ew, %sqlite3VdbeMemSetInt64.exit.i23.i ], [ %i.fp, %sqlite3VdbeMemSetInt64.exit.i27.i ]
  %.ph.i = phi ptr [ %.pre30.i, %sqlite3VdbeMemSetInt64.exit.i23.i ], [ %.pre.i69, %sqlite3VdbeMemSetInt64.exit.i27.i ]
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.fq(ptr noundef nonnull %.sink.i) #58, !inline_history !5391
  br label %.lr.ph

bb.an:                                            ; preds = %.thread102, %bb.aa
  %i.fr = phi ptr [ %.pre.i69, %.thread102 ], [ %.pre30.i, %bb.aa ]
  %.0.i = phi i32 [ %i.f, %.thread102 ], [ %i.dn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %.critedge

.lr.ph:                                           ; preds = %sqlite3VdbeMemSetInt64.exit.i27.i, %sqlite3_bind_int64.exit.i, %sqlite3VdbeMemSetInt64.exit.i23.i, %bb.aj, %sqlite3_bind_int64.exit25.sink.split.i
  %.ph = phi ptr [ %.ph.i, %sqlite3_bind_int64.exit25.sink.split.i ], [ %.pre.i69, %bb.aj ], [ %.pre30.i, %sqlite3VdbeMemSetInt64.exit.i23.i ], [ %.pre30.i, %sqlite3_bind_int64.exit.i ], [ %.pre.i69, %sqlite3VdbeMemSetInt64.exit.i27.i ] ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.fs = icmp ne ptr %4, null
  %.not61 = icmp eq i32 %6, 0
  %. = select i1 %.not61, ptr null, ptr %i.d
  %i.ft = or i32 %7, %6
  %or.cond7 = icmp eq i32 %i.ft, 0                ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.fv = zext i1 %or.cond7 to i8
  %i.fw = call i32 @sqlite3_step(ptr noundef %.ph) ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 100
  br i1 %i.fx, label %.lr.ph173, label %.critedge

.lr.ph173:                                        ; preds = %.lr.ph, %fts3SegReaderCursorAppend.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.fy = call i64 @sqlite3_column_int64(ptr noundef %.ph, i32 noundef 1)
  store i64 %i.fy, ptr %i.c, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  %i.fz = call i64 @sqlite3_column_int64(ptr noundef %.ph, i32 noundef 2)
  store i64 %i.fz, ptr %i.d, align 8, !tbaa !21
  %i.ga = call i64 @sqlite3_column_int64(ptr noundef %.ph, i32 noundef 3)
  %i.gb = call i32 @sqlite3_column_bytes(ptr noundef %.ph, i32 noundef 4) ; 5 uses
  %i.gc = call ptr @sqlite3_column_blob(ptr noundef %.ph, i32 noundef 4) ; 3 uses
  %i.gd = load i64, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.ge = icmp ne i64 %i.gd, 0
  %or.cond3 = and i1 %i.fs, %i.ge
  %i.gf = icmp ne ptr %i.gc, null
  %or.cond5 = select i1 %or.cond3, i1 %i.gf, i1 false
  br i1 %or.cond5, label %bb.ao, label %.thread103thread-pre-split

bb.ao:                                            ; preds = %.lr.ph173
  %i.gg = call fastcc i32 @fts3SelectLeaf(ptr noundef %0, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %i.gc, i32 noundef %i.gb, ptr noundef nonnull %i.c, ptr noundef %.) ; 2 uses
  %.not62 = icmp eq i32 %i.gg, 0
  br i1 %.not62, label %bb.ap, label %fts3SegReaderCursorAppend.exit83.thread

bb.ap:                                            ; preds = %bb.ao
  %.pr.pre = load i64, ptr %i.c, align 8, !tbaa !21 ; 3 uses
  br i1 %or.cond7, label %.thread103, label %.thread103thread-pre-split

.thread103thread-pre-split:                       ; preds = %.lr.ph173, %bb.ap
  %.pr = phi i64 [ %i.gd, %.lr.ph173 ], [ %.pr.pre, %bb.ap ]
  %.pre = load i64, ptr %i.d, align 8, !tbaa !21
  br label %.thread103

.thread103:                                       ; preds = %bb.ap, %.thread103thread-pre-split
  %i.gh = phi i64 [ %.pre, %.thread103thread-pre-split ], [ %.pr.pre, %bb.ap ] ; 2 uses
  %i.gi = phi i64 [ %.pr, %.thread103thread-pre-split ], [ %.pr.pre, %bb.ap ] ; 3 uses
  %i.gj = load i32, ptr %i.fu, align 8, !tbaa !5379
  %i.gk = add nsw i32 %i.gj, 1
  %i.gl = icmp eq i64 %i.gi, 0
  br i1 %i.gl, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.thread103
  %.not.i74 = icmp eq i64 %i.gh, 0
  br i1 %.not.i74, label %bb.ar, label %fts3SegReaderCursorAppend.exit83.thread

bb.ar:                                            ; preds = %bb.aq
  %i.gm = add nsw i32 %i.gb, 20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.thread103
  %.0.i71 = phi i32 [ %i.gm, %bb.ar ], [ 0, %.thread103 ] ; 2 uses
  %i.gn = call i32 @sqlite3_initialize(), !inline_history !5410
  %.not.i.i72 = icmp eq i32 %i.gn, 0
  br i1 %.not.i.i72, label %sqlite3_malloc64.exit.i73, label %fts3SegReaderCursorAppend.exit83.thread

sqlite3_malloc64.exit.i73:                        ; preds = %bb.as
  %i.go = sext i32 %.0.i71 to i64
  %i.gp = add nsw i64 %i.go, 136
  %i.gq = call fastcc ptr @sqlite3Malloc(i64 noundef %i.gp), !inline_history !5410 ; 14 uses
  %.not35.i = icmp eq ptr %i.gq, null
  br i1 %.not35.i, label %fts3SegReaderCursorAppend.exit83.thread, label %bb.at

bb.at:                                            ; preds = %sqlite3_malloc64.exit.i73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.gq, i8 0, i64 136, i1 false)
  store i32 %i.gk, ptr %i.gq, align 8, !tbaa !5400
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i8 %i.fv, ptr %i.gr, align 4, !tbaa !5411
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i64 %i.gi, ptr %i.gs, align 8, !tbaa !5412
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store i64 %i.gh, ptr %i.gt, align 8, !tbaa !5413
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  store i64 %i.ga, ptr %i.gu, align 8, !tbaa !5414
  %.not36.i = icmp eq i32 %.0.i71, 0
  br i1 %.not36.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 136 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !5389
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 5
  store i8 1, ptr %i.gx, align 1, !tbaa !5388
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  store i32 %i.gb, ptr %i.gy, align 8, !tbaa !5415
  %.not37.i = icmp eq i32 %i.gb, 0
  br i1 %.not37.i, label %._crit_edge.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gz = sext i32 %i.gb to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr readonly align 1 %i.gc, i64 %i.gz, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.av, %bb.au
  %.pre-phi.i = phi i64 [ %i.gz, %bb.av ], [ 0, %bb.au ]
  %i.ha = getelementptr inbounds i8, ptr %i.gv, i64 %.pre-phi.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ha, i8 0, i64 20, i1 false)
  br label %sqlite3Fts3SegReaderNew.exit

bb.aw:                                            ; preds = %bb.at
  %i.hb = add nsw i64 %i.gi, -1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !5416
  br label %sqlite3Fts3SegReaderNew.exit

sqlite3Fts3SegReaderNew.exit:                     ; preds = %bb.aw, %._crit_edge.i
  %i.hd = load i32, ptr %i.fu, align 8, !tbaa !5379 ; 3 uses
  %i.he = and i32 %i.hd, 15
  %i.hf = icmp eq i32 %i.he, 0
  %.pre.i75 = load ptr, ptr %8, align 8, !tbaa !5380 ; 2 uses
  br i1 %i.hf, label %bb.ax, label %fts3SegReaderCursorAppend.exit83

bb.ax:                                            ; preds = %sqlite3Fts3SegReaderNew.exit
  %i.hg = call i32 @sqlite3_initialize(), !inline_history !5406
  %.not.i.i77 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i77, label %sqlite3_realloc64.exit.i79, label %fts3SegReaderCursorAppend.exit83.thread153

sqlite3_realloc64.exit.i79:                       ; preds = %bb.ax
  %i.hh = add nsw i32 %i.hd, 16
  %i.hi = sext i32 %i.hh to i64
  %i.hj = shl nsw i64 %i.hi, 3
  %i.hk = call fastcc ptr @sqlite3Realloc(ptr noundef %.pre.i75, i64 noundef %i.hj), !inline_history !5406 ; 3 uses
  %.not.i80 = icmp eq ptr %i.hk, null
  br i1 %.not.i80, label %fts3SegReaderCursorAppend.exit83.thread153, label %.thread.i81

.thread.i81:                                      ; preds = %sqlite3_realloc64.exit.i79
  store ptr %i.hk, ptr %8, align 8, !tbaa !5380
  %.pre19.i82 = load i32, ptr %i.fu, align 8, !tbaa !5379
  br label %fts3SegReaderCursorAppend.exit83

fts3SegReaderCursorAppend.exit83.thread153:       ; preds = %bb.ax, %sqlite3_realloc64.exit.i79
  call fastcc void @sqlite3Fts3SegReaderFree(ptr noundef nonnull %i.gq), !inline_history !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %.critedge.thread

fts3SegReaderCursorAppend.exit83.thread:          ; preds = %bb.ao, %bb.aq, %bb.as, %sqlite3_malloc64.exit.i73
  %.4.ph = phi i32 [ %i.gg, %bb.ao ], [ 7, %sqlite3_malloc64.exit.i73 ], [ 7, %bb.as ], [ 267, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %.critedge

fts3SegReaderCursorAppend.exit83:                 ; preds = %sqlite3Fts3SegReaderNew.exit, %.thread.i81
  %i.hl = phi i32 [ %.pre19.i82, %.thread.i81 ], [ %i.hd, %sqlite3Fts3SegReaderNew.exit ] ; 2 uses
  %i.hm = phi ptr [ %i.hk, %.thread.i81 ], [ %.pre.i75, %sqlite3Fts3SegReaderNew.exit ]
  %i.hn = add nsw i32 %i.hl, 1
  store i32 %i.hn, ptr %i.fu, align 8, !tbaa !5379
  %i.ho = sext i32 %i.hl to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ho
  store ptr %i.gq, ptr %i.hp, align 8, !tbaa !5381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  %i.hq = call i32 @sqlite3_step(ptr noundef %.ph) ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 100
  br i1 %i.hr, label %.lr.ph173, label %.critedge

.critedge.thread:                                 ; preds = %fts3SegReaderCursorAppend.exit.thread, %fts3SegReaderCursorAppend.exit, %fts3SegReaderCursorAppend.exit83.thread153
  %.194.ph = phi ptr [ %.ph, %fts3SegReaderCursorAppend.exit83.thread153 ], [ null, %fts3SegReaderCursorAppend.exit.thread ], [ null, %fts3SegReaderCursorAppend.exit ]
  %.5.ph = phi i32 [ 7, %fts3SegReaderCursorAppend.exit83.thread153 ], [ 7, %fts3SegReaderCursorAppend.exit.thread ], [ %.152, %fts3SegReaderCursorAppend.exit ]
  %i.hs = call i32 @sqlite3_reset(ptr noundef %.194.ph) ; 0 uses
  br label %bb.ay

.critedge:                                        ; preds = %fts3SegReaderCursorAppend.exit83, %.lr.ph, %bb.an, %fts3SegReaderCursorAppend.exit83.thread
  %.194 = phi ptr [ %i.fr, %bb.an ], [ %.ph, %fts3SegReaderCursorAppend.exit83.thread ], [ %.ph, %.lr.ph ], [ %.ph, %fts3SegReaderCursorAppend.exit83 ]
  %.5 = phi i32 [ %.0.i, %bb.an ], [ %.4.ph, %fts3SegReaderCursorAppend.exit83.thread ], [ %i.fw, %.lr.ph ], [ %i.hq, %fts3SegReaderCursorAppend.exit83 ]
  %.5.fr = freeze i32 %.5                         ; 2 uses
  %i.ht = call i32 @sqlite3_reset(ptr noundef %.194)
  %i.hu = icmp eq i32 %.5.fr, 101
  %spec.select = select i1 %i.hu, i32 %i.ht, i32 %.5.fr
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge, %.critedge.thread
  %i.hv = phi i32 [ %.5.ph, %.critedge.thread ], [ %spec.select, %.critedge ]
  ret i32 %i.hv
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3SelectLeaf(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef captures(address) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = load i8, ptr %3, align 1, !tbaa !231     ; 3 uses
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.f = and i8 %i.d, 127
  %i.g = zext nneg i8 %i.f to i32
  %i.h = load i8, ptr %i.e, align 1, !tbaa !231   ; 2 uses
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 7
  %i.k = or disjoint i32 %i.j, %i.g               ; 2 uses
  %i.l = icmp sgt i8 %i.h, -1
  br i1 %i.l, label %sqlite3Fts3GetVarint32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.n = and i32 %i.k, 16383
  %i.o = load i8, ptr %i.m, align 1, !tbaa !231   ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 14
  %i.r = or disjoint i32 %i.q, %i.n               ; 2 uses
  %i.s = icmp sgt i8 %i.o, -1
  br i1 %i.s, label %sqlite3Fts3GetVarint32.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.u = and i32 %i.r, 2097151
  %i.v = load i8, ptr %i.t, align 1, !tbaa !231   ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 21
  %i.y = or disjoint i32 %i.x, %i.u               ; 2 uses
  %i.z = icmp sgt i8 %i.v, -1
  br i1 %i.z, label %sqlite3Fts3GetVarint32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = and i32 %i.y, 268435455
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !231
  %i.ad = and i8 %i.ac, 7
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 28
  %i.ag = or disjoint i32 %i.af, %i.ab
  br label %sqlite3Fts3GetVarint32.exit

bb.f:                                             ; preds = %bb.a
  %i.ah = zext nneg i8 %i.d to i32
  br label %sqlite3Fts3GetVarint32.exit

sqlite3Fts3GetVarint32.exit:                      ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.059 = phi i32 [ %i.ah, %bb.f ], [ %i.ag, %bb.e ], [ %i.r, %bb.c ], [ %i.k, %bb.b ], [ %i.y, %bb.d ] ; 3 uses
  %i.ai = icmp samesign ugt i32 %.059, 48
  br i1 %i.ai, label %.thread, label %bb.g

bb.g:                                             ; preds = %sqlite3Fts3GetVarint32.exit
  %i.aj = sext i32 %4 to i64                      ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.aj ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.al = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %3, ptr noundef nonnull %i.a), !inline_history !5417
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.am ; 2 uses
  %i.ao = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.an, ptr noundef nonnull %i.a), !inline_history !5417
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = add nsw i64 %i.ap, %i.am                ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, %i.aj
  br i1 %i.ar, label %.thread62, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.ap ; 6 uses
  %i.at = ptrtoint ptr %3 to i64
  %i.au = ptrtoint ptr %i.ak to i64
  %i.av = icmp slt i64 %i.aq, %i.aj
  br i1 %i.av, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.preheader.i
  %i.aw = icmp ne ptr %5, null                    ; 2 uses
  %i.ax = icmp ne ptr %6, null                    ; 2 uses
  %i.ay = or i1 %i.aw, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.ay

bb.i:                                             ; preds = %bb.h
  %.pre.i = load i8, ptr %i.as, align 1, !tbaa !231 ; 3 uses
  %.not95.peel.i = icmp sgt i8 %.pre.i, -1
  br i1 %.not95.peel.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ba = and i8 %.pre.i, 127
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !231 ; 2 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 7
  %i.bf = or disjoint i32 %i.be, %i.bb            ; 2 uses
  %i.bg = icmp sgt i8 %i.bc, -1
  br i1 %i.bg, label %sqlite3Fts3GetVarint32.exit101.peel.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bi = and i32 %i.bf, 16383
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !231 ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 14
  %i.bm = or disjoint i32 %i.bl, %i.bi            ; 2 uses
  %i.bn = icmp sgt i8 %i.bj, -1
  br i1 %i.bn, label %sqlite3Fts3GetVarint32.exit101.peel.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bp = and i32 %i.bm, 2097151
end_hunk_29
begin_hunk_30_@sqlite3Fts3DoclistPrev:bb.a
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.d, label %.critedge, !llvm.loop !5479

.critedge:                                        ; preds = %.lr.ph96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %fts3PoslistCopy.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.026.lcssa = phi ptr [ null, %bb.b ], [ %i.k, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.n, %._crit_edge.loopexit ]
  %i.aa = ptrtoint ptr %i.f to i64
  %i.ab = ptrtoint ptr %.026.lcssa to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %5, align 4, !tbaa !27
  store ptr %.026.lcssa, ptr %3, align 8, !tbaa !259
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !21
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.ae = getelementptr inbounds i8, ptr %i.c, i64 -2 ; 3 uses
  %.not11.i = icmp ult ptr %i.ae, %1
  br i1 %.not11.i, label %fts3GetReverseVarint.exit, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.e, %bb.f
  %.012.i = phi ptr [ %i.ag, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = load i8, ptr %.012.i, align 1, !tbaa !231
  %.not10.i = icmp sgt i8 %i.af, -1
  br i1 %.not10.i, label %fts3GetReverseVarint.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i32
  %i.ag = getelementptr inbounds i8, ptr %.012.i, i64 -1 ; 3 uses
  %.not.i33 = icmp ult ptr %i.ag, %1
  br i1 %.not.i33, label %fts3GetReverseVarint.exit, label %.lr.ph.i32, !llvm.loop !5480

fts3GetReverseVarint.exit:                        ; preds = %.lr.ph.i32, %bb.f, %bb.e
  %.0.lcssa.i34 = phi ptr [ %i.ae, %bb.e ], [ %.012.i, %.lr.ph.i32 ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i34, i64 1 ; 5 uses
  %i.ai = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.a) ; 0 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.ak = sub i64 0, %i.aj
  %i.al = select i1 %.not, i64 %i.ak, i64 %i.aj
  %i.am = load i64, ptr %4, align 8, !tbaa !21
  %i.an = add i64 %i.am, %i.al
  store i64 %i.an, ptr %4, align 8, !tbaa !21
  %i.ao = icmp eq ptr %i.ah, %1
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %fts3GetReverseVarint.exit
  store i8 1, ptr %6, align 1, !tbaa !231
  br label %bb.l

bb.h:                                             ; preds = %fts3GetReverseVarint.exit
  %i.ap = ptrtoaddr ptr %1 to i64
  %i.aq = getelementptr inbounds i8, ptr %.0.lcssa.i34, i64 -1 ; 3 uses
  %i.ar = icmp ugt ptr %i.aq, %1
  br i1 %i.ar, label %.lr.ph89, label %.critedge.i

bb.i:                                             ; preds = %.lr.ph89
  %i.as = icmp ugt ptr %i.at, %1
  br i1 %i.as, label %.lr.ph89, label %.critedge.i, !llvm.loop !5481

.lr.ph89:                                         ; preds = %bb.h, %bb.i
  %.019.i87 = phi ptr [ %i.at, %bb.i ], [ %i.aq, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.019.i87, i64 -1 ; 4 uses
  %i.au = load i8, ptr %.019.i87, align 1, !tbaa !231 ; 2 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.i, label %..critedge.i_crit_edge, !llvm.loop !5481

..critedge.i_crit_edge:                           ; preds = %.lr.ph89
  br label %.critedge.i, !llvm.loop !5481

.critedge.i:                                      ; preds = %bb.i, %..critedge.i_crit_edge, %bb.h
  %.120.i = phi ptr [ %i.at, %..critedge.i_crit_edge ], [ %i.aq, %bb.h ], [ %i.at, %bb.i ] ; 5 uses
  %.1.i = phi i8 [ %i.au, %..critedge.i_crit_edge ], [ 0, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %i.aw = icmp ugt ptr %.120.i, %1
  br i1 %i.aw, label %.lr.ph.preheader.i35, label %.critedge23.i

.lr.ph.preheader.i35:                             ; preds = %.critedge.i
  %.12035.i = ptrtoaddr ptr %.120.i to i64
  %i.ax = sub i64 %i.ap, %.12035.i
  %scevgep.i = getelementptr i8, ptr %.120.i, i64 %i.ax
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.j, %.lr.ph.preheader.i35
  %.229.i = phi i8 [ %i.ay, %bb.j ], [ %.1.i, %.lr.ph.preheader.i35 ]
  %.22128.i = phi ptr [ %i.bd, %bb.j ], [ %.120.i, %.lr.ph.preheader.i35 ] ; 3 uses
  %i.ay = load i8, ptr %.22128.i, align 1, !tbaa !231 ; 3 uses
  %i.az = and i8 %i.ay, -128
  %i.ba = zext i8 %i.az to i32
  %i.bb = sext i8 %.229.i to i32
  %i.bc = or i32 %i.ba, %i.bb
  %.not.i37 = icmp eq i32 %i.bc, 0
  br i1 %.not.i37, label %.critedge2.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i36
  %i.bd = getelementptr inbounds i8, ptr %.22128.i, i64 -1 ; 2 uses
  %i.be = icmp ugt ptr %i.bd, %1
  br i1 %i.be, label %.lr.ph.i36, label %.critedge23.i, !llvm.loop !5482

.critedge23.i:                                    ; preds = %bb.j, %.critedge.i
  %.221.lcssa.i = phi ptr [ %.120.i, %.critedge.i ], [ %scevgep.i, %bb.j ] ; 3 uses
  %.2.lcssa.i = phi i8 [ %.1.i, %.critedge.i ], [ %i.ay, %bb.j ]
  %i.bf = icmp eq i8 %.2.lcssa.i, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.221.lcssa.i, i64 2
  %i.bh = icmp ugt ptr %i.ah, %i.bg
  %or.cond.i = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond.i, label %.critedge2.i, label %.preheader

.critedge2.i:                                     ; preds = %.lr.ph.i36, %.critedge23.i
  %.22127.i = phi ptr [ %.221.lcssa.i, %.critedge23.i ], [ %.22128.i, %.lr.ph.i36 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.22127.i, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.critedge2.i, %.critedge23.i
  %.4.i.ph = phi ptr [ %.221.lcssa.i, %.critedge23.i ], [ %i.bi, %.critedge2.i ]
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.k
  %.4.i = phi ptr [ %i.bj, %bb.k ], [ %.4.i.ph, %.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 3 uses
  %i.bk = load i8, ptr %.4.i, align 1, !tbaa !231
  %.not22.i = icmp sgt i8 %i.bk, -1
  br i1 %.not22.i, label %fts3ReversePoslist.exit, label %bb.k, !llvm.loop !5483

fts3ReversePoslist.exit:                          ; preds = %bb.k
  %i.bl = ptrtoint ptr %i.ah to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %5, align 4, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %fts3ReversePoslist.exit, %bb.g
  %.048 = phi ptr [ %i.ah, %bb.g ], [ %i.bj, %fts3ReversePoslist.exit ]
  store ptr %.048, ptr %3, align 8, !tbaa !259
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @simpleCreate(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !347
  %.not.i.not = icmp eq i32 %i.a, 0
  br i1 %.not.i.not, label %sqlite3_malloc.exit, label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit:                              ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 136), !inline_history !347 ; 29 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i8 0, i64 136, i1 false)
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %bb.c, label %vector.body

vector.body:                                      ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store <8 x i8> splat (i8 -1), ptr %i.e, align 1, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store <8 x i8> splat (i8 -1), ptr %i.f, align 1, !tbaa !231
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store <8 x i8> splat (i8 -1), ptr %i.g, align 1, !tbaa !231
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store <8 x i8> splat (i8 -1), ptr %i.h, align 1, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  store <8 x i8> splat (i8 -1), ptr %i.i, align 1, !tbaa !231
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  store <8 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0>, ptr %i.j, align 1, !tbaa !231
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  store <8 x i8> zeroinitializer, ptr %i.k, align 1, !tbaa !231
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store <8 x i8> <i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, ptr %i.l, align 1, !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  store <8 x i8> zeroinitializer, ptr %i.m, align 1, !tbaa !231
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  store <8 x i8> zeroinitializer, ptr %i.n, align 1, !tbaa !231
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 89
  store <8 x i8> zeroinitializer, ptr %i.o, align 1, !tbaa !231
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  store <8 x i8> <i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, ptr %i.p, align 1, !tbaa !231
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  store <8 x i8> zeroinitializer, ptr %i.q, align 1, !tbaa !231
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  store <8 x i8> zeroinitializer, ptr %i.r, align 1, !tbaa !231
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  store <8 x i8> zeroinitializer, ptr %i.s, align 1, !tbaa !231
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  store i8 0, ptr %i.t, align 1, !tbaa !231
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 130
  store i8 0, ptr %i.u, align 2, !tbaa !231
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 131
  store i8 -1, ptr %i.v, align 1, !tbaa !231
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i8 -1, ptr %i.w, align 4, !tbaa !231
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 133
  store i8 -1, ptr %i.x, align 1, !tbaa !231
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 134
  store i8 -1, ptr %i.y, align 2, !tbaa !231
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 135
  store i8 -1, ptr %i.z, align 1, !tbaa !231
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !259
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #59 ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %.not33 = icmp sgt i32 %i.ad, 0
  br i1 %.not33, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %wide.trip.count = and i64 %i.ac, 2147483647
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv37 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38, %bb.j ] ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !259
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv37
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !231 ; 2 uses
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i28 = icmp eq i32 %i.aj, 0
  br i1 %.not.i28, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.al(ptr noundef nonnull %i.ak) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.g, %bb.f
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.an = tail call i32 %i.am(ptr noundef nonnull %i.b) #58, !inline_history !277
  %i.ao = sext i32 %i.an to i64
  %i.ap = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.aq = sub nsw i64 %i.ap, %i.ao
  store i64 %i.aq, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.as = add nsw i64 %i.ar, -1
  store i64 %i.as, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.at(ptr noundef nonnull %i.b) #58, !inline_history !278
  %i.au = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.au, null
  br i1 %.not.i4.i, label %sqlite3_malloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.av(ptr noundef nonnull %i.au) #58, !inline_history !279
  br label %sqlite3_malloc.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.aw(ptr noundef nonnull %i.b) #58, !inline_history !278
  br label %sqlite3_malloc.exit.thread

bb.j:                                             ; preds = %bb.d
  %i.ax = zext nneg i8 %i.ah to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ax
  store i8 1, ptr %i.ay, align 1, !tbaa !231
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond40.not, label %.critedge, label %bb.d, !llvm.loop !5484

.critedge:                                        ; preds = %bb.j, %vector.body, %bb.c
  store ptr %i.b, ptr %2, align 8, !tbaa !5293
  br label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit.thread:                       ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.h, %bb.i, %sqlite3_malloc.exit, %.critedge
  %.3 = phi i32 [ 1, %sqlite3_mutex_enter.exit.i ], [ 0, %.critedge ], [ 7, %sqlite3_malloc.exit ], [ 1, %bb.i ], [ 1, %bb.h ], [ 7, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @simpleDestroy(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.d(ptr noundef nonnull %i.c) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #58, !inline_history !277
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.i = sub nsw i64 %i.h, %i.g
  store i64 %i.i, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.k = add nsw i64 %i.j, -1
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.l(ptr noundef nonnull %0) #58, !inline_history !278
  %i.m = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.n(ptr noundef nonnull %i.m) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.o(ptr noundef nonnull %0) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @simpleOpen(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !347
  %.not.i.not = icmp eq i32 %i.a, 0
  br i1 %.not.i.not, label %sqlite3_malloc.exit, label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit:                              ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 48), !inline_history !347 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !5485
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #59
  %i.h = trunc i64 %i.g to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.sink = phi i32 [ %i.h, %bb.d ], [ 0, %bb.b ], [ %2, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sink, ptr %i.i, align 8, !tbaa !5487
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.j, align 4, !tbaa !5488
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !5489
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.l, align 8, !tbaa !5490
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.m, align 8, !tbaa !5491
  store ptr %i.b, ptr %3, align 8, !tbaa !5300
  br label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit.thread:                       ; preds = %bb.a, %sqlite3_malloc.exit, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 7, %sqlite3_malloc.exit ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @simpleClose(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5490 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_30
begin_hunk_31_@fts3ExprBalance:bb.a
  store ptr %.pre, ptr %i.co, align 8, !tbaa !5605
  %i.da = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.d, ptr %i.da, align 8, !tbaa !5606
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread161
  %.4109164 = phi i32 [ 0, %bb.af ], [ %.4109165, %.thread161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.ah

bb.ah:                                            ; preds = %sqlite3_free.exit138, %bb.ag
  %.5110 = phi i32 [ %.2107.ph158, %sqlite3_free.exit138 ], [ %.4109164, %bb.ag ] ; 2 uses
  %.6104 = phi ptr [ %.4102, %sqlite3_free.exit138 ], [ %i.d, %bb.ag ] ; 2 uses
  %.not131 = icmp eq i32 %.5110, 0
  br i1 %.not131, label %.thread174, label %.thread167

.thread167:                                       ; preds = %bb.c, %sqlite3_malloc64.exit, %bb.a, %bb.ah
  %.6104173 = phi ptr [ %.6104, %bb.ah ], [ %i.d, %bb.a ], [ %i.d, %sqlite3_malloc64.exit ], [ %i.d, %bb.c ]
  %.5110171 = phi i32 [ %.5110, %bb.ah ], [ 1, %bb.a ], [ 7, %sqlite3_malloc64.exit ], [ 7, %bb.c ]
  tail call fastcc void @sqlite3Fts3ExprFree(ptr noundef %.6104173)
  br label %.thread174

.thread174:                                       ; preds = %bb.ac, %.thread167, %bb.ah
  %.5110172 = phi i32 [ %.5110171, %.thread167 ], [ 0, %bb.ah ], [ 0, %bb.ac ]
  %.7 = phi ptr [ null, %.thread167 ], [ %.6104, %bb.ah ], [ %i.d, %bb.ac ]
  store ptr %.7, ptr %0, align 8, !tbaa !5565
  ret i32 %.5110172
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 19) i32 @fts3ExprCheckDepth(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #18 {
bb.a:
  %.not11 = icmp eq ptr %0, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph22

.lr.ph:                                           ; preds = %tailrecurse
  %i.b = icmp slt i32 %.tr101320, 1
  br i1 %i.b, label %._crit_edge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.tr1221 = phi ptr [ %i.i, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.tr101320 = phi i32 [ %i.e, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr1221, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5607
  %i.e = add nsw i32 %.tr101320, -1               ; 2 uses
  %i.f = tail call fastcc i32 @fts3ExprCheckDepth(ptr noundef %i.d, i32 noundef %i.e) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %tailrecurse, label %._crit_edge

tailrecurse:                                      ; preds = %.lr.ph22
  %i.h = getelementptr inbounds nuw i8, ptr %.tr1221, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !5605 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph22, %tailrecurse, %.lr.ph.preheader, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 18, %.lr.ph.preheader ], [ 0, %tailrecurse ], [ 18, %.lr.ph ], [ %i.f, %.lr.ph22 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getNextToken(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !5558   ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !5543 ; 7 uses
  store i32 %3, ptr %5, align 4, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !5560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store ptr null, ptr %i.a, align 8, !tbaa !5300
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !5576
  %i.m = call i32 %i.l(ptr noundef nonnull %i.g, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %i.a) #58, !inline_history !5798 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %.pre16.i = load ptr, ptr %i.a, align 8, !tbaa !5300 ; 3 uses
  br i1 %i.n, label %bb.b, label %sqlite3Fts3OpenTokenizer.exit

bb.b:                                             ; preds = %bb.a
  store ptr %i.g, ptr %.pre16.i, align 8, !tbaa !5492
  %i.o = load i32, ptr %i.h, align 8, !tbaa !5578
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !5579
  %i.s = call i32 %i.r(ptr noundef nonnull %.pre16.i, i32 noundef %i.j) #58, !inline_history !5798 ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !5300 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !5580
  %i.v = call i32 %i.u(ptr noundef %.pre.i) #58, !inline_history !5798 ; 0 uses
  br label %sqlite3Fts3OpenTokenizer.exit

sqlite3Fts3OpenTokenizer.exit:                    ; preds = %bb.a, %bb.d
  %.0.i = phi i32 [ %i.s, %bb.d ], [ %i.m, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.t

bb.e:                                             ; preds = %bb.c, %bb.b
  %.ph = phi ptr [ %.pre16.i, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  store i32 0, ptr %i.c, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  store i32 0, ptr %i.d, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  store i32 0, ptr %i.e, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  store i32 0, ptr %i.f, align 4, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !5581
  %i.y = call i32 %i.x(ptr noundef %.ph, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #58 ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !27  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i, label %findBarredChar.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.aa to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !231
  %i.ae = icmp eq i8 %i.ad, 34
  br i1 %i.ae, label %.thread96, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %findBarredChar.exit.thread, label %.lr.ph.i, !llvm.loop !5799

.thread96:                                        ; preds = %.lr.ph.i
  %i.af = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !5580
  %i.ai = call i32 %i.ah(ptr noundef %.ph) #58    ; 0 uses
  %i.aj = call fastcc i32 @getNextToken(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.af, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.u

findBarredChar.exit.thread:                       ; preds = %bb.g, %bb.f
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !27
  %i.al = sext i32 %i.ak to i64
  %i.am = add nsw i64 %i.al, 192                  ; 2 uses
  %i.an = call i32 @sqlite3_initialize(), !inline_history !5800
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %sqlite3_malloc64.exit.i, label %.thread100

sqlite3_malloc64.exit.i:                          ; preds = %findBarredChar.exit.thread
  %i.ao = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.am), !inline_history !5800 ; 15 uses
  %.not.i78 = icmp eq ptr %i.ao, null
  br i1 %.not.i78, label %.thread100, label %bb.h

.thread100:                                       ; preds = %findBarredChar.exit.thread, %sqlite3_malloc64.exit.i
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !27
  br label %findBarredChar.exit87.thread.sink.split

bb.h:                                             ; preds = %sqlite3_malloc64.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 0, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.am, i1 false)
  store i32 5, ptr %i.ao, align 8, !tbaa !5570
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !5594
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  store i32 1, ptr %i.as, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 148
  store i32 %1, ptr %i.at, align 4, !tbaa !27
  %i.au = load i32, ptr %i.c, align 4, !tbaa !27  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store i32 %i.au, ptr %i.av, align 8, !tbaa !5588
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 192 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !5595
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.az = sext i32 %i.au to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 1 %i.ay, i64 %i.az, i1 false)
  %i.ba = load i32, ptr %i.e, align 4, !tbaa !27  ; 5 uses
  %i.bb = icmp slt i32 %i.ba, %3
  br i1 %i.bb, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !231
  %i.bf = icmp eq i8 %i.be, 42
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 164
  store i32 1, ptr %i.bg, align 4, !tbaa !5591
  %i.bh = add nsw i32 %i.ba, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.e, align 4, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.bi = phi i32 [ %i.bh, %bb.j ], [ %i.ba, %bb.i ], [ %i.ba, %bb.h ] ; 3 uses
  %.pr = load i32, ptr %i.d, align 4, !tbaa !27   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = icmp sgt i32 %.pr, 0
  br i1 %i.bk, label %.lr.ph, label %findBarredChar.exit87.thread.sink.split

.lr.ph:                                           ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bm = zext nneg i32 %.pr to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ %i.bm, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.bo = getelementptr i8, ptr %2, i64 %indvars.iv
  %i.bp = getelementptr i8, ptr %i.bo, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !231 ; 2 uses
  %i.br = icmp eq i8 %i.bq, 45
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.bl, align 4, !tbaa !5567
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bs = load i32, ptr %i.bj, align 8, !tbaa !5564
  %.not = icmp ne i32 %i.bs, 0
  %i.bt = icmp eq i8 %i.bq, 94
  %or.cond = and i1 %.not, %i.bt
  br i1 %or.cond, label %bb.o, label %findBarredChar.exit87.thread.sink.split

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.bn, align 8, !tbaa !5592
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bu = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bu, ptr %i.d, align 4, !tbaa !27
  %i.bv = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bv, label %bb.l, label %findBarredChar.exit87.thread.sink.split

bb.q:                                             ; preds = %bb.e
  %i.bw = icmp ne i32 %3, 0
  %i.bx = icmp eq i32 %i.y, 101
  %or.cond4 = and i1 %i.bw, %i.bx
  br i1 %or.cond4, label %bb.r, label %findBarredChar.exit87.thread

bb.r:                                             ; preds = %bb.q
  %i.by = icmp sgt i32 %3, 0
  br i1 %i.by, label %.lr.ph.preheader.i80, label %findBarredChar.exit87.thread

.lr.ph.preheader.i80:                             ; preds = %bb.r
  %wide.trip.count.i81 = zext nneg i32 %3 to i64
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %bb.s, %.lr.ph.preheader.i80
  %indvars.iv.i83 = phi i64 [ 0, %.lr.ph.preheader.i80 ], [ %indvars.iv.next.i84, %bb.s ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i83
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !231
  %i.cb = icmp eq i8 %i.ca, 34
  br i1 %i.cb, label %findBarredChar.exit87, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i82
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next.i84, %wide.trip.count.i81
  br i1 %exitcond.not.i85, label %findBarredChar.exit87.thread, label %.lr.ph.i82, !llvm.loop !5799

findBarredChar.exit87:                            ; preds = %.lr.ph.i82
  %i.cc = trunc nuw nsw i64 %indvars.iv.i83 to i32
  br label %findBarredChar.exit87.thread.sink.split

findBarredChar.exit87.thread.sink.split:          ; preds = %bb.p, %bb.n, %bb.k, %.thread100, %findBarredChar.exit87
  %.sink = phi i32 [ %i.ap, %.thread100 ], [ %i.cc, %findBarredChar.exit87 ], [ %i.bi, %bb.k ], [ %i.bi, %bb.n ], [ %i.bi, %bb.p ]
  %.262.ph = phi i32 [ 7, %.thread100 ], [ 0, %findBarredChar.exit87 ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %bb.p ]
  %.159.ph = phi ptr [ null, %.thread100 ], [ null, %findBarredChar.exit87 ], [ %i.ao, %bb.k ], [ %i.ao, %bb.n ], [ %i.ao, %bb.p ]
  store i32 %.sink, ptr %5, align 4, !tbaa !27
  br label %findBarredChar.exit87.thread

findBarredChar.exit87.thread:                     ; preds = %bb.s, %findBarredChar.exit87.thread.sink.split, %bb.r, %bb.q
  %.262 = phi i32 [ 0, %bb.r ], [ %i.y, %bb.q ], [ %.262.ph, %findBarredChar.exit87.thread.sink.split ], [ 0, %bb.s ]
  %.159 = phi ptr [ null, %bb.r ], [ null, %bb.q ], [ %.159.ph, %findBarredChar.exit87.thread.sink.split ], [ null, %bb.s ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !5580
  %i.cf = call i32 %i.ce(ptr noundef %.ph) #58    ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.t

bb.t:                                             ; preds = %findBarredChar.exit87.thread, %sqlite3Fts3OpenTokenizer.exit
  %.4 = phi i32 [ %.262, %findBarredChar.exit87.thread ], [ %.0.i, %sqlite3Fts3OpenTokenizer.exit ]
  %.3 = phi ptr [ %.159, %findBarredChar.exit87.thread ], [ null, %sqlite3Fts3OpenTokenizer.exit ]
  store ptr %.3, ptr %4, align 8, !tbaa !5565
  br label %bb.u

bb.u:                                             ; preds = %.thread96, %bb.t
  %.367 = phi i32 [ %.4, %bb.t ], [ %i.aj, %.thread96 ]
  ret i32 %.367
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts3EvalAllocateReaders(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %.not50 = icmp eq ptr %1, null
  br i1 %.not50, label %.loopexit45, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr4151 = phi ptr [ %i.bh, %tailrecurse ], [ %1, %bb.a ] ; 4 uses
  %i.a = load i32, ptr %4, align 4, !tbaa !27
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.loopexit45

bb.b:                                             ; preds = %.lr.ph
  %i.c = load i32, ptr %.tr4151, align 8, !tbaa !5570 ; 2 uses
  %i.d = icmp eq i32 %i.c, 5
  br i1 %i.d, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.tr4151, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5594 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27   ; 3 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !27
  %i.j = add nsw i32 %i.i, %i.h
  store i32 %i.j, ptr %2, align 4, !tbaa !27
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph57, label %._crit_edge

.lr.ph57:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.e

bb.d:                                             ; preds = %fts3TermSegReaderCursor.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond66.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !5801

bb.e:                                             ; preds = %.lr.ph57, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !5594
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !5595 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !5588 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !5591 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.v = tail call i32 @sqlite3_initialize(), !inline_history !5802
  %.not.i.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.not.i, label %sqlite3_malloc.exit.i, label %fts3TermSegReaderCursor.exit.thread

sqlite3_malloc.exit.i:                            ; preds = %bb.e
  %i.w = tail call fastcc ptr @sqlite3Malloc(i64 noundef 88), !inline_history !5802 ; 12 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %fts3TermSegReaderCursor.exit.thread, label %bb.f

bb.f:                                             ; preds = %sqlite3_malloc.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !5612   ; 6 uses
  %.not59.i = icmp eq i32 %i.t, 0                 ; 2 uses
  br i1 %.not59.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 492
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 496 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !5333 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = icmp sgt i32 %i.ab, 1
  br i1 %i.ad, label %.lr.ph53, label %.loopexit.i

.lr.ph53:                                         ; preds = %.preheader.i
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !5392
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph53, %bb.h
  %indvars.iv.i52 = phi i64 [ 1, %.lr.ph53 ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
end_hunk_31
begin_hunk_32_@sqlite3Fts3Incrmerge:bb.a
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !578 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i12.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hm, i64 192
  %i.iz = load i16, ptr %i.iy, align 8, !tbaa !606
  %or.cond.i.i.not.i = icmp eq i16 %i.iz, 0
  br i1 %or.cond.i.i.not.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %sqlite3_mutex_enter.exit.i.i.i
  %i.ja = load ptr, ptr %i.hm, align 8, !tbaa !150 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 80
  store i32 25, ptr %i.jb, align 8, !tbaa !579
  call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %i.ja, i32 noundef 25), !inline_history !6054
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.012.i.ph.i.i = phi ptr [ @columnNullValue.nullMem, %bb.bb ], [ %i.ix, %bb.ba ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.012.i.ph.i.i, i64 20
  %i.jd = load i16, ptr %i.jc, align 4, !tbaa !166
  %i.je = and i16 %i.jd, 63
  %i.jf = zext nneg i16 %i.je to i64
  %i.jg = load ptr, ptr %i.hm, align 8, !tbaa !150 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hm, i64 52 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !542 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 103
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !563
  %i.jl = icmp ne i8 %i.jk, 0
  %i.jm = icmp ne i32 %i.ji, 0
  %or.cond.i.i.i.i = or i1 %i.jm, %i.jl
  br i1 %or.cond.i.i.i.i, label %bb.bd, label %sqlite3ApiExit.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.jn = call fastcc i32 @apiHandleError(ptr noundef nonnull %i.jg, i32 noundef %i.ji), !inline_history !6054
  %.pre.i.i.i = load ptr, ptr %i.hm, align 8, !tbaa !150
  br label %sqlite3ApiExit.exit.i.i.i

sqlite3ApiExit.exit.i.i.i:                        ; preds = %bb.bd, %bb.bc
  %i.jo = phi ptr [ %.pre.i.i.i, %bb.bd ], [ %i.jg, %bb.bc ]
  %.0.i.i.i.i = phi i32 [ %i.jn, %bb.bd ], [ 0, %bb.bc ]
  store i32 %.0.i.i.i.i, ptr %i.jh, align 4, !tbaa !542
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !28 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i4.i.i, label %fts3SegmentIsMaxLevel.exit, label %bb.be

bb.be:                                            ; preds = %sqlite3ApiExit.exit.i.i.i
  %i.jr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.jr(ptr noundef nonnull %i.jq) #58, !inline_history !6058
  br label %fts3SegmentIsMaxLevel.exit

fts3SegmentIsMaxLevel.exit:                       ; preds = %sqlite3ApiExit.exit.i.i.i, %bb.be
  %i.js = shl nuw i64 1, %i.jf
  %i.jt = and i64 %i.js, -6148914691236517206
  %.not284.not = icmp eq i64 %i.jt, 0
  %i.ju = call i32 @sqlite3_reset(ptr noundef nonnull %i.hm), !inline_history !6054 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #58
  store i32 %i.ju, ptr %i.n, align 4, !tbaa !27
  br i1 %.not284.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %fts3SegmentIsMaxLevel.exit.thread553, %fts3SegmentIsMaxLevel.exit
  %i.jv = phi i32 [ %i.ir, %fts3SegmentIsMaxLevel.exit.thread553 ], [ %i.ju, %fts3SegmentIsMaxLevel.exit ]
  %i.jw = load i32, ptr %i.bb, align 8, !tbaa !5449
  %i.jx = or i32 %i.jw, 2
  store i32 %i.jx, ptr %i.bb, align 8, !tbaa !5449
  br label %bb.bg

bb.bg:                                            ; preds = %fts3SegmentIsMaxLevel.exit, %bb.bf, %fts3SegmentIsMaxLevel.exit.thread241, %fts3IncrmergeOutputIdx.exit
  %i.jy = phi i32 [ %i.ju, %fts3SegmentIsMaxLevel.exit ], [ %i.jv, %bb.bf ], [ %i.hi, %fts3IncrmergeOutputIdx.exit ], [ %i.ip, %fts3SegmentIsMaxLevel.exit.thread241 ] ; 2 uses
  %.0229 = phi i32 [ %.1230237, %fts3SegmentIsMaxLevel.exit ], [ %.1230237, %bb.bf ], [ %i.hh, %fts3IncrmergeOutputIdx.exit ], [ %.1230237, %fts3SegmentIsMaxLevel.exit.thread241 ] ; 3 uses
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.bh, label %.thread274

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #58
  store ptr null, ptr %i.j, align 8, !tbaa !522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, i8 0, i64 88, i1 false)
  %i.ka = zext nneg i32 %i.gl to i64              ; 2 uses
  %i.kb = shl nuw nsw i64 %i.ka, 3                ; 2 uses
  %i.kc = call i32 @sqlite3_initialize(), !inline_history !6059
  %.not.i.i141 = icmp eq i32 %i.kc, 0
  br i1 %.not.i.i141, label %sqlite3_malloc64.exit.i, label %sqlite3_malloc64.exit.thread.i

sqlite3_malloc64.exit.thread.i:                   ; preds = %bb.bh
  store ptr null, ptr %i.u, align 8, !tbaa !5380
  br label %thread-pre-split.thread560

sqlite3_malloc64.exit.i:                          ; preds = %bb.bh
  %i.kd = call fastcc ptr @sqlite3Malloc(i64 noundef %i.kb), !inline_history !6059 ; 3 uses
  store ptr %i.kd, ptr %i.u, align 8, !tbaa !5380
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %thread-pre-split.thread560, label %bb.bi

bb.bi:                                            ; preds = %sqlite3_malloc64.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kd, i8 0, i64 %i.kb, i1 false)
  %i.kf = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 12, ptr noundef %i.j, ptr noundef null), !inline_history !6060 ; 2 uses
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.bj, label %thread-pre-split.thread560

bb.bj:                                            ; preds = %bb.bi
  %i.kh = load ptr, ptr %i.j, align 8, !tbaa !522 ; 12 uses
  %i.ki = call fastcc i32 @vdbeUnbind(ptr noundef %i.kh, i32 noundef 0), !inline_history !6061
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.bk, label %sqlite3_bind_int64.exit.i143

bb.bk:                                            ; preds = %bb.bj
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 128
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !175 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 20 ; 2 uses
  %i.kn = load i16, ptr %i.km, align 4, !tbaa !166
  %i.ko = and i16 %i.kn, -28672
  %.not.i.i.i146 = icmp eq i16 %i.ko, 0
  br i1 %.not.i.i.i146, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.kl, i64 noundef range(i64 0, -9223372036854775808) %.3104), !inline_history !6061
  br label %sqlite3VdbeMemSetInt64.exit.i.i147

bb.bm:                                            ; preds = %bb.bk
  store i64 %.3104, ptr %i.kl, align 8, !tbaa !231
  store i16 4, ptr %i.km, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetInt64.exit.i.i147

sqlite3VdbeMemSetInt64.exit.i.i147:               ; preds = %bb.bm, %bb.bl
  %i.kp = load ptr, ptr %i.kh, align 8, !tbaa !150
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !28 ; 2 uses
  %.not.i8.i.i148 = icmp eq ptr %i.kr, null
  br i1 %.not.i8.i.i148, label %sqlite3_bind_int64.exit.i143, label %bb.bn

bb.bn:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i147
  %i.ks = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.ks(ptr noundef nonnull %i.kr) #58, !inline_history !6062
  br label %sqlite3_bind_int64.exit.i143

sqlite3_bind_int64.exit.i143:                     ; preds = %bb.bn, %sqlite3VdbeMemSetInt64.exit.i.i147, %bb.bj
  %i.kt = call i32 @sqlite3_step(ptr noundef %i.kh), !inline_history !6060
  %.not360 = icmp eq i32 %i.kt, 100
  br i1 %.not360, label %.lr.ph, label %thread-pre-split

.lr.ph:                                           ; preds = %sqlite3_bind_int64.exit.i143, %sqlite3Fts3SegReaderNew.exit.i
  %indvars.iv.i351 = phi i64 [ %indvars.iv.next.i, %sqlite3Fts3SegReaderNew.exit.i ], [ 0, %sqlite3_bind_int64.exit.i143 ] ; 3 uses
  %i.ku = call i64 @sqlite3_column_int64(ptr noundef %i.kh, i32 noundef 1), !inline_history !6060 ; 3 uses
  %i.kv = call i64 @sqlite3_column_int64(ptr noundef %i.kh, i32 noundef 2), !inline_history !6060 ; 2 uses
  %i.kw = call i64 @sqlite3_column_int64(ptr noundef %i.kh, i32 noundef 3), !inline_history !6060
  %i.kx = call ptr @sqlite3_column_blob(ptr noundef %i.kh, i32 noundef 4), !inline_history !6060
  %i.ky = call i32 @sqlite3_column_bytes(ptr noundef %i.kh, i32 noundef 4), !inline_history !6060 ; 4 uses
  %i.kz = load ptr, ptr %i.u, align 8, !tbaa !5380
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.i351
  %i.lb = icmp eq i64 %i.ku, 0
  br i1 %i.lb, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %.lr.ph
  %.not.i24.i = icmp eq i64 %i.kv, 0
  br i1 %.not.i24.i, label %bb.bp, label %.critedge.i144

bb.bp:                                            ; preds = %bb.bo
  %i.lc = add nsw i32 %i.ky, 20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph
  %.0.i22.i = phi i32 [ %i.lc, %bb.bp ], [ 0, %.lr.ph ] ; 2 uses
  %i.ld = call i32 @sqlite3_initialize(), !inline_history !6063
  %.not.i.i23.i = icmp eq i32 %i.ld, 0
  br i1 %.not.i.i23.i, label %sqlite3_malloc64.exit.i.i, label %.critedge.i144

sqlite3_malloc64.exit.i.i:                        ; preds = %bb.bq
  %i.le = sext i32 %.0.i22.i to i64
  %i.lf = add nsw i64 %i.le, 136
  %i.lg = call fastcc ptr @sqlite3Malloc(i64 noundef %i.lf), !inline_history !6063 ; 12 uses
  %.not35.i.i = icmp eq ptr %i.lg, null
  br i1 %.not35.i.i, label %.critedge.i144, label %bb.br

bb.br:                                            ; preds = %sqlite3_malloc64.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.lg, i8 0, i64 136, i1 false)
  %i.lh = trunc nuw nsw i64 %indvars.iv.i351 to i32
  store i32 %i.lh, ptr %i.lg, align 8, !tbaa !5400
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store i64 %i.ku, ptr %i.li, align 8, !tbaa !5412
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store i64 %i.kv, ptr %i.lj, align 8, !tbaa !5413
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  store i64 %i.kw, ptr %i.lk, align 8, !tbaa !5414
  %.not36.i.i = icmp eq i32 %.0.i22.i, 0
  br i1 %.not36.i.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 136 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !5389
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 5
  store i8 1, ptr %i.ln, align 1, !tbaa !5388
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  store i32 %i.ky, ptr %i.lo, align 8, !tbaa !5415
  %.not37.i.i = icmp eq i32 %i.ky, 0
  br i1 %.not37.i.i, label %._crit_edge.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lp = sext i32 %i.ky to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ll, ptr readonly align 1 %i.kx, i64 %i.lp, i1 false)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bt, %bb.bs
  %.pre-phi.i.i = phi i64 [ %i.lp, %bb.bt ], [ 0, %bb.bs ]
  %i.lq = getelementptr inbounds i8, ptr %i.ll, i64 %.pre-phi.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.lq, i8 0, i64 20, i1 false)
  br label %sqlite3Fts3SegReaderNew.exit.i

bb.bu:                                            ; preds = %bb.br
  %i.lr = add nsw i64 %i.ku, -1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !5416
  br label %sqlite3Fts3SegReaderNew.exit.i

sqlite3Fts3SegReaderNew.exit.i:                   ; preds = %bb.bu, %._crit_edge.i.i
  store ptr %i.lg, ptr %i.la, align 8, !tbaa !5381
  %i.lt = load i32, ptr %i.bc, align 8, !tbaa !5379
  %i.lu = add nsw i32 %i.lt, 1
  store i32 %i.lu, ptr %i.bc, align 8, !tbaa !5379
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i351, 1 ; 2 uses
  %i.lv = call i32 @sqlite3_step(ptr noundef %i.kh), !inline_history !6060
  %i.lw = icmp ne i32 %i.lv, 100
  %i.lx = icmp samesign uge i64 %indvars.iv.next.i, %i.ka
  %or.cond.not.i = select i1 %i.lw, i1 true, i1 %i.lx
  br i1 %or.cond.not.i, label %thread-pre-split, label %.lr.ph, !llvm.loop !6064

.critedge.i144:                                   ; preds = %bb.bo, %bb.bq, %sqlite3_malloc64.exit.i.i
  %.032.i.ph.i = phi i32 [ 7, %bb.bq ], [ 7, %sqlite3_malloc64.exit.i.i ], [ 267, %bb.bo ]
  %i.ly = load i32, ptr %i.bc, align 8, !tbaa !5379
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.bc, align 8, !tbaa !5379
  %i.ma = call i32 @sqlite3_reset(ptr noundef %i.kh), !inline_history !6060 ; 0 uses
  br label %thread-pre-split.thread560

thread-pre-split.thread560:                       ; preds = %sqlite3_malloc64.exit.thread.i, %bb.bi, %sqlite3_malloc64.exit.i, %.critedge.i144
  %.3.i.ph = phi i32 [ %.032.i.ph.i, %.critedge.i144 ], [ 7, %sqlite3_malloc64.exit.i ], [ %i.kf, %bb.bi ], [ 7, %sqlite3_malloc64.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #58
  store i32 %.3.i.ph, ptr %i.n, align 4, !tbaa !27
  br label %.thread274

thread-pre-split:                                 ; preds = %sqlite3Fts3SegReaderNew.exit.i, %sqlite3_bind_int64.exit.i143
  %i.mb = call i32 @sqlite3_reset(ptr noundef %i.kh), !inline_history !6060 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #58
  store i32 %i.mb, ptr %i.n, align 4, !tbaa !27
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.bv, label %.thread274

bb.bv:                                            ; preds = %thread-pre-split
  %i.md = load i32, ptr %i.bc, align 8, !tbaa !5379
  %i.me = icmp eq i32 %i.md, %i.gl
  br i1 %i.me, label %bb.bw, label %.thread274

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.t, ptr %i.bd, align 8, !tbaa !5351
  %i.mf = load ptr, ptr %i.t, align 8, !tbaa !5352
  %i.mg = load i32, ptr %i.be, align 8, !tbaa !5353
  %i.mh = call fastcc i32 @fts3SegReaderStart(ptr noundef %0, ptr noundef nonnull %i.u, ptr noundef %i.mf, i32 noundef %i.mg), !inline_history !5354 ; 3 uses
  store i32 %i.mh, ptr %i.n, align 4, !tbaa !27
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.bx, label %.thread274

bb.bx:                                            ; preds = %bb.bw
  %i.mj = call fastcc i32 @sqlite3Fts3SegReaderStep(ptr noundef %0, ptr noundef nonnull %i.u) ; 4 uses
  store i32 %i.mj, ptr %i.n, align 4, !tbaa !27
  %.not118 = icmp eq i32 %i.mj, 0
  switch i32 %i.mj, label %bb.iy [
    i32 100, label %bb.by
    i32 0, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.mk = icmp sgt i32 %.0229, 0
  %or.cond6 = select i1 %.193, i1 %i.mk, i1 false
  br i1 %or.cond6, label %bb.bz, label %bb.el

bb.bz:                                            ; preds = %bb.by
  %i.ml = load ptr, ptr %i.bz, align 8, !tbaa !5453 ; 2 uses
  %i.mm = load i32, ptr %i.ca, align 8, !tbaa !5452 ; 3 uses
  %i.mn = add nsw i32 %.0229, -1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  store ptr null, ptr %i.e, align 8, !tbaa !522
  %i.mo = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 32, ptr noundef %i.e, ptr noundef null), !inline_history !6065 ; 2 uses
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.ca, label %fts3IncrmergeLoad.exit

bb.ca:                                            ; preds = %bb.bz
  %i.mq = load ptr, ptr %i.e, align 8, !tbaa !522 ; 18 uses
  %i.mr = add nuw nsw i64 %.3104, 1               ; 2 uses
  %i.ms = call fastcc i32 @vdbeUnbind(ptr noundef %i.mq, i32 noundef 0), !inline_history !6066
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %bb.cb, label %sqlite3_bind_int64.exit.i150

bb.cb:                                            ; preds = %bb.ca
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 128
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !175 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 20 ; 2 uses
  %i.mx = load i16, ptr %i.mw, align 4, !tbaa !166
  %i.my = and i16 %i.mx, -28672
  %.not.i.i.i168 = icmp eq i16 %i.my, 0
  br i1 %.not.i.i.i168, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.mv, i64 noundef %i.mr), !inline_history !6066
  br label %sqlite3VdbeMemSetInt64.exit.i.i169

bb.cd:                                            ; preds = %bb.cb
  store i64 %i.mr, ptr %i.mv, align 8, !tbaa !231
  store i16 4, ptr %i.mw, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetInt64.exit.i.i169

sqlite3VdbeMemSetInt64.exit.i.i169:               ; preds = %bb.cd, %bb.cc
  %i.mz = load ptr, ptr %i.mq, align 8, !tbaa !150
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !28 ; 2 uses
  %.not.i8.i.i170 = icmp eq ptr %i.nb, null
  br i1 %.not.i8.i.i170, label %sqlite3_bind_int64.exit.i150, label %bb.ce

bb.ce:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i169
  %i.nc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.nc(ptr noundef nonnull %i.nb) #58, !inline_history !6067
  br label %sqlite3_bind_int64.exit.i150

sqlite3_bind_int64.exit.i150:                     ; preds = %bb.ce, %sqlite3VdbeMemSetInt64.exit.i.i169, %bb.ca
  %i.nd = zext nneg i32 %i.mn to i64              ; 2 uses
  %i.ne = call fastcc i32 @vdbeUnbind(ptr noundef %i.mq, i32 noundef 1), !inline_history !6068
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.cf, label %sqlite3_bind_int.exit.i151

bb.cf:                                            ; preds = %sqlite3_bind_int64.exit.i150
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mq, i64 128
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !175 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 56 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 76 ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 4, !tbaa !166
  %i.nl = and i16 %i.nk, -28672
  %.not.i.i.i.i165 = icmp eq i16 %i.nl, 0
  br i1 %.not.i.i.i.i165, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ni, i64 noundef %i.nd), !inline_history !6068
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i166

bb.ch:                                            ; preds = %bb.cf
  store i64 %i.nd, ptr %i.ni, align 8, !tbaa !231
  store i16 4, ptr %i.nj, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i166

sqlite3VdbeMemSetInt64.exit.i.i.i166:             ; preds = %bb.ch, %bb.cg
  %i.nm = load ptr, ptr %i.mq, align 8, !tbaa !150
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !28 ; 2 uses
  %.not.i8.i.i.i167 = icmp eq ptr %i.no, null
  br i1 %.not.i8.i.i.i167, label %sqlite3_bind_int.exit.i151, label %bb.ci

bb.ci:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i.i166
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.np(ptr noundef nonnull %i.no) #58, !inline_history !6069
  br label %sqlite3_bind_int.exit.i151

sqlite3_bind_int.exit.i151:                       ; preds = %bb.ci, %sqlite3VdbeMemSetInt64.exit.i.i.i166, %sqlite3_bind_int64.exit.i150
  %i.nq = call i32 @sqlite3_step(ptr noundef %i.mq), !inline_history !6065
  %i.nr = icmp eq i32 %i.nq, 100
  br i1 %i.nr, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %sqlite3_bind_int.exit.i151
  %i.ns = call i64 @sqlite3_column_int64(ptr noundef %i.mq, i32 noundef 1), !inline_history !6065 ; 8 uses
  %i.nt = call i64 @sqlite3_column_int64(ptr noundef %i.mq, i32 noundef 2), !inline_history !6065
  %i.nu = call ptr @sqlite3_column_text(ptr noundef %i.mq, i32 noundef 3), !inline_history !6070 ; 6 uses
  %.not.i.i152 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i152, label %fts3ReadEndBlockField.exitthread-pre-split.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cj
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !231 ; 2 uses
  %i.nw = add i8 %i.nv, -48
  %or.cond42.i.i = icmp ult i8 %i.nw, 10
  br i1 %or.cond42.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %i.nx = phi i8 [ %i.od, %.lr.ph.i.i ], [ %i.nv, %.preheader.i.i ]
  %.044.i.i = phi i64 [ %i.ob, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %i.ny = mul i64 %.044.i.i, 10
  %i.nz = and i8 %i.nx, 15
  %i.oa = zext nneg i8 %i.nz to i64
  %i.ob = add i64 %i.ny, %i.oa                    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 %indvars.iv.next.i.i
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !231 ; 2 uses
  %i.oe = add i8 %i.od, -48
  %or.cond.i.i = icmp ult i8 %i.oe, 10
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !6001

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.034.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ob, %.lr.ph.i.i ]
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.critedge.i.i
  %indvars.iv54.i.i = phi i64 [ %indvars.iv.next55.i.i, %bb.cl ], [ %.034.lcssa.i.i, %.critedge.i.i ] ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nu, i64 %indvars.iv54.i.i
end_hunk_32
begin_hunk_33_@rtreeSavepoint:bb.a
  store i8 %i.b, ptr %i.a, align 8, !tbaa !6436
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @rtreeShadowName(ptr nofree noundef readonly captures(address_is_null) %0) #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_stricmp.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.d
  %.013.i.i = phi ptr [ %i.l, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %.012.i.i = phi ptr [ %i.m, %bb.d ], [ @.str.1772, %bb.a ] ; 2 uses
  %i.b = load i8, ptr %.013.i.i, align 1, !tbaa !231 ; 3 uses
  %i.c = load i8, ptr %.012.i.i, align 1, !tbaa !231 ; 2 uses
  %i.d = icmp eq i8 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i
  %i.e = icmp eq i8 %i.b, 0
  br i1 %i.e, label %sqlite3_stricmp.exit.thread, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.f = zext i8 %i.b to i64
  %i.g = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !231
  %i.i = zext i8 %i.c to i64
  %i.j = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !231
  %.not.i.i = icmp eq i8 %i.h, %i.k
  br i1 %.not.i.i, label %bb.d, label %.preheader.i.1

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %.preheader.i

.preheader.i.1:                                   ; preds = %bb.c, %bb.g
  %.013.i.i.1 = phi ptr [ %i.x, %bb.g ], [ %0, %bb.c ] ; 2 uses
  %.012.i.i.1 = phi ptr [ %i.y, %bb.g ], [ @.str.474, %bb.c ] ; 2 uses
  %i.n = load i8, ptr %.013.i.i.1, align 1, !tbaa !231 ; 3 uses
  %i.o = load i8, ptr %.012.i.i.1, align 1, !tbaa !231 ; 2 uses
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.1
  %i.q = zext i8 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !231
  %i.t = zext i8 %i.o to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !231
  %.not.i.i.1 = icmp eq i8 %i.s, %i.v
  br i1 %.not.i.i.1, label %bb.g, label %.preheader.i.2

bb.f:                                             ; preds = %.preheader.i.1
  %i.w = icmp eq i8 %i.n, 0
  br i1 %i.w, label %sqlite3_stricmp.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.1, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.1, i64 1
  br label %.preheader.i.1

.preheader.i.2:                                   ; preds = %bb.e, %bb.j
  %.013.i.i.2 = phi ptr [ %i.aj, %bb.j ], [ %0, %bb.e ] ; 2 uses
  %.012.i.i.2 = phi ptr [ %i.ak, %bb.j ], [ @.str.600, %bb.e ] ; 2 uses
  %i.z = load i8, ptr %.013.i.i.2, align 1, !tbaa !231 ; 3 uses
  %i.aa = load i8, ptr %.012.i.i.2, align 1, !tbaa !231 ; 2 uses
  %i.ab = icmp eq i8 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i.2
  %i.ac = zext i8 %i.z to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !231
  %i.af = zext i8 %i.aa to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !231
  %.not.i.i.2 = icmp eq i8 %i.ae, %i.ah
  br i1 %.not.i.i.2, label %bb.j, label %sqlite3_stricmp.exit.thread

bb.i:                                             ; preds = %.preheader.i.2
  %i.ai = icmp eq i8 %i.z, 0
  br i1 %i.ai, label %sqlite3_stricmp.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.2, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.2, i64 1
  br label %.preheader.i.2

sqlite3_stricmp.exit.thread:                      ; preds = %bb.b, %bb.f, %bb.i, %bb.h, %bb.a
  %.04 = phi i32 [ 0, %bb.a ], [ 1, %bb.f ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.b ]
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define internal i32 @rtreeIntegrity(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree noundef captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6428
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6426
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6427
  %i.g = tail call fastcc i32 @rtreeCheckTable(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %4) ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !259    ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !6426
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !6427
  %i.l = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1773, ptr noundef %i.j, ptr noundef %i.k, ptr noundef nonnull %i.i) ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !259
  %i.m = icmp eq ptr %i.l, null
  %spec.select = select i1 %i.m, i32 7, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.a ], [ %spec.select, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rtreeInit(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [8 x ptr], align 16               ; 12 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %.not = icmp ne ptr %1, null                    ; 2 uses
  %i.h = add i32 %2, -104
  %or.cond = icmp ult i32 %i.h, -98
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %2, 5
  %i.j = select i1 %i.i, i64 3, i64 2
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @__const.rtreeInit.aErrMsg, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !259
  %i.m = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.31, ptr noundef %i.l)
  store ptr %i.m, ptr %5, align 8, !tbaa !259
  br label %sqlite3_malloc64.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %0, i32 noundef 1, i32 noundef 1) ; 0 uses
  %i.o = tail call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %0, i32 noundef 2) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !259
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #59
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !259
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #59 ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %sext = shl i64 %i.r, 32                        ; 2 uses
  %i.w = ashr exact i64 %sext, 32                 ; 2 uses
  %i.x = shl nsw i32 %i.v, 1
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.w, 976
  %i.aa = add nsw i64 %i.z, %i.y                  ; 2 uses
  %i.ab = tail call i32 @sqlite3_initialize(), !inline_history !401
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit:                            ; preds = %bb.c
  %i.ac = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.aa), !inline_history !401 ; 33 uses
  %.not112 = icmp eq ptr %i.ac, null
  br i1 %.not112, label %sqlite3_malloc64.exit.thread, label %bb.d

bb.d:                                             ; preds = %sqlite3_malloc64.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %i.aa, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store i32 1, ptr %i.ad, align 8, !tbaa !6438
  store ptr @rtreeModule, ptr %i.ac, align 8, !tbaa !6492
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 968 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 4 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !6426
  %sext113 = add i64 %sext, 4294967296
  %i.ag = ashr exact i64 %sext113, 32
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 4 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !6427
  %i.aj = shl i64 %i.u, 32                        ; 2 uses
  %sext114 = add i64 %i.aj, 4294967296
  %i.ak = ashr exact i64 %sext114, 32
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 3 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !6493
  %i.an = zext i1 %.not to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 38
  store i8 %i.an, ptr %i.ao, align 2, !tbaa !6472
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !259
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 1 %i.ap, i64 %i.w, i1 false)
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !259
  %i.ar = ashr exact i64 %i.aj, 32                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !6493
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !259
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.at, i64 %i.ar, i1 false)
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !6493
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.av, ptr noundef nonnull align 1 dereferenceable(6) @.str.1739, i64 6, i1 false)
  %i.aw = tail call i32 @sqlite3_initialize(), !inline_history !6386
  %.not.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i, label %sqlite3_malloc64.exit.i, label %.lr.ph

sqlite3_malloc64.exit.i:                          ; preds = %bb.d
  %i.ax = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !6386 ; 7 uses
  %.not.i126 = icmp eq ptr %i.ax, null
  br i1 %.not.i126, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %sqlite3_malloc64.exit.i
  %.not7.i = icmp eq ptr %0, null
  br i1 %.not7.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ba = phi i32 [ %i.az, %bb.f ], [ 1000000000, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ax, i8 0, i64 20, i1 false)
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !307
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i32 0, ptr %i.bc, align 8, !tbaa !287
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  store i8 0, ptr %i.bd, align 4, !tbaa !306
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 29
  store i8 0, ptr %i.be, align 1, !tbaa !283
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %sqlite3_malloc64.exit.i, %bb.d
  %.0.i125 = phi ptr [ %i.ax, %bb.g ], [ @sqlite3OomStr, %sqlite3_malloc64.exit.i ], [ @sqlite3OomStr, %bb.d ] ; 13 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !259 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #58
  %i.bh = call fastcc i64 @sqlite3GetToken(ptr noundef readonly %i.bg, ptr noundef %i.g)
  %i.bi = trunc i64 %i.bh to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #58
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %.0.i125, ptr noundef nonnull @.str.1740, i32 noundef %i.bi, ptr noundef %i.bg)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 42 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 37 ; 2 uses
  %i.bl = zext i1 %.not to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @rtreeInit.azFormat, i64 %i.bl
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 4, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !259 ; 4 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !231
  %i.bq = icmp eq i8 %i.bp, 43
  %i.br = load i16, ptr %i.bj, align 2, !tbaa !6488 ; 2 uses
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = add i16 %i.br, 1
  store i16 %i.bs, ptr %i.bj, align 2, !tbaa !6488
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  %i.bu = call fastcc i64 @sqlite3GetToken(ptr noundef nonnull readonly %i.bt, ptr noundef %i.f)
  %i.bv = trunc i64 %i.bu to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %.0.i125, ptr noundef nonnull @.str.1741, i32 noundef %i.bv, ptr noundef nonnull %i.bt)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not116 = icmp eq i16 %i.br, 0
  br i1 %.not116, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.bw = load i8, ptr %i.bk, align 1, !tbaa !6421
  %i.bx = add i8 %i.bw, 1
  store i8 %i.bx, ptr %i.bk, align 1, !tbaa !6421
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  %i.bz = call fastcc i64 @sqlite3GetToken(ptr noundef nonnull readonly %i.bo, ptr noundef %i.e)
  %i.ca = trunc i64 %i.bz to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %.0.i125, ptr noundef %i.by, i32 noundef %i.ca, ptr noundef nonnull %i.bo)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !6494

._crit_edge:                                      ; preds = %bb.l, %bb.j
  %.lcssa172.ph = phi i1 [ false, %bb.l ], [ true, %bb.j ]
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %.0.i125, ptr noundef nonnull @.str.1744)
  %.not171 = icmp eq ptr %.0.i125, @sqlite3OomStr
  br i1 %.not171, label %sqlite3_free.exit.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i125, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !290 ; 2 uses
  %.not.i.i128 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i128, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i125, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !287
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  store i8 0, ptr %i.cg, align 1, !tbaa !231
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i125, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !307
  %.not9.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not9.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i125, i64 29
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !283
  %i.cl = and i8 %i.ck, 4
  %.not10.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not10.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cm = tail call fastcc ptr @strAccumFinishRealloc(ptr noundef nonnull %.0.i125), !inline_history !6390
  br label %sqlite3StrAccumFinish.exit.i

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cn = load ptr, ptr %i.cb, align 8, !tbaa !290
  br label %sqlite3StrAccumFinish.exit.i

sqlite3StrAccumFinish.exit.i:                     ; preds = %bb.q, %bb.p
  %.0.i.i = phi ptr [ %i.cn, %bb.q ], [ %i.cm, %bb.p ] ; 5 uses
  %i.co = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i7.i = icmp eq i32 %i.co, 0
  br i1 %.not.i7.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %sqlite3StrAccumFinish.exit.i
  %i.cp = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.cq(ptr noundef nonnull %i.cp) #58, !inline_history !6391
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.s, %bb.r
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.cs = tail call i32 %i.cr(ptr noundef nonnull %.0.i125) #58, !inline_history !6392
  %i.ct = sext i32 %i.cs to i64
  %i.cu = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.cv = sub nsw i64 %i.cu, %i.ct
  store i64 %i.cv, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.cx = add nsw i64 %i.cw, -1
  store i64 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.cy(ptr noundef nonnull %.0.i125) #58, !inline_history !6393
  %i.cz = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i4.i.i, label %sqlite3_str_finish.exit, label %bb.t

bb.t:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.da(ptr noundef nonnull %i.cz) #58, !inline_history !6394
  br label %sqlite3_str_finish.exit

bb.u:                                             ; preds = %sqlite3StrAccumFinish.exit.i
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.db(ptr noundef nonnull %.0.i125) #58, !inline_history !6393
  br label %sqlite3_str_finish.exit

sqlite3_str_finish.exit:                          ; preds = %sqlite3_mutex_enter.exit.i.i, %bb.t, %bb.u
  %.not117 = icmp eq ptr %.0.i.i, null
  br i1 %.not117, label %sqlite3_free.exit.thread, label %bb.v

bb.v:                                             ; preds = %sqlite3_str_finish.exit
  br i1 %.lcssa172.ph, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = tail call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef nonnull %.0.i.i) ; 2 uses
  %.not118 = icmp eq i32 %i.dc, 0
  br i1 %.not118, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = tail call ptr @sqlite3_errmsg(ptr noundef %0)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.v, %bb.x
  %.str.1738.sink = phi ptr [ %i.dd, %bb.x ], [ @.str.1738, %bb.v ]
  %.0102.ph.ph = phi i32 [ %i.dc, %bb.x ], [ 1, %bb.v ]
  %i.de = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.31, ptr noundef %.str.1738.sink)
  store ptr %i.de, ptr %5, align 8, !tbaa !259
  br label %bb.y

end_hunk_33
begin_hunk_34_@stmtClose:bb.a
sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.i = tail call i32 %i.h(ptr noundef nonnull %.07.i) #58, !inline_history !6722
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.l = sub nsw i64 %i.k, %i.j
  store i64 %i.l, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.n = add nsw i64 %i.m, -1
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.o(ptr noundef nonnull %.07.i) #58, !inline_history !6723
  %i.p = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.q(ptr noundef nonnull %i.p) #58, !inline_history !6724
  br label %sqlite3_free.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.r(ptr noundef nonnull %.07.i) #58, !inline_history !6723
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.e, %bb.d, %sqlite3_mutex_enter.exit.i.i
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !6725

.loopexit:                                        ; preds = %sqlite3_free.exit.i, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !6718
  %i.s = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i2 = icmp eq i32 %i.s, 0
  br i1 %.not.i2, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i.i3, label %sqlite3_mutex_enter.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.u(ptr noundef nonnull %i.t) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.w = tail call i32 %i.v(ptr noundef nonnull %0) #58, !inline_history !277
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.z = sub nsw i64 %i.y, %i.x
  store i64 %i.z, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ab = add nsw i64 %i.aa, -1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.ac(ptr noundef nonnull %0) #58, !inline_history !278
  %i.ad = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ad, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.ae(ptr noundef nonnull %i.ad) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.i:                                             ; preds = %.loopexit
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.af(ptr noundef nonnull %0) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.h, %bb.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @stmtFilter(ptr nofree noundef captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6718 ; 2 uses
  %.not6.i = icmp eq ptr %i.c, null
  br i1 %.not6.i, label %stmtCsrReset.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %sqlite3_free.exit.i
  %.07.i = phi ptr [ %i.e, %sqlite3_free.exit.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6719 ; 2 uses
  %i.f = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.h(ptr noundef nonnull %i.g) #58, !inline_history !6721
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.j = tail call i32 %i.i(ptr noundef nonnull %.07.i) #58, !inline_history !6722
  %i.k = sext i32 %i.j to i64
  %i.l = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.m = sub nsw i64 %i.l, %i.k
  store i64 %i.m, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.o = add nsw i64 %i.n, -1
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.p(ptr noundef nonnull %.07.i) #58, !inline_history !6723
  %i.q = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.r(ptr noundef nonnull %i.q) #58, !inline_history !6724
  br label %sqlite3_free.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.s(ptr noundef nonnull %.07.i) #58, !inline_history !6723
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.e, %bb.d, %sqlite3_mutex_enter.exit.i.i
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %stmtCsrReset.exit, label %.lr.ph.i, !llvm.loop !6725

stmtCsrReset.exit:                                ; preds = %sqlite3_free.exit.i, %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !6718
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !6715 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.w, null
  br i1 %.not.i.i56, label %sqlite3_mutex_enter.exit.thread.i, label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.thread.i:                ; preds = %stmtCsrReset.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.09.i = load ptr, ptr %i.x, align 8, !tbaa !132
  br label %sqlite3_next_stmt.exit

sqlite3_mutex_enter.exit.i:                       ; preds = %stmtCsrReset.exit
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.y(ptr noundef nonnull %i.w) #58, !inline_history !6726
  %.pr.i = load ptr, ptr %i.v, align 8, !tbaa !28 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.i = load ptr, ptr %i.z, align 8, !tbaa !132 ; 2 uses
  %.not.i7.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i7.i, label %sqlite3_next_stmt.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.aa(ptr noundef nonnull %.pr.i) #58, !inline_history !6727
  br label %sqlite3_next_stmt.exit

sqlite3_next_stmt.exit:                           ; preds = %sqlite3_mutex_enter.exit.thread.i, %sqlite3_mutex_enter.exit.i, %bb.f
  %.011.i = phi ptr [ %.09.i, %sqlite3_mutex_enter.exit.thread.i ], [ %.0.i, %sqlite3_mutex_enter.exit.i ], [ %.0.i, %bb.f ] ; 2 uses
  %.not81 = icmp eq ptr %.011.i, null
  br i1 %.not81, label %.critedge, label %sqlite3_sql.exit

sqlite3_sql.exit:                                 ; preds = %sqlite3_next_stmt.exit, %sqlite3_next_stmt.exit73
  %.04584 = phi ptr [ %i.ch, %sqlite3_next_stmt.exit73 ], [ %i.b, %sqlite3_next_stmt.exit ]
  %.04683 = phi i64 [ %i.cg, %sqlite3_next_stmt.exit73 ], [ 1, %sqlite3_next_stmt.exit ] ; 2 uses
  %.04882 = phi ptr [ %.011.i70, %sqlite3_next_stmt.exit73 ], [ %.011.i, %sqlite3_next_stmt.exit ] ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.04882, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !190 ; 3 uses
  %.not54 = icmp eq ptr %i.ac, null               ; 2 uses
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3_sql.exit
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #59
  %i.ae = add i64 %i.ad, 1
  br label %bb.h

bb.h:                                             ; preds = %sqlite3_sql.exit, %bb.g
  %i.af = phi i64 [ %i.ae, %bb.g ], [ 0, %sqlite3_sql.exit ] ; 2 uses
  %i.ag = call i32 @sqlite3_initialize(), !inline_history !401
  %.not.i58 = icmp eq i32 %i.ag, 0
  br i1 %.not.i58, label %sqlite3_malloc64.exit, label %.critedge

sqlite3_malloc64.exit:                            ; preds = %bb.h
  %i.ah = add i64 %i.af, 72
  %i.ai = call fastcc ptr @sqlite3Malloc(i64 noundef %i.ah), !inline_history !401 ; 17 uses
  %.not55 = icmp eq ptr %i.ai, null
  br i1 %.not55, label %.critedge, label %bb.i

bb.i:                                             ; preds = %sqlite3_malloc64.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i8 0, i64 72, i1 false)
  br i1 %.not54, label %sqlite3_stmt_busy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !6728
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 1 %i.ac, i64 %i.af, i1 false)
  br label %sqlite3_stmt_busy.exit

sqlite3_stmt_busy.exit:                           ; preds = %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.04882, i64 192
  %i.am = load i16, ptr %i.al, align 8, !tbaa !606
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %.04882, i64 200
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = lshr i16 %i.aq, 6
  %i.as = and i16 %i.ar, 1
  %i.at = zext nneg i16 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i32 %i.at, ptr %i.au, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %.04882, i64 199
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !174
  %i.ax = icmp eq i8 %i.aw, 2
  %i.ay = zext i1 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %.04882, i64 216
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %.04882, i64 220
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %.04882, i64 224
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %.04882, i64 228
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %.04882, i64 232
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %.04882, i64 236
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 52
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.bs = load ptr, ptr %.04882, align 8, !tbaa !150 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !28 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i63, label %sqlite3_mutex_enter.exit.i64, label %bb.k

bb.k:                                             ; preds = %sqlite3_stmt_busy.exit
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.bv(ptr noundef nonnull %i.bu) #58, !inline_history !6729
  br label %sqlite3_mutex_enter.exit.i64

sqlite3_mutex_enter.exit.i64:                     ; preds = %bb.k, %sqlite3_stmt_busy.exit
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 768 ; 2 uses
  store ptr %i.a, ptr %i.bw, align 8, !tbaa !102
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 480
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !103
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 488 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !104
  call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %.04882)
  store ptr null, ptr %i.bw, align 8, !tbaa !102
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 496
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !131
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !104
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !28 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.cc, null
  br i1 %.not.i16.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %sqlite3_mutex_enter.exit.i64
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.cd(ptr noundef nonnull %i.cc) #58, !inline_history !6730
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %sqlite3_mutex_enter.exit.i64
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !27
  %i.cg = add nuw nsw i64 %.04683, 1
  store i64 %.04683, ptr %i.ai, align 8, !tbaa !6731
  store ptr %i.ai, ptr %.04584, align 8, !tbaa !6732
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ci = load ptr, ptr %i.t, align 8, !tbaa !6715
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !28 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i65, label %sqlite3_mutex_enter.exit.thread.i71, label %sqlite3_mutex_enter.exit.i66

sqlite3_mutex_enter.exit.thread.i71:              ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %.04882, i64 16
  %.09.i72 = load ptr, ptr %i.cl, align 8, !tbaa !132
  br label %sqlite3_next_stmt.exit73

sqlite3_mutex_enter.exit.i66:                     ; preds = %bb.m
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.cm(ptr noundef nonnull %i.ck) #58, !inline_history !6726
  %.pr.i67 = load ptr, ptr %i.cj, align 8, !tbaa !28 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.04882, i64 16
  %.0.i68 = load ptr, ptr %i.cn, align 8, !tbaa !132 ; 2 uses
  %.not.i7.i69 = icmp eq ptr %.pr.i67, null
  br i1 %.not.i7.i69, label %sqlite3_next_stmt.exit73, label %bb.n

bb.n:                                             ; preds = %sqlite3_mutex_enter.exit.i66
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.co(ptr noundef nonnull %.pr.i67) #58, !inline_history !6727
  br label %sqlite3_next_stmt.exit73

sqlite3_next_stmt.exit73:                         ; preds = %sqlite3_mutex_enter.exit.thread.i71, %sqlite3_mutex_enter.exit.i66, %bb.n
  %.011.i70 = phi ptr [ %.09.i72, %sqlite3_mutex_enter.exit.thread.i71 ], [ %.0.i68, %sqlite3_mutex_enter.exit.i66 ], [ %.0.i68, %bb.n ] ; 2 uses
  %.not = icmp eq ptr %.011.i70, null
  br i1 %.not, label %.critedge, label %sqlite3_sql.exit, !llvm.loop !6733

.critedge:                                        ; preds = %sqlite3_next_stmt.exit73, %sqlite3_malloc64.exit, %bb.h, %sqlite3_next_stmt.exit
  %.2 = phi i32 [ 0, %sqlite3_next_stmt.exit ], [ 7, %bb.h ], [ 7, %sqlite3_malloc64.exit ], [ 0, %sqlite3_next_stmt.exit73 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stmtNext(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6718 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6719
  %i.e = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.g(ptr noundef nonnull %i.f) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.i = tail call i32 %i.h(ptr noundef nonnull %i.b) #58, !inline_history !277
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.l = sub nsw i64 %i.k, %i.j
  store i64 %i.l, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.n = add nsw i64 %i.m, -1
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.o(ptr noundef nonnull %i.b) #58, !inline_history !278
  %i.p = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.p, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.q(ptr noundef nonnull %i.p) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.e:                                             ; preds = %bb.a
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.r(ptr noundef nonnull %i.b) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.d, %bb.e
  store ptr %i.d, ptr %i.a, align 8, !tbaa !6718
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @stmtEof(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6718
  %i.c = icmp eq ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stmtColumn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6718 ; 2 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6728
  tail call fastcc void @setResultStrOrError(ptr noundef %1, ptr noundef %i.e, i32 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !3058
  br label %sqlite3_result_int.exit

bb.c:                                             ; preds = %bb.a
end_hunk_34
