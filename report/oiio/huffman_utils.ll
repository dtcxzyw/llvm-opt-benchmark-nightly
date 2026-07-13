inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden ptr @VP8LHtreeGroupsNew(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call ptr @WebPSafeMalloc(i64 noundef %i.a, i64 noundef 568) #7
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @VP8LHtreeGroupsFree(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @WebPSafeFree(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @VP8LBuildHuffmanTable(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i16], align 16             ; 3 uses
  %i.b = tail call fastcc i32 @BuildHuffmanTable(ptr noundef null, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null) ; 6 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq ptr %0, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %.critedge55, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.n
  %.not = icmp ult ptr %i.j, %i.o
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef 32) #7 ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.critedge55, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.m) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !14
  %i.t = sext i32 %i.r to i64
  %i.u = tail call ptr @WebPSafeMalloc(i64 noundef %i.t, i64 noundef 4) #7 ; 4 uses
  store ptr %i.u, ptr %i.p, align 8, !tbaa !13
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  tail call void @WebPSafeFree(ptr noundef nonnull %i.p) #7
  br label %.critedge55

.critedge:                                        ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !15
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.p, ptr %i.z, align 8, !tbaa !15
  store ptr %i.p, ptr %i.e, align 8, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.b
  %i.aa = phi ptr [ %i.u, %.critedge ], [ %i.h, %bb.b ]
  %i.ab = icmp slt i32 %3, 513
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ac = call fastcc i32 @BuildHuffmanTable(ptr noundef %i.aa, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.critedge55

bb.h:                                             ; preds = %bb.f
  %i.ad = zext nneg i32 %3 to i64
  %i.ae = tail call ptr @WebPSafeMalloc(i64 noundef %i.ad, i64 noundef 2) #7 ; 3 uses
  %.not53 = icmp eq ptr %i.ae, null
  br i1 %.not53, label %.critedge55, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.ai = tail call fastcc i32 @BuildHuffmanTable(ptr noundef %i.ah, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.ae) ; 0 uses
  tail call void @WebPSafeFree(ptr noundef nonnull %i.ae) #7
  br label %.critedge55

.critedge55:                                      ; preds = %bb.g, %bb.i, %bb.h, %bb.e, %bb.c, %bb.a
  %.3 = phi i32 [ %i.b, %bb.a ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.c ], [ %i.b, %bb.i ], [ %i.b, %bb.g ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @BuildHuffmanTable(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 23 uses
  %i.b = alloca [16 x i32], align 16              ; 21 uses
  %i.c = shl nuw i32 1, %1                        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.d = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 15
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = sext i32 %i.f to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 16, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.l = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.m = icmp eq i32 %i.l, %3
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = icmp sgt i32 %i.p, 2
  br i1 %i.q, label %.critedge, label %bb.g

.lr.ph222:                                        ; preds = %.preheader208
  %.not170 = icmp eq ptr %4, null
  %wide.trip.count320 = zext nneg i32 %3 to i64   ; 3 uses
  br i1 %.not170, label %.lr.ph222.split.us.preheader, label %.lr.ph222.split

.lr.ph222.split.us.preheader:                     ; preds = %.lr.ph222
  %xtraiter = and i64 %wide.trip.count320, 1
  %i.r = icmp eq i32 %3, 1
  br i1 %i.r, label %.lr.ph222.split.us.epil.preheader, label %.lr.ph222.split.us.preheader.new

.lr.ph222.split.us.preheader.new:                 ; preds = %.lr.ph222.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count320, 2147483646
  br label %.lr.ph222.split.us

.lr.ph222.split.us:                               ; preds = %bb.f, %.lr.ph222.split.us.preheader.new
  %indvars.iv317 = phi i64 [ 0, %.lr.ph222.split.us.preheader.new ], [ %indvars.iv.next318.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph222.split.us.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv317
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %.lr.ph222.split.us.1

bb.d:                                             ; preds = %.lr.ph222.split.us
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !3
  br label %.lr.ph222.split.us.1

.lr.ph222.split.us.1:                             ; preds = %bb.d, %.lr.ph222.split.us
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv317
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph222.split.us.1
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph222.split.us.1
  %indvars.iv.next318.1 = add nuw nsw i64 %indvars.iv317, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge223thread-pre-split.loopexit.unr-lcssa, label %.lr.ph222.split.us, !llvm.loop !18

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.p, ptr %i.ah, align 8, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !3  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 4
  br i1 %i.ak, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.p, %i.aj                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3  ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 8
  br i1 %i.ap, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nsw i32 %i.al, %i.ao                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.aq, ptr %i.ar, align 16, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.at = load i32, ptr %i.as, align 16, !tbaa !3 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 16
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = add nsw i32 %i.aq, %i.at                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 32
  br i1 %i.az, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add nsw i32 %i.av, %i.ay                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3  ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 64
  br i1 %i.be, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = add nsw i32 %i.ba, %i.bd                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3  ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 128
  br i1 %i.bj, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = add nsw i32 %i.bf, %i.bi                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.bk, ptr %i.bl, align 16, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bn = load i32, ptr %i.bm, align 16, !tbaa !3 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 256
  br i1 %i.bo, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = add nsw i32 %i.bk, %i.bn                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 512
  br i1 %i.bt, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = add nsw i32 %i.bp, %i.bs                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !3  ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 1024
  br i1 %i.by, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = add nsw i32 %i.bu, %i.bx                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 2048
  br i1 %i.cd, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = add nsw i32 %i.bz, %i.cc                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.ce, ptr %i.cf, align 16, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ch = load i32, ptr %i.cg, align 16, !tbaa !3 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 4096
  br i1 %i.ci, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = add nsw i32 %i.ce, %i.ch                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 8192
  br i1 %i.cn, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = add nsw i32 %i.cj, %i.cm                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !3  ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 16384
  br i1 %i.cs, label %.critedge, label %.preheader208

.preheader208:                                    ; preds = %bb.s
  %i.ct = add nsw i32 %i.co, %i.cr                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !3
  br i1 %i.d, label %.lr.ph222, label %._crit_edge223

.lr.ph222.split:                                  ; preds = %.lr.ph222, %bb.v
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %bb.v ], [ 0, %.lr.ph222 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv312
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3  ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.lr.ph222.split
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3  ; 3 uses
  %.not171 = icmp slt i32 %i.da, %3
  br i1 %.not171, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.db = trunc i64 %indvars.iv312 to i16
  %i.dc = add nsw i32 %i.da, 1
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !3
  %i.dd = sext i32 %i.da to i64
  %i.de = getelementptr inbounds [2 x i8], ptr %4, i64 %i.dd
  store i16 %i.db, ptr %i.de, align 2, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph222.split
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count320
  br i1 %exitcond316.not, label %._crit_edge223thread-pre-split, label %.lr.ph222.split, !llvm.loop !18

._crit_edge223thread-pre-split.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge223thread-pre-split, label %.lr.ph222.split.us.epil.preheader

.lr.ph222.split.us.epil.preheader:                ; preds = %._crit_edge223thread-pre-split.loopexit.unr-lcssa, %.lr.ph222.split.us.preheader
  %indvars.iv317.epil.init = phi i64 [ 0, %.lr.ph222.split.us.preheader ], [ %indvars.iv.next318.1, %._crit_edge223thread-pre-split.loopexit.unr-lcssa ]
  %lcmp.mod443 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod443)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv317.epil.init
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3  ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %bb.w, label %._crit_edge223thread-pre-split

bb.w:                                             ; preds = %.lr.ph222.split.us.epil.preheader
  %i.di = zext nneg i32 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !3
  br label %._crit_edge223thread-pre-split

._crit_edge223thread-pre-split:                   ; preds = %bb.v, %._crit_edge223thread-pre-split.loopexit.unr-lcssa, %bb.w, %.lr.ph222.split.us.epil.preheader
  %.pr = load i32, ptr %i.cu, align 4, !tbaa !3
  br label %._crit_edge223

._crit_edge223:                                   ; preds = %._crit_edge223thread-pre-split, %.preheader208
  %i.dm = phi i32 [ %.pr, %._crit_edge223thread-pre-split ], [ %i.ct, %.preheader208 ] ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.x, label %bb.z

bb.x:                                             ; preds = %._crit_edge223
  %.not169 = icmp eq ptr %4, null
  br i1 %.not169, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = load i16, ptr %4, align 2, !tbaa !19
  %.sroa.441.0.insert.ext = zext i16 %i.do to i32
  %.sroa.441.0.insert.shift = shl nuw i32 %.sroa.441.0.insert.ext, 16 ; 2 uses
  %i.dp = sext i32 %i.c to i64                    ; 5 uses
  %i.dq = tail call i64 @llvm.smin.i64(i64 %i.dp, i64 1)
  %5 = sub i64 %i.dp, %i.dq
  %6 = add i64 %5, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %6, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.y
  %n.vec = and i64 %6, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.441.0.insert.shift, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dr = sub i64 %i.dp, %n.vec
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.dp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ds ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.du = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %broadcast.splat, ptr %i.dt, align 2
  store <4 x i32> %broadcast.splat, ptr %i.du, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %.critedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.y, %middle.block
  %indvars.iv339.ph = phi i64 [ %i.dp, %bb.y ], [ %i.dr, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %scalar.ph ], [ %indvars.iv339.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next340 = add nsw i64 %indvars.iv339, -1 ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next340
  store i32 %.sroa.441.0.insert.shift, ptr %i.dw, align 2
  %i.dx = icmp sgt i64 %indvars.iv339, 1
  br i1 %i.dx, label %scalar.ph, label %.critedge, !llvm.loop !24

bb.z:                                             ; preds = %._crit_edge223
  %i.dy = add nsw i32 %i.c, -1                    ; 2 uses
  %.not228 = icmp slt i32 %1, 1
  br i1 %.not228, label %.lr.ph280, label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.z
  %i.dz = icmp eq ptr %0, null
  %i.ea = add nuw i32 %1, 1
  %wide.trip.count333 = zext i32 %i.ea to i64     ; 2 uses
  br i1 %i.dz, label %.lr.ph238.split.us, label %.lr.ph238.split

.lr.ph238.split.us:                               ; preds = %.lr.ph238, %bb.aa
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %bb.aa ], [ 1, %.lr.ph238 ] ; 2 uses
  %.0140233.us = phi i32 [ %i.ee, %bb.aa ], [ 1, %.lr.ph238 ]
  %.0142232.us = phi i32 [ %i.eg, %bb.aa ], [ 1, %.lr.ph238 ]
  %i.eb = shl nuw i32 %.0140233.us, 1             ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv330
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = sub nsw i32 %i.eb, %i.ed                ; 3 uses
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph238.split.us
  %i.eg = add nsw i32 %i.eb, %.0142232.us         ; 2 uses
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %wide.trip.count333
  br i1 %exitcond334.not, label %.preheader204, label %.lr.ph238.split.us, !llvm.loop !25

.preheader204:                                    ; preds = %.loopexit, %bb.aa
  %.0144.lcssa = phi i32 [ 0, %bb.aa ], [ %.1145.lcssa, %.loopexit ]
  %.0142.lcssa = phi i32 [ %i.eg, %bb.aa ], [ %i.el, %.loopexit ] ; 2 uses
  %.0140.lcssa = phi i32 [ %i.ee, %bb.aa ], [ %i.eo, %.loopexit ]
  %.2133.lcssa = phi i32 [ 0, %bb.aa ], [ %.3134.lcssa, %.loopexit ]
  %i.eh = icmp slt i32 %1, 15
  br i1 %i.eh, label %.lr.ph280, label %._crit_edge281

.lr.ph280:                                        ; preds = %bb.z, %.preheader204
  %.2133.lcssa382 = phi i32 [ %.2133.lcssa, %.preheader204 ], [ 0, %bb.z ]
  %.0140.lcssa381 = phi i32 [ %.0140.lcssa, %.preheader204 ], [ 1, %bb.z ]
  %.0142.lcssa380 = phi i32 [ %.0142.lcssa, %.preheader204 ], [ 1, %bb.z ]
  %.0144.lcssa379 = phi i32 [ %.0144.lcssa, %.preheader204 ], [ 0, %bb.z ]
  %.not167 = icmp eq ptr %0, null                 ; 4 uses
  %i.ei = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ej = sext i32 %1 to i64
  br label %bb.ad

.lr.ph238.split:                                  ; preds = %.lr.ph238, %.loopexit
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %.loopexit ], [ 1, %.lr.ph238 ] ; 4 uses
  %.2133234 = phi i32 [ %.3134.lcssa, %.loopexit ], [ 0, %.lr.ph238 ] ; 2 uses
  %.0140233 = phi i32 [ %i.eo, %.loopexit ], [ 1, %.lr.ph238 ]
  %.0142232 = phi i32 [ %i.el, %.loopexit ], [ 1, %.lr.ph238 ]
  %.0144231 = phi i32 [ %.1145.lcssa, %.loopexit ], [ 0, %.lr.ph238 ] ; 2 uses
  %.0149229 = phi i32 [ %i.fn, %.loopexit ], [ 2, %.lr.ph238 ] ; 2 uses
  %i.ek = shl nuw i32 %.0140233, 1                ; 2 uses
  %i.el = add nsw i32 %i.ek, %.0142232            ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv325 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 3 uses
  %i.eo = sub nsw i32 %i.ek, %i.en                ; 3 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %.critedge, label %.preheader206

.preheader206:                                    ; preds = %.lr.ph238.split
  %i.eq = icmp sgt i32 %i.en, 0
  br i1 %i.eq, label %.lr.ph226, label %.loopexit

.lr.ph226:                                        ; preds = %.preheader206
  %i.er = trunc nuw nsw i64 %indvars.iv325 to i32
  %.sroa.03.0.insert.ext = and i32 %i.er, 255
  %i.es = trunc i64 %indvars.iv325 to i32
  %i.et = add i32 %i.es, -1
  %i.eu = shl nuw i32 1, %i.et
  %i.ev = sext i32 %.2133234 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph226, %GetNextKey.exit
  %indvars.iv322 = phi i64 [ %i.ev, %.lr.ph226 ], [ %indvars.iv.next323, %GetNextKey.exit ] ; 2 uses
  %.1145224 = phi i32 [ %.0144231, %.lr.ph226 ], [ %i.fj, %GetNextKey.exit ] ; 3 uses
  %i.ew = phi i32 [ %i.en, %.lr.ph226 ], [ %i.fk, %GetNextKey.exit ] ; 2 uses
  %i.ex = getelementptr inbounds [2 x i8], ptr %4, i64 %indvars.iv322
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !19
  %i.ez = zext i32 %.1145224 to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ez
  %.sroa.45.0.insert.ext = zext i16 %i.ey to i32
  %.sroa.45.0.insert.shift = shl nuw i32 %.sroa.45.0.insert.ext, 16
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.45.0.insert.shift, %.sroa.03.0.insert.ext
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.0.i172 = phi i32 [ %i.c, %bb.ab ], [ %i.fb, %bb.ac ]
  %i.fb = sub nsw i32 %.0.i172, %.0149229         ; 3 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fc
  store i32 %.sroa.03.0.insert.insert, ptr %i.fd, align 2
  %i.fe = icmp sgt i32 %i.fb, 0
  br i1 %i.fe, label %bb.ac, label %ReplicateValue.exit173, !llvm.loop !26

ReplicateValue.exit173:                           ; preds = %bb.ac, %ReplicateValue.exit173
  %.0.i174 = phi i32 [ %i.fg, %ReplicateValue.exit173 ], [ %i.eu, %bb.ac ] ; 4 uses
  %i.ff = and i32 %.0.i174, %.1145224
  %.not.i = icmp eq i32 %i.ff, 0
  %i.fg = lshr i32 %.0.i174, 1
  br i1 %.not.i, label %GetNextKey.exit, label %ReplicateValue.exit173, !llvm.loop !27

GetNextKey.exit:                                  ; preds = %ReplicateValue.exit173
  %indvars.iv.next323 = add nsw i64 %indvars.iv322, 1 ; 2 uses
  %i.fh = add i32 %.0.i174, -1
  %i.fi = and i32 %i.fh, %.1145224
  %i.fj = add i32 %i.fi, %.0.i174                 ; 2 uses
  %i.fk = add nsw i32 %i.ew, -1
  %i.fl = icmp sgt i32 %i.ew, 1
  br i1 %i.fl, label %bb.ab, label %..loopexit_crit_edge, !llvm.loop !28

..loopexit_crit_edge:                             ; preds = %GetNextKey.exit
  %i.fm = trunc nsw i64 %indvars.iv.next323 to i32
  store i32 0, ptr %i.em, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader206
  %.1145.lcssa = phi i32 [ %i.fj, %..loopexit_crit_edge ], [ %.0144231, %.preheader206 ] ; 2 uses
  %.3134.lcssa = phi i32 [ %i.fm, %..loopexit_crit_edge ], [ %.2133234, %.preheader206 ] ; 2 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %i.fn = shl i32 %.0149229, 1
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count333
  br i1 %exitcond329.not, label %.preheader204, label %.lr.ph238.split, !llvm.loop !25

bb.ad:                                            ; preds = %.lr.ph280, %._crit_edge253
  %indvars.iv335 = phi i64 [ %i.ej, %.lr.ph280 ], [ %indvars.iv.next336, %._crit_edge253 ] ; 3 uses
  %.0120277 = phi ptr [ %0, %.lr.ph280 ], [ %.1121.lcssa, %._crit_edge253 ] ; 3 uses
  %.0124276 = phi i32 [ %i.c, %.lr.ph280 ], [ %.1125.lcssa, %._crit_edge253 ] ; 3 uses
  %.5274 = phi i32 [ %.2133.lcssa382, %.lr.ph280 ], [ %.6.lcssa, %._crit_edge253 ] ; 3 uses
  %.0137273 = phi i32 [ %i.c, %.lr.ph280 ], [ %.1138.lcssa, %._crit_edge253 ] ; 3 uses
  %.1141272 = phi i32 [ %.0140.lcssa381, %.lr.ph280 ], [ %i.fs, %._crit_edge253 ]
  %.1143271 = phi i32 [ %.0142.lcssa380, %.lr.ph280 ], [ %i.fp, %._crit_edge253 ]
  %.3147270 = phi i32 [ %.0144.lcssa379, %.lr.ph280 ], [ %.4148.lcssa, %._crit_edge253 ] ; 3 uses
  %.1150268 = phi i32 [ 2, %.lr.ph280 ], [ %i.iu, %._crit_edge253 ] ; 3 uses
  %.0151267 = phi i32 [ -1, %.lr.ph280 ], [ %.1152.lcssa, %._crit_edge253 ] ; 3 uses
  %indvars.iv.next336 = add nsw i64 %indvars.iv335, 1 ; 5 uses
  %i.fo = shl nuw i32 %.1141272, 1                ; 2 uses
  %i.fp = add nsw i32 %i.fo, %.1143271            ; 2 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next336 ; 5 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3  ; 2 uses
  %i.fs = sub nsw i32 %i.fo, %i.fr                ; 2 uses
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.fu = icmp sgt i32 %i.fr, 0
  br i1 %i.fu, label %.lr.ph252, label %._crit_edge253

.lr.ph252:                                        ; preds = %.preheader
  %i.fv = icmp eq i64 %indvars.iv335, 14
  %i.fw = trunc i64 %indvars.iv.next336 to i32
  %i.fx = sub i32 %i.fw, %1                       ; 2 uses
  %i.fy = shl nuw i32 1, %i.fx                    ; 4 uses
  %.sroa.0.0.insert.ext = and i32 %i.fx, 255      ; 2 uses
  %i.fz = trunc nsw i64 %indvars.iv335 to i32
  %i.ga = shl nuw i32 1, %i.fz                    ; 2 uses
  br i1 %i.fv, label %.lr.ph252.split.us, label %.lr.ph252.split

.lr.ph252.split.us:                               ; preds = %.lr.ph252, %GetNextKey.exit179.us
  %.1121251.us = phi ptr [ %.3123188.us, %GetNextKey.exit179.us ], [ %.0120277, %.lr.ph252 ] ; 4 uses
  %.1125250.us = phi i32 [ %.2126187.us, %GetNextKey.exit179.us ], [ %.0124276, %.lr.ph252 ] ; 3 uses
  %.6249.us = phi i32 [ %.7.us, %GetNextKey.exit179.us ], [ %.5274, %.lr.ph252 ] ; 4 uses
  %.1138248.us = phi i32 [ %.2139186.us, %GetNextKey.exit179.us ], [ %.0137273, %.lr.ph252 ] ; 3 uses
  %.4148247.us = phi i32 [ %i.hc, %GetNextKey.exit179.us ], [ %.3147270, %.lr.ph252 ] ; 4 uses
  %.1152246.us = phi i32 [ %.2153185.us, %GetNextKey.exit179.us ], [ %.0151267, %.lr.ph252 ] ; 3 uses
  %i.gb = and i32 %.4148247.us, %i.dy             ; 4 uses
  %.not166.us = icmp eq i32 %i.gb, %.1152246.us
  br i1 %.not166.us, label %bb.ae, label %NextTableBitSize.exit.us

NextTableBitSize.exit.us:                         ; preds = %.lr.ph252.split.us
  %i.gc = add nsw i32 %i.fy, %.1125250.us         ; 2 uses
  br i1 %.not167, label %ReplicateValue.exit176.us, label %.thread189.us

.thread189.us:                                    ; preds = %NextTableBitSize.exit.us
  %i.gd = sext i32 %.1138248.us to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %.1121251.us, i64 %i.gd ; 2 uses
  %i.gf = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gf ; 2 uses
  store i8 15, ptr %i.gg, align 2, !tbaa !29
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = sub i64 %i.gh, %i.ei
  %i.gj = lshr exact i64 %i.gi, 2
  %i.gk = sub nsw i64 %i.gj, %i.gf
  %i.gl = trunc i64 %i.gk to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
end_hunk_0
begin_hunk_1_@BuildHuffmanTable:bb.a

.lr.ph.preheader.i:                               ; preds = %.lr.ph252.split
  %i.hh = sext i32 %.1138248 to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.1121251, i64 %i.hh ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next336, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ai ] ; 3 uses
  %.013.i = phi i32 [ %i.fy, %.lr.ph.preheader.i ], [ %i.hn, %bb.ai ]
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hl = sub nsw i32 %.013.i, %i.hk              ; 2 uses
  %i.hm = icmp slt i32 %i.hl, 1
  br i1 %i.hm, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hn = shl nuw i32 %i.hl, 1
  %i.ho = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.ho, 15
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
  %i.hp = trunc nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %bb.ai, %._crit_edge.loopexit.split.loop.exit.i
  %.010.lcssa.ph.i = phi i32 [ %i.hp, %._crit_edge.loopexit.split.loop.exit.i ], [ 15, %bb.ai ] ; 2 uses
  %.pre.i = sub nsw i32 %.010.lcssa.ph.i, %1
  %i.hq = shl nuw i32 1, %.pre.i                  ; 3 uses
  %i.hr = add nsw i32 %i.hq, %.1125250            ; 2 uses
  br i1 %.not167, label %ReplicateValue.exit176, label %.thread189

.thread189:                                       ; preds = %._crit_edge.loopexit.i
  %i.hs = trunc i32 %.010.lcssa.ph.i to i8
  %i.ht = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ht ; 2 uses
  store i8 %i.hs, ptr %i.hu, align 2, !tbaa !29
  %i.hv = ptrtoint ptr %i.hi to i64
  %i.hw = sub i64 %i.hv, %i.ei
  %i.hx = lshr exact i64 %i.hw, 2
  %i.hy = sub nsw i64 %i.hx, %i.ht
  %i.hz = trunc i64 %i.hy to i16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 2
  store i16 %i.hz, ptr %i.ia, align 2, !tbaa !31
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph252.split
  br i1 %.not167, label %ReplicateValue.exit176, label %bb.ak

bb.ak:                                            ; preds = %.thread189, %bb.aj
  %.3123198 = phi ptr [ %i.hi, %.thread189 ], [ %.1121251, %bb.aj ] ; 2 uses
  %.2126197 = phi i32 [ %i.hr, %.thread189 ], [ %.1125250, %bb.aj ]
  %.2139196 = phi i32 [ %i.hq, %.thread189 ], [ %.1138248, %bb.aj ] ; 2 uses
  %.2153195 = phi i32 [ %i.hg, %.thread189 ], [ %.1152246, %bb.aj ]
  %i.ib = sext i32 %.6249 to i64
  %i.ic = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !19
  %i.ie = lshr i32 %.4148247, %1
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.3123198, i64 %i.if
  %.sroa.42.0.insert.ext = zext i16 %i.id to i32
  %.sroa.42.0.insert.shift = shl nuw i32 %.sroa.42.0.insert.ext, 16
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.42.0.insert.shift, %.sroa.0.0.insert.ext
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.0.i175 = phi i32 [ %.2139196, %bb.ak ], [ %i.ih, %bb.al ]
  %i.ih = sub nsw i32 %.0.i175, %.1150268         ; 3 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ii
  store i32 %.sroa.0.0.insert.insert, ptr %i.ij, align 2
  %i.ik = icmp sgt i32 %i.ih, 0
  br i1 %i.ik, label %bb.al, label %ReplicateValue.exit176.loopexit, !llvm.loop !26

ReplicateValue.exit176.loopexit:                  ; preds = %bb.al
  %i.il = add nsw i32 %.6249, 1
  br label %ReplicateValue.exit176

ReplicateValue.exit176:                           ; preds = %ReplicateValue.exit176.loopexit, %._crit_edge.loopexit.i, %bb.aj
  %.3123188 = phi ptr [ %.1121251, %._crit_edge.loopexit.i ], [ %.1121251, %bb.aj ], [ %.3123198, %ReplicateValue.exit176.loopexit ] ; 2 uses
  %.2126187 = phi i32 [ %i.hr, %._crit_edge.loopexit.i ], [ %.1125250, %bb.aj ], [ %.2126197, %ReplicateValue.exit176.loopexit ] ; 2 uses
  %.2139186 = phi i32 [ %i.hq, %._crit_edge.loopexit.i ], [ %.1138248, %bb.aj ], [ %.2139196, %ReplicateValue.exit176.loopexit ] ; 2 uses
  %.2153185 = phi i32 [ %i.hg, %._crit_edge.loopexit.i ], [ %.1152246, %bb.aj ], [ %.2153195, %ReplicateValue.exit176.loopexit ] ; 2 uses
  %.7 = phi i32 [ %.6249, %._crit_edge.loopexit.i ], [ %.6249, %bb.aj ], [ %i.il, %ReplicateValue.exit176.loopexit ] ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %ReplicateValue.exit176
  %.0.i177 = phi i32 [ %i.ga, %ReplicateValue.exit176 ], [ %i.in, %bb.am ] ; 4 uses
  %i.im = and i32 %.0.i177, %.4148247
  %.not.i178 = icmp eq i32 %i.im, 0
  %i.in = lshr i32 %.0.i177, 1
  br i1 %.not.i178, label %GetNextKey.exit179, label %bb.am, !llvm.loop !27

GetNextKey.exit179:                               ; preds = %bb.am
  %i.io = add i32 %.0.i177, -1
  %i.ip = and i32 %i.io, %.4148247
  %i.iq = add i32 %i.ip, %.0.i177                 ; 2 uses
  %i.ir = load i32, ptr %i.fq, align 4, !tbaa !3  ; 2 uses
  %i.is = add nsw i32 %i.ir, -1
  store i32 %i.is, ptr %i.fq, align 4, !tbaa !3
  %i.it = icmp sgt i32 %i.ir, 1
  br i1 %i.it, label %.lr.ph252.split, label %._crit_edge253, !llvm.loop !32

._crit_edge253:                                   ; preds = %GetNextKey.exit179, %GetNextKey.exit179.us, %.preheader
  %.1152.lcssa = phi i32 [ %.0151267, %.preheader ], [ %.2153185.us, %GetNextKey.exit179.us ], [ %.2153185, %GetNextKey.exit179 ]
  %.4148.lcssa = phi i32 [ %.3147270, %.preheader ], [ %i.hc, %GetNextKey.exit179.us ], [ %i.iq, %GetNextKey.exit179 ]
  %.1138.lcssa = phi i32 [ %.0137273, %.preheader ], [ %.2139186.us, %GetNextKey.exit179.us ], [ %.2139186, %GetNextKey.exit179 ]
  %.6.lcssa = phi i32 [ %.5274, %.preheader ], [ %.7.us, %GetNextKey.exit179.us ], [ %.7, %GetNextKey.exit179 ]
  %.1125.lcssa = phi i32 [ %.0124276, %.preheader ], [ %.2126187.us, %GetNextKey.exit179.us ], [ %.2126187, %GetNextKey.exit179 ] ; 2 uses
  %.1121.lcssa = phi ptr [ %.0120277, %.preheader ], [ %.3123188.us, %GetNextKey.exit179.us ], [ %.3123188, %GetNextKey.exit179 ]
  %i.iu = shl i32 %.1150268, 1
  %i.iv = and i64 %indvars.iv.next336, 4294967295
  %exitcond338.not = icmp eq i64 %i.iv, 15
  br i1 %exitcond338.not, label %._crit_edge281.loopexit, label %bb.ad, !llvm.loop !34

._crit_edge281.loopexit:                          ; preds = %._crit_edge253
  %.pre342 = load i32, ptr %i.cu, align 4, !tbaa !3
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %.preheader204
  %i.iw = phi i32 [ %i.dm, %.preheader204 ], [ %.pre342, %._crit_edge281.loopexit ]
  %.1143.lcssa = phi i32 [ %.0142.lcssa, %.preheader204 ], [ %i.fp, %._crit_edge281.loopexit ]
  %.0124.lcssa = phi i32 [ %i.c, %.preheader204 ], [ %.1125.lcssa, %._crit_edge281.loopexit ]
  %i.ix = shl nsw i32 %i.iw, 1
  %i.iy = add nsw i32 %i.ix, -1
  %.not165 = icmp eq i32 %.1143.lcssa, %i.iy
  %cond.fr = freeze i1 %.not165
  %spec.select = select i1 %cond.fr, i32 %.0124.lcssa, i32 0
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.t, %.lr.ph238.split, %.lr.ph238.split.us, %bb.ad, %scalar.ph, %middle.block, %bb.c, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %._crit_edge281, %bb.x, %._crit_edge
  %.3 = phi i32 [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %._crit_edge ], [ 0, %.lr.ph238.split.us ], [ 0, %bb.t ], [ %i.c, %bb.x ], [ %i.c, %middle.block ], [ %spec.select, %._crit_edge281 ], [ %i.c, %scalar.ph ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %.lr.ph238.split ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8LHuffmanTablesAllocate(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %i.c = sext i32 %0 to i64
  %i.d = tail call ptr @WebPSafeMalloc(i64 noundef %i.c, i64 noundef 4) #7 ; 3 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !13
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %0, ptr %i.g, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LHuffmanTablesDeallocate(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @WebPSafeFree(ptr noundef %i.d) #7
  store ptr null, ptr %0, align 8, !tbaa !13
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.014 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = load ptr, ptr %.014, align 8, !tbaa !13
  tail call void @WebPSafeFree(ptr noundef %i.g) #7
  tail call void @WebPSafeFree(ptr noundef nonnull %.014) #7
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !11, i64 32}
!8 = !{!"HuffmanTables", !9, i64 0, !11, i64 32}
!9 = !{!"HuffmanTablesSegment", !10, i64 0, !10, i64 8, !11, i64 16, !4, i64 24}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS20HuffmanTablesSegment", !10, i64 0}
!12 = !{!9, !10, i64 8}
!13 = !{!9, !10, i64 0}
!14 = !{!9, !4, i64 24}
!15 = !{!9, !11, i64 16}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = distinct !{!21, !17, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !17, !23, !22}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = !{!30, !5, i64 0}
!30 = !{!"", !5, i64 0, !20, i64 2}
!31 = !{!30, !20, i64 2}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
end_hunk_1
