inline.NumInlined: 12
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fd_set = type { [16 x i64] }

@.str = private unnamed_addr constant [39 x i8] c"processing of database \22%s\22 failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"42P01\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"socket file descriptor out of range for select(): %d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Try fewer jobs.\00", align 1
@CancelRequested = external global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @ParallelSlotsGetIdle(ptr nofree noundef captures(ret: address, provenance) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.fd_set, align 8             ; 11 uses
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.i.lr.ph, label %find_any_idle_slot.exit.thread.thread

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.d = icmp eq ptr %1, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %wait_on_slots.exit
  %i.e = phi i32 [ %i.a, %.lr.ph.i.lr.ph ], [ %i.cx, %wait_on_slots.exit ] ; 3 uses
  br i1 %i.d, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %i.f = zext nneg i32 %i.e to i64
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.c, %.lr.ph.split.us.preheader.i
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next26.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv25.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !4, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %find_matching_idle_slot.exit.thread45

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next26.i, %i.f
  br i1 %exitcond.not, label %find_matching_idle_slot.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !6

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.f
  %i.m = phi i32 [ %i.w, %bb.f ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i8, ptr %i.o, align 8, !range !4, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.r = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = call ptr @PQdb(ptr noundef nonnull %i.r) #8
  %i.u = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull readonly dereferenceable(1) %1) #9
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %find_matching_idle_slot.exit.thread45, label %._crit_edge28.i

._crit_edge28.i:                                  ; preds = %bb.e
  %.pre.i = load i32, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge28.i, %bb.d, %.lr.ph.split.i
  %i.w = phi i32 [ %.pre.i, %._crit_edge28.i ], [ %i.m, %bb.d ], [ %i.m, %.lr.ph.split.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next.i, %i.x
  br i1 %i.y, label %.lr.ph.split.i, label %find_matching_idle_slot.exit.thread, !llvm.loop !6

find_matching_idle_slot.exit.thread45:            ; preds = %bb.e, %bb.b
  %.012.i47.in = phi i64 [ %indvars.iv25.i, %bb.b ], [ %indvars.iv.i, %bb.e ]
  %i.z = and i64 %.012.i47.in, 4294967295
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 1, ptr %i.ab, align 8
  br label %bb.y

find_matching_idle_slot.exit.thread:              ; preds = %bb.f, %bb.c
  %.pr = phi i32 [ %i.e, %bb.c ], [ %i.w, %bb.f ] ; 2 uses
  %i.ac = icmp sgt i32 %.pr, 0
  br i1 %i.ac, label %.lr.ph.i33, label %find_any_idle_slot.exit.thread.thread

.lr.ph.i33:                                       ; preds = %find_matching_idle_slot.exit.thread
  %wide.trip.count.i = zext nneg i32 %.pr to i64  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i33
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.i33 ], [ %indvars.iv.next.i35, %bb.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.i34 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !4, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %find_unconnected_slot.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i35, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i37, label %bb.g, !llvm.loop !8

find_unconnected_slot.exit:                       ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = trunc nuw nsw i64 %indvars.iv.i34 to i32
  call fastcc void @connect_slot(ptr noundef nonnull %0, i32 noundef %i.ak, ptr noundef %1)
  store i8 1, ptr %i.aj, align 8
  br label %bb.y

.lr.ph.i37:                                       ; preds = %bb.i, %bb.j
  %indvars.iv.i38 = phi i64 [ %indvars.iv.next.i39, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %i.al = getelementptr [32 x i8], ptr %0, i64 %indvars.iv.i38
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load i8, ptr %i.am, align 8, !range !4, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.j, label %find_any_idle_slot.exit

bb.j:                                             ; preds = %.lr.ph.i37
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %exitcond.not.i40 = icmp eq i64 %indvars.iv.next.i39, %wide.trip.count.i
  br i1 %exitcond.not.i40, label %find_any_idle_slot.exit.thread, label %.lr.ph.i37, !llvm.loop !9

find_any_idle_slot.exit:                          ; preds = %.lr.ph.i37
  %i.ap = trunc nuw nsw i64 %indvars.iv.i38 to i32
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.i38 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  call void @disconnectDatabase(ptr noundef %i.ar) #8
  store ptr null, ptr %i.aq, align 8
  call fastcc void @connect_slot(ptr noundef nonnull %0, i32 noundef %i.ap, ptr noundef %1)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i8 1, ptr %i.as, align 8
  br label %bb.y

find_any_idle_slot.exit.thread.thread:            ; preds = %wait_on_slots.exit, %find_matching_idle_slot.exit.thread, %wait_on_slots.exit.thread79, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  br label %wait_on_slots.exit.thread

find_any_idle_slot.exit.thread:                   ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %find_any_idle_slot.exit.thread
  %indvars.iv.i42 = phi i64 [ 0, %find_any_idle_slot.exit.thread ], [ %indvars.iv.next.i43, %bb.o ] ; 2 uses
  %.04871.i = phi i32 [ 0, %find_any_idle_slot.exit.thread ], [ %.250.i, %bb.o ] ; 2 uses
  %.05170.i = phi ptr [ null, %find_any_idle_slot.exit.thread ], [ %.253.i, %bb.o ] ; 3 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.i42 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i32 @PQsocket(ptr noundef %i.au) #8 ; 4 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp eq ptr %.05170.i, null
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.at, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.152.i = phi ptr [ %i.ay, %bb.m ], [ %.05170.i, %bb.l ]
  %i.az = and i32 %i.av, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = lshr i32 %i.av, 6
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = or i64 %i.bf, %i.bb
  store i64 %i.bg, ptr %i.be, align 8
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.av, i32 %.04871.i)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.253.i = phi ptr [ %.152.i, %bb.n ], [ %.05170.i, %bb.k ] ; 3 uses
  %.250.i = phi i32 [ %spec.select.i, %bb.n ], [ %.04871.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %i.bh = load i32, ptr %0, align 8
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next.i43, %i.bi
  br i1 %i.bj, label %bb.k, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.o
  %i.bk = add nuw i32 %.250.i, 1
  %i.bl = icmp eq ptr %.253.i, null
  br i1 %i.bl, label %wait_on_slots.exit.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  call void @SetCancelConn(ptr noundef nonnull %.253.i) #8
  %.sroa.0.i.i.sroa.0.0.copyload = load <16 x i64>, ptr %2, align 8
  %i.bm = load volatile i32, ptr @CancelRequested, align 4
  %.not.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %select_loop.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i.backedge
  store <16 x i64> %.sroa.0.i.i.sroa.0.0.copyload, ptr %2, align 8
  %i.bn = call i32 @select(i32 noundef %i.bk, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.q, label %.critedge.i.i

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = tail call ptr @__errno_location() #10
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp eq i32 %i.bq, 4
  br i1 %i.br, label %.preheader.i.i.backedge, label %select_loop.exit.thread.i

.critedge.i.i:                                    ; preds = %.preheader.i.i
  %i.bs = load volatile i32, ptr @CancelRequested, align 4
  %.not12.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not12.i.i, label %bb.r, label %select_loop.exit.thread.i

bb.r:                                             ; preds = %.critedge.i.i
  %i.bt = icmp eq i32 %i.bn, 0
  br i1 %i.bt, label %.preheader.i.i.backedge, label %select_loop.exit.i

.preheader.i.i.backedge:                          ; preds = %bb.r, %bb.q
  br label %.preheader.i.i

select_loop.exit.thread.i:                        ; preds = %bb.p, %.critedge.i.i, %bb.q
  call void @ResetCancelConn() #8
  br label %wait_on_slots.exit.thread

select_loop.exit.i:                               ; preds = %bb.r
  call void @ResetCancelConn() #8
  %i.bu = load i32, ptr %0, align 8
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph78.i, label %wait_on_slots.exit.thread79

wait_on_slots.exit.thread79:                      ; preds = %select_loop.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %find_any_idle_slot.exit.thread.thread

.lr.ph78.i:                                       ; preds = %select_loop.exit.i, %.loopexit.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %.loopexit.i ], [ 0, %select_loop.exit.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv82.i ; 9 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call i32 @PQsocket(ptr noundef %i.bx) #8 ; 3 uses
  %i.bz = icmp sgt i32 %i.by, -1
  br i1 %i.bz, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph78.i
  %i.ca = lshr i32 %i.by, 6
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = and i32 %i.by, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.cd, %i.cg
  %.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr %i.bw, align 8
  %i.cj = call i32 @PQconsumeInput(ptr noundef %i.ci) #8 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.lr.ph78.i
  %i.ck = load ptr, ptr %i.bw, align 8
  %i.cl = call i32 @PQisBusy(ptr noundef %i.ck) #8
  %.not5974.i = icmp eq i32 %i.cl, 0
  br i1 %.not5974.i, label %.lr.ph76.i, label %.loopexit.i

.lr.ph76.i:                                       ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.lr.ph76.i
  %i.co = load ptr, ptr %i.bw, align 8
  %i.cp = call ptr @PQgetResult(ptr noundef %i.co) #8 ; 3 uses
  %.not60.i = icmp eq ptr %i.cp, null
  br i1 %.not60.i, label %.thread63.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %i.cm, align 8
  %i.cr = load ptr, ptr %i.bw, align 8
  %i.cs = load ptr, ptr %i.cn, align 8
  %i.ct = call zeroext i1 %i.cq(ptr noundef nonnull %i.cp, ptr noundef %i.cr, ptr noundef %i.cs) #8, !inline_history !11
  br i1 %i.ct, label %bb.x, label %wait_on_slots.exit.thread

.thread63.i:                                      ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i8 0, ptr %i.cu, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  br label %.loopexit.i

bb.x:                                             ; preds = %bb.w
  call void @PQclear(ptr noundef nonnull %i.cp) #8
  %i.cv = load ptr, ptr %i.bw, align 8
  %i.cw = call i32 @PQisBusy(ptr noundef %i.cv) #8
  %.not59.i = icmp eq i32 %i.cw, 0
  br i1 %.not59.i, label %bb.v, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.x, %.thread63.i, %bb.u
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %i.cx = load i32, ptr %0, align 8               ; 3 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next83.i, %i.cy
  br i1 %i.cz, label %.lr.ph78.i, label %wait_on_slots.exit, !llvm.loop !12

wait_on_slots.exit.thread:                        ; preds = %._crit_edge.i, %bb.w, %select_loop.exit.thread.i, %find_any_idle_slot.exit.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.y

wait_on_slots.exit:                               ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.da = icmp sgt i32 %i.cx, 0
  br i1 %i.da, label %.lr.ph.i, label %find_any_idle_slot.exit.thread.thread

bb.y:                                             ; preds = %wait_on_slots.exit.thread, %find_any_idle_slot.exit, %find_unconnected_slot.exit, %find_matching_idle_slot.exit.thread45
  %.0 = phi ptr [ %i.aa, %find_matching_idle_slot.exit.thread45 ], [ %i.ad, %find_unconnected_slot.exit ], [ %i.aq, %find_any_idle_slot.exit ], [ null, %wait_on_slots.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @connect_slot(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, -2147483648) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %i.f, align 8
  %.pre = load ptr, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !4, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = tail call ptr @connectDatabase(ptr noundef %i.h, ptr noundef %i.j, i1 noundef zeroext %i.m, i1 noundef zeroext false, i1 noundef zeroext true) #8
  store ptr %i.n, ptr %i.c, align 8
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.g, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = tail call i32 @PQsocket(ptr noundef %i.q) #8 ; 2 uses
  %i.s = icmp sgt i32 %i.r, 1023
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %i.r) #8
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.3) #8
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.u, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = load i8, ptr %i.k, align 8, !range !4, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  tail call void @executeCommand(ptr noundef %i.v, ptr noundef nonnull %i.u, i1 noundef zeroext %i.x) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @disconnectDatabase(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ParallelSlotsSetup(i32 noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = sext i32 %0 to i64
  %i.c = shl nsw i64 %i.b, 5
  %i.d = add nsw i64 %i.c, 40
  %i.e = tail call ptr @palloc0(i64 noundef %i.d) #8 ; 6 uses
  store i32 %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %4, ptr %i.i, align 8
  ret ptr %i.e
}

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ParallelSlotsAdoptConn(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.i, label %find_unconnected_slot.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv.i ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i8, ptr %i.e, align 8, !range !4, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %find_unconnected_slot.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %find_unconnected_slot.exit.thread, label %bb.b, !llvm.loop !8

find_unconnected_slot.exit:                       ; preds = %bb.c
  store ptr %1, ptr %i.d, align 8
  br label %bb.e

find_unconnected_slot.exit.thread:                ; preds = %bb.d, %bb.a
  tail call void @disconnectDatabase(ptr noundef %1) #8
  br label %bb.e

bb.e:                                             ; preds = %find_unconnected_slot.exit.thread, %find_unconnected_slot.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ParallelSlotsTerminate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.d = phi i32 [ %i.a, %.lr.ph ], [ %i.h, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @disconnectDatabase(ptr noundef nonnull %i.f) #8
  %.pre = load i32, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @ParallelSlotsWaitCompletion(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.d = phi i32 [ %i.a, %.lr.ph ], [ %i.u, %bb.g ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SetCancelConn(ptr noundef nonnull %i.f) #8
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = tail call ptr @PQgetResult(ptr noundef %i.h) #8 ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %consumeQueryResult.exit.thread, label %.lr.ph.i

consumeQueryResult.exit.thread:                   ; preds = %bb.c
  tail call void @ResetCancelConn() #8
  br label %bb.f

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.d

bb.d:                                             ; preds = %processQueryResult.exit.i, %.lr.ph.i
  %i.l = phi ptr [ %i.i, %.lr.ph.i ], [ %i.r, %processQueryResult.exit.i ] ; 2 uses
  %.06.i = phi i1 [ true, %.lr.ph.i ], [ %spec.select.i, %processQueryResult.exit.i ]
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = tail call zeroext i1 %i.m(ptr noundef nonnull %i.l, ptr noundef %i.n, ptr noundef %i.o) #8, !inline_history !14
  br i1 %i.p, label %bb.e, label %processQueryResult.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @PQclear(ptr noundef nonnull %i.l) #8
  br label %processQueryResult.exit.i

processQueryResult.exit.i:                        ; preds = %bb.e, %bb.d
  %spec.select.i = phi i1 [ false, %bb.d ], [ %.06.i, %bb.e ] ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = tail call ptr @PQgetResult(ptr noundef %i.q) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %consumeQueryResult.exit, label %bb.d, !llvm.loop !15

consumeQueryResult.exit:                          ; preds = %processQueryResult.exit.i
  tail call void @ResetCancelConn() #8
  br i1 %spec.select.i, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %consumeQueryResult.exit.thread, %consumeQueryResult.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %.pre = load i32, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.u = phi i32 [ %i.d, %bb.b ], [ %.pre, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %consumeQueryResult.exit, %bb.g, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ true, %bb.g ], [ false, %consumeQueryResult.exit ]
  ret i1 %.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @TableCommandResultHandler(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PQresultStatus(ptr noundef %0) #8
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PQresultErrorField(ptr noundef %0, i32 noundef 67) #8 ; 2 uses
  %i.c = tail call ptr @PQdb(ptr noundef %1) #8
  %i.d = tail call ptr @PQerrorMessage(ptr noundef %1) #8
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.c, ptr noundef %i.d) #8
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(6) @.str.1) #9
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PQclear(ptr noundef %0) #8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.a ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.1
}

declare i32 @PQresultStatus(ptr noundef) local_unnamed_addr #2

declare ptr @PQresultErrorField(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pg_log_generic(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PQdb(ptr noundef) local_unnamed_addr #2

declare ptr @PQerrorMessage(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare void @PQclear(ptr noundef) local_unnamed_addr #2

declare ptr @connectDatabase(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @PQsocket(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare void @executeCommand(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @SetCancelConn(ptr noundef) local_unnamed_addr #2

declare void @ResetCancelConn() local_unnamed_addr #2

declare i32 @PQconsumeInput(ptr noundef) local_unnamed_addr #2

declare i32 @PQisBusy(ptr noundef) local_unnamed_addr #2

declare ptr @PQgetResult(ptr noundef) local_unnamed_addr #2

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{null, null}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{null, null}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
end_hunk_0
