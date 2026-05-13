inline.NumInlined: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 1, 10) i32 @GifBitSize(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.c, %bb.b ]     ; 4 uses
  %i.a = icmp samesign ult i32 %.0, 9
  %i.b = shl nuw nsw i32 1, %.0
  %.not = icmp slt i32 %i.b, %0
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  %i.c = add nuw nsw i32 %.0, 1
  br i1 %or.cond, label %bb.b, label %bb.c, !llvm.loop !7

bb.c:                                             ; preds = %bb.b
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @GifMakeMapObject(i32 noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ 1, %bb.a ], [ %i.c, %bb.b ]   ; 3 uses
  %i.a = icmp samesign ult i32 %.0.i, 9
  %i.b = shl nuw nsw i32 1, %.0.i                 ; 2 uses
  %.not.i = icmp slt i32 %i.b, %0
  %or.cond.i = select i1 %i.a, i1 %.not.i, i1 false
  %i.c = add nuw nsw i32 %.0.i, 1
  br i1 %or.cond.i, label %bb.b, label %GifBitSize.exit, !llvm.loop !7

GifBitSize.exit:                                  ; preds = %bb.b
  %.not = icmp eq i32 %0, %i.b
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %GifBitSize.exit
  %i.d = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i32 %0 to i64                  ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 3) #14 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !9
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #15
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  store i32 %0, ptr %i.d, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.i21 = phi i32 [ 1, %bb.f ], [ %i.l, %bb.g ] ; 4 uses
  %i.j = icmp samesign ult i32 %.0.i21, 9
  %i.k = shl nuw nsw i32 1, %.0.i21
  %.not.i22 = icmp samesign ult i32 %i.k, %0
  %or.cond.i23 = select i1 %i.j, i1 %.not.i22, i1 false
  %i.l = add nuw nsw i32 %.0.i21, 1
  br i1 %or.cond.i23, label %bb.g, label %GifBitSize.exit24, !llvm.loop !7

GifBitSize.exit24:                                ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.0.i21, ptr %i.m, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !16
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %GifBitSize.exit24
  %i.o = mul nuw nsw i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %1, i64 %i.o, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %GifBitSize.exit24, %bb.h, %bb.c, %GifBitSize.exit, %bb.e
  %.0 = phi ptr [ null, %bb.c ], [ null, %GifBitSize.exit ], [ null, %bb.e ], [ %i.d, %bb.h ], [ %i.d, %GifBitSize.exit24 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @GifFreeMapObject(ptr noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void @free(ptr noundef %i.b) #15
  tail call void @free(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @GifUnionColorMap(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !14
  %i.b = load i32, ptr %1, align 8, !tbaa !14
  %. = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.b)
  %i.c = shl nsw i32 %., 1                        ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ 1, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %i.d = icmp samesign ult i32 %.0.i.i, 9
  %i.e = shl nuw nsw i32 1, %.0.i.i               ; 2 uses
  %.not.i.i = icmp slt i32 %i.e, %i.c
  %or.cond.i.i = select i1 %i.d, i1 %.not.i.i, i1 false
  %i.f = add nuw nsw i32 %.0.i.i, 1
  br i1 %or.cond.i.i, label %bb.b, label %GifBitSize.exit.i, !llvm.loop !7

GifBitSize.exit.i:                                ; preds = %bb.b
  %.not.i = icmp eq i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %GifMakeMapObject.exit.thread

bb.c:                                             ; preds = %GifBitSize.exit.i
  %i.g = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13 ; 10 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %GifMakeMapObject.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.c to i64
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 3) #14 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !9
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.g) #15
  br label %GifMakeMapObject.exit.thread

bb.f:                                             ; preds = %bb.d
  store i32 %i.c, ptr %i.g, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.i21.i = phi i32 [ 1, %bb.f ], [ %i.o, %bb.g ] ; 4 uses
  %i.m = icmp samesign ult i32 %.0.i21.i, 9
  %i.n = shl nuw nsw i32 1, %.0.i21.i
  %.not.i22.i = icmp samesign ult i32 %i.n, %i.c
  %or.cond.i23.i = select i1 %i.m, i1 %.not.i22.i, i1 false
  %i.o = add nuw nsw i32 %.0.i21.i, 1
  br i1 %or.cond.i23.i, label %bb.g, label %GifMakeMapObject.exit, !llvm.loop !7

GifMakeMapObject.exit:                            ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store i32 %.0.i21.i, ptr %i.p, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 0, ptr %i.q, align 8, !tbaa !16
  %i.r = load i32, ptr %0, align 8, !tbaa !14     ; 6 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !9   ; 5 uses
  br i1 %i.s, label %.lr.ph, label %GifMakeMapObject.exit..preheader101_crit_edge

GifMakeMapObject.exit..preheader101_crit_edge:    ; preds = %GifMakeMapObject.exit
  %.pre146 = sext i32 %i.r to i64
  br label %.preheader101

.lr.ph:                                           ; preds = %GifMakeMapObject.exit
  %i.u = zext nneg i32 %i.r to i64                ; 4 uses
  %xtraiter = and i64 %i.u, 1
  %i.v = icmp eq i32 %i.r, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.u, 2147483646
  br label %bb.h

.preheader101.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader101, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader101.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader101.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod162 = trunc i32 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %i.w = getelementptr inbounds nuw [3 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  %i.x = getelementptr inbounds nuw [3 x i8], ptr %.pre, i64 %indvars.iv.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.w, ptr noundef nonnull align 1 dereferenceable(3) %i.x, i64 3, i1 false), !tbaa.struct !17
  br label %.preheader101

.preheader101:                                    ; preds = %.epil.preheader, %.preheader101.loopexit.unr-lcssa, %GifMakeMapObject.exit..preheader101_crit_edge
  %.pre-phi = phi i64 [ %.pre146, %GifMakeMapObject.exit..preheader101_crit_edge ], [ %i.u, %.preheader101.loopexit.unr-lcssa ], [ %i.u, %.epil.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr [3 x i8], ptr %.pre, i64 %.pre-phi ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.lr.ph108, label %.critedge

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.ad = getelementptr inbounds nuw [3 x i8], ptr %i.j, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw [3 x i8], ptr %.pre, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) %i.ae, i64 3, i1 false), !tbaa.struct !17
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [3 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.ag = getelementptr inbounds nuw [3 x i8], ptr %.pre, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.af, ptr noundef nonnull align 1 dereferenceable(3) %i.ag, i64 3, i1 false), !tbaa.struct !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader101.loopexit.unr-lcssa, label %bb.h, !llvm.loop !21

.lr.ph108:                                        ; preds = %.preheader101, %bb.j
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %bb.j ], [ %.pre-phi, %.preheader101 ] ; 3 uses
  %i.ah = phi ptr [ %i.ao, %bb.j ], [ %i.z, %.preheader101 ] ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %.critedge.loopexit

bb.i:                                             ; preds = %.lr.ph108
  %i.al = getelementptr i8, ptr %i.ah, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.j, label %.critedge.loopexit

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, -1 ; 3 uses
  %i.ao = getelementptr [3 x i8], ptr %.pre, i64 %indvars.iv.next129 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.lr.ph108, label %.critedge.loopexit, !llvm.loop !24

.critedge.loopexit:                               ; preds = %.lr.ph108, %bb.j, %bb.i
  %.082.lcssa.ph.in = phi i64 [ %indvars.iv128, %bb.i ], [ %indvars.iv.next129, %bb.j ], [ %indvars.iv128, %.lr.ph108 ]
  %.082.lcssa.ph = trunc i64 %.082.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader101
  %.082.lcssa = phi i32 [ %i.r, %.preheader101 ], [ %.082.lcssa.ph, %.critedge.loopexit ] ; 3 uses
  %i.as = load i32, ptr %1, align 8, !tbaa !14
  %i.at = icmp sgt i32 %i.as, 0
  %i.au = icmp slt i32 %.082.lcssa, 257
  %i.av = and i1 %i.at, %i.au
  br i1 %i.av, label %.preheader100.lr.ph, label %._crit_edge118

.preheader100.lr.ph:                              ; preds = %.critedge
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader100

.preheader100:                                    ; preds = %.preheader100.lr.ph, %bb.n
  %indvars.iv135 = phi i64 [ 0, %.preheader100.lr.ph ], [ %indvars.iv.next136, %bb.n ] ; 4 uses
  %.183116 = phi i32 [ %.082.lcssa, %.preheader100.lr.ph ], [ %.284, %bb.n ] ; 4 uses
  %i.ax = load i32, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  %.pre145 = load ptr, ptr %i.aw, align 8, !tbaa !9 ; 2 uses
  br i1 %i.ay, label %.lr.ph115, label %._crit_edge

.lr.ph115:                                        ; preds = %.preheader100
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw [3 x i8], ptr %.pre145, i64 %indvars.iv135 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ax to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph115, %bb.l
  %indvars.iv131 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next132, %bb.l ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [3 x i8], ptr %i.az, i64 %indvars.iv131 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = load i16, ptr %i.ba, align 1
  %i.be = xor i16 %i.bc, %i.bd
  %i.bf = getelementptr i8, ptr %i.bb, i64 2
  %i.bg = getelementptr i8, ptr %i.ba, i64 2
  %i.bh = load i8, ptr %i.bf, align 1
  %i.bi = load i8, ptr %i.bg, align 1
  %i.bj = zext i8 %i.bh to i16
  %i.bk = zext i8 %i.bi to i16
  %i.bl = xor i16 %i.bj, %i.bk
  %i.bm = or i16 %i.be, %i.bl
  %i.bn = icmp ne i16 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !25

bb.m:                                             ; preds = %bb.k
  %i.bq = trunc i64 %indvars.iv131 to i8
  br label %bb.n

._crit_edge:                                      ; preds = %bb.l, %.preheader100
  %i.br = sext i32 %.183116 to i64
  %i.bs = getelementptr inbounds [3 x i8], ptr %i.j, i64 %i.br
  %i.bt = getelementptr inbounds nuw [3 x i8], ptr %.pre145, i64 %indvars.iv135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bs, ptr noundef nonnull align 1 dereferenceable(3) %i.bt, i64 3, i1 false), !tbaa.struct !17
  %i.bu = add nsw i32 %.183116, 1
  %i.bv = trunc i32 %.183116 to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.sink = phi i8 [ %i.bq, %bb.m ], [ %i.bv, %._crit_edge ]
  %.284 = phi i32 [ %.183116, %bb.m ], [ %i.bu, %._crit_edge ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv135
  store i8 %.sink, ptr %i.bw, align 1, !tbaa !18
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.bx = load i32, ptr %1, align 8, !tbaa !14
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next136, %i.by
  %i.ca = icmp slt i32 %.284, 257
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.preheader100, label %._crit_edge118, !llvm.loop !26

._crit_edge118:                                   ; preds = %bb.n, %.critedge
  %.183.lcssa = phi i32 [ %.082.lcssa, %.critedge ], [ %.284, %bb.n ] ; 5 uses
  %i.cc = icmp sgt i32 %.183.lcssa, 256
  br i1 %i.cc, label %GifFreeMapObject.exit, label %.preheader

GifFreeMapObject.exit:                            ; preds = %._crit_edge118
  tail call void @free(ptr noundef %i.j) #15
  tail call void @free(ptr noundef nonnull %i.g) #15
  br label %GifMakeMapObject.exit.thread

.preheader:                                       ; preds = %._crit_edge118, %.preheader
  %.0.i94 = phi i32 [ %i.cf, %.preheader ], [ 1, %._crit_edge118 ] ; 4 uses
  %i.cd = icmp samesign ult i32 %.0.i94, 9
  %i.ce = shl nuw nsw i32 1, %.0.i94              ; 7 uses
  %.not.i95 = icmp slt i32 %i.ce, %.183.lcssa
  %or.cond.i = select i1 %i.cd, i1 %.not.i95, i1 false
  %i.cf = add nuw nsw i32 %.0.i94, 1
  br i1 %or.cond.i, label %.preheader, label %GifBitSize.exit, !llvm.loop !7

GifBitSize.exit:                                  ; preds = %.preheader
  %.not = icmp eq i32 %i.ce, %i.c
  br i1 %.not, label %.critedge92, label %bb.o

bb.o:                                             ; preds = %GifBitSize.exit
  %i.cg = icmp slt i32 %.183.lcssa, %i.ce
  br i1 %i.cg, label %.lr.ph122.preheader, label %._crit_edge123

.lr.ph122.preheader:                              ; preds = %bb.o
  %i.ch = sext i32 %.183.lcssa to i64
  %i.ci = mul nsw i64 %i.ch, 3
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.ci
  %i.cj = xor i32 %.183.lcssa, -1
  %i.ck = add i32 %i.ce, %i.cj
  %i.cl = zext i32 %i.ck to i64
  %i.cm = mul nuw nsw i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.cn, i1 false), !tbaa !18
  br label %._crit_edge123

._crit_edge123:                                   ; preds = %.lr.ph122.preheader, %bb.o
  %i.co = icmp slt i32 %i.ce, %i.c
  br i1 %i.co, label %bb.p, label %.critedge92

bb.p:                                             ; preds = %._crit_edge123
  %i.cp = zext nneg i32 %i.ce to i64
  %i.cq = tail call ptr @openbsd_reallocarray(ptr noundef nonnull %i.j, i64 noundef %i.cp, i64 noundef 3) #15 ; 2 uses
  %.not90 = icmp eq ptr %i.cq, null
  br i1 %.not90, label %.thread99, label %bb.q

.thread99:                                        ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.j) #15
  tail call void @free(ptr noundef nonnull %i.g) #15
  br label %GifMakeMapObject.exit.thread

bb.q:                                             ; preds = %bb.p
  store ptr %i.cq, ptr %i.k, align 8, !tbaa !9
  br label %.critedge92

.critedge92:                                      ; preds = %bb.q, %._crit_edge123, %GifBitSize.exit
  store i32 %i.ce, ptr %i.g, align 8, !tbaa !14
  store i32 %.0.i94, ptr %i.p, align 4, !tbaa !15
  br label %GifMakeMapObject.exit.thread

GifMakeMapObject.exit.thread:                     ; preds = %bb.e, %GifBitSize.exit.i, %bb.c, %.thread99, %.critedge92, %GifFreeMapObject.exit
  %.3 = phi ptr [ null, %.thread99 ], [ null, %GifFreeMapObject.exit ], [ %i.g, %.critedge92 ], [ null, %bb.c ], [ null, %GifBitSize.exit.i ], [ null, %bb.e ]
  ret ptr %.3
}

declare ptr @openbsd_reallocarray(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @GifApplyTranslation(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33
  %i.e = mul nsw i32 %i.d, %i.b                   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %i.e, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18
  store i8 %i.n, ptr %i.j, align 1, !tbaa !18
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  store i8 %i.u, ptr %i.q, align 1, !tbaa !18
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18
  store i8 %i.ab, ptr %i.x, align 1, !tbaa !18
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 3 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !18
  store i8 %i.ai, ptr %i.ae, align 1, !tbaa !18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !35

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.epil ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !18
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  store i8 %i.ao, ptr %i.ak, align 1, !tbaa !18
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !36

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @GifAddExtensionBlock(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(address_is_null) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !3
  %i.d = add nsw i32 %i.c, 1
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @openbsd_reallocarray(ptr noundef nonnull %i.a, i64 noundef %i.e, i64 noundef 24) #15 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.b
  store ptr %i.f, ptr %1, align 8, !tbaa !38
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !38
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.i = phi ptr [ %i.f, %.thread ], [ %i.g, %bb.c ]
  %i.j = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %0, align 4, !tbaa !3
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [24 x i8], ptr %i.i, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %2, ptr %i.n, align 8, !tbaa !39
  store i32 %3, ptr %i.m, align 8, !tbaa !41
  %i.o = sext i32 %3 to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #13 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !42
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not28 = icmp eq ptr %4, null
  br i1 %.not28, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %4, i64 %i.s, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.f, %bb.d, %bb.c
  %.1 = phi i32 [ 1, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @GifFreeExtensions(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !38     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !3
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.011 = phi ptr [ %i.g, %.lr.ph ], [ %i.a, %.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.f) #15
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 24 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.i = load i32, ptr %0, align 4, !tbaa !3
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.j
  %i.l = icmp ult ptr %i.g, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi ptr [ %i.a, %.preheader ], [ %i.h, %.lr.ph ]
  tail call void @free(ptr noundef %.lcssa) #15
  store ptr null, ptr %1, align 8, !tbaa !38
  store i32 0, ptr %0, align 4, !tbaa !3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}
end_hunk_0
