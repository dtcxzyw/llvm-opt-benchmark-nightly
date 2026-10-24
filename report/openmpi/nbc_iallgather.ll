Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/nbc_iallgather?download=true
inline.NumInlined: 33
inline.NumDeleted: 16
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
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@ompi_request_null = external global %struct.ompi_predefined_request_t, align 8
@libnbc_iallgather_algorithm = external local_unnamed_addr global i32, align 4
@NBC_Schedule_class = external global %struct.opal_class_t, align 8
@.str = private unnamed_addr constant [41 x i8] c"MPI Error in ompi_datatype_sndrcv() (%i)\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@ompi_request_empty = external global %struct.ompi_request_t, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_uses_threads = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_iallgather(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_allgather_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext false) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %7, align 8, !tbaa !15
  %i.c = tail call i32 @NBC_Start(ptr noundef %i.b) #10 ; 2 uses
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %7, align 8, !tbaa !15
  tail call void @NBC_Return_handle(ptr noundef %i.d) #10
  store ptr @ompi_request_null, ptr %7, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nbc_allgather_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, %0
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %3, inttoptr (i64 1 to ptr)  ; 2 uses
  %spec.select = select i1 %i.d, ptr %0, ptr %3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0110 = phi ptr [ %spec.select, %bb.c ], [ %3, %bb.a ], [ %3, %bb.b ] ; 6 uses
  %.0107 = phi ptr [ %0, %bb.c ], [ %0, %bb.a ], [ %3, %bb.b ] ; 2 uses
  %i.e = phi i1 [ %i.d, %bb.c ], [ true, %bb.a ], [ true, %bb.b ] ; 4 uses
  %i.f = getelementptr i8, ptr %6, i64 220
  %.val = load i32, ptr %i.f, align 4, !tbaa !71  ; 7 uses
  %i.g = getelementptr i8, ptr %6, i64 264
  %.val134 = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.h = getelementptr i8, ptr %.val134, i64 16
  %.val134.val = load i32, ptr %i.h, align 8, !tbaa !47 ; 6 uses
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.val134.val)
  %.not125 = icmp samesign ugt i32 %i.i, 1
  %i.j = load i32, ptr @libnbc_iallgather_algorithm, align 4, !tbaa !48
  %i.k = icmp ne i32 %i.j, 2
  %.0.not = select i1 %i.k, i1 true, i1 %.not125
  %i.l = getelementptr i8, ptr %5, i64 48         ; 3 uses
  %.val135 = load i64, ptr %i.l, align 8, !tbaa !54
  %i.m = getelementptr i8, ptr %5, i64 56         ; 3 uses
  %.val136 = load i64, ptr %i.m, align 8, !tbaa !55
  %i.n = sub nsw i64 %.val136, %.val135           ; 2 uses
  %brmerge = or i1 %9, %i.e
  %.mux = select i1 %i.e, ptr %5, ptr %2
  %.mux201 = select i1 %i.e, i32 %4, i32 %1
  br i1 %brmerge, label %.thread166, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sext i32 %.val to i64
  %i.p = sext i32 %4 to i64
  %i.q = mul nsw i64 %i.o, %i.p
  %i.r = mul i64 %i.q, %i.n
  %i.s = getelementptr inbounds i8, ptr %.0110, i64 %i.r
  %i.t = tail call i32 @ompi_datatype_sndrcv(ptr noundef %.0107, i32 noundef %1, ptr noundef %2, ptr noundef %i.s, i32 noundef %4, ptr noundef nonnull %5) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %.thread166, label %NBC_Copy.exit

NBC_Copy.exit:                                    ; preds = %bb.e
  tail call void (ptr, ...) @NBC_Error(ptr nonnull poison, i32 noundef %i.t)
  br label %nbc_get_noop_request.exit

.thread166:                                       ; preds = %bb.d, %bb.e
  %.0109 = phi ptr [ %.mux, %bb.d ], [ %2, %bb.e ]
  %.0108 = phi i32 [ %.mux201, %bb.d ], [ %1, %bb.e ]
  %i.u = icmp eq i32 %.val134.val, 1
  %.not = xor i1 %9, true
  %or.cond6 = or i1 %i.e, %.not                   ; 2 uses
  %or.cond133 = and i1 %or.cond6, %i.u
  br i1 %or.cond133, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.thread166
  br i1 %9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @ompi_request_persistent_noop_create(ptr noundef %7) #10
  br label %nbc_get_noop_request.exit

bb.h:                                             ; preds = %bb.f
  store ptr @ompi_request_empty, ptr %7, align 8, !tbaa !17
  br label %nbc_get_noop_request.exit

bb.i:                                             ; preds = %.thread166
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 56), align 8, !tbaa !57
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #11 ; 23 uses
  %i.y = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !48
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 32), align 8, !tbaa !58
  %.not.i137 = icmp eq i32 %i.y, %i.z
  br i1 %.not.i137, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @opal_class_initialize(ptr noundef nonnull @NBC_Schedule_class) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not9.i = icmp eq ptr %i.x, null
  br i1 %.not9.i, label %nbc_get_noop_request.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @NBC_Schedule_class, ptr %i.x, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 17 uses
  store volatile i32 1, ptr %i.aa, align 8, !tbaa !60
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 40), align 8, !tbaa !61 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ac, null
  br i1 %.not6.i.i, label %.loopexit175, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.ac, %bb.l ]
  %.07.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.ab, %bb.l ]
  tail call void %i.ad(ptr noundef nonnull %i.x) #10, !inline_history !0
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %.loopexit175, label %.lr.ph.i.i, !llvm.loop !1

.loopexit175:                                     ; preds = %.lr.ph.i.i, %bb.l
  br i1 %or.cond6, label %bb.r, label %bb.m

bb.m:                                             ; preds = %.loopexit175
  %i.ag = sext i32 %.val to i64
  %i.ah = sext i32 %4 to i64                      ; 2 uses
  %i.ai = mul nsw i64 %i.ag, %i.ah
  %i.aj = mul i64 %i.ai, %i.n
  %i.ak = getelementptr inbounds i8, ptr %.0110, i64 %i.aj
  %i.al = sext i32 %.0108 to i64
  %i.am = tail call i32 @NBC_Sched_copy(ptr noundef %.0107, i8 noundef signext 0, i64 noundef %i.al, ptr noundef %.0109, ptr noundef %i.ak, i8 noundef signext 0, i64 noundef %i.ah, ptr noundef nonnull %5, ptr noundef nonnull %i.x, i1 noundef zeroext true) #10 ; 3 uses
  %.not127 = icmp eq i32 %i.am, 0
  br i1 %.not127, label %bb.r, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.an = load i8, ptr @opal_uses_threads, align 1, !tbaa !64, !range !65, !noundef !66
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.o, label %bb.p, !prof !67

bb.o:                                             ; preds = %bb.n
  %i.ap = atomicrmw volatile add ptr %i.aa, i32 -1 monotonic, align 4
  %i.aq = add i32 %i.ap, -1
  br label %opal_thread_add_fetch_32.exit

bb.p:                                             ; preds = %bb.n
  %i.ar = load volatile i32, ptr %i.aa, align 8, !tbaa !48
  %i.as = add nsw i32 %i.ar, -1
  store volatile i32 %i.as, ptr %i.aa, align 8, !tbaa !48
  %i.at = load volatile i32, ptr %i.aa, align 8, !tbaa !48
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.o, %bb.p
  %.0.i138 = phi i32 [ %i.aq, %bb.o ], [ %i.at, %bb.p ]
  %i.au = icmp eq i32 %.0.i138, 0
  br i1 %i.au, label %bb.q, label %nbc_get_noop_request.exit

bb.q:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !68 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62 ; 2 uses
  %.not6.i = icmp eq ptr %i.ay, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %i.az = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.ay, %bb.q ]
  %.07.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.ax, %bb.q ]
  tail call void %i.az(ptr noundef nonnull %i.x) #10, !inline_history !2
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !62 ; 2 uses
  %.not.i139 = icmp eq ptr %i.bb, null
  br i1 %.not.i139, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.q
  tail call void @free(ptr noundef nonnull %i.x) #10
  br label %nbc_get_noop_request.exit

bb.r:                                             ; preds = %bb.m, %.loopexit175
  br i1 %.0.not, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !54
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !55
  %i.be = sub nsw i64 %i.bd, %i.bc
  %i.bf = sext i32 %.val to i64
  %i.bg = sext i32 %4 to i64                      ; 3 uses
  %i.bh = mul i64 %i.be, %i.bg                    ; 2 uses
  %i.bi = mul i64 %i.bh, %i.bf
  %i.bj = getelementptr inbounds i8, ptr %.0110, i64 %i.bi
  %i.bk = icmp sgt i32 %.val134.val, 0
  br i1 %i.bk, label %.lr.ph.i140, label %.loopexit

.lr.ph.i140:                                      ; preds = %bb.s
  %i.bl = zext i32 %.val to i64
  %wide.trip.count.i = zext nneg i32 %.val134.val to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i140
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i140 ], [ %indvars.iv.next.i, %bb.w ] ; 4 uses
  %.not.i141 = icmp eq i64 %indvars.iv.i, %i.bl
  br i1 %.not.i141, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = mul i64 %indvars.iv.i, %i.bh
  %i.bn = getelementptr inbounds i8, ptr %.0110, i64 %i.bm
  %i.bo = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.bp = tail call i32 @NBC_Sched_recv(ptr noundef %i.bn, i8 noundef signext 0, i64 noundef %i.bg, ptr noundef %5, i32 noundef %i.bo, ptr noundef nonnull %i.x, i1 noundef zeroext false) #10 ; 2 uses
  %.not34.i = icmp eq i32 %i.bp, 0
  br i1 %.not34.i, label %bb.v, label %allgather_sched_linear.exit, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.bq = tail call i32 @NBC_Sched_send(ptr noundef %i.bj, i8 noundef signext 0, i64 noundef %i.bg, ptr noundef %5, i32 noundef %i.bo, ptr noundef nonnull %i.x, i1 noundef zeroext false) #10 ; 2 uses
  %.not35.i = icmp eq i32 %i.bq, 0
  br i1 %.not35.i, label %bb.w, label %allgather_sched_linear.exit

bb.w:                                             ; preds = %bb.v, %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.t, !llvm.loop !69

bb.x:                                             ; preds = %bb.r
  %i.br = icmp sgt i32 %.val134.val, 1
  br i1 %i.br, label %.lr.ph.i142, label %.loopexit

.lr.ph.i142:                                      ; preds = %bb.x
  %i.bs = load i64, ptr %i.m, align 8, !tbaa !55
  %i.bt = load i64, ptr %i.l, align 8, !tbaa !54
  %i.bu = sub nsw i64 %i.bs, %i.bt
  %i.bv = sext i32 %4 to i64                      ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv                    ; 2 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.aa
  %i.bx = shl i32 %.0405.i, 1                     ; 2 uses
  %.142.i = select i1 %i.cg, i32 %.0414.i, i32 %i.ch
  %i.by = icmp slt i32 %i.bx, %.val134.val
  br i1 %i.by, label %bb.z, label %.loopexit, !llvm.loop !70

bb.z:                                             ; preds = %bb.y, %.lr.ph.i142
  %.0405.i = phi i32 [ 1, %.lr.ph.i142 ], [ %i.bx, %bb.y ] ; 5 uses
  %.0414.i = phi i32 [ %.val, %.lr.ph.i142 ], [ %.142.i, %bb.y ] ; 4 uses
  %i.bz = xor i32 %.0405.i, %.val                 ; 3 uses
  %i.ca = sext i32 %.0414.i to i64
  %i.cb = mul i64 %i.bw, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %.0110, i64 %i.cb
  %i.cd = sext i32 %.0405.i to i64
  %i.ce = mul nsw i64 %i.cd, %i.bv                ; 2 uses
  %i.cf = tail call i32 @NBC_Sched_send(ptr noundef %i.cc, i8 noundef signext 0, i64 noundef %i.ce, ptr noundef %5, i32 noundef %i.bz, ptr noundef nonnull %i.x, i1 noundef zeroext false) #10 ; 2 uses
  %.not.i143 = icmp eq i32 %i.cf, 0
  br i1 %.not.i143, label %bb.aa, label %allgather_sched_linear.exit, !prof !12

bb.aa:                                            ; preds = %bb.z
  %i.cg = icmp slt i32 %.val, %i.bz               ; 2 uses
  %i.ch = sub nsw i32 %.0414.i, %.0405.i          ; 2 uses
  %i.ci = add nsw i32 %.0414.i, %.0405.i
  %.pn53.in.i = select i1 %i.cg, i32 %i.ci, i32 %i.ch
  %.pn53.i = sext i32 %.pn53.in.i to i64
  %.pn.i = mul i64 %i.bw, %.pn53.i
  %.043.i = getelementptr inbounds i8, ptr %.0110, i64 %.pn.i
  %i.cj = tail call i32 @NBC_Sched_recv(ptr noundef %.043.i, i8 noundef signext 0, i64 noundef %i.ce, ptr noundef %5, i32 noundef %i.bz, ptr noundef nonnull %i.x, i1 noundef zeroext true) #10 ; 2 uses
  %.not54.i = icmp eq i32 %i.cj, 0
  br i1 %.not54.i, label %bb.y, label %allgather_sched_linear.exit

allgather_sched_linear.exit:                      ; preds = %bb.z, %bb.aa, %bb.u, %bb.v
  %.2 = phi i32 [ %i.bq, %bb.v ], [ %i.bp, %bb.u ], [ %i.cf, %bb.z ], [ %i.cj, %bb.aa ] ; 2 uses
  %i.ck = load i8, ptr @opal_uses_threads, align 1, !tbaa !64, !range !65, !noundef !66
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ab, label %bb.ac, !prof !67

bb.ab:                                            ; preds = %allgather_sched_linear.exit
  %i.cm = atomicrmw volatile add ptr %i.aa, i32 -1 monotonic, align 4
  %i.cn = add i32 %i.cm, -1
  br label %opal_thread_add_fetch_32.exit145

bb.ac:                                            ; preds = %allgather_sched_linear.exit
  %i.co = load volatile i32, ptr %i.aa, align 8, !tbaa !48
  %i.cp = add nsw i32 %i.co, -1
  store volatile i32 %i.cp, ptr %i.aa, align 8, !tbaa !48
  %i.cq = load volatile i32, ptr %i.aa, align 8, !tbaa !48
  br label %opal_thread_add_fetch_32.exit145

opal_thread_add_fetch_32.exit145:                 ; preds = %bb.ab, %bb.ac
  %.0.i144 = phi i32 [ %i.cn, %bb.ab ], [ %i.cq, %bb.ac ]
  %i.cr = icmp eq i32 %.0.i144, 0
  br i1 %i.cr, label %bb.ad, label %nbc_get_noop_request.exit

bb.ad:                                            ; preds = %opal_thread_add_fetch_32.exit145
  %i.cs = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !68 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !62 ; 2 uses
  %.not6.i146 = icmp eq ptr %i.cv, null
  br i1 %.not6.i146, label %opal_obj_run_destructors.exit150, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %bb.ad, %.lr.ph.i147
  %i.cw = phi ptr [ %i.cy, %.lr.ph.i147 ], [ %i.cv, %bb.ad ]
  %.07.i148 = phi ptr [ %i.cx, %.lr.ph.i147 ], [ %i.cu, %bb.ad ]
  tail call void %i.cw(ptr noundef nonnull %i.x) #10, !inline_history !2
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i148, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !62 ; 2 uses
  %.not.i149 = icmp eq ptr %i.cy, null
  br i1 %.not.i149, label %opal_obj_run_destructors.exit150, label %.lr.ph.i147, !llvm.loop !3

opal_obj_run_destructors.exit150:                 ; preds = %.lr.ph.i147, %bb.ad
  tail call void @free(ptr noundef nonnull %i.x) #10
  br label %nbc_get_noop_request.exit

.loopexit:                                        ; preds = %bb.y, %bb.w, %bb.s, %bb.x
  %i.cz = tail call i32 @NBC_Sched_commit(ptr noundef nonnull %i.x) #10 ; 3 uses
  %.not129 = icmp eq i32 %i.cz, 0
  br i1 %.not129, label %bb.ai, label %bb.ae, !prof !12

bb.ae:                                            ; preds = %.loopexit
  %i.da = load i8, ptr @opal_uses_threads, align 1, !tbaa !64, !range !65, !noundef !66
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.af, label %bb.ag, !prof !67

bb.af:                                            ; preds = %bb.ae
  %i.dc = atomicrmw volatile add ptr %i.aa, i32 -1 monotonic, align 4
  %i.dd = add i32 %i.dc, -1
  br label %opal_thread_add_fetch_32.exit152

bb.ag:                                            ; preds = %bb.ae
  %i.de = load volatile i32, ptr %i.aa, align 8, !tbaa !48
  %i.df = add nsw i32 %i.de, -1
  store volatile i32 %i.df, ptr %i.aa, align 8, !tbaa !48
  %i.dg = load volatile i32, ptr %i.aa, align 8, !tbaa !48
  br label %opal_thread_add_fetch_32.exit152

opal_thread_add_fetch_32.exit152:                 ; preds = %bb.af, %bb.ag
  %.0.i151 = phi i32 [ %i.dd, %bb.af ], [ %i.dg, %bb.ag ]
end_hunk_0
