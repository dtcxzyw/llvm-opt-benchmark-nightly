Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/MtCoder?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@MtCoder_Code:bb.a
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %CMtThread_Prepare.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 304
  store i32 0, ptr %i.ay, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 308
  store i32 0, ptr %i.az, align 4, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 312
  %i.bb = tail call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull %i.ba) #6
  %.not31.i = icmp eq i32 %i.bb, 0
  br i1 %.not31.i, label %bb.j, label %CMtThread_Prepare.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 416
  %i.bd = tail call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull %i.bc) #6
  %.not32.i = icmp eq i32 %i.bd, 0
  br i1 %.not32.i, label %bb.b, label %CMtThread_Prepare.exit.thread

.lr.ph85.preheader:                               ; preds = %bb.n
  %wide.trip.count106 = zext i32 %i.b to i64
  br label %.lr.ph85

bb.k:                                             ; preds = %.lr.ph83, %bb.n
  %indvars.iv98 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next99, %bb.n ] ; 2 uses
  %i.be = getelementptr inbounds nuw [520 x i8], ptr %i.k, i64 %indvars.iv98 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !13
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 280
  store ptr @ThreadFunc, ptr %i.bi, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 288
  store ptr %i.be, ptr %i.bj, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 272
  store i32 0, ptr %i.bk, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bm = tail call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull %i.bl) #6
  %.not.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not.not.i, label %bb.m, label %.thread71

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 168
  %i.bo = tail call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull %i.bn) #6
  %.not14.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not14.not.i, label %LoopThread_Create.exit, label %.thread71

LoopThread_Create.exit:                           ; preds = %bb.m
  %i.bp = tail call i32 @Thread_Create(ptr noundef nonnull %i.bh, ptr noundef nonnull @LoopThreadFunc, ptr noundef nonnull %i.bh) #6
  %.not61 = icmp eq i32 %i.bp, 0
  br i1 %.not61, label %bb.n, label %.thread71

bb.n:                                             ; preds = %LoopThread_Create.exit, %bb.k
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.lr.ph85.preheader, label %bb.k, !llvm.loop !57

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %bb.p
  %indvars.iv103 = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvars.iv.next104, %bb.p ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [520 x i8], ptr %0, i64 %indvars.iv103
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 760
  %i.bs = tail call i32 @Event_Set(ptr noundef nonnull %i.br) #6
  %.not62 = icmp eq i32 %i.bs, 0
  br i1 %.not62, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph85
  %i.bt = trunc nuw i64 %indvars.iv103 to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store i32 1, ptr %i.bu, align 8, !tbaa !45
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph85
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %.loopexit, label %.lr.ph85, !llvm.loop !58

.loopexit:                                        ; preds = %bb.p, %bb.a, %bb.o
  %.25480 = phi i32 [ %i.bt, %bb.o ], [ 0, %bb.a ], [ %i.b, %bb.p ] ; 2 uses
  %.5 = phi i32 [ 12, %bb.o ], [ 0, %bb.a ], [ 0, %bb.p ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.bw = tail call i32 @Event_Set(ptr noundef nonnull %i.bv) #6 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.by = tail call i32 @Event_Set(ptr noundef nonnull %i.bx) #6 ; 0 uses
  %.not93 = icmp eq i32 %.25480, 0
  br i1 %.not93, label %.thread71, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %.loopexit
  %wide.trip.count111 = zext i32 %.25480 to i64
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %.lr.ph87
  %indvars.iv108 = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next109, %.lr.ph87 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [520 x i8], ptr %0, i64 %indvars.iv108
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 864
  %i.cb = tail call i32 @Event_Wait(ptr noundef nonnull %i.ca) #6 ; 0 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %.thread71, label %.lr.ph87, !llvm.loop !59

.thread71:                                        ; preds = %LoopThread_Create.exit, %bb.m, %bb.l, %.lr.ph87, %.loopexit
  %.6 = phi i32 [ %.5, %.loopexit ], [ %.5, %.lr.ph87 ], [ 12, %bb.l ], [ 12, %bb.m ], [ 12, %LoopThread_Create.exit ] ; 2 uses
  br i1 %.not90, label %._crit_edge, label %.lr.ph89

.lr.ph89:                                         ; preds = %.thread71
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 696
  %wide.trip.count116 = zext i32 %i.b to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph89, %bb.q
  %indvars.iv113 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next114, %bb.q ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [520 x i8], ptr %i.cc, i64 %indvars.iv113 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 312
  %i.cf = tail call i32 @Event_Close(ptr noundef nonnull %i.ce) #6 ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 416
  %i.ch = tail call i32 @Event_Close(ptr noundef nonnull %i.cg) #6 ; 0 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge, label %bb.q, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.q, %.thread71
  %i.ci = icmp eq i32 %.6, 0
  br i1 %i.ci, label %bb.r, label %CMtThread_Prepare.exit.thread

bb.r:                                             ; preds = %._crit_edge
  %i.cj = load i32, ptr %i.c, align 8, !tbaa !42
  br label %CMtThread_Prepare.exit.thread

CMtThread_Prepare.exit.thread:                    ; preds = %bb.j, %bb.h, %bb.e, %bb.i, %bb.r, %._crit_edge
  %.258 = phi i32 [ %.6, %._crit_edge ], [ %i.cj, %bb.r ], [ 12, %bb.i ], [ 2, %bb.e ], [ 2, %bb.h ], [ 12, %bb.j ]
  ret i32 %.258
}

; Function Attrs: nounwind uwtable
define internal i32 @ThreadFunc(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 308
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.l = load i32, ptr %i.c, align 8, !tbaa !37   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %i.o = call i32 @Event_Wait(ptr noundef nonnull %i.d) #6
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.c, label %MtThread_Process.exit.thread.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !30     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 696
  %i.r = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41
  %i.u = add i32 %i.t, -1
  %i.v = icmp eq i32 %i.r, %i.u
  %i.w = add i32 %i.r, 1
  %narrow.i = select i1 %i.v, i32 0, i32 %i.w
  %i.x = zext i32 %narrow.i to i64
  %i.y = getelementptr inbounds nuw [520 x i8], ptr %i.q, i64 %i.x ; 5 uses
  %i.z = load i32, ptr %i.e, align 8, !tbaa !45
  %.not42.i = icmp eq i32 %i.z, 0
  br i1 %.not42.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i32 %i.n, -1
  %i.ab = icmp eq i32 %i.l, %i.aa
  %i.ac = add i32 %i.l, 1
  %narrow.le61 = select i1 %i.ab, i32 0, i32 %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 304
  store i32 1, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 312
  %i.af = call i32 @Event_Set(ptr noundef nonnull %i.ae) #6
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.thread41, label %MtThread_Process.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.ai = load i64, ptr %i.f, align 8, !tbaa !44
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0.i = phi i64 [ 0, %bb.e ], [ %i.ap, %bb.g ]  ; 2 uses
  %.019.i.i = phi ptr [ %i.al, %bb.e ], [ %i.aq, %bb.g ] ; 2 uses
  %.017.i.i = phi i32 [ undef, %bb.e ], [ %.2.i.i, %bb.g ]
  %.016.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.ar, %bb.g ] ; 3 uses
  %.not.i.i = icmp eq i64 %.016.i.i, 0
  br i1 %.not.i.i, label %FullRead.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 %.016.i.i, ptr %i.a, align 8, !tbaa !68
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.an = call i32 %i.am(ptr noundef nonnull %i.ak, ptr noundef %.019.i.i, ptr noundef nonnull %i.a) #6, !inline_history !65 ; 2 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !68  ; 4 uses
  %i.ap = add i64 %i.ao, %.0.i                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 %i.ao
  %i.ar = sub i64 %.016.i.i, %i.ao
  %.not21.i.i = icmp eq i32 %i.an, 0              ; 2 uses
  %i.as = icmp ne i64 %i.ao, 0                    ; 2 uses
  %..017..i.i = select i1 %i.as, i32 %.017.i.i, i32 0
  %.2.i.i = select i1 %.not21.i.i, i32 %..017..i.i, i32 %i.an ; 3 uses
  %cond1.i.i = select i1 %.not21.i.i, i1 %i.as, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %cond1.i.i, label %bb.f, label %FullRead.exit.i, !llvm.loop !66

FullRead.exit.i:                                  ; preds = %bb.g
  %.not43.i = icmp eq i32 %.2.i.i, 0
  br i1 %.not43.i, label %FullRead.exit.thread.i, label %MtThread_Process.exit.thread34

FullRead.exit.thread.i:                           ; preds = %bb.f, %FullRead.exit.i
  %.155.i = phi i64 [ %i.ap, %FullRead.exit.i ], [ %.0.i, %bb.f ] ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !30
  %i.au = load i64, ptr %i.at, align 8, !tbaa !43
  %i.av = icmp ne i64 %.155.i, %i.au              ; 2 uses
  %i.aw = zext i1 %i.av to i32                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 304
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 312
  %i.az = call i32 @Event_Set(ptr noundef nonnull %i.ay) #6
  %.not44.i = icmp eq i32 %i.az, 0
  br i1 %.not44.i, label %bb.h, label %MtThread_Process.exit.thread34

bb.h:                                             ; preds = %FullRead.exit.thread.i
  %i.ba = load ptr, ptr %0, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26
  %i.be = load i32, ptr %i.c, align 8, !tbaa !37
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.bh = call i32 %i.bd(ptr noundef nonnull %i.bc, i32 noundef %i.be, ptr noundef %i.bf, ptr noundef nonnull %i.b, ptr noundef %i.bg, i64 noundef %.155.i, i32 noundef %i.aw) #6, !inline_history !67 ; 2 uses
  %.not45.i = icmp eq i32 %i.bh, 0
  br i1 %.not45.i, label %bb.i, label %MtThread_Process.exit.thread34

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.bj = load i32, ptr %i.c, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 184
  %i.bl = zext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  store i64 0, ptr %i.bm, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 440
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  store i64 0, ptr %i.bo, align 8, !tbaa !20
  %i.bp = call i32 @Event_Wait(ptr noundef nonnull %i.i) #6
  %.not46.i = icmp eq i32 %i.bp, 0
  br i1 %.not46.i, label %bb.j, label %MtThread_Process.exit.thread34

bb.j:                                             ; preds = %bb.i
  %i.bq = load i32, ptr %i.j, align 4, !tbaa !46
  %.not47.i = icmp eq i32 %i.bq, 0
  br i1 %.not47.i, label %bb.k, label %MtThread_Process.exit.thread34

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %0, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !71 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !26
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !68
  %i.bx = call i64 %i.bu(ptr noundef nonnull %i.bt, ptr noundef %i.bv, i64 noundef %i.bw) #6, !inline_history !67
  %i.by = load i64, ptr %i.b, align 8, !tbaa !68
  %.not48.i = icmp eq i64 %i.bx, %i.by
  br i1 %.not48.i, label %bb.l, label %MtThread_Process.exit.thread34

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 416
  %i.ca = call i32 @Event_Set(ptr noundef nonnull %i.bz) #6
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.o, label %MtThread_Process.exit.thread34

MtThread_Process.exit.thread34:                   ; preds = %FullRead.exit.i, %FullRead.exit.thread.i, %bb.i, %bb.j, %bb.l, %bb.h, %bb.k
  %.2.i.ph = phi i32 [ 9, %bb.k ], [ %i.bh, %bb.h ], [ 12, %bb.l ], [ 11, %bb.j ], [ 12, %bb.i ], [ 12, %FullRead.exit.thread.i ], [ %.2.i.i, %FullRead.exit.i ]
  %i.cc = add i32 %i.n, -1
  %i.cd = icmp eq i32 %i.l, %i.cc
  %i.ce = add i32 %i.l, 1
  %narrow.le64 = select i1 %i.cd, i32 0, i32 %i.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %MtThread_Process.exit.thread

MtThread_Process.exit.thread.loopexit:            ; preds = %bb.b
  %i.cf = add i32 %i.n, -1
  %i.cg = icmp eq i32 %i.l, %i.cf
  %i.ch = add i32 %i.l, 1
  %narrow.le = select i1 %i.cg, i32 0, i32 %i.ch
  br label %MtThread_Process.exit.thread

MtThread_Process.exit.thread:                     ; preds = %MtThread_Process.exit.thread.loopexit, %bb.d, %MtThread_Process.exit.thread34
  %.in = phi i32 [ %narrow.le64, %MtThread_Process.exit.thread34 ], [ %narrow.le61, %bb.d ], [ %narrow.le, %MtThread_Process.exit.thread.loopexit ]
  %.3.i26 = phi i32 [ %.2.i.ph, %MtThread_Process.exit.thread34 ], [ 12, %bb.d ], [ 12, %MtThread_Process.exit.thread.loopexit ] ; 3 uses
  %i.ci = zext i32 %.in to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 696
  %i.ck = getelementptr inbounds nuw [520 x i8], ptr %i.cj, i64 %i.ci ; 4 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64 ; 2 uses
  %i.cn = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cm) #6 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 104 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !42
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.m, label %MtCoder_SetError.exit

bb.m:                                             ; preds = %MtThread_Process.exit.thread
  store i32 %.3.i26, ptr %i.co, align 8, !tbaa !42
  br label %MtCoder_SetError.exit

MtCoder_SetError.exit:                            ; preds = %MtThread_Process.exit.thread, %bb.m
  %i.cr = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cm) #6 ; 0 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 144 ; 2 uses
  %i.cu = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ct) #6 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 136 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !23
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.n, label %.thread

bb.n:                                             ; preds = %MtCoder_SetError.exit
  store i32 %.3.i26, ptr %i.cv, align 8, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %bb.n, %MtCoder_SetError.exit
  %i.cy = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ct) #6 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 304
  store i32 1, ptr %i.cz, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 308
  store i32 1, ptr %i.da, align 4, !tbaa !46
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 312
  %i.dc = call i32 @Event_Set(ptr noundef nonnull %i.db) #6 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 416
  %i.de = call i32 @Event_Set(ptr noundef nonnull %i.dd) #6 ; 0 uses
  br label %.thread41

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br i1 %i.av, label %.thread41, label %bb.b

.thread41:                                        ; preds = %bb.o, %bb.d, %.thread
  %.140 = phi i32 [ %.3.i26, %.thread ], [ 0, %bb.d ], [ 0, %bb.o ]
  ret i32 %.140
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!"_CThread", !8, i64 0, !6, i64 8}
!10 = !{!"_CEvent", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 16, !5, i64 56}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"", !9, i64 0, !10, i64 16, !10, i64 120, !6, i64 224, !11, i64 232, !11, i64 240, !6, i64 248}
!13 = !{!12, !6, i64 8}
!14 = !{!12, !6, i64 16}
!15 = !{!12, !6, i64 120}
!16 = !{!12, !6, i64 224}
!17 = !{!12, !11, i64 232}
!18 = !{!12, !11, i64 240}
!19 = !{!"long long", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"", !5, i64 0}
!22 = !{!"", !19, i64 0, !19, i64 8, !11, i64 16, !6, i64 24, !21, i64 32, !5, i64 72, !5, i64 328}
!23 = !{!22, !6, i64 24}
!24 = !{!22, !11, i64 16}
!25 = !{!"", !11, i64 0}
!26 = !{!25, !11, i64 0}
!27 = !{!"p1 _ZTS9_CMtCoder", !11, i64 0}
!28 = !{!"p1 omnipotent char", !11, i64 0}
!29 = !{!"", !27, i64 0, !28, i64 8, !8, i64 16, !28, i64 24, !8, i64 32, !6, i64 40, !12, i64 48, !6, i64 304, !6, i64 308, !10, i64 312, !10, i64 416}
!30 = !{!29, !27, i64 0}
!31 = !{!29, !28, i64 8}
!32 = !{!29, !28, i64 24}
!33 = !{!29, !6, i64 312}
!34 = !{!29, !6, i64 416}
!35 = !{!"_CMtCoder", !8, i64 0, !8, i64 8, !6, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !21, i64 64, !6, i64 104, !22, i64 112, !5, i64 696}
!36 = !{!35, !11, i64 48}
!37 = !{!29, !6, i64 40}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"", !11, i64 0, !11, i64 8}
!40 = !{!39, !11, i64 8}
!41 = !{!35, !6, i64 16}
!42 = !{!35, !6, i64 104}
!43 = !{!35, !8, i64 0}
!44 = !{!29, !8, i64 16}
!45 = !{!29, !6, i64 304}
!46 = !{!29, !6, i64 308}
!47 = !{!12, !6, i64 248}
!48 = distinct !{null}
!49 = !{!22, !19, i64 0}
!50 = !{!22, !19, i64 8}
!51 = distinct !{!51, !38}
!52 = distinct !{null}
!53 = distinct !{!53, !38}
!54 = !{!29, !6, i64 56}
!55 = distinct !{!55, !38}
!56 = distinct !{null}
!57 = distinct !{!57, !38}
!58 = distinct !{!58, !38}
!59 = distinct !{!59, !38}
!60 = distinct !{!60, !38}
!61 = !{!35, !11, i64 40}
!62 = !{!29, !8, i64 32}
!63 = !{!39, !11, i64 0}
!64 = !{!35, !8, i64 8}
!65 = distinct !{null, null}
!66 = distinct !{!66, !38}
!67 = distinct !{null}
!68 = !{!8, !8, i64 0}
!69 = !{!35, !11, i64 24}
!70 = !{!35, !11, i64 56}
!71 = !{!35, !11, i64 32}
end_hunk_0
