inline.NumInlined: 31
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_request_t = type { %struct.ompi_request_t, [96 x i8] }
%struct.ompi_request_t = type { %struct.opal_free_list_item_t, i32, %struct.ompi_status_public_t, ptr, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, %union.ompi_mpi_object_t }
%struct.opal_free_list_item_t = type { %struct.opal_list_item_t, ptr, ptr }
%struct.opal_list_item_t = type { %struct.opal_object_t, ptr, ptr, i32 }
%struct.opal_object_t = type { ptr, i32 }
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }
%union.ompi_mpi_object_t = type { ptr }
%struct.opal_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }

@ompi_request_null = external global %struct.ompi_predefined_request_t, align 8
@NBC_Schedule_class = external global %struct.opal_class_t, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_uses_threads = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_ialltoall(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoall_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext false) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %7, align 8, !tbaa !9
  %i.c = tail call i32 @NBC_Start(ptr noundef %i.b) #5 ; 2 uses
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %7, align 8, !tbaa !9
  tail call void @NBC_Return_handle(ptr noundef %i.d) #5
  store ptr @ompi_request_null, ptr %7, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nbc_alltoall_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, %0
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %3, inttoptr (i64 1 to ptr)  ; 2 uses
  %spec.select = select i1 %i.d, ptr %3, ptr %0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0192 = phi ptr [ %spec.select, %bb.c ], [ %3, %bb.a ], [ %3, %bb.b ] ; 5 uses
  %.0191 = phi ptr [ %0, %bb.c ], [ %0, %bb.a ], [ %3, %bb.b ] ; 2 uses
  %.not = phi i1 [ %i.d, %bb.c ], [ false, %bb.a ], [ false, %bb.b ] ; 2 uses
  %i.e = getelementptr i8, ptr %6, i64 220
  %.val = load i32, ptr %i.e, align 4, !tbaa !14  ; 5 uses
  %i.f = getelementptr i8, ptr %6, i64 264
  %.val223 = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr i8, ptr %.val223, i64 16
  %.val223.val = load i32, ptr %i.g, align 8, !tbaa !43 ; 10 uses
  %i.h = getelementptr i8, ptr %2, i64 48
  %.val226 = load i64, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr i8, ptr %2, i64 56
  %.val227 = load i64, ptr %i.i, align 8, !tbaa !52
  %i.j = sub nsw i64 %.val227, %.val226           ; 2 uses
  %i.k = getelementptr i8, ptr %5, i64 48
  %.val224 = load i64, ptr %i.k, align 8, !tbaa !46
  %i.l = getelementptr i8, ptr %5, i64 56
  %.val225 = load i64, ptr %i.l, align 8, !tbaa !52
  %i.m = sub nsw i64 %.val225, %.val224           ; 5 uses
  %i.n = sext i32 %1 to i64                       ; 4 uses
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53
  %i.q = icmp eq i64 %i.p, 0
  %i.r = icmp eq i32 %4, 0
  %or.cond.i = or i1 %i.r, %i.q
  br i1 %or.cond.i, label %opal_datatype_span.exit, label %bb.f, !prof !54

bb.f:                                             ; preds = %bb.e
  %i.s = sext i32 %4 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !56
  %i.x = add nsw i64 %i.s, -1
  %i.y = mul i64 %i.m, %i.x
  %i.z = sub i64 %i.y, %i.u
  %i.aa = add i64 %i.z, %i.w
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %bb.e, %bb.f
  %.1265 = phi i64 [ %i.u, %bb.f ], [ 0, %bb.e ]
  %.0.i = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  %i.ab = tail call noalias ptr @malloc(i64 noundef %.0.i) #6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.ao, label %.thread, !prof !57

.thread:                                          ; preds = %bb.d, %opal_datatype_span.exit
  %.0 = phi i64 [ %.1265, %opal_datatype_span.exit ], [ 0, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %i.ab, %opal_datatype_span.exit ], [ null, %bb.d ] ; 2 uses
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 56), align 8, !tbaa !58
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #6 ; 26 uses
  %i.af = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !60
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 32), align 8, !tbaa !61
  %.not.i = icmp eq i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  tail call void @opal_class_initialize(ptr noundef nonnull @NBC_Schedule_class) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread
  %.not9.i = icmp eq ptr %i.ae, null
  br i1 %.not9.i, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @NBC_Schedule_class, ptr %i.ae, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 17 uses
  store volatile i32 1, ptr %i.ah, align 8, !tbaa !63
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 40), align 8, !tbaa !64 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aj, null
  br i1 %.not6.i.i, label %.loopexit271, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.aj, %bb.i ]
  %.07.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.ai, %bb.i ]
  tail call void %i.ak(ptr noundef nonnull %i.ae) #5, !inline_history !66
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %.loopexit271, label %.lr.ph.i.i, !llvm.loop !67

.loopexit271:                                     ; preds = %.lr.ph.i.i, %bb.i
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.loopexit271
  %i.an = sext i32 %.val to i64                   ; 2 uses
  %i.ao = sext i32 %4 to i64                      ; 4 uses
  %i.ap = mul nsw i64 %i.an, %i.ao
  %i.aq = mul nsw i64 %i.ap, %i.m
  %i.ar = getelementptr inbounds i8, ptr %.0192, i64 %i.aq
  %i.as = mul nsw i64 %i.an, %i.n
  %i.at = mul nsw i64 %i.as, %i.j
  %i.au = getelementptr inbounds i8, ptr %.0191, i64 %i.at
  %i.av = tail call i32 @NBC_Sched_copy(ptr noundef %i.au, i8 noundef signext 0, i64 noundef %i.n, ptr noundef nonnull %2, ptr noundef %i.ar, i8 noundef signext 0, i64 noundef %i.ao, ptr noundef nonnull %5, ptr noundef nonnull %i.ae, i1 noundef zeroext false) #5 ; 4 uses
  %.not217 = icmp eq i32 %i.av, 0
  br i1 %.not217, label %bb.x, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @opal_uses_threads, align 1, !tbaa !69, !range !70, !noundef !71
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.l, label %bb.m, !prof !57

bb.l:                                             ; preds = %bb.k
  %i.ay = atomicrmw volatile add ptr %i.ah, i32 -1 monotonic, align 4
  %i.az = add i32 %i.ay, -1
  br label %opal_thread_add_fetch_32.exit

bb.m:                                             ; preds = %bb.k
  %i.ba = load volatile i32, ptr %i.ah, align 8, !tbaa !60
  %i.bb = add nsw i32 %i.ba, -1
  store volatile i32 %i.bb, ptr %i.ah, align 8, !tbaa !60
  %i.bc = load volatile i32, ptr %i.ah, align 8, !tbaa !60
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.l, %bb.m
  %.0.i229 = phi i32 [ %i.az, %bb.l ], [ %i.bc, %bb.m ]
  %i.bd = icmp eq i32 %.0.i229, 0
  br i1 %i.bd, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65 ; 2 uses
  %.not6.i = icmp eq ptr %i.bh, null
  br i1 %.not6.i, label %.sink.split.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.bi = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.bh, %bb.n ]
  %.07.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.bg, %bb.n ]
  tail call void %i.bi(ptr noundef nonnull %i.ae) #5, !inline_history !73
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !65 ; 2 uses
  %.not.i230 = icmp eq ptr %i.bk, null
  br i1 %.not.i230, label %.sink.split.sink.split, label %.lr.ph.i, !llvm.loop !74

.critedge:                                        ; preds = %.loopexit271
  %.not10710.i = icmp sgt i32 %.val223.val, 2
  br i1 %.not10710.i, label %.lr.ph.i231, label %._crit_edge.i

.lr.ph.i231:                                      ; preds = %.critedge
  %i.bl = add nuw i32 %.val223.val, 1
  %10 = sdiv i32 %i.bl, 2
  %i.bm = add nsw i32 %.val223.val, %.val
  %i.bn = sext i32 %4 to i64                      ; 7 uses
  %i.bo = mul i64 %i.m, %i.bn                     ; 2 uses
  %i.bp = sub nsw i64 0, %.0
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %10, i32 2)
  br label %bb.p

bb.o:                                             ; preds = %bb.t
  %i.br = add nuw nsw i32 %.09111.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.br, %smax.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.p, !llvm.loop !75

bb.p:                                             ; preds = %bb.o, %.lr.ph.i231
  %.09111.i = phi i32 [ 1, %.lr.ph.i231 ], [ %i.br, %bb.o ] ; 3 uses
  %i.bs = add nsw i32 %.09111.i, %.val
  %i.bt = srem i32 %i.bs, %.val223.val            ; 3 uses
  %i.bu = sub i32 %i.bm, %.09111.i
  %i.bv = srem i32 %i.bu, %.val223.val            ; 3 uses
  %i.bw = sext i32 %i.bt to i64
  %i.bx = mul i64 %i.bo, %i.bw
  %i.by = getelementptr inbounds i8, ptr %.0192, i64 %i.bx ; 2 uses
  %i.bz = sext i32 %i.bv to i64
  %i.ca = mul i64 %i.bo, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %.0192, i64 %i.ca ; 2 uses
  %i.cc = tail call i32 @NBC_Sched_copy(ptr noundef %i.cb, i8 noundef signext 0, i64 noundef %i.bn, ptr noundef %5, ptr noundef %i.bq, i8 noundef signext 1, i64 noundef %i.bn, ptr noundef %5, ptr noundef nonnull %i.ae, i1 noundef zeroext true) #5 ; 2 uses
  %.not.i232 = icmp eq i32 %i.cc, 0
  br i1 %.not.i232, label %bb.q, label %.loopexit, !prof !8

bb.q:                                             ; preds = %bb.p
  %i.cd = tail call i32 @NBC_Sched_send(ptr noundef %i.by, i8 noundef signext 0, i64 noundef %i.bn, ptr noundef %5, i32 noundef %i.bt, ptr noundef nonnull %i.ae, i1 noundef zeroext false) #5 ; 2 uses
  %.not103.i = icmp eq i32 %i.cd, 0
  br i1 %.not103.i, label %bb.r, label %.loopexit, !prof !8

bb.r:                                             ; preds = %bb.q
  %i.ce = tail call i32 @NBC_Sched_recv(ptr noundef %i.cb, i8 noundef signext 0, i64 noundef %i.bn, ptr noundef %5, i32 noundef %i.bv, ptr noundef nonnull %i.ae, i1 noundef zeroext true) #5 ; 2 uses
  %.not104.i = icmp eq i32 %i.ce, 0
  br i1 %.not104.i, label %bb.s, label %.loopexit, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.cf = tail call i32 @NBC_Sched_send(ptr noundef %i.bq, i8 noundef signext 1, i64 noundef %i.bn, ptr noundef %5, i32 noundef %i.bv, ptr noundef nonnull %i.ae, i1 noundef zeroext false) #5 ; 2 uses
  %.not105.i = icmp eq i32 %i.cf, 0
  br i1 %.not105.i, label %bb.t, label %.loopexit, !prof !8

bb.t:                                             ; preds = %bb.s
  %i.cg = tail call i32 @NBC_Sched_recv(ptr noundef %i.by, i8 noundef signext 0, i64 noundef %i.bn, ptr noundef %5, i32 noundef %i.bt, ptr noundef nonnull %i.ae, i1 noundef zeroext true) #5 ; 2 uses
  %.not106.i = icmp eq i32 %i.cg, 0
  br i1 %.not106.i, label %bb.o, label %.loopexit

._crit_edge.i:                                    ; preds = %bb.o, %.critedge
  %i.ch = and i32 %.val223.val, 1
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.u, label %a2a_sched_inplace.exit

bb.u:                                             ; preds = %._crit_edge.i
  %i.cj = ashr exact i32 %.val223.val, 1
  %i.ck = add nsw i32 %i.cj, %.val
  %i.cl = srem i32 %i.ck, %.val223.val            ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = sext i32 %4 to i64                      ; 5 uses
  %i.co = mul i64 %i.m, %i.cn
  %i.cp = mul i64 %i.co, %i.cm
  %i.cq = getelementptr inbounds i8, ptr %.0192, i64 %i.cp ; 2 uses
  %i.cr = sub nsw i64 0, %.0
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = tail call i32 @NBC_Sched_copy(ptr noundef %i.cq, i8 noundef signext 0, i64 noundef %i.cn, ptr noundef %5, ptr noundef %i.cs, i8 noundef signext 1, i64 noundef %i.cn, ptr noundef %5, ptr noundef nonnull %i.ae, i1 noundef zeroext true) #5 ; 2 uses
  %.not108.i = icmp eq i32 %i.ct, 0
  br i1 %.not108.i, label %bb.v, label %.loopexit, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.cu = tail call i32 @NBC_Sched_send(ptr noundef %i.cs, i8 noundef signext 1, i64 noundef %i.cn, ptr noundef %5, i32 noundef %i.cl, ptr noundef nonnull %i.ae, i1 noundef zeroext false) #5 ; 2 uses
  %.not109.i = icmp eq i32 %i.cu, 0
  br i1 %.not109.i, label %bb.w, label %.loopexit, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.cv = tail call i32 @NBC_Sched_recv(ptr noundef %i.cq, i8 noundef signext 0, i64 noundef %i.cn, ptr noundef %5, i32 noundef %i.cl, ptr noundef nonnull %i.ae, i1 noundef zeroext true) #5 ; 2 uses
  %.not110.i = icmp eq i32 %i.cv, 0
  br i1 %.not110.i, label %a2a_sched_inplace.exit, label %.loopexit

bb.x:                                             ; preds = %bb.j
  %i.cw = mul i64 %i.j, %i.n
  %.not373.i = icmp sgt i32 %.val223.val, 0
  br i1 %.not373.i, label %.lr.ph.i233, label %a2a_sched_inplace.exit

.lr.ph.i233:                                      ; preds = %bb.x
  %i.cx = mul i64 %i.m, %i.ao
  %i.cy = zext i32 %.val to i64
  %wide.trip.count.i = zext nneg i32 %.val223.val to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i233
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i233 ], [ %indvars.iv.next.i, %bb.ab ] ; 5 uses
  %i.cz = icmp eq i64 %indvars.iv.i, %i.cy
  br i1 %i.cz, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = mul i64 %i.cx, %indvars.iv.i
  %i.db = getelementptr inbounds i8, ptr %.0192, i64 %i.da
  %i.dc = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.dd = tail call i32 @NBC_Sched_recv(ptr noundef %i.db, i8 noundef signext 0, i64 noundef %i.ao, ptr noundef nonnull %5, i32 noundef %i.dc, ptr noundef nonnull %i.ae, i1 noundef zeroext false) #5 ; 2 uses
  %.not.i234 = icmp eq i32 %i.dd, 0
  br i1 %.not.i234, label %bb.aa, label %.loopexit, !prof !8

bb.aa:                                            ; preds = %bb.z
  %i.de = mul i64 %i.cw, %indvars.iv.i
  %i.df = getelementptr inbounds i8, ptr %.0191, i64 %i.de
  %i.dg = tail call i32 @NBC_Sched_send(ptr noundef %i.df, i8 noundef signext 0, i64 noundef %i.n, ptr noundef nonnull %2, i32 noundef %i.dc, ptr noundef nonnull %i.ae, i1 noundef zeroext false) #5 ; 2 uses
  %.not36.i = icmp eq i32 %i.dg, 0
  br i1 %.not36.i, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i235 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i235, label %a2a_sched_inplace.exit, label %bb.y, !llvm.loop !76

.loopexit:                                        ; preds = %bb.s, %bb.p, %bb.q, %bb.r, %bb.t, %bb.z, %bb.aa, %bb.w, %bb.v, %bb.u
  %.5.ph = phi i32 [ %i.cv, %bb.w ], [ %i.cu, %bb.v ], [ %i.dg, %bb.aa ], [ %i.ct, %bb.u ], [ %i.dd, %bb.z ], [ %i.cc, %bb.p ], [ %i.cd, %bb.q ], [ %i.ce, %bb.r ], [ %i.cg, %bb.t ], [ %i.cf, %bb.s ] ; 3 uses
  %i.dh = load i8, ptr @opal_uses_threads, align 1, !tbaa !69, !range !70, !noundef !71
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ac, label %bb.ad, !prof !57

bb.ac:                                            ; preds = %.loopexit
  %i.dj = atomicrmw volatile add ptr %i.ah, i32 -1 monotonic, align 4
  %i.dk = add i32 %i.dj, -1
  br label %opal_thread_add_fetch_32.exit237

bb.ad:                                            ; preds = %.loopexit
  %i.dl = load volatile i32, ptr %i.ah, align 8, !tbaa !60
  %i.dm = add nsw i32 %i.dl, -1
  store volatile i32 %i.dm, ptr %i.ah, align 8, !tbaa !60
  %i.dn = load volatile i32, ptr %i.ah, align 8, !tbaa !60
  br label %opal_thread_add_fetch_32.exit237

opal_thread_add_fetch_32.exit237:                 ; preds = %bb.ac, %bb.ad
  %.0.i236 = phi i32 [ %i.dk, %bb.ac ], [ %i.dn, %bb.ad ]
  %i.do = icmp eq i32 %.0.i236, 0
  br i1 %i.do, label %bb.ae, label %.sink.split

bb.ae:                                            ; preds = %opal_thread_add_fetch_32.exit237
  %i.dp = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !72 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !65 ; 2 uses
  %.not6.i238 = icmp eq ptr %i.ds, null
  br i1 %.not6.i238, label %.sink.split.sink.split, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %bb.ae, %.lr.ph.i239
  %i.dt = phi ptr [ %i.dv, %.lr.ph.i239 ], [ %i.ds, %bb.ae ]
  %.07.i240 = phi ptr [ %i.du, %.lr.ph.i239 ], [ %i.dr, %bb.ae ]
  tail call void %i.dt(ptr noundef nonnull %i.ae) #5, !inline_history !73
  %i.du = getelementptr inbounds nuw i8, ptr %.07.i240, i64 8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !65 ; 2 uses
  %.not.i241 = icmp eq ptr %i.dv, null
  br i1 %.not.i241, label %.sink.split.sink.split, label %.lr.ph.i239, !llvm.loop !74

a2a_sched_inplace.exit:                           ; preds = %bb.ab, %._crit_edge.i, %bb.w, %bb.x
  %i.dw = tail call i32 @NBC_Sched_commit(ptr noundef nonnull %i.ae) #5 ; 4 uses
  %.not219 = icmp eq i32 %i.dw, 0
  br i1 %.not219, label %bb.aj, label %bb.af, !prof !8

bb.af:                                            ; preds = %a2a_sched_inplace.exit
  %i.dx = load i8, ptr @opal_uses_threads, align 1, !tbaa !69, !range !70, !noundef !71
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.ag, label %bb.ah, !prof !57

bb.ag:                                            ; preds = %bb.af
  %i.dz = atomicrmw volatile add ptr %i.ah, i32 -1 monotonic, align 4
  %i.ea = add i32 %i.dz, -1
  br label %opal_thread_add_fetch_32.exit245

bb.ah:                                            ; preds = %bb.af
  %i.eb = load volatile i32, ptr %i.ah, align 8, !tbaa !60
  %i.ec = add nsw i32 %i.eb, -1
  store volatile i32 %i.ec, ptr %i.ah, align 8, !tbaa !60
  %i.ed = load volatile i32, ptr %i.ah, align 8, !tbaa !60
  br label %opal_thread_add_fetch_32.exit245

opal_thread_add_fetch_32.exit245:                 ; preds = %bb.ag, %bb.ah
  %.0.i244 = phi i32 [ %i.ea, %bb.ag ], [ %i.ed, %bb.ah ]
  %i.ee = icmp eq i32 %.0.i244, 0
  br i1 %i.ee, label %bb.ai, label %.sink.split

bb.ai:                                            ; preds = %opal_thread_add_fetch_32.exit245
  %i.ef = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !72 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !65 ; 2 uses
  %.not6.i246 = icmp eq ptr %i.ei, null
  br i1 %.not6.i246, label %.sink.split.sink.split, label %.lr.ph.i247

.lr.ph.i247:                                      ; preds = %bb.ai, %.lr.ph.i247
  %i.ej = phi ptr [ %i.el, %.lr.ph.i247 ], [ %i.ei, %bb.ai ]
  %.07.i248 = phi ptr [ %i.ek, %.lr.ph.i247 ], [ %i.eh, %bb.ai ]
  tail call void %i.ej(ptr noundef nonnull %i.ae) #5, !inline_history !73
  %i.ek = getelementptr inbounds nuw i8, ptr %.07.i248, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !65 ; 2 uses
  %.not.i249 = icmp eq ptr %i.el, null
  br i1 %.not.i249, label %.sink.split.sink.split, label %.lr.ph.i247, !llvm.loop !74

bb.aj:                                            ; preds = %a2a_sched_inplace.exit
  %i.em = tail call i32 @NBC_Schedule_request(ptr noundef nonnull %i.ae, ptr noundef %6, ptr noundef %8, i1 noundef zeroext %9, ptr noundef %7, ptr noundef %.1) #5 ; 4 uses
  %.not220 = icmp eq i32 %i.em, 0
  br i1 %.not220, label %bb.ao, label %bb.ak, !prof !8

bb.ak:                                            ; preds = %bb.aj
  %i.en = load i8, ptr @opal_uses_threads, align 1, !tbaa !69, !range !70, !noundef !71
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.al, label %bb.am, !prof !57

bb.al:                                            ; preds = %bb.ak
  %i.ep = atomicrmw volatile add ptr %i.ah, i32 -1 monotonic, align 4
  %i.eq = add i32 %i.ep, -1
  br label %opal_thread_add_fetch_32.exit253

bb.am:                                            ; preds = %bb.ak
  %i.er = load volatile i32, ptr %i.ah, align 8, !tbaa !60
  %i.es = add nsw i32 %i.er, -1
  store volatile i32 %i.es, ptr %i.ah, align 8, !tbaa !60
  %i.et = load volatile i32, ptr %i.ah, align 8, !tbaa !60
  br label %opal_thread_add_fetch_32.exit253

opal_thread_add_fetch_32.exit253:                 ; preds = %bb.al, %bb.am
  %.0.i252 = phi i32 [ %i.eq, %bb.al ], [ %i.et, %bb.am ]
  %i.eu = icmp eq i32 %.0.i252, 0
  br i1 %i.eu, label %bb.an, label %.sink.split

bb.an:                                            ; preds = %opal_thread_add_fetch_32.exit253
  %i.ev = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !72 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !65 ; 2 uses
  %.not6.i254 = icmp eq ptr %i.ey, null
  br i1 %.not6.i254, label %.sink.split.sink.split, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.an, %.lr.ph.i255
  %i.ez = phi ptr [ %i.fb, %.lr.ph.i255 ], [ %i.ey, %bb.an ]
  %.07.i256 = phi ptr [ %i.fa, %.lr.ph.i255 ], [ %i.ex, %bb.an ]
  tail call void %i.ez(ptr noundef nonnull %i.ae) #5, !inline_history !73
  %i.fa = getelementptr inbounds nuw i8, ptr %.07.i256, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !65 ; 2 uses
  %.not.i257 = icmp eq ptr %i.fb, null
  br i1 %.not.i257, label %.sink.split.sink.split, label %.lr.ph.i255, !llvm.loop !74

.sink.split.sink.split:                           ; preds = %.lr.ph.i, %.lr.ph.i239, %.lr.ph.i247, %.lr.ph.i255, %bb.an, %bb.ai, %bb.ae, %bb.n
  %.1190.ph.ph = phi i32 [ %i.dw, %bb.ai ], [ %.5.ph, %bb.ae ], [ %i.av, %bb.n ], [ %.5.ph, %.lr.ph.i239 ], [ %i.dw, %.lr.ph.i247 ], [ %i.em, %.lr.ph.i255 ], [ %i.em, %bb.an ], [ %i.av, %.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.ae) #5
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %opal_thread_add_fetch_32.exit253, %opal_thread_add_fetch_32.exit245, %opal_thread_add_fetch_32.exit237, %opal_thread_add_fetch_32.exit, %bb.h
  %.1190.ph = phi i32 [ %i.av, %opal_thread_add_fetch_32.exit ], [ -2, %bb.h ], [ %.5.ph, %opal_thread_add_fetch_32.exit237 ], [ %i.dw, %opal_thread_add_fetch_32.exit245 ], [ %i.em, %opal_thread_add_fetch_32.exit253 ], [ %.1190.ph.ph, %.sink.split.sink.split ]
  tail call void @free(ptr noundef %.1) #5
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.aj, %opal_datatype_span.exit
  %.1190 = phi i32 [ -2, %opal_datatype_span.exit ], [ 0, %bb.aj ], [ %.1190.ph, %.sink.split ]
  ret i32 %.1190
}

declare i32 @NBC_Start(ptr noundef) local_unnamed_addr #1

declare void @NBC_Return_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_ialltoall_inter(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoall_inter_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext false) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %7, align 8, !tbaa !9
  %i.c = tail call i32 @NBC_Start(ptr noundef %i.b) #5 ; 2 uses
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %7, align 8, !tbaa !9
  tail call void @NBC_Return_handle(ptr noundef %i.d) #5
  store ptr @ompi_request_null, ptr %7, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nbc_alltoall_inter_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ompi_comm_remote_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43
  br label %ompi_comm_remote_size.exit

ompi_comm_remote_size.exit:                       ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 48
  %.val69 = load i64, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr i8, ptr %2, i64 56
  %.val70 = load i64, ptr %i.j, align 8, !tbaa !52
  %i.k = sub nsw i64 %.val70, %.val69
  %i.l = getelementptr i8, ptr %5, i64 48
  %.val = load i64, ptr %i.l, align 8, !tbaa !46
  %i.m = getelementptr i8, ptr %5, i64 56
  %.val68 = load i64, ptr %i.m, align 8, !tbaa !52
  %i.n = sub nsw i64 %.val68, %.val
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 56), align 8, !tbaa !58
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #6 ; 15 uses
  %i.q = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !60
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 32), align 8, !tbaa !61
  %.not.i71 = icmp eq i32 %i.q, %i.r
  br i1 %.not.i71, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ompi_comm_remote_size.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @NBC_Schedule_class) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %ompi_comm_remote_size.exit
  %.not9.i = icmp eq ptr %i.p, null
  br i1 %.not9.i, label %opal_obj_new.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @NBC_Schedule_class, ptr %i.p, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 13 uses
  store volatile i32 1, ptr %i.s, align 8, !tbaa !63
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 40), align 8, !tbaa !64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.u, null
  br i1 %.not6.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.v = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.u, %bb.e ]
  %.07.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.t, %bb.e ]
  tail call void %i.v(ptr noundef nonnull %i.p) #5, !inline_history !66
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65   ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i, !llvm.loop !67

opal_obj_new.exit:                                ; preds = %.lr.ph.i.i, %bb.e
  %i.y = icmp sgt i32 %i.h, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %opal_obj_new.exit
  %i.z = sext i32 %1 to i64                       ; 2 uses
  %i.aa = mul i64 %i.k, %i.z
  %i.ab = sext i32 %4 to i64                      ; 2 uses
  %i.ac = mul i64 %i.n, %i.ab
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !79

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.ad = mul i64 %i.aa, %indvars.iv
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ag = tail call i32 @NBC_Sched_send(ptr noundef %i.ae, i8 noundef signext 0, i64 noundef %i.z, ptr noundef %2, i32 noundef %i.af, ptr noundef nonnull %i.p, i1 noundef zeroext false) #5 ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.ah = mul i64 %i.ac, %indvars.iv
  %i.ai = getelementptr inbounds i8, ptr %3, i64 %i.ah
  %i.aj = tail call i32 @NBC_Sched_recv(ptr noundef %i.ai, i8 noundef signext 0, i64 noundef %i.ab, ptr noundef %5, i32 noundef %i.af, ptr noundef nonnull %i.p, i1 noundef zeroext false) #5 ; 2 uses
  %.not64 = icmp eq i32 %i.aj, 0
  br i1 %.not64, label %bb.f, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1.ph = phi i32 [ %i.aj, %bb.h ], [ %i.ag, %bb.g ] ; 3 uses
  %i.ak = load i8, ptr @opal_uses_threads, align 1, !tbaa !69, !range !70, !noundef !71
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.j, label %bb.k, !prof !57

bb.j:                                             ; preds = %bb.i
  %i.am = atomicrmw volatile add ptr %i.s, i32 -1 monotonic, align 4
  %i.an = add i32 %i.am, -1
  br label %opal_thread_add_fetch_32.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = load volatile i32, ptr %i.s, align 8, !tbaa !60
  %i.ap = add nsw i32 %i.ao, -1
  store volatile i32 %i.ap, ptr %i.s, align 8, !tbaa !60
  %i.aq = load volatile i32, ptr %i.s, align 8, !tbaa !60
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.an, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = icmp eq i32 %.0.i, 0
  br i1 %i.ar, label %bb.l, label %opal_obj_new.exit.thread

bb.l:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !65 ; 2 uses
  %.not6.i = icmp eq ptr %i.av, null
  br i1 %.not6.i, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.av, %bb.l ]
  %.07.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.au, %bb.l ]
  tail call void %i.aw(ptr noundef nonnull %i.p) #5, !inline_history !73
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !65 ; 2 uses
  %.not.i72 = icmp eq ptr %i.ay, null
  br i1 %.not.i72, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.f, %opal_obj_new.exit
  %i.az = tail call i32 @NBC_Sched_commit(ptr noundef nonnull %i.p) #5 ; 4 uses
  %.not66 = icmp eq i32 %i.az, 0
  br i1 %.not66, label %bb.q, label %bb.m, !prof !8

bb.m:                                             ; preds = %._crit_edge
  %i.ba = load i8, ptr @opal_uses_threads, align 1, !tbaa !69, !range !70, !noundef !71
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !57

bb.n:                                             ; preds = %bb.m
  %i.bc = atomicrmw volatile add ptr %i.s, i32 -1 monotonic, align 4
  %i.bd = add i32 %i.bc, -1
  br label %opal_thread_add_fetch_32.exit74

bb.o:                                             ; preds = %bb.m
  %i.be = load volatile i32, ptr %i.s, align 8, !tbaa !60
  %i.bf = add nsw i32 %i.be, -1
  store volatile i32 %i.bf, ptr %i.s, align 8, !tbaa !60
  %i.bg = load volatile i32, ptr %i.s, align 8, !tbaa !60
  br label %opal_thread_add_fetch_32.exit74

opal_thread_add_fetch_32.exit74:                  ; preds = %bb.n, %bb.o
  %.0.i73 = phi i32 [ %i.bd, %bb.n ], [ %i.bg, %bb.o ]
  %i.bh = icmp eq i32 %.0.i73, 0
  br i1 %i.bh, label %bb.p, label %opal_obj_new.exit.thread

bb.p:                                             ; preds = %opal_thread_add_fetch_32.exit74
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !65 ; 2 uses
  %.not6.i75 = icmp eq ptr %i.bl, null
  br i1 %.not6.i75, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %bb.p, %.lr.ph.i76
  %i.bm = phi ptr [ %i.bo, %.lr.ph.i76 ], [ %i.bl, %bb.p ]
  %.07.i77 = phi ptr [ %i.bn, %.lr.ph.i76 ], [ %i.bk, %bb.p ]
  tail call void %i.bm(ptr noundef nonnull %i.p) #5, !inline_history !73
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i77, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !65 ; 2 uses
  %.not.i78 = icmp eq ptr %i.bo, null
  br i1 %.not.i78, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i76, !llvm.loop !74

bb.q:                                             ; preds = %._crit_edge
  %i.bp = tail call i32 @NBC_Schedule_request(ptr noundef nonnull %i.p, ptr noundef %6, ptr noundef %8, i1 noundef zeroext %9, ptr noundef %7, ptr noundef null) #5 ; 4 uses
  %.not67 = icmp eq i32 %i.bp, 0
  br i1 %.not67, label %opal_obj_new.exit.thread, label %bb.r, !prof !8

bb.r:                                             ; preds = %bb.q
  %i.bq = load i8, ptr @opal_uses_threads, align 1, !tbaa !69, !range !70, !noundef !71
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.s, label %bb.t, !prof !57

bb.s:                                             ; preds = %bb.r
  %i.bs = atomicrmw volatile add ptr %i.s, i32 -1 monotonic, align 4
  %i.bt = add i32 %i.bs, -1
  br label %opal_thread_add_fetch_32.exit81

bb.t:                                             ; preds = %bb.r
  %i.bu = load volatile i32, ptr %i.s, align 8, !tbaa !60
  %i.bv = add nsw i32 %i.bu, -1
  store volatile i32 %i.bv, ptr %i.s, align 8, !tbaa !60
  %i.bw = load volatile i32, ptr %i.s, align 8, !tbaa !60
  br label %opal_thread_add_fetch_32.exit81

opal_thread_add_fetch_32.exit81:                  ; preds = %bb.s, %bb.t
  %.0.i80 = phi i32 [ %i.bt, %bb.s ], [ %i.bw, %bb.t ]
  %i.bx = icmp eq i32 %.0.i80, 0
  br i1 %i.bx, label %bb.u, label %opal_obj_new.exit.thread

bb.u:                                             ; preds = %opal_thread_add_fetch_32.exit81
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !72 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65 ; 2 uses
  %.not6.i82 = icmp eq ptr %i.cb, null
  br i1 %.not6.i82, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %bb.u, %.lr.ph.i83
  %i.cc = phi ptr [ %i.ce, %.lr.ph.i83 ], [ %i.cb, %bb.u ]
  %.07.i84 = phi ptr [ %i.cd, %.lr.ph.i83 ], [ %i.ca, %bb.u ]
  tail call void %i.cc(ptr noundef nonnull %i.p) #5, !inline_history !73
  %i.cd = getelementptr inbounds nuw i8, ptr %.07.i84, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !65 ; 2 uses
  %.not.i85 = icmp eq ptr %i.ce, null
  br i1 %.not.i85, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i83, !llvm.loop !74

opal_obj_new.exit.thread.sink.split:              ; preds = %.lr.ph.i, %.lr.ph.i76, %.lr.ph.i83, %bb.u, %bb.p, %bb.l
  %.054.ph = phi i32 [ %i.az, %bb.p ], [ %.1.ph, %bb.l ], [ %i.bp, %.lr.ph.i83 ], [ %i.az, %.lr.ph.i76 ], [ %i.bp, %bb.u ], [ %.1.ph, %.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.p) #5
  br label %opal_obj_new.exit.thread

opal_obj_new.exit.thread:                         ; preds = %opal_obj_new.exit.thread.sink.split, %bb.d, %bb.q, %opal_thread_add_fetch_32.exit81, %opal_thread_add_fetch_32.exit74, %opal_thread_add_fetch_32.exit
  %.054 = phi i32 [ %i.bp, %opal_thread_add_fetch_32.exit81 ], [ %i.az, %opal_thread_add_fetch_32.exit74 ], [ %.1.ph, %opal_thread_add_fetch_32.exit ], [ 0, %bb.q ], [ -2, %bb.d ], [ %.054.ph, %opal_obj_new.exit.thread.sink.split ]
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_alltoall_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoall_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %8, ptr noundef %9, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_alltoall_inter_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoall_inter_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %8, ptr noundef %9, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @NBC_Sched_copy(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @NBC_Sched_commit(ptr noundef) local_unnamed_addr #1

declare i32 @NBC_Schedule_request(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #1

declare i32 @NBC_Sched_send(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @NBC_Sched_recv(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS26ompi_coll_libnbc_request_t", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS14ompi_request_t", !11, i64 0}
!14 = !{!15, !5, i64 220}
!15 = !{!"ompi_communicator_t", !16, i64 0, !24, i64 96, !25, i64 160, !26, i64 168, !27, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !28, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !29, i64 264, !29, i64 272, !30, i64 280, !31, i64 288, !32, i64 296, !33, i64 304, !35, i64 312, !5, i64 320, !36, i64 328, !37, i64 336, !38, i64 344, !39, i64 352, !40, i64 360, !5, i64 368, !5, i64 372, !41, i64 376, !41, i64 377, !41, i64 378}
!16 = !{!"opal_infosubscriber_t", !17, i64 0, !19, i64 16, !23, i64 88}
!17 = !{!"opal_object_t", !18, i64 0, !5, i64 8}
!18 = !{!"p1 _ZTS12opal_class_t", !11, i64 0}
!19 = !{!"opal_hash_table_t", !17, i64 0, !20, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !22, i64 64}
!20 = !{!"p1 _ZTS19opal_hash_element_t", !11, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!"p1 _ZTS24opal_hash_type_methods_t", !11, i64 0}
!23 = !{!"p1 _ZTS11opal_info_t", !11, i64 0}
!24 = !{!"opal_mutex_t", !17, i64 0, !6, i64 16, !5, i64 56}
!25 = !{!"p1 omnipotent char", !11, i64 0}
!26 = !{!"ompi_comm_extended_cid_t", !21, i64 0, !6, i64 8}
!27 = !{!"ompi_comm_extended_cid_block_t", !26, i64 0, !21, i64 16, !6, i64 24, !6, i64 25}
!28 = !{!"p1 int", !11, i64 0}
!29 = !{!"p1 _ZTS12ompi_group_t", !11, i64 0}
!30 = !{!"p1 _ZTS19ompi_communicator_t", !11, i64 0}
!31 = !{!"p1 _ZTS17opal_hash_table_t", !11, i64 0}
!32 = !{!"p1 _ZTS22mca_topo_base_module_t", !11, i64 0}
!33 = !{!"p2 _ZTS20ompi_peruse_handle_t", !34, i64 0}
!34 = !{!"any p2 pointer", !11, i64 0}
!35 = !{!"p1 _ZTS17ompi_errhandler_t", !11, i64 0}
!36 = !{!"p1 _ZTS14mca_pml_comm_t", !11, i64 0}
!37 = !{!"p1 _ZTS14mca_mtl_comm_t", !11, i64 0}
!38 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !11, i64 0}
!39 = !{!"p1 _ZTS15ompi_instance_t", !11, i64 0}
!40 = !{!"p1 _ZTS13opal_object_t", !11, i64 0}
!41 = !{!"_Bool", !6, i64 0}
!42 = !{!15, !29, i64 264}
!43 = !{!44, !5, i64 16}
!44 = !{!"ompi_group_t", !17, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !45, i64 32, !5, i64 40, !29, i64 48, !6, i64 56, !39, i64 72}
!45 = !{!"p2 _ZTS11ompi_proc_t", !34, i64 0}
!46 = !{!47, !21, i64 48}
!47 = !{!"opal_datatype_t", !17, i64 0, !48, i64 16, !48, i64 18, !5, i64 20, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !5, i64 72, !5, i64 76, !6, i64 80, !49, i64 144, !49, i64 168, !51, i64 192}
!48 = !{!"short", !6, i64 0}
!49 = !{!"dt_type_desc_t", !21, i64 0, !21, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTS12dt_elem_desc", !11, i64 0}
!51 = !{!"p1 long", !11, i64 0}
!52 = !{!47, !21, i64 56}
!53 = !{!47, !21, i64 24}
!54 = !{!"branch_weights", i32 2002, i32 2000}
!55 = !{!47, !21, i64 32}
!56 = !{!47, !21, i64 40}
!57 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!58 = !{!59, !21, i64 56}
!59 = !{!"opal_class_t", !25, i64 0, !18, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !5, i64 36, !34, i64 40, !34, i64 48, !21, i64 56}
!60 = !{!5, !5, i64 0}
!61 = !{!59, !5, i64 32}
!62 = !{!17, !18, i64 0}
!63 = !{!17, !5, i64 8}
!64 = !{!59, !34, i64 40}
!65 = !{!11, !11, i64 0}
!66 = distinct !{null, null}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!41, !41, i64 0}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!59, !34, i64 48}
!73 = distinct !{null}
!74 = distinct !{!74, !68}
!75 = distinct !{!75, !68}
!76 = distinct !{!76, !68}
!77 = !{!15, !5, i64 224}
!78 = !{!15, !29, i64 272}
!79 = distinct !{!79, !68}
end_hunk_0
