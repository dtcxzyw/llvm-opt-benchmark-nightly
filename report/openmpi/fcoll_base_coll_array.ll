Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/fcoll_base_coll_array?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mca_pml_base_module_2_1_0_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.ompi_predefined_request_t = type { %struct.ompi_request_t, [96 x i8] }
%struct.ompi_request_t = type { %struct.opal_free_list_item_t, i32, %struct.ompi_status_public_t, ptr, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, %union.ompi_mpi_object_t }
%struct.opal_free_list_item_t = type { %struct.opal_list_item_t, ptr, ptr }
%struct.opal_list_item_t = type { %struct.opal_object_t, ptr, ptr, i32 }
%struct.opal_object_t = type { ptr, i32 }
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }
%union.ompi_mpi_object_t = type { ptr }
%struct.ompi_request_fns_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mca_pml = external local_unnamed_addr global %struct.mca_pml_base_module_2_1_0_t, align 8
@ompi_request_null = external global %struct.ompi_predefined_request_t, align 8
@ompi_request_functions = external local_unnamed_addr global %struct.ompi_request_fns_t, align 8

; Function Attrs: nounwind uwtable
define i32 @ompi_fcoll_base_coll_allgatherv_array(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr i8, ptr %10, i64 220
  %.val = load i32, ptr %i.b, align 4, !tbaa !36
  %i.c = icmp sgt i32 %9, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %9 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37
  %i.f = icmp eq i32 %i.e, %.val
  br i1 %i.f, label %._crit_edge.split.loop.exit83, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

._crit_edge.split.loop.exit83:                    ; preds = %.lr.ph
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.split.loop.exit83
  %.048.lcssa = phi i32 [ %i.g, %._crit_edge.split.loop.exit83 ], [ %9, %bb.b ] ; 6 uses
  %i.h = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.h, label %bb.c, label %.loopexit

._crit_edge.thread:                               ; preds = %bb.a
  %i.i = icmp eq ptr %0, inttoptr (i64 1 to ptr)  ; 2 uses
  %spec.select = select i1 %i.i, ptr %3, ptr %0
  %spec.select85 = select i1 %i.i, ptr %6, ptr %2
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45
  %i.n = sub nsw i64 %i.m, %i.k                   ; 9 uses
  %.not66 = icmp eq i32 %.048.lcssa, 0
  br i1 %.not66, label %.loopexit, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %bb.c
  %smax = tail call i32 @llvm.smax.i32(i32 %.048.lcssa, i32 1)
  %wide.trip.count71 = zext nneg i32 %smax to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count71, 7       ; 3 uses
  %11 = icmp slt i32 %.048.lcssa, 8
  br i1 %11, label %.lr.ph64.epil.preheader, label %.lr.ph64.preheader.new

.lr.ph64.preheader.new:                           ; preds = %.lr.ph64.preheader
  %unroll_iter = and i64 %wide.trip.count71, 2147483640
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64, %.lr.ph64.preheader.new
  %indvars.iv68 = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %indvars.iv.next69.7, %.lr.ph64 ] ; 9 uses
  %.04762 = phi ptr [ %3, %.lr.ph64.preheader.new ], [ %i.bi, %.lr.ph64 ]
  %niter = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %niter.next.7, %.lr.ph64 ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !37
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds i8, ptr %.04762, i64 %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv68
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.n, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv68
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.n, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.n, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv68
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 4, !tbaa !37
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.n, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv68
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !37
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.n, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv68
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.n, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.aw, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv68
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !37
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %i.n, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 %i.bh ; 3 uses
  %indvars.iv.next69.7 = add nuw nsw i64 %indvars.iv68, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph64, !llvm.loop !56

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph64
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph64.epil.preheader

.lr.ph64.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph64.preheader
  %indvars.iv68.epil.init = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next69.7, %.loopexit.loopexit.unr-lcssa ]
  %.04762.epil.init = phi ptr [ %3, %.lr.ph64.preheader ], [ %i.bi, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph64.epil

.lr.ph64.epil:                                    ; preds = %.lr.ph64.epil, %.lr.ph64.epil.preheader
  %indvars.iv68.epil = phi i64 [ %indvars.iv68.epil.init, %.lr.ph64.epil.preheader ], [ %indvars.iv.next69.epil, %.lr.ph64.epil ] ; 2 uses
  %.04762.epil = phi ptr [ %.04762.epil.init, %.lr.ph64.epil.preheader ], [ %i.bn, %.lr.ph64.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph64.epil.preheader ], [ %epil.iter.next, %.lr.ph64.epil ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv68.epil
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !37
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %i.n, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %.04762.epil, i64 %i.bm ; 2 uses
  %indvars.iv.next69.epil = add nuw nsw i64 %indvars.iv68.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph64.epil, !llvm.loop !57

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph64.epil, %._crit_edge.thread, %bb.c, %._crit_edge
  %.048.lcssa79 = phi i32 [ %.048.lcssa, %._crit_edge ], [ 0, %bb.c ], [ 0, %._crit_edge.thread ], [ %.048.lcssa, %.lr.ph64.epil ], [ %.048.lcssa, %.loopexit.loopexit.unr-lcssa ]
  %.1 = phi ptr [ %0, %._crit_edge ], [ %3, %bb.c ], [ %spec.select, %._crit_edge.thread ], [ %i.bi, %.loopexit.loopexit.unr-lcssa ], [ %i.bn, %.lr.ph64.epil ]
  %.0 = phi ptr [ %2, %._crit_edge ], [ %6, %bb.c ], [ %spec.select85, %._crit_edge.thread ], [ %6, %.lr.ph64.epil ], [ %6, %.loopexit.loopexit.unr-lcssa ]
  %i.bo = zext nneg i32 %.048.lcssa79 to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !37
  %i.br = tail call i32 @ompi_fcoll_base_coll_gatherv_array(ptr noundef %.1, i32 noundef %i.bq, ptr noundef %.0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10) ; 2 uses
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.loopexit
  %i.bs = call i32 @ompi_datatype_create_indexed(i32 noundef %9, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not55 = icmp eq i32 %i.bs, 0
  br i1 %.not55, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.bt = call i32 @opal_datatype_commit(ptr noundef %.val57) #7 ; 2 uses
  %.not56 = icmp eq i32 %i.bt, 0
  br i1 %.not56, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.bv = call i32 @ompi_fcoll_base_coll_bcast_array(ptr noundef %3, i32 noundef 1, ptr noundef %i.bu, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10) ; 0 uses
  %i.bw = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %.loopexit, %bb.f
  %.050 = phi i32 [ 0, %bb.f ], [ %i.bs, %bb.d ], [ %i.br, %.loopexit ], [ %i.bt, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.050
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @ompi_fcoll_base_coll_gatherv_array(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %10, i64 220
  %.val = load i32, ptr %i.a, align 4, !tbaa !36  ; 3 uses
  %i.b = sext i32 %7 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %8, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.d, %.val
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !47
  %i.g = zext nneg i32 %1 to i64
  %i.h = tail call i32 %i.f(ptr noundef %0, i64 noundef %i.g, ptr noundef %2, i32 noundef %i.d, i32 noundef 101, i32 noundef 4, ptr noundef nonnull %10) #7
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !45
  %i.m = sub nsw i64 %i.l, %i.j                   ; 2 uses
  %i.n = sext i32 %9 to i64                       ; 2 uses
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #8 ; 9 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.r = icmp sgt i32 %9, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.s = icmp ne ptr %0, inttoptr (i64 1 to ptr)
  %i.t = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.s, %i.t
  %wide.trip.count82 = zext nneg i32 %9 to i64    ; 2 uses
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %bb.k ], [ 0, %.lr.ph ] ; 7 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv79
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.m, %i.w
  %i.y = getelementptr inbounds i8, ptr %3, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv79
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !37  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %.val
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv79
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !37 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0                   ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  br i1 %i.ae, label %bb.f, label %.thread.us

.thread.us:                                       ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv79
  store ptr @ompi_request_null, ptr %i.af, align 8, !tbaa !49
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !50
  %i.ah = zext nneg i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv79
  %i.aj = tail call i32 %i.ag(ptr noundef %i.y, i64 noundef %i.ah, ptr noundef %6, i32 noundef %i.aa, i32 noundef 101, ptr noundef %10, ptr noundef nonnull %i.ai) #7
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph.split.us
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %i.y, i32 noundef %i.ad, ptr noundef %6) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.us = phi i32 [ %i.ak, %bb.h ], [ 0, %bb.g ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv79
  store ptr @ompi_request_null, ptr %i.al, align 8, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.2.us = phi i32 [ %.1.us, %bb.i ], [ %i.aj, %bb.f ] ; 2 uses
  %.not72.us = icmp eq i32 %.2.us, 0
  br i1 %.not72.us, label %bb.k, label %.split.us

bb.k:                                             ; preds = %bb.j, %.thread.us
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !61

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.lr.ph ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !37
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.m, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %3, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37 ; 2 uses
  %i.at = icmp eq i32 %i.as, %.val
  br i1 %i.at, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !37 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !50
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ba = tail call i32 %i.ax(ptr noundef %i.aq, i64 noundef %i.ay, ptr noundef %6, i32 noundef %i.as, i32 noundef 101, ptr noundef %10, ptr noundef nonnull %i.az) #7 ; 2 uses
  %.not72 = icmp eq i32 %i.ba, 0
  br i1 %.not72, label %bb.n, label %.split.us

.split.us:                                        ; preds = %bb.m, %bb.j
  %.us-phi = phi i32 [ %.2.us, %bb.j ], [ %i.ba, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.p) #7
  br label %bb.o

.sink.split:                                      ; preds = %bb.l, %.lr.ph.split
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store ptr @ompi_request_null, ptr %i.bb, align 8, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count82
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.n, %bb.k, %.preheader
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !52
  %i.bd = tail call i32 %i.bc(i64 noundef %i.n, ptr noundef nonnull %i.p, ptr noundef null) #7
  tail call void @free(ptr noundef nonnull %i.p) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.b, %._crit_edge, %.split.us, %bb.c
  %.061 = phi i32 [ %i.h, %bb.c ], [ %.us-phi, %.split.us ], [ %i.bd, %._crit_edge ], [ 0, %bb.b ], [ -2, %bb.d ]
  ret i32 %.061
}

declare i32 @ompi_datatype_create_indexed(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ompi_fcoll_base_coll_bcast_array(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %6, i64 220
  %.val = load i32, ptr %i.a, align 4, !tbaa !36  ; 2 uses
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.d, %.val
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !53
  %i.f = sext i32 %1 to i64
  %i.g = tail call i32 %i.e(ptr noundef %0, i64 noundef %i.f, ptr noundef %2, i32 noundef %i.d, i32 noundef 102, ptr noundef nonnull %6, ptr noundef null) #7
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = sext i32 %5 to i64                       ; 2 uses
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #8 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.l = icmp sgt i32 %5, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !37   ; 2 uses
  %i.p = icmp eq i32 %i.o, %.val
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store ptr @ompi_request_null, ptr %i.q, align 8, !tbaa !49
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.t = tail call i32 %i.r(ptr noundef %0, i64 noundef %i.m, ptr noundef %2, i32 noundef %i.o, i32 noundef 102, i32 noundef 4, ptr noundef %6, ptr noundef nonnull %i.s) #7 ; 2 uses
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.j) #7
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !52
  %i.v = tail call i32 %i.u(i64 noundef %i.h, ptr noundef nonnull %i.j, ptr noundef null) #7
  tail call void @free(ptr noundef nonnull %i.j) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %._crit_edge, %bb.g, %bb.b
  %.037 = phi i32 [ %i.g, %bb.b ], [ %i.v, %._crit_edge ], [ %i.t, %bb.g ], [ -2, %bb.c ]
  ret i32 %.037
}

declare i32 @ompi_datatype_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @ompi_datatype_sndrcv(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ompi_fcoll_base_coll_scatterv_array(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %10, i64 220
  %.val = load i32, ptr %i.a, align 4, !tbaa !36  ; 4 uses
  %i.b = sext i32 %7 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %8, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.d, %.val
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !53
  %i.g = zext nneg i32 %5 to i64
  %i.h = tail call i32 %i.f(ptr noundef %4, i64 noundef %i.g, ptr noundef %6, i32 noundef %i.d, i32 noundef 103, ptr noundef nonnull %10, ptr noundef null) #7
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !45
  %i.m = sub nsw i64 %i.l, %i.j                   ; 3 uses
  %i.n = sext i32 %9 to i64                       ; 2 uses
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #8 ; 11 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.r = icmp sgt i32 %9, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.not71 = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not71, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count96 = zext nneg i32 %9 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.g
  %indvars.iv93 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next94, %bb.g ] ; 6 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv93
  %i.t = load i32, ptr %i.s, align 4, !tbaa !37
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.m, %i.u
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv93
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 2 uses
  %i.z = icmp eq i32 %i.y, %.val
  br i1 %i.z, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv93
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !54
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv93
  %i.ag = tail call i32 %i.ad(ptr noundef %i.w, i64 noundef %i.ae, ptr noundef %3, i32 noundef %i.y, i32 noundef 103, i32 noundef 4, ptr noundef %10, ptr noundef nonnull %i.af) #7 ; 2 uses
  %.not72.us = icmp eq i32 %i.ag, 0
  br i1 %.not72.us, label %bb.g, label %.split.us

.sink.split:                                      ; preds = %.lr.ph.split.us, %bb.e
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv93
  store ptr @ompi_request_null, ptr %i.ah, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !63

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ai = icmp sgt i32 %5, 0
  %wide.trip.count91 = zext nneg i32 %9 to i64    ; 2 uses
  br i1 %i.ai, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph.split ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !37
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.m, %i.al
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !37 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, %.val
  br i1 %i.aq, label %.sink.split121, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split.us
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %.sink.split121

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !54
  %i.av = zext nneg i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ax = tail call i32 %i.au(ptr noundef %i.an, i64 noundef %i.av, ptr noundef %3, i32 noundef %i.ap, i32 noundef 103, i32 noundef 4, ptr noundef %10, ptr noundef nonnull %i.aw) #7 ; 2 uses
  %.not72.us80 = icmp eq i32 %i.ax, 0
  br i1 %.not72.us80, label %bb.j, label %.split.us

.sink.split121:                                   ; preds = %.lr.ph.split.split.us, %bb.h
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store ptr @ompi_request_null, ptr %i.ay, align 8, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %.sink.split121, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count91
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !63

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.q
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.q ], [ 0, %.lr.ph.split ] ; 7 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv88
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !37
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.m, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv88
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !37 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, %.val
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv88
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !37 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0                   ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.lr.ph.split.split
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.bd, i32 noundef %i.bi, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2 = phi i32 [ %i.bk, %bb.l ], [ 0, %bb.k ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv88
  store ptr @ompi_request_null, ptr %i.bl, align 8, !tbaa !49
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph.split.split
  br i1 %i.bj, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !54
  %i.bn = zext nneg i32 %i.bi to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv88
  %i.bp = tail call i32 %i.bm(ptr noundef %i.bd, i64 noundef %i.bn, ptr noundef %3, i32 noundef %i.bf, i32 noundef 103, i32 noundef 4, ptr noundef %10, ptr noundef nonnull %i.bo) #7
  br label %bb.p

.thread:                                          ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv88
  store ptr @ompi_request_null, ptr %i.bq, align 8, !tbaa !49
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  %.3 = phi i32 [ %.2, %bb.m ], [ %i.bp, %bb.o ]  ; 2 uses
  %.not72 = icmp eq i32 %.3, 0
  br i1 %.not72, label %bb.q, label %.split.us

.split.us:                                        ; preds = %bb.i, %bb.p, %bb.f
  %.us-phi = phi i32 [ %.3, %bb.p ], [ %i.ag, %bb.f ], [ %i.ax, %bb.i ]
  tail call void @free(ptr noundef nonnull %i.p) #7
  br label %bb.r

bb.q:                                             ; preds = %.thread, %bb.p
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.j, %bb.q, %bb.g, %.preheader
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !52
  %i.bs = tail call i32 %i.br(i64 noundef %i.n, ptr noundef nonnull %i.p, ptr noundef null) #7
  tail call void @free(ptr noundef nonnull %i.p) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.b, %bb.c, %._crit_edge, %.split.us
  %.061 = phi i32 [ %.us-phi, %.split.us ], [ %i.bs, %._crit_edge ], [ 0, %bb.b ], [ %i.h, %bb.c ], [ -2, %bb.d ]
  ret i32 %.061
}

; Function Attrs: nounwind uwtable
define i32 @ompi_fcoll_base_coll_allgather_array(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %9, i64 220
  %.val = load i32, ptr %i.a, align 4, !tbaa !36  ; 2 uses
  %i.b = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %i.c = icmp ne i32 %.val, 0
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  %i.h = sub nsw i64 %i.g, %i.e
  %i.i = sext i32 %.val to i64
  %i.j = sext i32 %4 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = mul i64 %i.k, %i.h
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.034 = phi ptr [ %5, %bb.b ], [ %2, %bb.a ]
  %.033 = phi i32 [ %4, %bb.b ], [ %1, %bb.a ]
  %.032 = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ]
  %i.n = tail call i32 @ompi_fcoll_base_coll_gather_array(ptr noundef %.032, i32 noundef %.033, ptr noundef %.034, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %9) ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = mul nsw i32 %8, %4
  %i.q = tail call i32 @ompi_fcoll_base_coll_bcast_array(ptr noundef %3, i32 noundef %i.p, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ompi_fcoll_base_coll_gather_array(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %9, i64 220
  %.val = load i32, ptr %i.a, align 4, !tbaa !36  ; 3 uses
  %i.b = sext i32 %6 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %7, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.d, %.val
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !47
  %i.f = sext i32 %1 to i64
  %i.g = tail call i32 %i.e(ptr noundef %0, i64 noundef %i.f, ptr noundef %2, i32 noundef %i.d, i32 noundef 100, i32 noundef 4, ptr noundef nonnull %9) #7
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45
  %i.l = sub nsw i64 %i.k, %i.i
  %i.m = sext i32 %4 to i64                       ; 3 uses
  %i.n = mul nsw i64 %i.l, %i.m                   ; 2 uses
  %i.o = sext i32 %8 to i64                       ; 2 uses
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #8 ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.s = icmp sgt i32 %8, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.not57 = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %wide.trip.count69 = zext nneg i32 %8 to i64    ; 2 uses
  br i1 %.not57, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.e ], [ 0, %.lr.ph ] ; 4 uses
  %.04960.us = phi ptr [ %i.aa, %bb.e ], [ %3, %.lr.ph ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv66
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37   ; 2 uses
  %i.v = icmp eq i32 %i.u, %.val
  br i1 %i.v, label %.thread, label %bb.d

.thread:                                          ; preds = %.lr.ph.split.us
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv66
  store ptr @ompi_request_null, ptr %i.w, align 8, !tbaa !49
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv66
  %i.z = tail call i32 %i.x(ptr noundef %.04960.us, i64 noundef %i.m, ptr noundef %5, i32 noundef %i.u, i32 noundef 100, ptr noundef %9, ptr noundef nonnull %i.y) #7 ; 2 uses
  %.not58.us = icmp eq i32 %i.z, 0
  br i1 %.not58.us, label %bb.e, label %.split.us

bb.e:                                             ; preds = %.thread, %bb.d
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.04960.us, i64 %i.n
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !64

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.lr.ph ] ; 3 uses
  %.04960 = phi ptr [ %i.ai, %bb.i ], [ %3, %.lr.ph ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %.val
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  %i.af = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %.04960, i32 noundef %4, ptr noundef %5) #7
  store ptr @ompi_request_null, ptr %i.ae, align 8, !tbaa !49
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !50
  %i.ah = tail call i32 %i.ag(ptr noundef %.04960, i64 noundef %i.m, ptr noundef %5, i32 noundef %i.ac, i32 noundef 100, ptr noundef %9, ptr noundef nonnull %i.ae) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %i.af, %bb.f ], [ %i.ah, %bb.g ] ; 2 uses
  %.not58 = icmp eq i32 %.1, 0
  br i1 %.not58, label %bb.i, label %.split.us

.split.us:                                        ; preds = %bb.h, %bb.d
  %.us-phi = phi i32 [ %i.z, %bb.d ], [ %.1, %bb.h ]
  tail call void @free(ptr noundef nonnull %i.q) #7
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.04960, i64 %i.n
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count69
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.i, %bb.e, %.preheader
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !52
  %i.ak = tail call i32 %i.aj(i64 noundef %i.o, ptr noundef nonnull %i.q, ptr noundef null) #7
  tail call void @free(ptr noundef nonnull %i.q) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %._crit_edge, %.split.us, %bb.b
  %.051 = phi i32 [ %i.g, %bb.b ], [ %i.ak, %._crit_edge ], [ %.us-phi, %.split.us ], [ -2, %bb.c ]
  ret i32 %.051
}

declare i32 @opal_datatype_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS12opal_class_t", !8, i64 0}
!10 = !{!"opal_object_t", !9, i64 0, !5, i64 8}
!11 = !{!"p1 _ZTS19opal_hash_element_t", !8, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"p1 _ZTS24opal_hash_type_methods_t", !8, i64 0}
!14 = !{!"opal_hash_table_t", !10, i64 0, !11, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !13, i64 64}
!15 = !{!"p1 _ZTS11opal_info_t", !8, i64 0}
!16 = !{!"opal_infosubscriber_t", !10, i64 0, !14, i64 16, !15, i64 88}
!17 = !{!"opal_mutex_t", !10, i64 0, !4, i64 16, !5, i64 56}
!18 = !{!"p1 omnipotent char", !8, i64 0}
!19 = !{!"ompi_comm_extended_cid_t", !12, i64 0, !4, i64 8}
!20 = !{!"ompi_comm_extended_cid_block_t", !19, i64 0, !12, i64 16, !4, i64 24, !4, i64 25}
!21 = !{!"p1 int", !8, i64 0}
!22 = !{!"p1 _ZTS12ompi_group_t", !8, i64 0}
!23 = !{!"p1 _ZTS19ompi_communicator_t", !8, i64 0}
!24 = !{!"p1 _ZTS17opal_hash_table_t", !8, i64 0}
!25 = !{!"p1 _ZTS22mca_topo_base_module_t", !8, i64 0}
!26 = !{!"any p2 pointer", !8, i64 0}
!27 = !{!"p2 _ZTS20ompi_peruse_handle_t", !26, i64 0}
!28 = !{!"p1 _ZTS17ompi_errhandler_t", !8, i64 0}
!29 = !{!"p1 _ZTS14mca_pml_comm_t", !8, i64 0}
!30 = !{!"p1 _ZTS14mca_mtl_comm_t", !8, i64 0}
!31 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !8, i64 0}
!32 = !{!"p1 _ZTS15ompi_instance_t", !8, i64 0}
!33 = !{!"p1 _ZTS13opal_object_t", !8, i64 0}
!34 = !{!"_Bool", !4, i64 0}
!35 = !{!"ompi_communicator_t", !16, i64 0, !17, i64 96, !18, i64 160, !19, i64 168, !20, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !21, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !22, i64 264, !22, i64 272, !23, i64 280, !24, i64 288, !25, i64 296, !27, i64 304, !28, i64 312, !5, i64 320, !29, i64 328, !30, i64 336, !31, i64 344, !32, i64 352, !33, i64 360, !5, i64 368, !5, i64 372, !34, i64 376, !34, i64 377, !34, i64 378}
!36 = !{!35, !5, i64 220}
!37 = !{!5, !5, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"short", !4, i64 0}
!40 = !{!"p1 _ZTS12dt_elem_desc", !8, i64 0}
!41 = !{!"dt_type_desc_t", !12, i64 0, !12, i64 8, !40, i64 16}
!42 = !{!"p1 long", !8, i64 0}
!43 = !{!"opal_datatype_t", !10, i64 0, !39, i64 16, !39, i64 18, !5, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !41, i64 144, !41, i64 168, !42, i64 192}
!44 = !{!43, !12, i64 48}
!45 = !{!43, !12, i64 56}
!46 = !{!"mca_pml_base_module_2_1_0_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !8, i64 184}
!47 = !{!46, !8, i64 96}
!48 = !{!"p1 _ZTS14ompi_request_t", !8, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!46, !8, i64 64}
!51 = !{!"ompi_request_fns_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!52 = !{!51, !8, i64 48}
!53 = !{!46, !8, i64 72}
!54 = !{!46, !8, i64 88}
!55 = distinct !{!55, !38}
!56 = distinct !{!56, !38}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!"p1 _ZTS15ompi_datatype_t", !8, i64 0}
!60 = !{!59, !59, i64 0}
!61 = distinct !{!61, !38}
!62 = distinct !{!62, !38}
!63 = distinct !{!63, !38}
!64 = distinct !{!64, !38}
end_hunk_0
