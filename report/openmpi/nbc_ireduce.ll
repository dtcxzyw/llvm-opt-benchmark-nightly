Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/nbc_ireduce?download=true
inline.NumInlined: 42
inline.NumDeleted: 25
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
@libnbc_ireduce_algorithm = external local_unnamed_addr global i32, align 4
@NBC_Schedule_class = external global %struct.opal_class_t, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"MPI Error in ompi_datatype_sndrcv() (%i)\00", align 1
@ompi_request_empty = external global %struct.ompi_request_t, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_uses_threads = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_ireduce(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_reduce_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext false) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %7, align 8, !tbaa !9
  %i.c = tail call i32 @NBC_Start(ptr noundef %i.b) #10 ; 2 uses
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %7, align 8, !tbaa !9
  tail call void @NBC_Return_handle(ptr noundef %i.d) #10
  store ptr @ompi_request_null, ptr %7, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nbc_reduce_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.0151 = phi ptr [ %1, %bb.c ], [ %1, %bb.a ], [ %0, %bb.d ], [ %1, %bb.b ] ; 9 uses
  %.0150 = phi ptr [ %0, %bb.c ], [ %0, %bb.a ], [ %0, %bb.d ], [ %1, %bb.b ] ; 9 uses
  %.not164 = phi i1 [ %9, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.b ]
  %.not169 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.b ]
  %i.e = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ true, %bb.d ], [ true, %bb.b ]
  %.0146 = phi i8 [ 0, %bb.c ], [ 1, %bb.a ], [ 1, %bb.d ], [ 1, %bb.b ]
  %i.f = getelementptr i8, ptr %6, i64 220
  %.val = load i32, ptr %i.f, align 4, !tbaa !15  ; 16 uses
  %i.g = getelementptr i8, ptr %6, i64 264
  %.val175 = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.h = getelementptr i8, ptr %.val175, i64 16
  %.val175.val = load i32, ptr %i.h, align 8, !tbaa !44 ; 11 uses
  %i.i = getelementptr i8, ptr %3, i64 48         ; 2 uses
  %.val176 = load i64, ptr %i.i, align 8, !tbaa !47
  %i.j = getelementptr i8, ptr %3, i64 56         ; 2 uses
  %.val177 = load i64, ptr %i.j, align 8, !tbaa !53
  %i.k = sub nsw i64 %.val177, %.val176           ; 2 uses
  %i.l = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %.val178 = load i64, ptr %i.l, align 8, !tbaa !54 ; 3 uses
  %i.m = icmp ne i32 %.val175.val, 1              ; 2 uses
  %brmerge = or i1 %.not164, %i.m
  br i1 %brmerge, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not169, label %bb.g, label %NBC_Copy.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @ompi_datatype_sndrcv(ptr noundef %.0150, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %.0151, i32 noundef %2, ptr noundef nonnull %3) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %NBC_Copy.exit.thread, label %NBC_Copy.exit

NBC_Copy.exit:                                    ; preds = %bb.g
  tail call void (ptr, ...) @NBC_Error(ptr nonnull poison, i32 noundef %i.n)
  br label %nbc_get_noop_request.exit

NBC_Copy.exit.thread:                             ; preds = %bb.g, %bb.f
  br i1 %9, label %bb.h, label %bb.i

bb.h:                                             ; preds = %NBC_Copy.exit.thread
  %i.o = tail call i32 @ompi_request_persistent_noop_create(ptr noundef %7) #10
  br label %nbc_get_noop_request.exit

bb.i:                                             ; preds = %NBC_Copy.exit.thread
  store ptr @ompi_request_empty, ptr %7, align 8, !tbaa !13
  br label %nbc_get_noop_request.exit

bb.j:                                             ; preds = %bb.e
  %i.p = sext i32 %2 to i64                       ; 18 uses
  %i.q = icmp eq i64 %.val178, 0
  %i.r = icmp eq i32 %2, 0                        ; 3 uses
  %or.cond.i = or i1 %i.r, %i.q
  br i1 %or.cond.i, label %opal_datatype_span.exit, label %bb.k, !prof !55

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !56   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !57
  %i.w = add nsw i64 %i.p, -1
  %i.x = mul i64 %i.k, %i.w
  %i.y = sub i64 %i.x, %i.t
  %i.z = add i64 %i.y, %i.v
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %bb.j, %bb.k
  %.0 = phi i64 [ %i.t, %bb.k ], [ 0, %bb.j ]
  %.0.i183 = phi i64 [ %i.z, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.val175.val, i1 false)
  %narrow.i = sub nuw nsw i32 32, %i.aa
  %i.ab = shl nuw i32 1, %narrow.i
  %i.ac = ashr i32 %i.ab, 1                       ; 2 uses
  %i.ad = load i32, ptr @libnbc_ireduce_algorithm, align 4, !tbaa !58
  switch i32 %i.ad, label %.thread231 [
    i32 0, label %bb.l
    i32 3, label %bb.n
    i32 2, label %.thread
  ]

bb.l:                                             ; preds = %opal_datatype_span.exit
  %i.ae = getelementptr i8, ptr %4, i64 84
  %.val181 = load i32, ptr %i.ae, align 4, !tbaa !59
  %i.af = and i32 %.val181, 64                    ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  %i.ah = icmp slt i32 %.val175.val, 3
  %or.cond6.not249 = or i1 %i.ah, %i.ag
  %.not165 = icmp slt i32 %2, %i.ac
  %or.cond172 = select i1 %or.cond6.not249, i1 true, i1 %.not165
  br i1 %or.cond172, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp sgt i32 %.val175.val, 4
  %i.aj = mul i64 %.val178, %i.p
  %i.ak = icmp ult i64 %i.aj, 65536
  %or.cond243 = select i1 %i.ai, i1 true, i1 %i.ak
  br i1 %or.cond243, label %.thread, label %bb.o

bb.n:                                             ; preds = %opal_datatype_span.exit
  %i.al = getelementptr i8, ptr %4, i64 84
  %.val179 = load i32, ptr %i.al, align 4, !tbaa !59
  %i.am = and i32 %.val179, 64
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = icmp slt i32 %.val175.val, 3
  %or.cond8.not246 = or i1 %i.ao, %i.an
  %.not = icmp slt i32 %2, %i.ac
  %or.cond173 = select i1 %or.cond8.not246, i1 true, i1 %.not
  br i1 %or.cond173, label %.thread231, label %.thread

bb.o:                                             ; preds = %bb.m
  %.lobit = lshr exact i32 %i.af, 6
  br i1 %i.ag, label %.thread, label %.thread231

.thread:                                          ; preds = %opal_datatype_span.exit, %bb.m, %bb.n, %bb.l, %bb.o
  %.0143229 = phi i32 [ 0, %bb.o ], [ 0, %opal_datatype_span.exit ], [ 2, %bb.l ], [ 0, %bb.m ], [ 2, %bb.n ] ; 2 uses
  %i.ap = icmp eq i32 %.val, %5
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread
  %i.aq = tail call noalias ptr @malloc(i64 noundef %.0.i183) #11
  br label %bb.r

bb.q:                                             ; preds = %.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !62
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = add i64 %.0.i183, -1
  %i.av = add i64 %i.au, %i.at
  %i.aw = sub nsw i64 0, %i.at
  %i.ax = and i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = add nsw i64 %i.ax, %.0.i183
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #11
  %i.ba = inttoptr i64 %i.ax to ptr
  %i.bb = sub i64 0, %.0
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  br label %bb.r

.thread231:                                       ; preds = %bb.n, %opal_datatype_span.exit, %bb.o
  %.0143234 = phi i32 [ %.lobit, %bb.o ], [ 1, %bb.n ], [ 1, %opal_datatype_span.exit ]
  %i.bd = tail call noalias ptr @malloc(i64 noundef %.0.i183) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.thread231
  %.0143228 = phi i32 [ %.0143229, %bb.p ], [ %.0143229, %bb.q ], [ %.0143234, %.thread231 ]
  %.0147 = phi ptr [ %.0151, %bb.p ], [ %i.bc, %bb.q ], [ null, %.thread231 ] ; 19 uses
  %.0145 = phi ptr [ %i.aq, %bb.p ], [ %i.az, %bb.q ], [ %i.bd, %.thread231 ] ; 11 uses
  %.0144 = phi i8 [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %.thread231 ] ; 19 uses
  %i.be = icmp eq ptr %.0145, null
  br i1 %i.be, label %nbc_get_noop_request.exit, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 56), align 8, !tbaa !64
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.bf) #11 ; 54 uses
  %i.bh = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !58
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 32), align 8, !tbaa !66
  %.not.i184 = icmp eq i32 %i.bh, %i.bi
  br i1 %.not.i184, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @opal_class_initialize(ptr noundef nonnull @NBC_Schedule_class) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not9.i = icmp eq ptr %i.bg, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr @NBC_Schedule_class, ptr %i.bg, align 8, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 13 uses
  store volatile i32 1, ptr %i.bj, align 8, !tbaa !68
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 40), align 8, !tbaa !69 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !70 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bl, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.i
  %i.bm = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %i.bl, %bb.v ]
  %.07.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %i.bk, %bb.v ]
  tail call void %i.bm(ptr noundef nonnull %i.bg) #10, !inline_history !71
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !70 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !72

opal_obj_new.exit:                                ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %.0145) #10
  br label %nbc_get_noop_request.exit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.v
  br i1 %i.m, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.bp = tail call i32 @NBC_Sched_copy(ptr noundef %.0150, i8 noundef signext 0, i64 noundef %i.p, ptr noundef nonnull %3, ptr noundef %.0151, i8 noundef signext 0, i64 noundef %i.p, ptr noundef nonnull %3, ptr noundef nonnull %i.bg, i1 noundef zeroext false) #10
  br label %red_sched_binomial.exit

bb.x:                                             ; preds = %.loopexit
  switch i32 %.0143228, label %default.unreachable369 [
    i32 0, label %bb.y
    i32 1, label %bb.aw
    i32 2, label %bb.bm
  ]

bb.y:                                             ; preds = %bb.x
  %i.bq = load i64, ptr %i.l, align 8, !tbaa !54
  %i.br = icmp eq i64 %i.bq, 0
  %or.cond.i.i = or i1 %i.r, %i.br
  br i1 %or.cond.i.i, label %opal_datatype_span.exit.i, label %bb.z, !prof !55

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !56
  br label %opal_datatype_span.exit.i

opal_datatype_span.exit.i:                        ; preds = %bb.z, %bb.y
  %.0171.i = phi i64 [ %i.bt, %bb.z ], [ 0, %bb.y ]
  %i.bu = getelementptr i8, ptr %4, i64 84
  %.val.i = load i32, ptr %i.bu, align 4, !tbaa !59
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %opal_datatype_span.exit.i
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %bb.aa ], [ 1, %opal_datatype_span.exit.i ] ; 3 uses
  %.0.i169.i = phi i32 [ %i.bx, %bb.aa ], [ 0, %opal_datatype_span.exit.i ] ; 4 uses
  %i.bv = shl nuw i32 1, %.0.i169.i
  %i.bw = icmp slt i32 %i.bv, %.val175.val
  %i.bx = add nuw nsw i32 %.0.i169.i, 1
  %indvars.iv.next.i = add nuw i32 %indvars.iv.i, 1
  br i1 %i.bw, label %bb.aa, label %ceil_of_log2.exit.i, !llvm.loop !74

ceil_of_log2.exit.i:                              ; preds = %bb.aa
  %i.by = and i32 %.val.i, 64
  %.not185.i = icmp eq i32 %i.by, 0
  %..i = select i1 %.not185.i, i32 0, i32 %5      ; 10 uses
  %i.bz = icmp eq i32 %.val, 0                    ; 2 uses
  %.0144.i = select i1 %i.bz, i32 %..i, i32 %.val
  %i.ca = icmp eq i32 %.val, %..i
  %.1145.i = select i1 %i.ca, i32 0, i32 %.0144.i ; 5 uses
  %.not.i185 = icmp eq i32 %.val, %5              ; 2 uses
  %.0151.i = select i1 %.not.i185, i8 %.0146, i8 0 ; 3 uses
  %i.cb = and i32 %.0.i169.i, 1
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = sub i64 0, %.0171.i                     ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr               ; 4 uses
  br i1 %i.cc, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %ceil_of_log2.exit.i
  %.not159.i = icmp eq i8 %.0151.i, 0
  br i1 %.not159.i, label %.lr.ph.thread.i, label %bb.ac

.lr.ph.thread.i:                                  ; preds = %bb.ab
  %.0126246.i = zext nneg i8 %.0144 to i32
  br label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i, %.lr.ph.thread.i
  %.1123198.i.ph = phi i32 [ 1, %.lr.ph.thread.i ], [ %i.ch, %.lr.ph.i ]
  %.1127197.i.ph = phi i32 [ %.0126246.i, %.lr.ph.thread.i ], [ 1, %.lr.ph.i ]
  %.1131196.i.ph = phi ptr [ %i.ce, %.lr.ph.thread.i ], [ %.0147, %.lr.ph.i ]
  %.1135195.i.ph = phi ptr [ %.0147, %.lr.ph.thread.i ], [ %i.ce, %.lr.ph.i ]
  br label %.lr.ph.split.i

bb.ac:                                            ; preds = %bb.ab
  %i.cf = getelementptr inbounds i8, ptr %.0145, i64 %i.cd
  %i.cg = tail call i32 @NBC_Sched_copy(ptr noundef %.0147, i8 noundef signext 0, i64 noundef %i.p, ptr noundef nonnull %3, ptr noundef nonnull %i.cf, i8 noundef signext 0, i64 noundef %i.p, ptr noundef nonnull %3, ptr noundef nonnull %i.bg, i1 noundef zeroext true) #10 ; 2 uses
  %.not160.i = icmp eq i32 %i.cg, 0
  br i1 %.not160.i, label %.lr.ph.thread252.i, label %red_sched_binomial.exit.thread, !prof !12

.lr.ph.thread252.i:                               ; preds = %bb.ac
  %.0126257.i = zext nneg i8 %.0144 to i32
  br label %.lr.ph.split.us.i.preheader

bb.ad:                                            ; preds = %ceil_of_log2.exit.i
  %.not161194.i = icmp eq i32 %.0.i169.i, 0
  br i1 %.not161194.i, label %.thread182.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.ch = zext nneg i8 %.0144 to i32              ; 2 uses
  %.not205.i = icmp eq i8 %.0151.i, 0
  br i1 %.not205.i, label %.lr.ph.split.i.preheader, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i, %.lr.ph.thread252.i
  %.1123198.us.i.ph = phi i32 [ 1, %.lr.ph.thread252.i ], [ %i.ch, %.lr.ph.i ]
  %.1127197.us.i.ph = phi i32 [ %.0126257.i, %.lr.ph.thread252.i ], [ 1, %.lr.ph.i ]
  %.1131196.us.i.ph = phi ptr [ %i.ce, %.lr.ph.thread252.i ], [ %.0147, %.lr.ph.i ]
  %.1135195.us.i.ph = phi ptr [ %.0147, %.lr.ph.thread252.i ], [ %i.ce, %.lr.ph.i ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.ah
  %.0119199.us.i = phi i32 [ %i.cv, %bb.ah ], [ 1, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %.1123198.us.i = phi i32 [ %.3125.us.i, %bb.ah ], [ %.1123198.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %.1127197.us.i = phi i32 [ %.3129.us.i, %bb.ah ], [ %.1127197.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %.1131196.us.i = phi ptr [ %.3133.us.i, %bb.ah ], [ %.1131196.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %.1135195.us.i = phi ptr [ %.3137.us.i, %bb.ah ], [ %.1135195.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %notmask.us.i = shl nsw i32 -1, %.0119199.us.i
  %i.ci = xor i32 %notmask.us.i, -1
  %i.cj = and i32 %.1145.i, %i.ci
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ae, label %.split.us.i

bb.ae:                                            ; preds = %.lr.ph.split.us.i
  %i.cl = add nsw i32 %.0119199.us.i, -1
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = add nsw i32 %i.cm, %.1145.i             ; 3 uses
  %i.co = icmp eq i32 %i.cn, 0
  %spec.select.us.i = select i1 %i.co, i32 %..i, i32 %i.cn
  %i.cp = icmp eq i32 %i.cn, %..i
  %.1141.us.i = select i1 %i.cp, i32 0, i32 %spec.select.us.i ; 2 uses
  %i.cq = icmp slt i32 %.1141.us.i, %.val175.val
  br i1 %i.cq, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cr = trunc nuw nsw i32 %.1127197.us.i to i8  ; 2 uses
  %i.cs = tail call i32 @NBC_Sched_recv(ptr noundef %.1135195.us.i, i8 noundef signext %i.cr, i64 noundef %i.p, ptr noundef %3, i32 noundef %.1141.us.i, ptr noundef nonnull %i.bg, i1 noundef zeroext true) #10 ; 2 uses
  %.not163.us.i = icmp eq i32 %i.cs, 0
  br i1 %.not163.us.i, label %bb.ag, label %red_sched_binomial.exit.thread, !prof !12

bb.ag:                                            ; preds = %bb.af
  %i.ct = trunc nuw nsw i32 %.1123198.us.i to i8
  %i.cu = tail call i32 @NBC_Sched_op(ptr noundef %.1131196.us.i, i8 noundef signext %i.ct, ptr noundef %.1135195.us.i, i8 noundef signext %i.cr, i64 noundef %i.p, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.bg, i1 noundef zeroext true) #10 ; 2 uses
  %.not164.us.i = icmp eq i32 %i.cu, 0
  br i1 %.not164.us.i, label %bb.ah, label %red_sched_binomial.exit.thread

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.3137.us.i = phi ptr [ %.1131196.us.i, %bb.ag ], [ %.1135195.us.i, %bb.ae ]
  %.3133.us.i = phi ptr [ %.1135195.us.i, %bb.ag ], [ %.1131196.us.i, %bb.ae ]
  %.3129.us.i = phi i32 [ %.1123198.us.i, %bb.ag ], [ %.1127197.us.i, %bb.ae ]
  %.3125.us.i = phi i32 [ %.1127197.us.i, %bb.ag ], [ %.1123198.us.i, %bb.ae ]
  %i.cv = add nuw i32 %.0119199.us.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cv, %indvars.iv.i
  br i1 %exitcond.not.i, label %.thread182.i, label %.lr.ph.split.us.i, !llvm.loop !75

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.aq
  %.0200.i = phi i32 [ %.3.i, %bb.aq ], [ 1, %.lr.ph.split.i.preheader ] ; 3 uses
  %.0119199.i = phi i32 [ %i.du, %bb.aq ], [ 1, %.lr.ph.split.i.preheader ] ; 4 uses
  %.1123198.i = phi i32 [ %.3125.i, %bb.aq ], [ %.1123198.i.ph, %.lr.ph.split.i.preheader ] ; 4 uses
  %.1127197.i = phi i32 [ %.3129.i, %bb.aq ], [ %.1127197.i.ph, %.lr.ph.split.i.preheader ] ; 3 uses
  %.1131196.i = phi ptr [ %.3133.i, %bb.aq ], [ %.1131196.i.ph, %.lr.ph.split.i.preheader ] ; 4 uses
  %.1135195.i = phi ptr [ %.3137.i, %bb.aq ], [ %.1135195.i.ph, %.lr.ph.split.i.preheader ] ; 5 uses
  %notmask.i = shl nsw i32 -1, %.0119199.i
  %i.cw = xor i32 %notmask.i, -1
  %i.cx = and i32 %.1145.i, %i.cw
end_hunk_0
