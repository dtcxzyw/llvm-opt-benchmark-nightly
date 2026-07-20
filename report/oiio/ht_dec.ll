inline.NumInlined: 55
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@opj_t1_ht_decode_cblk:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @opj_mutex_lock(ptr noundef) local_unnamed_addr #2

declare i32 @opj_event_msg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @opj_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @opj_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @mel_init(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 36), (40, 48)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 2, 4080) %3) unnamed_addr #3 {
.critedge:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 %i.a
  %i.c = zext nneg i32 %3 to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d     ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.g, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i32 0, ptr %i.h, align 8, !tbaa !117
  %i.i = add nsw i32 %3, -1                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.k, align 4, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.l, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !121
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3                          ; 3 uses
  %i.q = load i8, ptr %i.e, align 1, !tbaa !46
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp eq i32 %i.i, 1
  %i.t = or i64 %i.r, 15
  %spec.select = select i1 %i.s, i64 %i.t, i64 %i.r ; 4 uses
  %i.u = add nsw i32 %3, -2                       ; 2 uses
  store i32 %i.u, ptr %i.j, align 4, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !113
  store i64 %spec.select, ptr %i.g, align 8, !tbaa !116
  store i32 8, ptr %i.f, align 8, !tbaa !115
  %i.w = icmp eq i64 %spec.select, 255            ; 3 uses
  %i.x = zext i1 %i.w to i32
  store i32 %i.x, ptr %i.h, align 8, !tbaa !117
  %exitcond.not = icmp eq i32 %i.p, 3
  br i1 %exitcond.not, label %bb.m, label %bb.a

bb.a:                                             ; preds = %.critedge
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = load i8, ptr %i.v, align 1, !tbaa !46
  %i.z = icmp ugt i8 %i.y, -113
  br i1 %i.z, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = icmp samesign ugt i32 %3, 2             ; 2 uses
  br i1 %i.aa, label %bb.d, label %.critedge.1

bb.d:                                             ; preds = %bb.c
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !46
  %i.ac = zext i8 %i.ab to i64
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.d, %bb.c
  %i.ad = phi i64 [ %i.ac, %bb.d ], [ 255, %bb.c ] ; 2 uses
  %i.ae = icmp eq i32 %i.u, 1
  %i.af = or i64 %i.ad, 15
  %spec.select.1 = select i1 %i.ae, i64 %i.af, i64 %i.ad ; 2 uses
  %i.ag = add nsw i32 %3, -3                      ; 2 uses
  store i32 %i.ag, ptr %i.j, align 4, !tbaa !118
  %i.ah = zext i1 %i.aa to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ah ; 4 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !113
  %i.aj = select i1 %i.w, i32 7, i32 8            ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl i64 %spec.select, %i.ak
  %i.am = or i64 %i.al, %spec.select.1            ; 3 uses
  store i64 %i.am, ptr %i.g, align 8, !tbaa !116
  %i.an = add nuw nsw i32 %i.aj, 8                ; 3 uses
  store i32 %i.an, ptr %i.f, align 8, !tbaa !115
  %i.ao = icmp eq i64 %spec.select.1, 255         ; 3 uses
  %i.ap = zext i1 %i.ao to i32
  store i32 %i.ap, ptr %i.h, align 8, !tbaa !117
  %exitcond.not.1 = icmp eq i32 %i.p, 2
  br i1 %exitcond.not.1, label %bb.m, label %bb.e

bb.e:                                             ; preds = %.critedge.1
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !46
  %i.ar = icmp ugt i8 %i.aq, -113
  br i1 %i.ar, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = icmp samesign ugt i32 %3, 3             ; 2 uses
  br i1 %i.as, label %bb.h, label %.critedge.2

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %i.ai, align 1, !tbaa !46
  %i.au = zext i8 %i.at to i64
  br label %.critedge.2

.critedge.2:                                      ; preds = %bb.h, %bb.g
  %i.av = phi i64 [ %i.au, %bb.h ], [ 255, %bb.g ] ; 2 uses
  %i.aw = icmp eq i32 %i.ag, 1
  %i.ax = or i64 %i.av, 15
  %spec.select.2 = select i1 %i.aw, i64 %i.ax, i64 %i.av ; 2 uses
  %i.ay = add nsw i32 %3, -4                      ; 2 uses
  store i32 %i.ay, ptr %i.j, align 4, !tbaa !118
  %i.az = zext i1 %i.as to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.az ; 4 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !113
  %i.bb = select i1 %i.ao, i32 7, i32 8           ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 %i.am, %i.bc
  %i.be = or i64 %i.bd, %spec.select.2            ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !tbaa !116
  %i.bf = add nuw nsw i32 %i.an, %i.bb            ; 3 uses
  store i32 %i.bf, ptr %i.f, align 8, !tbaa !115
  %i.bg = icmp eq i64 %spec.select.2, 255         ; 3 uses
  %i.bh = zext i1 %i.bg to i32
  store i32 %i.bh, ptr %i.h, align 8, !tbaa !117
  %exitcond.not.2 = icmp eq i32 %i.p, 1
  br i1 %exitcond.not.2, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.critedge.2
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !46
  %i.bj = icmp ugt i8 %i.bi, -113
  br i1 %i.bj, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = icmp samesign ugt i32 %3, 4             ; 2 uses
  br i1 %i.bk, label %bb.l, label %.critedge.3

bb.l:                                             ; preds = %bb.k
  %i.bl = load i8, ptr %i.ba, align 1, !tbaa !46
  %i.bm = zext i8 %i.bl to i64
  br label %.critedge.3

.critedge.3:                                      ; preds = %bb.l, %bb.k
  %i.bn = phi i64 [ %i.bm, %bb.l ], [ 255, %bb.k ] ; 2 uses
  %i.bo = icmp eq i32 %i.ay, 1
  %i.bp = or i64 %i.bn, 15
  %spec.select.3 = select i1 %i.bo, i64 %i.bp, i64 %i.bn ; 2 uses
  %i.bq = add nsw i32 %3, -5
  store i32 %i.bq, ptr %i.j, align 4, !tbaa !118
  %i.br = zext i1 %i.bk to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.br
  store ptr %i.bs, ptr %0, align 8, !tbaa !113
  %i.bt = select i1 %i.bg, i32 7, i32 8           ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl i64 %i.be, %i.bu
  %i.bw = or i64 %i.bv, %spec.select.3            ; 2 uses
  store i64 %i.bw, ptr %i.g, align 8, !tbaa !116
  %i.bx = add nuw nsw i32 %i.bf, %i.bt            ; 2 uses
  store i32 %i.bx, ptr %i.f, align 8, !tbaa !115
  %i.by = icmp eq i64 %spec.select.3, 255
  %i.bz = zext i1 %i.by to i32
  store i32 %i.bz, ptr %i.h, align 8, !tbaa !117
  br label %bb.m

bb.m:                                             ; preds = %.critedge.3, %.critedge.2, %.critedge.1, %.critedge
  %.lcssa42 = phi i64 [ %spec.select, %.critedge ], [ %i.am, %.critedge.1 ], [ %i.be, %.critedge.2 ], [ %i.bw, %.critedge.3 ]
  %.lcssa = phi i32 [ 8, %.critedge ], [ %i.an, %.critedge.1 ], [ %i.bf, %.critedge.2 ], [ %i.bx, %.critedge.3 ]
  %i.ca = sub nsw i32 64, %.lcssa
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl i64 %.lcssa42, %i.cb
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !116
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.f, %bb.j, %bb.m
  %.2 = phi i32 [ 1, %bb.m ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @rev_init(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 28)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 2, 4080) %3) unnamed_addr #3 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -2
  %i.d = add nsw i32 %3, -2                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !122
  %i.f = getelementptr i8, ptr %i.b, i64 -3       ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !123
  %i.g = load i8, ptr %i.c, align 1, !tbaa !46    ; 2 uses
  %i.h = lshr i8 %i.g, 4
  %i.i = zext nneg i8 %i.h to i64                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !49
  %i.k = and i64 %i.i, 7
  %i.l = icmp eq i64 %i.k, 7
  %i.m = select i1 %i.l, i32 3, i32 4             ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !52
  %i.o = icmp ugt i8 %i.g, -113                   ; 3 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i32 %i.p, ptr %i.q, align 8, !tbaa !124
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.t, 1
  %. = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.d) ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread41, label %.lr.ph

.thread41:                                        ; preds = %bb.a
  %i.v = sub nuw nsw i32 %i.d, %.
  br label %.loopexit.i.sink.split

.lr.ph:                                           ; preds = %bb.a
  %4 = getelementptr i8, ptr %i.b, i64 -4         ; 4 uses
  store ptr %4, ptr %0, align 8, !tbaa !123
  %5 = load i8, ptr %i.f, align 1, !tbaa !46      ; 2 uses
  %6 = zext i8 %5 to i64                          ; 2 uses
  %7 = and i64 %6, 127
  %8 = icmp eq i64 %7, 127
  %9 = select i1 %i.o, i1 %8, i1 false
  %10 = select i1 %9, i32 7, i32 8
  %11 = zext nneg i32 %i.m to i64
  %12 = shl nuw nsw i64 %6, %11
  %13 = or i64 %12, %i.i                          ; 3 uses
  store i64 %13, ptr %i.j, align 8, !tbaa !49
  %14 = add nuw nsw i32 %10, %i.m                 ; 4 uses
  store i32 %14, ptr %i.n, align 8, !tbaa !52
  %15 = icmp ugt i8 %5, -113                      ; 3 uses
  %16 = zext i1 %15 to i32
  store i32 %16, ptr %i.q, align 8, !tbaa !124
  %exitcond.not = icmp eq i32 %., 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %17 = getelementptr i8, ptr %i.b, i64 -5        ; 4 uses
  store ptr %17, ptr %0, align 8, !tbaa !123
  %18 = load i8, ptr %4, align 1, !tbaa !46       ; 2 uses
  %19 = zext i8 %18 to i64                        ; 2 uses
  %20 = and i64 %19, 127
  %21 = icmp eq i64 %20, 127
  %22 = select i1 %15, i1 %21, i1 false
  %23 = select i1 %22, i32 7, i32 8
  %24 = zext nneg i32 %14 to i64
  %25 = shl nuw nsw i64 %19, %24
  %26 = or i64 %25, %13                           ; 3 uses
  store i64 %26, ptr %i.j, align 8, !tbaa !49
  %27 = add nuw nsw i32 %23, %14                  ; 4 uses
  store i32 %27, ptr %i.n, align 8, !tbaa !52
  %28 = icmp ugt i8 %18, -113                     ; 3 uses
  %29 = zext i1 %28 to i32
  store i32 %29, ptr %i.q, align 8, !tbaa !124
  %exitcond.not.1 = icmp eq i32 %., 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.1
  %i.w = getelementptr i8, ptr %i.b, i64 -6       ; 4 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !123
  %i.x = load i8, ptr %17, align 1, !tbaa !46     ; 2 uses
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = and i64 %i.y, 127
  %i.aa = icmp eq i64 %i.z, 127
  %i.ab = select i1 %28, i1 %i.aa, i1 false
  %i.ac = select i1 %i.ab, i32 7, i32 8
  %i.ad = zext nneg i32 %27 to i64
  %i.ae = shl i64 %i.y, %i.ad
  %i.af = or i64 %i.ae, %26                       ; 3 uses
  store i64 %i.af, ptr %i.j, align 8, !tbaa !49
  %i.ag = add nuw nsw i32 %i.ac, %27              ; 4 uses
  store i32 %i.ag, ptr %i.n, align 8, !tbaa !52
  %i.ah = icmp ugt i8 %i.x, -113                  ; 3 uses
  %i.ai = zext i1 %i.ah to i32
  store i32 %i.ai, ptr %i.q, align 8, !tbaa !124
  %exitcond.not.a = icmp eq i32 %., 3
  br i1 %exitcond.not.a, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.a
  %30 = getelementptr i8, ptr %i.b, i64 -7        ; 2 uses
  store ptr %30, ptr %0, align 8, !tbaa !123
  %31 = load i8, ptr %i.w, align 1, !tbaa !46     ; 2 uses
  %32 = zext i8 %31 to i64                        ; 2 uses
  %33 = and i64 %32, 127
  %34 = icmp eq i64 %33, 127
  %35 = select i1 %i.ah, i1 %34, i1 false
  %36 = select i1 %35, i32 7, i32 8
  %37 = zext nneg i32 %i.ag to i64
  %38 = shl i64 %32, %37
  %39 = or i64 %38, %i.af                         ; 2 uses
  store i64 %39, ptr %i.j, align 8, !tbaa !49
  %40 = add nuw nsw i32 %36, %i.ag                ; 2 uses
  store i32 %40, ptr %i.n, align 8, !tbaa !52
  %41 = icmp ugt i8 %31, -113                     ; 2 uses
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %i.q, align 8, !tbaa !124
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph.a, %.lr.ph.1, %.lr.ph
  %.lcssa57 = phi ptr [ %i.f, %.lr.ph ], [ %4, %.lr.ph.1 ], [ %17, %.lr.ph.a ], [ %i.w, %.lr.ph.3 ] ; 2 uses
  %.lcssa56 = phi ptr [ %4, %.lr.ph ], [ %17, %.lr.ph.1 ], [ %i.w, %.lr.ph.a ], [ %30, %.lr.ph.3 ] ; 2 uses
  %.lcssa55 = phi i64 [ %13, %.lr.ph ], [ %26, %.lr.ph.1 ], [ %i.af, %.lr.ph.a ], [ %39, %.lr.ph.3 ] ; 4 uses
  %.lcssa54 = phi i32 [ %14, %.lr.ph ], [ %27, %.lr.ph.1 ], [ %i.ag, %.lr.ph.a ], [ %40, %.lr.ph.3 ] ; 5 uses
  %.lcssa53 = phi i1 [ %15, %.lr.ph ], [ %28, %.lr.ph.1 ], [ %i.ah, %.lr.ph.a ], [ %41, %.lr.ph.3 ] ; 4 uses
  %i.aj = sub nsw i32 %i.d, %.                    ; 9 uses
  store i32 %i.aj, ptr %i.e, align 4, !tbaa !122
  %i.ak = icmp ugt i32 %.lcssa54, 32
  br i1 %i.ak, label %rev_read.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.al = icmp sgt i32 %i.aj, 3
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds i8, ptr %.lcssa57, i64 -4
  %.val.i = load i32, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds i8, ptr %.lcssa57, i64 -5
  store ptr %i.an, ptr %0, align 8, !tbaa !123
  %i.ao = add nsw i32 %i.aj, -4
  br label %.loopexit.i.sink.split

bb.d:                                             ; preds = %bb.b
  %i.ap = icmp sgt i32 %i.aj, 0
  br i1 %i.ap, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %bb.d
  %i.aq = add nsw i32 %3, -3
  %xtraiter = and i32 %i.aj, 1
  %i.ar = icmp eq i32 %i.aq, %.
  br i1 %i.ar, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i32 %i.aj, 2147483646
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %i.as = phi ptr [ %.lcssa56, %.preheader.i.preheader.new ], [ %i.bb, %.preheader.i ] ; 3 uses
  %.047.i = phi i32 [ 0, %.preheader.i.preheader.new ], [ %i.bf, %.preheader.i ]
  %.04446.i = phi i32 [ 24, %.preheader.i.preheader.new ], [ %i.bh, %.preheader.i ] ; 3 uses
  %i.at = phi i32 [ %i.aj, %.preheader.i.preheader.new ], [ %i.bg, %.preheader.i ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -1 ; 2 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !123
  %i.av = load i8, ptr %i.as, align 1, !tbaa !46
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl i32 %i.aw, %.04446.i
  %i.ay = or i32 %i.ax, %.047.i
  %i.az = add nsw i32 %i.at, -1
  store i32 %i.az, ptr %i.e, align 4, !tbaa !122
  %i.ba = add nsw i32 %.04446.i, -8
  %i.bb = getelementptr inbounds i8, ptr %i.as, i64 -2 ; 3 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !123
  %i.bc = load i8, ptr %i.au, align 1, !tbaa !46
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl i32 %i.bd, %i.ba
  %i.bf = or i32 %i.be, %i.ay                     ; 3 uses
  %i.bg = add nsw i32 %i.at, -2                   ; 3 uses
  store i32 %i.bg, ptr %i.e, align 4, !tbaa !122
  %i.bh = add nsw i32 %.04446.i, -16              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !125

.loopexit.i.sink.split:                           ; preds = %bb.c, %.thread41
  %.sink = phi i32 [ %i.v, %.thread41 ], [ %i.ao, %bb.c ]
  %.ph = phi i64 [ %i.i, %.thread41 ], [ %.lcssa55, %bb.c ]
  %.ph46 = phi i1 [ %i.o, %.thread41 ], [ %.lcssa53, %bb.c ]
  %.ph47 = phi i32 [ %i.m, %.thread41 ], [ %.lcssa54, %bb.c ]
  %.1.i.ph = phi i32 [ 0, %.thread41 ], [ %.val.i, %bb.c ]
  store i32 %.sink, ptr %i.e, align 4, !tbaa !122
  br label %.loopexit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi ptr [ %.lcssa56, %.preheader.i.preheader ], [ %i.bb, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.047.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %i.bf, %.loopexit.i.loopexit.unr-lcssa ]
  %.04446.i.epil.init = phi i32 [ 24, %.preheader.i.preheader ], [ %i.bh, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init59 = phi i32 [ %i.aj, %.preheader.i.preheader ], [ %i.bg, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.bi = getelementptr inbounds i8, ptr %.epil.init, i64 -1
  store ptr %i.bi, ptr %0, align 8, !tbaa !123
  %i.bj = load i8, ptr %.epil.init, align 1, !tbaa !46
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl i32 %i.bk, %.04446.i.epil.init
  %i.bm = or i32 %i.bl, %.047.i.epil.init
  %i.bn = add nsw i32 %.epil.init59, -1
  store i32 %i.bn, ptr %i.e, align 4, !tbaa !122
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.loopexit.i.sink.split, %bb.d
  %i.bo = phi i64 [ %.ph, %.loopexit.i.sink.split ], [ %.lcssa55, %bb.d ], [ %.lcssa55, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa55, %.preheader.i.epil.preheader ]
  %i.bp = phi i1 [ %.ph46, %.loopexit.i.sink.split ], [ %.lcssa53, %bb.d ], [ %.lcssa53, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa53, %.preheader.i.epil.preheader ]
  %i.bq = phi i32 [ %.ph47, %.loopexit.i.sink.split ], [ %.lcssa54, %bb.d ], [ %.lcssa54, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa54, %.preheader.i.epil.preheader ] ; 2 uses
  %.1.i = phi i32 [ %.1.i.ph, %.loopexit.i.sink.split ], [ 0, %bb.d ], [ %i.bf, %.loopexit.i.loopexit.unr-lcssa ], [ %i.bm, %.preheader.i.epil.preheader ] ; 9 uses
  %i.br = lshr i32 %.1.i, 24
  %i.bs = and i32 %.1.i, 2130706432
  %i.bt = icmp eq i32 %i.bs, 2130706432
  %i.bu = select i1 %i.bp, i1 %i.bt, i1 false
  %i.bv = select i1 %i.bu, i32 7, i32 8           ; 2 uses
  %i.bw = icmp ugt i32 %.1.i, -1879048193
  %i.bx = lshr i32 %.1.i, 16
  %i.by = and i32 %i.bx, 255                      ; 2 uses
  %i.bz = shl nuw nsw i32 %i.by, %i.bv
  %i.ca = or i32 %i.bz, %i.br
  %i.cb = and i32 %.1.i, 8323072
  %i.cc = icmp eq i32 %i.cb, 8323072
  %i.cd = and i1 %i.bw, %i.cc
  %i.ce = select i1 %i.cd, i32 7, i32 8
  %i.cf = add nuw nsw i32 %i.bv, %i.ce            ; 2 uses
  %i.cg = icmp samesign ugt i32 %i.by, 143
  %i.ch = lshr i32 %.1.i, 8
  %i.ci = and i32 %i.ch, 255                      ; 2 uses
  %i.cj = shl nuw nsw i32 %i.ci, %i.cf
  %i.ck = or i32 %i.ca, %i.cj
  %i.cl = and i32 %.1.i, 32512
  %i.cm = icmp eq i32 %i.cl, 32512
  %i.cn = select i1 %i.cg, i1 %i.cm, i1 false
  %i.co = select i1 %i.cn, i32 7, i32 8
  %i.cp = add nuw nsw i32 %i.cf, %i.co            ; 2 uses
  %i.cq = icmp samesign ugt i32 %i.ci, 143
  %i.cr = and i32 %.1.i, 255                      ; 2 uses
  %i.cs = shl nuw i32 %i.cr, %i.cp
  %i.ct = or i32 %i.ck, %i.cs
  %i.cu = and i32 %.1.i, 127
  %i.cv = icmp eq i32 %i.cu, 127
  %i.cw = select i1 %i.cq, i1 %i.cv, i1 false
  %i.cx = select i1 %i.cw, i32 7, i32 8
  %i.cy = icmp samesign ugt i32 %i.cr, 143
  %i.cz = zext i1 %i.cy to i32
  %i.da = zext i32 %i.ct to i64
  %i.db = zext nneg i32 %i.bq to i64
  %i.dc = shl nuw i64 %i.da, %i.db
  %i.dd = or i64 %i.dc, %i.bo
  store i64 %i.dd, ptr %i.j, align 8, !tbaa !49
  %i.de = add nuw nsw i32 %i.cx, %i.bq
  %i.df = add nuw nsw i32 %i.de, %i.cp
  store i32 %i.df, ptr %i.n, align 8, !tbaa !52
  store i32 %i.cz, ptr %i.q, align 8, !tbaa !124
  br label %rev_read.exit

rev_read.exit:                                    ; preds = %._crit_edge, %.loopexit.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @frwd_init(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #3 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !126
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %3, ptr %i.e, align 4, !tbaa !127
  %i.f = ptrtoint ptr %1 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 3                          ; 3 uses
  %i.i = add nsw i32 %2, -1                       ; 3 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !128
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !126
  %i.l = load i8, ptr %1, align 1, !tbaa !46
  %i.m = zext i8 %i.l to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.k, %bb.b ], [ %1, %bb.a ]   ; 4 uses
  %i.o = phi i32 [ %i.m, %bb.b ], [ %3, %bb.a ]   ; 3 uses
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !53
  store i32 8, ptr %i.b, align 8, !tbaa !55
  %i.q = icmp eq i32 %i.o, 255                    ; 3 uses
  %i.r = zext i1 %i.q to i32
  store i32 %i.r, ptr %i.c, align 4, !tbaa !129
  %exitcond.not = icmp eq i32 %i.h, 3
  br i1 %exitcond.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %2, -2                       ; 3 uses
  store i32 %i.s, ptr %i.d, align 8, !tbaa !128
  %i.t = icmp sgt i32 %2, 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !126
  %i.v = load i8, ptr %i.n, align 1, !tbaa !46
  %i.w = zext i8 %i.v to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 4 uses
  %i.y = phi i32 [ %i.w, %bb.e ], [ %3, %bb.d ]   ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.z, %i.o
  %i.ab = zext nneg i32 %i.aa to i64              ; 3 uses
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !53
  %i.ac = select i1 %i.q, i32 15, i32 16          ; 4 uses
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !55
  %i.ad = icmp eq i32 %i.y, 255                   ; 3 uses
  %i.ae = zext i1 %i.ad to i32
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !129
  %exitcond.not.1 = icmp eq i32 %i.h, 2
  br i1 %exitcond.not.1, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %2, -3                      ; 3 uses
  store i32 %i.af, ptr %i.d, align 8, !tbaa !128
  %i.ag = icmp sgt i32 %2, 2
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !126
  %i.ai = load i8, ptr %i.x, align 1, !tbaa !46
  %i.aj = zext i8 %i.ai to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = phi ptr [ %i.ah, %bb.h ], [ %i.x, %bb.g ] ; 4 uses
  %i.al = phi i32 [ %i.aj, %bb.h ], [ %3, %bb.g ] ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = zext nneg i32 %i.ac to i64
  %i.ao = shl nuw nsw i64 %i.am, %i.an
  %i.ap = or i64 %i.ao, %i.ab                     ; 3 uses
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !53
  %i.aq = select i1 %i.ad, i32 7, i32 8
  %i.ar = add nuw nsw i32 %i.aq, %i.ac            ; 4 uses
  store i32 %i.ar, ptr %i.b, align 8, !tbaa !55
  %i.as = icmp eq i32 %i.al, 255                  ; 3 uses
  %i.at = zext i1 %i.as to i32
  store i32 %i.at, ptr %i.c, align 4, !tbaa !129
  %exitcond.not.2 = icmp eq i32 %i.h, 1
  br i1 %exitcond.not.2, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = add nsw i32 %2, -4                      ; 2 uses
  store i32 %i.au, ptr %i.d, align 8, !tbaa !128
  %i.av = icmp sgt i32 %2, 3
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !126
  %i.ax = load i8, ptr %i.ak, align 1, !tbaa !46
  %i.ay = zext i8 %i.ax to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = phi ptr [ %i.aw, %bb.k ], [ %i.ak, %bb.j ]
  %i.ba = phi i32 [ %i.ay, %bb.k ], [ %3, %bb.j ] ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = zext nneg i32 %i.ar to i64
  %i.bd = shl i64 %i.bb, %i.bc
  %i.be = or i64 %i.bd, %i.ap                     ; 2 uses
  store i64 %i.be, ptr %i.a, align 8, !tbaa !53
  %i.bf = select i1 %i.as, i32 7, i32 8
  %i.bg = add nuw nsw i32 %i.bf, %i.ar            ; 2 uses
  store i32 %i.bg, ptr %i.b, align 8, !tbaa !55
  %i.bh = icmp eq i32 %i.ba, 255                  ; 2 uses
  %i.bi = zext i1 %i.bh to i32
  store i32 %i.bi, ptr %i.c, align 4, !tbaa !129
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.f, %bb.c
  %.lcssa45 = phi ptr [ %i.n, %bb.c ], [ %i.x, %bb.f ], [ %i.ak, %bb.i ], [ %i.az, %bb.l ] ; 3 uses
  %.lcssa44 = phi i64 [ %i.p, %bb.c ], [ %i.ab, %bb.f ], [ %i.ap, %bb.i ], [ %i.be, %bb.l ]
  %.lcssa43 = phi i32 [ 8, %bb.c ], [ %i.ac, %bb.f ], [ %i.ar, %bb.i ], [ %i.bg, %bb.l ] ; 2 uses
  %.lcssa42 = phi i1 [ %i.q, %bb.c ], [ %i.ad, %bb.f ], [ %i.as, %bb.i ], [ %i.bh, %bb.l ]
  %.lcssa41 = phi i32 [ %2, %bb.c ], [ %i.i, %bb.f ], [ %i.s, %bb.i ], [ %i.af, %bb.l ] ; 3 uses
  %.lcssa40 = phi i32 [ %i.i, %bb.c ], [ %i.s, %bb.f ], [ %i.af, %bb.i ], [ %i.au, %bb.l ]
  %i.bj = icmp sgt i32 %.lcssa41, 4
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.val.i = load i32, ptr %.lcssa45, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa45, i64 4
  store ptr %i.bk, ptr %0, align 8, !tbaa !126
  %i.bl = add nsw i32 %.lcssa41, -5
  store i32 %i.bl, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = icmp sgt i32 %.lcssa41, 1
  %.not44.i = icmp ne i32 %3, 0
  %i.bn = sext i1 %.not44.i to i32                ; 2 uses
  br i1 %i.bm, label %.lr.ph.i, label %frwd_read.exit

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %i.bo = phi ptr [ %i.bq, %.lr.ph.i ], [ %.lcssa45, %bb.o ] ; 2 uses
  %.047.i = phi i32 [ %i.bx, %.lr.ph.i ], [ %i.bn, %bb.o ]
  %.04246.i = phi i32 [ %i.bz, %.lr.ph.i ], [ 0, %bb.o ] ; 3 uses
  %i.bp = phi i32 [ %i.by, %.lr.ph.i ], [ %.lcssa40, %bb.o ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  store ptr %i.bq, ptr %0, align 8, !tbaa !126
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !46
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl i32 255, %.04246.i
  %i.bu = xor i32 %i.bt, -1
  %i.bv = and i32 %.047.i, %i.bu
  %i.bw = shl i32 %i.bs, %.04246.i
  %i.bx = or i32 %i.bw, %i.bv                     ; 2 uses
  %i.by = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.by, ptr %i.d, align 8, !tbaa !128
  %i.bz = add nuw nsw i32 %.04246.i, 8
  %i.ca = icmp samesign ugt i32 %i.bp, 1
  br i1 %i.ca, label %.lr.ph.i, label %frwd_read.exit, !llvm.loop !130

frwd_read.exit:                                   ; preds = %.lr.ph.i, %bb.n, %bb.o
  %.1.i = phi i32 [ %.val.i, %bb.n ], [ %i.bn, %bb.o ], [ %i.bx, %.lr.ph.i ] ; 4 uses
  %i.cb = select i1 %.lcssa42, i32 7, i32 8       ; 2 uses
  %i.cc = and i32 %.1.i, 255                      ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 255
  %i.ce = lshr i32 %.1.i, 8
  %i.cf = and i32 %i.ce, 255                      ; 2 uses
  %i.cg = shl nuw nsw i32 %i.cf, %i.cb
  %i.ch = select i1 %i.cd, i32 7, i32 8
  %i.ci = add nuw nsw i32 %i.cb, %i.ch            ; 2 uses
  %i.cj = icmp eq i32 %i.cf, 255
  %i.ck = lshr i32 %.1.i, 16
  %i.cl = and i32 %i.ck, 255                      ; 2 uses
  %i.cm = shl nuw nsw i32 %i.cl, %i.ci
  %i.cn = select i1 %i.cj, i32 7, i32 8
  %i.co = add nuw nsw i32 %i.ci, %i.cn            ; 2 uses
  %i.cp = icmp eq i32 %i.cl, 255
  %i.cq = lshr i32 %.1.i, 24                      ; 2 uses
  %i.cr = shl nuw i32 %i.cq, %i.co
  %i.cs = or i32 %i.cg, %i.cm
  %i.ct = or i32 %i.cs, %i.cr
  %i.cu = or i32 %i.ct, %i.cc
  %i.cv = select i1 %i.cp, i32 7, i32 8
  %i.cw = icmp eq i32 %i.cq, 255
  %i.cx = zext i1 %i.cw to i32
  store i32 %i.cx, ptr %i.c, align 4, !tbaa !129
  %i.cy = zext i32 %i.cu to i64
  %i.cz = zext nneg i32 %.lcssa43 to i64
  %i.da = shl i64 %i.cy, %i.cz
  %i.db = or i64 %i.da, %.lcssa44
  store i64 %i.db, ptr %i.a, align 8, !tbaa !53
  %i.dc = add nsw i32 %i.cv, %.lcssa43
  %i.dd = add nsw i32 %i.dc, %i.co
  store i32 %i.dd, ptr %i.b, align 8, !tbaa !55
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @rev_init_mrp(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 28)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 %i.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr i8, ptr %i.b, i64 %i.c     ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -1       ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !123
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i32 1, ptr %i.g, align 8, !tbaa !124
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 0, ptr %i.h, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.i, align 8, !tbaa !49
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 3                          ; 3 uses
  %i.m = add nsw i32 %3, -1                       ; 3 uses
  store i32 %i.m, ptr %i.f, align 4, !tbaa !122
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.d, i64 -2       ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !123
  %i.p = load i8, ptr %i.e, align 1, !tbaa !46
  %i.q = zext i8 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.o, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.s = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.t = and i64 %i.s, 127
  %i.u = icmp eq i64 %i.t, 127
  %i.v = select i1 %i.u, i32 7, i32 8             ; 4 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !49
  store i32 %i.v, ptr %i.h, align 8, !tbaa !52
  %i.w = icmp samesign ugt i64 %i.s, 143          ; 3 uses
  %i.x = zext i1 %i.w to i32
  store i32 %i.x, ptr %i.g, align 8, !tbaa !124
  %exitcond.not = icmp eq i32 %i.l, 0
  br i1 %exitcond.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i32 %3, -2                       ; 3 uses
  store i32 %i.y, ptr %i.f, align 4, !tbaa !122
  %i.z = icmp sgt i32 %3, 1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 -1 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !123
  %i.ab = load i8, ptr %i.r, align 1, !tbaa !46
  %i.ac = zext i8 %i.ab to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi ptr [ %i.aa, %bb.e ], [ %i.r, %bb.d ] ; 4 uses
  %i.ae = phi i64 [ %i.ac, %bb.e ], [ 0, %bb.d ]  ; 3 uses
  %i.af = and i64 %i.ae, 127
  %i.ag = icmp eq i64 %i.af, 127
  %i.ah = select i1 %i.w, i1 %i.ag, i1 false
  %i.ai = select i1 %i.ah, i32 7, i32 8
  %i.aj = zext nneg i32 %i.v to i64
  %i.ak = shl nuw nsw i64 %i.ae, %i.aj
  %i.al = or i64 %i.ak, %i.s                      ; 3 uses
  store i64 %i.al, ptr %i.i, align 8, !tbaa !49
  %i.am = add nuw nsw i32 %i.ai, %i.v             ; 4 uses
  store i32 %i.am, ptr %i.h, align 8, !tbaa !52
  %i.an = icmp samesign ugt i64 %i.ae, 143        ; 3 uses
  %i.ao = zext i1 %i.an to i32
  store i32 %i.ao, ptr %i.g, align 8, !tbaa !124
  %exitcond.not.1 = icmp eq i32 %i.l, 1
  br i1 %exitcond.not.1, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = add nsw i32 %3, -3                      ; 3 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !122
  %i.aq = icmp sgt i32 %3, 2
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !123
  %i.as = load i8, ptr %i.ad, align 1, !tbaa !46
  %i.at = zext i8 %i.as to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi ptr [ %i.ar, %bb.h ], [ %i.ad, %bb.g ] ; 4 uses
  %i.av = phi i64 [ %i.at, %bb.h ], [ 0, %bb.g ]  ; 3 uses
  %i.aw = and i64 %i.av, 127
  %i.ax = icmp eq i64 %i.aw, 127
  %i.ay = select i1 %i.an, i1 %i.ax, i1 false
  %i.az = select i1 %i.ay, i32 7, i32 8
  %i.ba = zext nneg i32 %i.am to i64
  %i.bb = shl nuw nsw i64 %i.av, %i.ba
  %i.bc = or i64 %i.bb, %i.al                     ; 3 uses
  store i64 %i.bc, ptr %i.i, align 8, !tbaa !49
  %i.bd = add nuw nsw i32 %i.az, %i.am            ; 4 uses
  store i32 %i.bd, ptr %i.h, align 8, !tbaa !52
  %i.be = icmp samesign ugt i64 %i.av, 143        ; 3 uses
  %i.bf = zext i1 %i.be to i32
  store i32 %i.bf, ptr %i.g, align 8, !tbaa !124
  %exitcond.not.2 = icmp eq i32 %i.l, 2
  br i1 %exitcond.not.2, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = add nsw i32 %3, -4                      ; 2 uses
  store i32 %i.bg, ptr %i.f, align 4, !tbaa !122
  %i.bh = icmp sgt i32 %3, 3
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds i8, ptr %i.au, i64 -1 ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !123
  %i.bj = load i8, ptr %i.au, align 1, !tbaa !46
  %i.bk = zext i8 %i.bj to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = phi ptr [ %i.bi, %bb.k ], [ %i.au, %bb.j ]
  %i.bm = phi i64 [ %i.bk, %bb.k ], [ 0, %bb.j ]  ; 3 uses
  %i.bn = and i64 %i.bm, 127
  %i.bo = icmp eq i64 %i.bn, 127
  %i.bp = select i1 %i.be, i1 %i.bo, i1 false
  %i.bq = select i1 %i.bp, i32 7, i32 8
  %i.br = zext nneg i32 %i.bd to i64
  %i.bs = shl i64 %i.bm, %i.br
  %i.bt = or i64 %i.bs, %i.bc                     ; 2 uses
  store i64 %i.bt, ptr %i.i, align 8, !tbaa !49
  %i.bu = add nuw nsw i32 %i.bq, %i.bd            ; 2 uses
  store i32 %i.bu, ptr %i.h, align 8, !tbaa !52
  %i.bv = icmp samesign ugt i64 %i.bm, 143        ; 2 uses
  %i.bw = zext i1 %i.bv to i32
  store i32 %i.bw, ptr %i.g, align 8, !tbaa !124
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.f, %bb.c
  %.lcssa47 = phi ptr [ %i.r, %bb.c ], [ %i.ad, %bb.f ], [ %i.au, %bb.i ], [ %i.bl, %bb.l ] ; 3 uses
  %.lcssa46 = phi i64 [ %i.s, %bb.c ], [ %i.al, %bb.f ], [ %i.bc, %bb.i ], [ %i.bt, %bb.l ]
  %.lcssa45 = phi i32 [ %i.v, %bb.c ], [ %i.am, %bb.f ], [ %i.bd, %bb.i ], [ %i.bu, %bb.l ] ; 3 uses
  %.lcssa44 = phi i1 [ %i.w, %bb.c ], [ %i.an, %bb.f ], [ %i.be, %bb.i ], [ %i.bv, %bb.l ]
  %.lcssa43 = phi i32 [ %3, %bb.c ], [ %i.m, %bb.f ], [ %i.y, %bb.i ], [ %i.ap, %bb.l ] ; 3 uses
  %.lcssa42 = phi i32 [ %i.m, %bb.c ], [ %i.y, %bb.f ], [ %i.ap, %bb.i ], [ %i.bg, %bb.l ]
  %i.bx = icmp ugt i32 %.lcssa45, 32
  br i1 %i.bx, label %rev_read_mrp.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = icmp sgt i32 %.lcssa43, 4
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds i8, ptr %.lcssa47, i64 -3
  %.val.i = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.ca = getelementptr inbounds i8, ptr %.lcssa47, i64 -4
  store ptr %i.ca, ptr %0, align 8, !tbaa !123
  %i.cb = add nsw i32 %.lcssa43, -5
  store i32 %i.cb, ptr %i.f, align 4, !tbaa !122
  br label %.loopexit.i

bb.p:                                             ; preds = %bb.n
  %i.cc = icmp sgt i32 %.lcssa43, 1
  br i1 %i.cc, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.p, %.preheader.i
  %i.cd = phi ptr [ %i.cf, %.preheader.i ], [ %.lcssa47, %bb.p ] ; 2 uses
  %.047.i = phi i32 [ %i.cj, %.preheader.i ], [ 0, %bb.p ]
  %.04446.i = phi i32 [ %i.cl, %.preheader.i ], [ 24, %bb.p ] ; 2 uses
  %i.ce = phi i32 [ %i.ck, %.preheader.i ], [ %.lcssa42, %bb.p ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -1 ; 2 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !123
  %i.cg = load i8, ptr %i.cd, align 1, !tbaa !46
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl i32 %i.ch, %.04446.i
  %i.cj = or i32 %i.ci, %.047.i                   ; 2 uses
  %i.ck = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.f, align 4, !tbaa !122
  %i.cl = add nsw i32 %.04446.i, -8
  %i.cm = icmp samesign ugt i32 %i.ce, 1
  br i1 %i.cm, label %.preheader.i, label %.loopexit.i, !llvm.loop !131

.loopexit.i:                                      ; preds = %.preheader.i, %bb.p, %bb.o
  %.1.i = phi i32 [ %.val.i, %bb.o ], [ 0, %bb.p ], [ %i.cj, %.preheader.i ] ; 9 uses
  %i.cn = lshr i32 %.1.i, 24
  %i.co = and i32 %.1.i, 2130706432
  %i.cp = icmp eq i32 %i.co, 2130706432
  %i.cq = select i1 %.lcssa44, i1 %i.cp, i1 false
  %i.cr = select i1 %i.cq, i32 7, i32 8           ; 2 uses
  %i.cs = icmp ugt i32 %.1.i, -1879048193
  %i.ct = lshr i32 %.1.i, 16
  %i.cu = and i32 %i.ct, 255                      ; 2 uses
  %i.cv = shl nuw nsw i32 %i.cu, %i.cr
  %i.cw = or i32 %i.cv, %i.cn
  %i.cx = and i32 %.1.i, 8323072
  %i.cy = icmp eq i32 %i.cx, 8323072
  %i.cz = and i1 %i.cs, %i.cy
  %i.da = select i1 %i.cz, i32 7, i32 8
  %i.db = add nuw nsw i32 %i.cr, %i.da            ; 2 uses
  %i.dc = icmp samesign ugt i32 %i.cu, 143
  %i.dd = lshr i32 %.1.i, 8
  %i.de = and i32 %i.dd, 255                      ; 2 uses
  %i.df = shl nuw nsw i32 %i.de, %i.db
  %i.dg = or i32 %i.cw, %i.df
  %i.dh = and i32 %.1.i, 32512
  %i.di = icmp eq i32 %i.dh, 32512
  %i.dj = select i1 %i.dc, i1 %i.di, i1 false
  %i.dk = select i1 %i.dj, i32 7, i32 8
  %i.dl = add nuw nsw i32 %i.db, %i.dk            ; 2 uses
  %i.dm = icmp samesign ugt i32 %i.de, 143
  %i.dn = and i32 %.1.i, 255                      ; 2 uses
  %i.do = shl nuw i32 %i.dn, %i.dl
  %i.dp = or i32 %i.dg, %i.do
  %i.dq = and i32 %.1.i, 127
  %i.dr = icmp eq i32 %i.dq, 127
  %i.ds = select i1 %i.dm, i1 %i.dr, i1 false
  %i.dt = select i1 %i.ds, i32 7, i32 8
  %i.du = icmp samesign ugt i32 %i.dn, 143
  %i.dv = zext i1 %i.du to i32
  %i.dw = zext i32 %i.dp to i64
  %i.dx = zext nneg i32 %.lcssa45 to i64
  %i.dy = shl nuw i64 %i.dw, %i.dx
  %i.dz = or i64 %i.dy, %.lcssa46
  store i64 %i.dz, ptr %i.i, align 8, !tbaa !49
  %i.ea = add nuw nsw i32 %i.dt, %.lcssa45
  %i.eb = add nuw nsw i32 %i.ea, %i.dl
  store i32 %i.eb, ptr %i.h, align 8, !tbaa !52
  store i32 %i.dv, ptr %i.g, align 8, !tbaa !124
  br label %rev_read_mrp.exit

rev_read_mrp.exit:                                ; preds = %bb.m, %.loopexit.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 128) i32 @mel_get_run(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %mel_decode.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !115  ; 4 uses
  %i.f = icmp slt i32 %i.e, 6
  br i1 %i.f, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !116
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !118  ; 9 uses
  %i.i = icmp sgt i32 %i.h, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !113    ; 2 uses
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.k, ptr %0, align 8, !tbaa !113
  %i.l = add nsw i32 %i.h, -4
  br label %.sink.split.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i32 %i.h, 0
  br i1 %i.m, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.h, 1
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !113 ; 3 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.n = add nsw i32 %i.h, -1                     ; 3 uses
  %xtraiter = and i32 %i.n, 1
  %i.o = icmp eq i32 %i.h, 2
  br i1 %i.o, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.n, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.p = phi ptr [ %.pre.i.i, %.lr.ph.i.i.preheader.new ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %.057.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.new ], [ %i.ai, %.lr.ph.i.i ]
  %.05356.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ak, %.lr.ph.i.i ] ; 5 uses
  %i.q = phi i32 [ %i.h, %.lr.ph.i.i.preheader.new ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !113
  %i.s = load i8, ptr %i.p, align 1, !tbaa !46
  %i.t = zext i8 %i.s to i32
  %i.u = shl i32 255, %.05356.i.i
  %i.v = xor i32 %i.u, -1
  %i.w = and i32 %.057.i.i, %i.v
  %i.x = shl i32 %i.t, %.05356.i.i
  %i.y = or i32 %i.x, %i.w
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.g, align 4, !tbaa !118
  %i.aa = or disjoint i32 %.05356.i.i, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 4 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !113
  %i.ac = load i8, ptr %i.r, align 1, !tbaa !46
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl i32 65280, %.05356.i.i
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %i.y, %i.af
  %i.ah = shl i32 %i.ad, %i.aa
  %i.ai = or i32 %i.ah, %i.ag                     ; 3 uses
  %i.aj = add nsw i32 %i.q, -2                    ; 3 uses
  store i32 %i.aj, ptr %i.g, align 4, !tbaa !118
  %i.ak = add nuw nsw i32 %.05356.i.i, 16         ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !132

._crit_edge.i.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi ptr [ %.pre.i.i, %.lr.ph.i.i.preheader ], [ %i.ab, %._crit_edge.i.loopexit.i.unr-lcssa ] ; 2 uses
  %.057.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.ai, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %.05356.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ak, %._crit_edge.i.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init19 = phi i32 [ %i.h, %.lr.ph.i.i.preheader ], [ %i.aj, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %lcmp.mod22 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.al = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !113
  %i.am = load i8, ptr %.epil.init, align 1, !tbaa !46
  %i.an = zext i8 %i.am to i32
  %i.ao = shl i32 255, %.05356.i.i.epil.init
  %i.ap = xor i32 %i.ao, -1
  %i.aq = and i32 %.057.i.i.epil.init, %i.ap
  %i.ar = shl i32 %i.an, %.05356.i.i.epil.init
  %i.as = or i32 %i.ar, %i.aq
  %i.at = add nsw i32 %.epil.init19, -1
  store i32 %i.at, ptr %i.g, align 4, !tbaa !118
  br label %._crit_edge.i.loopexit.i

._crit_edge.i.loopexit.i:                         ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa17 = phi ptr [ %i.ab, %._crit_edge.i.loopexit.i.unr-lcssa ], [ %i.al, %.lr.ph.i.i.epil.preheader ]
  %.lcssa = phi i32 [ %i.ai, %._crit_edge.i.loopexit.i.unr-lcssa ], [ %i.as, %.lr.ph.i.i.epil.preheader ]
  %i.au = shl nuw nsw i32 %i.h, 3
  %i.av = add nsw i32 %i.au, -8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %.preheader.i.i
  %i.aw = phi ptr [ %.pre.i.i, %.preheader.i.i ], [ %.lcssa17, %._crit_edge.i.loopexit.i ] ; 2 uses
  %.053.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.av, %._crit_edge.i.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ -1, %.preheader.i.i ], [ %.lcssa, %._crit_edge.i.loopexit.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %0, align 8, !tbaa !113
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !46
  %i.az = or i8 %i.ay, 15
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw i32 255, %.053.lcssa.i.i
  %i.bc = xor i32 %i.bb, -1
  %i.bd = and i32 %.0.lcssa.i.i, %i.bc
  %i.be = shl nuw i32 %i.ba, %.053.lcssa.i.i
  %i.bf = or i32 %i.be, %i.bd
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i, %bb.d
  %.sink.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %i.l, %bb.d ]
  %.1.ph.i.i = phi i32 [ %i.bf, %._crit_edge.i.i ], [ %.val.i.i, %bb.d ]
  store i32 %.sink.i.i, ptr %i.g, align 4, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i, %bb.e
  %.1.i.i = phi i32 [ -1, %bb.e ], [ %.1.ph.i.i, %.sink.split.i.i ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !117
  %i.bi = and i32 %.1.i.i, 255                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 255                  ; 2 uses
  %i.bk = zext i1 %i.bj to i32
  %i.bl = add i32 %i.bh, %i.bk
  %i.bm = select i1 %i.bj, i32 7, i32 8
  %i.bn = shl nuw nsw i32 %i.bi, %i.bm
  %i.bo = lshr i32 %.1.i.i, 8
  %i.bp = and i32 %i.bo, 255                      ; 2 uses
  %i.bq = or i32 %i.bn, %i.bp
  %i.br = icmp eq i32 %i.bp, 255                  ; 2 uses
  %i.bs = zext i1 %i.br to i32
  %i.bt = add i32 %i.bl, %i.bs
  %i.bu = select i1 %i.br, i32 7, i32 8
  %i.bv = shl nuw nsw i32 %i.bq, %i.bu
  %i.bw = lshr i32 %.1.i.i, 16
  %i.bx = and i32 %i.bw, 255                      ; 2 uses
  %i.by = or i32 %i.bv, %i.bx
  %i.bz = icmp eq i32 %i.bx, 255                  ; 2 uses
  %i.ca = zext i1 %i.bz to i32
  %i.cb = add i32 %i.bt, %i.ca                    ; 2 uses
  %i.cc = select i1 %i.bz, i32 7, i32 8
  %i.cd = shl nuw i32 %i.by, %i.cc
  %i.ce = lshr i32 %.1.i.i, 24                    ; 2 uses
  %i.cf = or i32 %i.cd, %i.ce
  %i.cg = icmp eq i32 %i.ce, 255
  %i.ch = zext i1 %i.cg to i32
  store i32 %i.ch, ptr %i.bg, align 8, !tbaa !117
  %i.ci = zext i32 %i.cf to i64
  %reass.sub = sub i32 %i.cb, %i.e
  %i.cj = add i32 %reass.sub, 32
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl i64 %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !116
  %i.co = or i64 %i.cl, %i.cn                     ; 2 uses
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !116
  %reass.sub.i.i = add nsw i32 %i.e, 32
  %i.cp = sub i32 %reass.sub.i.i, %i.cb           ; 3 uses
  store i32 %i.cp, ptr %i.d, align 8, !tbaa !115
  %i.cq = icmp sgt i32 %i.cp, 5
  br i1 %i.cq, label %.lr.ph.i, label %mel_decode.exit

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %bb.f
  %i.cr = phi i64 [ %i.co, %bb.f ], [ %.pre, %..lr.ph.i_crit_edge ] ; 3 uses
  %.promoted52.i = phi i32 [ %i.cp, %bb.f ], [ %i.e, %..lr.ph.i_crit_edge ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !119 ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr @mel_decode.mel_exp, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3  ; 4 uses
  %.not.i = icmp sgt i64 %i.cr, -1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %notmask33.i = shl nsw i32 -1, %i.cy
  %i.cz = xor i32 %notmask33.i, -1
  %i.da = tail call i32 @llvm.smin.i32(i32 %i.cv, i32 11)
  %spec.select.i = add nsw i32 %i.da, 1
  %i.db = add nsw i32 %.promoted52.i, -1
  %i.dc = shl nuw i32 %i.cz, 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.dd = sub nsw i32 63, %i.cy
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = lshr i64 %i.cr, %i.de
  %i.dg = trunc i64 %i.df to i32
  %notmask.i = shl nsw i32 -1, %i.cy
  %i.dh = xor i32 %notmask.i, -1
  %i.di = and i32 %i.dg, %i.dh
  %i.dj = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 1)
  %spec.select34.i = add nsw i32 %i.dj, -1
  %i.dk = add nsw i32 %i.cy, 1                    ; 2 uses
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = sub nsw i32 %.promoted52.i, %i.dk
  %i.dn = shl nuw i32 %i.di, 1
  %i.do = or disjoint i32 %i.dn, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dp = phi i32 [ %spec.select34.i, %bb.h ], [ %spec.select.i, %bb.g ] ; 4 uses
  %.pn.i = phi i64 [ %i.dl, %bb.h ], [ 1, %bb.g ]
  %.sink.i = phi i32 [ %i.dm, %bb.h ], [ %i.db, %bb.g ] ; 4 uses
  %.0.i = phi i32 [ %i.do, %bb.h ], [ %i.dc, %bb.g ]
  %.sink42.i = shl i64 %i.cr, %.pn.i              ; 4 uses
  store i32 %i.dp, ptr %i.cs, align 4, !tbaa !119
  store i64 %.sink42.i, ptr %i.ct, align 8, !tbaa !116
  store i32 %.sink.i, ptr %i.d, align 8, !tbaa !115
  %i.dq = load i64, ptr %i.cu, align 8, !tbaa !121
  %i.dr = and i64 %i.dq, -64
  %i.ds = sext i32 %.0.i to i64
  %i.dt = or i64 %i.dr, %i.ds                     ; 2 uses
  store i64 %i.dt, ptr %i.cu, align 8, !tbaa !121
  %i.du = icmp sgt i32 %.sink.i, 5
  br i1 %i.du, label %bb.j, label %mel_decode.exit

bb.j:                                             ; preds = %bb.i
  %i.dv = sext i32 %i.dp to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr @mel_decode.mel_exp, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3  ; 4 uses
  %.not.i.1 = icmp sgt i64 %.sink42.i, -1
  br i1 %.not.i.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %notmask33.i.1 = shl nsw i32 -1, %i.dx
  %i.dy = xor i32 %notmask33.i.1, -1
  %i.dz = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 11)
  %spec.select.i.1 = add nsw i32 %i.dz, 1
  %i.ea = add nsw i32 %.sink.i, -1
  %i.eb = shl nuw i32 %i.dy, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ec = sub nsw i32 63, %i.dx
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = lshr i64 %.sink42.i, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %notmask.i.1 = shl nsw i32 -1, %i.dx
  %i.eg = xor i32 %notmask.i.1, -1
  %i.eh = and i32 %i.ef, %i.eg
  %i.ei = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 1)
  %spec.select34.i.1 = add nsw i32 %i.ei, -1
  %i.ej = add nsw i32 %i.dx, 1                    ; 2 uses
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = sub nsw i32 %.sink.i, %i.ej
  %i.em = shl nuw i32 %i.eh, 1
  %i.en = or disjoint i32 %i.em, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.eo = phi i32 [ %spec.select34.i.1, %bb.l ], [ %spec.select.i.1, %bb.k ] ; 4 uses
  %.pn.i.1 = phi i64 [ %i.ek, %bb.l ], [ 1, %bb.k ]
  %.sink.i.1 = phi i32 [ %i.el, %bb.l ], [ %i.ea, %bb.k ] ; 4 uses
  %.0.i.1 = phi i32 [ %i.en, %bb.l ], [ %i.eb, %bb.k ]
  %.sink42.i.1 = shl i64 %.sink42.i, %.pn.i.1     ; 4 uses
  store i32 %i.eo, ptr %i.cs, align 4, !tbaa !119
  store i64 %.sink42.i.1, ptr %i.ct, align 8, !tbaa !116
  store i32 %.sink.i.1, ptr %i.d, align 8, !tbaa !115
  %i.ep = and i64 %i.dt, -8065
  %i.eq = sext i32 %.0.i.1 to i64
end_hunk_0
begin_hunk_1_@mel_get_run:bb.a
  %i.ii = shl nuw i32 %i.id, 1
  %i.ij = or disjoint i32 %i.ii, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ik = phi i32 [ %spec.select34.i.5, %bb.ab ], [ %spec.select.i.5, %bb.aa ] ; 4 uses
  %.pn.i.5 = phi i64 [ %i.ig, %bb.ab ], [ 1, %bb.aa ]
  %.sink.i.5 = phi i32 [ %i.ih, %bb.ab ], [ %i.hw, %bb.aa ] ; 4 uses
  %.0.i.5 = phi i32 [ %i.ij, %bb.ab ], [ %i.hx, %bb.aa ]
  %.sink42.i.5 = shl i64 %.sink42.i.4, %.pn.i.5   ; 4 uses
  store i32 %i.ik, ptr %i.cs, align 4, !tbaa !119
  store i64 %.sink42.i.5, ptr %i.ct, align 8, !tbaa !116
  store i32 %.sink.i.5, ptr %i.d, align 8, !tbaa !115
  %i.il = and i64 %i.hp, -2164663517185
  %i.im = zext i32 %.0.i.5 to i64
  %i.in = shl i64 %i.im, 35
  %i.io = or i64 %i.il, %i.in                     ; 2 uses
  store i64 %i.io, ptr %i.cu, align 8, !tbaa !121
  %i.ip = icmp sgt i32 %.sink.i.5, 5
  br i1 %i.ip, label %bb.ad, label %mel_decode.exit

bb.ad:                                            ; preds = %bb.ac
  %i.iq = sext i32 %i.ik to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr @mel_decode.mel_exp, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3  ; 4 uses
  %.not.i.6 = icmp sgt i64 %.sink42.i.5, -1
  br i1 %.not.i.6, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %notmask33.i.6 = shl nsw i32 -1, %i.is
  %i.it = xor i32 %notmask33.i.6, -1
  %i.iu = tail call i32 @llvm.smin.i32(i32 %i.ik, i32 11)
  %spec.select.i.6 = add nsw i32 %i.iu, 1
  %i.iv = add nsw i32 %.sink.i.5, -1
  %i.iw = shl nuw i32 %i.it, 1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ix = sub nsw i32 63, %i.is
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = lshr i64 %.sink42.i.5, %i.iy
  %i.ja = trunc i64 %i.iz to i32
  %notmask.i.6 = shl nsw i32 -1, %i.is
  %i.jb = xor i32 %notmask.i.6, -1
  %i.jc = and i32 %i.ja, %i.jb
  %i.jd = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 1)
  %spec.select34.i.6 = add nsw i32 %i.jd, -1
  %i.je = add nsw i32 %i.is, 1                    ; 2 uses
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = sub nsw i32 %.sink.i.5, %i.je
  %i.jh = shl nuw i32 %i.jc, 1
  %i.ji = or disjoint i32 %i.jh, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jj = phi i32 [ %spec.select34.i.6, %bb.af ], [ %spec.select.i.6, %bb.ae ] ; 4 uses
  %.pn.i.6 = phi i64 [ %i.jf, %bb.af ], [ 1, %bb.ae ]
  %.sink.i.6 = phi i32 [ %i.jg, %bb.af ], [ %i.iv, %bb.ae ] ; 4 uses
  %.0.i.6 = phi i32 [ %i.ji, %bb.af ], [ %i.iw, %bb.ae ]
  %.sink42.i.6 = shl i64 %.sink42.i.5, %.pn.i.6   ; 4 uses
  store i32 %i.jj, ptr %i.cs, align 4, !tbaa !119
  store i64 %.sink42.i.6, ptr %i.ct, align 8, !tbaa !116
  store i32 %.sink.i.6, ptr %i.d, align 8, !tbaa !115
  %i.jk = and i64 %i.io, -277076930199553
  %i.jl = zext i32 %.0.i.6 to i64
  %i.jm = shl i64 %i.jl, 42
  %i.jn = or i64 %i.jk, %i.jm                     ; 2 uses
  store i64 %i.jn, ptr %i.cu, align 8, !tbaa !121
  %i.jo = icmp sgt i32 %.sink.i.6, 5
  br i1 %i.jo, label %bb.ah, label %mel_decode.exit

bb.ah:                                            ; preds = %bb.ag
  %i.jp = sext i32 %i.jj to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr @mel_decode.mel_exp, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !3  ; 4 uses
  %.not.i.7 = icmp sgt i64 %.sink42.i.6, -1
  br i1 %.not.i.7, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %notmask33.i.7 = shl nsw i32 -1, %i.jr
  %i.js = xor i32 %notmask33.i.7, -1
  %i.jt = tail call i32 @llvm.smin.i32(i32 %i.jj, i32 11)
  %spec.select.i.7 = add nsw i32 %i.jt, 1
  %i.ju = add nsw i32 %.sink.i.6, -1
  %i.jv = shl nuw i32 %i.js, 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jw = sub nsw i32 63, %i.jr
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = lshr i64 %.sink42.i.6, %i.jx
  %i.jz = trunc i64 %i.jy to i32
  %notmask.i.7 = shl nsw i32 -1, %i.jr
  %i.ka = xor i32 %notmask.i.7, -1
  %i.kb = and i32 %i.jz, %i.ka
  %i.kc = tail call i32 @llvm.smax.i32(i32 %i.jj, i32 1)
  %spec.select34.i.7 = add nsw i32 %i.kc, -1
  %i.kd = add nsw i32 %i.jr, 1                    ; 2 uses
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = sub nsw i32 %.sink.i.6, %i.kd
  %i.kg = shl nuw i32 %i.kb, 1
  %i.kh = or disjoint i32 %i.kg, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %spec.select.sink.i.7 = phi i32 [ %spec.select34.i.7, %bb.aj ], [ %spec.select.i.7, %bb.ai ]
  %.pn.i.7 = phi i64 [ %i.ke, %bb.aj ], [ 1, %bb.ai ]
  %.sink.i.7 = phi i32 [ %i.kf, %bb.aj ], [ %i.ju, %bb.ai ]
  %.0.i.7 = phi i32 [ %i.kh, %bb.aj ], [ %i.jv, %bb.ai ]
  %.sink42.i.7 = shl i64 %.sink42.i.6, %.pn.i.7
  store i32 %spec.select.sink.i.7, ptr %i.cs, align 4, !tbaa !119
  store i64 %.sink42.i.7, ptr %i.ct, align 8, !tbaa !116
  store i32 %.sink.i.7, ptr %i.d, align 8, !tbaa !115
  %i.ki = and i64 %i.jn, -35465847065542657
  %i.kj = zext i32 %.0.i.7 to i64
  %i.kk = shl i64 %i.kj, 49
  %i.kl = or i64 %i.ki, %i.kk
  store i64 %i.kl, ptr %i.cu, align 8, !tbaa !121
  br label %mel_decode.exit

mel_decode.exit:                                  ; preds = %bb.ak, %bb.i, %bb.m, %bb.q, %bb.u, %bb.y, %bb.ac, %bb.ag, %bb.f, %bb.a
  %i.km = phi i32 [ %i.b, %bb.a ], [ 0, %bb.f ], [ 1, %bb.i ], [ 2, %bb.m ], [ 8, %bb.ak ], [ 7, %bb.ag ], [ 6, %bb.ac ], [ 5, %bb.y ], [ 4, %bb.u ], [ 3, %bb.q ]
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !121 ; 2 uses
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = and i32 %i.kp, 127
  %i.kr = lshr i64 %i.ko, 7
  store i64 %i.kr, ptr %i.kn, align 8, !tbaa !121
  %i.ks = add nsw i32 %i.km, -1
  store i32 %i.ks, ptr %i.a, align 8, !tbaa !120
  ret i32 %i.kq
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @rev_fetch(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = icmp ult i32 %i.b, 32
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 9 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122  ; 10 uses
  %i.f = icmp sgt i32 %i.e, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -3
  %.val.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  store ptr %i.i, ptr %0, align 8, !tbaa !123
  %i.j = add nsw i32 %i.e, -4                     ; 2 uses
  store i32 %i.j, ptr %i.d, align 4, !tbaa !122
  br label %rev_read.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp sgt i32 %i.e, 0
  br i1 %i.k, label %.preheader.i, label %rev_read.exit

.preheader.i:                                     ; preds = %bb.d
  %.promoted.i = load ptr, ptr %0, align 8, !tbaa !123 ; 2 uses
  %xtraiter = and i32 %i.e, 1
  %i.l = icmp eq i32 %i.e, 1
  br i1 %i.l, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i32 %i.e, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.new
  %i.m = phi ptr [ %.promoted.i, %.preheader.i.new ], [ %i.v, %bb.e ] ; 3 uses
  %.047.i = phi i32 [ 0, %.preheader.i.new ], [ %i.z, %bb.e ]
  %.04446.i = phi i32 [ 24, %.preheader.i.new ], [ %i.ab, %bb.e ] ; 3 uses
  %i.n = phi i32 [ %i.e, %.preheader.i.new ], [ %i.aa, %bb.e ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.i.new ], [ %niter.next.1, %bb.e ]
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !123
  %i.p = load i8, ptr %i.m, align 1, !tbaa !46
  %i.q = zext i8 %i.p to i32
  %i.r = shl i32 %i.q, %.04446.i
  %i.s = or i32 %i.r, %.047.i
  %i.t = add nsw i32 %i.n, -1
  store i32 %i.t, ptr %i.d, align 4, !tbaa !122
  %i.u = add nsw i32 %.04446.i, -8
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 -2 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !123
  %i.w = load i8, ptr %i.o, align 1, !tbaa !46
  %i.x = zext i8 %i.w to i32
  %i.y = shl i32 %i.x, %i.u
  %i.z = or i32 %i.y, %i.s                        ; 3 uses
  %i.aa = add nsw i32 %i.n, -2                    ; 3 uses
  store i32 %i.aa, ptr %i.d, align 4, !tbaa !122
  %i.ab = add nsw i32 %.04446.i, -16              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %rev_read.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !125

rev_read.exit.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %rev_read.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %rev_read.exit.loopexit.unr-lcssa, %.preheader.i
  %.epil.init = phi ptr [ %.promoted.i, %.preheader.i ], [ %i.v, %rev_read.exit.loopexit.unr-lcssa ] ; 2 uses
  %.047.i.epil.init = phi i32 [ 0, %.preheader.i ], [ %i.z, %rev_read.exit.loopexit.unr-lcssa ]
  %.04446.i.epil.init = phi i32 [ 24, %.preheader.i ], [ %i.ab, %rev_read.exit.loopexit.unr-lcssa ]
  %.epil.init23 = phi i32 [ %i.e, %.preheader.i ], [ %i.aa, %rev_read.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.ac = getelementptr inbounds i8, ptr %.epil.init, i64 -1
  store ptr %i.ac, ptr %0, align 8, !tbaa !123
  %i.ad = load i8, ptr %.epil.init, align 1, !tbaa !46
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl i32 %i.ae, %.04446.i.epil.init
  %i.ag = or i32 %i.af, %.047.i.epil.init
  %i.ah = add nsw i32 %.epil.init23, -1
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !122
  br label %rev_read.exit

rev_read.exit:                                    ; preds = %.epil.preheader, %rev_read.exit.loopexit.unr-lcssa, %bb.c, %bb.d
  %i.ai = phi i32 [ %i.j, %bb.c ], [ %i.e, %bb.d ], [ 0, %rev_read.exit.loopexit.unr-lcssa ], [ 0, %.epil.preheader ] ; 9 uses
  %.1.i = phi i32 [ %.val.i, %bb.c ], [ 0, %bb.d ], [ %i.z, %rev_read.exit.loopexit.unr-lcssa ], [ %i.ag, %.epil.preheader ] ; 9 uses
  %i.aj = lshr i32 %.1.i, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !124
  %i.am = icmp ne i32 %i.al, 0
  %i.an = and i32 %.1.i, 2130706432
  %i.ao = icmp eq i32 %i.an, 2130706432
  %i.ap = select i1 %i.am, i1 %i.ao, i1 false
  %i.aq = select i1 %i.ap, i32 7, i32 8           ; 2 uses
  %i.ar = icmp ugt i32 %.1.i, -1879048193
  %i.as = lshr i32 %.1.i, 16
  %i.at = and i32 %i.as, 255                      ; 2 uses
  %i.au = shl nuw nsw i32 %i.at, %i.aq
  %i.av = or i32 %i.au, %i.aj
  %i.aw = and i32 %.1.i, 8323072
  %i.ax = icmp eq i32 %i.aw, 8323072
  %i.ay = and i1 %i.ar, %i.ax
  %i.az = select i1 %i.ay, i32 7, i32 8
  %i.ba = add nuw nsw i32 %i.aq, %i.az            ; 2 uses
  %i.bb = icmp samesign ugt i32 %i.at, 143
  %i.bc = lshr i32 %.1.i, 8
  %i.bd = and i32 %i.bc, 255                      ; 2 uses
  %i.be = shl nuw nsw i32 %i.bd, %i.ba
  %i.bf = or i32 %i.av, %i.be
  %i.bg = and i32 %.1.i, 32512
  %i.bh = icmp eq i32 %i.bg, 32512
  %i.bi = select i1 %i.bb, i1 %i.bh, i1 false
  %i.bj = select i1 %i.bi, i32 7, i32 8
  %i.bk = add nuw nsw i32 %i.ba, %i.bj            ; 2 uses
  %i.bl = icmp samesign ugt i32 %i.bd, 143
  %i.bm = and i32 %.1.i, 255                      ; 2 uses
  %i.bn = shl nuw i32 %i.bm, %i.bk
  %i.bo = or i32 %i.bf, %i.bn
  %i.bp = and i32 %.1.i, 127
  %i.bq = icmp eq i32 %i.bp, 127
  %i.br = select i1 %i.bl, i1 %i.bq, i1 false
  %i.bs = select i1 %i.br, i32 7, i32 8
  %i.bt = icmp samesign ugt i32 %i.bm, 143        ; 2 uses
  %i.bu = zext i1 %i.bt to i32
  %i.bv = zext i32 %i.bo to i64
  %i.bw = zext nneg i32 %i.b to i64
  %i.bx = shl nuw nsw i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !49
  %i.ca = or i64 %i.bx, %i.bz                     ; 3 uses
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !49
  %i.cb = add nuw nsw i32 %i.bs, %i.b
  %i.cc = add nuw nsw i32 %i.cb, %i.bk            ; 4 uses
  store i32 %i.cc, ptr %i.a, align 8, !tbaa !52
  store i32 %i.bu, ptr %i.ak, align 8, !tbaa !124
  %i.cd = icmp samesign ult i32 %i.cc, 32
  br i1 %i.cd, label %bb.f, label %bb.j

bb.f:                                             ; preds = %rev_read.exit
  %i.ce = icmp sgt i32 %i.ai, 3
  br i1 %i.ce, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cf = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -3
  %.val.i11 = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -4
  store ptr %i.ch, ptr %0, align 8, !tbaa !123
  %i.ci = add nsw i32 %i.ai, -4
  store i32 %i.ci, ptr %i.d, align 4, !tbaa !122
  br label %rev_read.exit12

bb.h:                                             ; preds = %bb.f
  %i.cj = icmp sgt i32 %i.ai, 0
  br i1 %i.cj, label %.preheader.i7, label %rev_read.exit12

.preheader.i7:                                    ; preds = %bb.h
  %.promoted.i8 = load ptr, ptr %0, align 8, !tbaa !123 ; 2 uses
  %xtraiter27 = and i32 %i.ai, 1
  %i.ck = icmp eq i32 %i.ai, 1
  br i1 %i.ck, label %.epil.preheader26, label %.preheader.i7.new

.preheader.i7.new:                                ; preds = %.preheader.i7
  %unroll_iter35 = and i32 %i.ai, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i7.new
  %i.cl = phi ptr [ %.promoted.i8, %.preheader.i7.new ], [ %i.cu, %bb.i ] ; 3 uses
  %.047.i9 = phi i32 [ 0, %.preheader.i7.new ], [ %i.cy, %bb.i ]
  %.04446.i10 = phi i32 [ 24, %.preheader.i7.new ], [ %i.da, %bb.i ] ; 3 uses
  %i.cm = phi i32 [ %i.ai, %.preheader.i7.new ], [ %i.cz, %bb.i ] ; 2 uses
  %niter36 = phi i32 [ 0, %.preheader.i7.new ], [ %niter36.next.1, %bb.i ]
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -1 ; 2 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !123
  %i.co = load i8, ptr %i.cl, align 1, !tbaa !46
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl i32 %i.cp, %.04446.i10
  %i.cr = or i32 %i.cq, %.047.i9
  %i.cs = add nsw i32 %i.cm, -1
  store i32 %i.cs, ptr %i.d, align 4, !tbaa !122
  %i.ct = add nsw i32 %.04446.i10, -8
  %i.cu = getelementptr inbounds i8, ptr %i.cl, i64 -2 ; 3 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !123
  %i.cv = load i8, ptr %i.cn, align 1, !tbaa !46
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl i32 %i.cw, %i.ct
  %i.cy = or i32 %i.cx, %i.cr                     ; 3 uses
  %i.cz = add nsw i32 %i.cm, -2                   ; 3 uses
  store i32 %i.cz, ptr %i.d, align 4, !tbaa !122
  %i.da = add nsw i32 %.04446.i10, -16            ; 2 uses
  %niter36.next.1 = add nuw nsw i32 %niter36, 2   ; 2 uses
  %niter36.ncmp.1.not = icmp eq i32 %niter36.next.1, %unroll_iter35
  br i1 %niter36.ncmp.1.not, label %rev_read.exit12.loopexit.unr-lcssa, label %bb.i, !llvm.loop !125

rev_read.exit12.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod32.not = icmp eq i32 %xtraiter27, 0
  br i1 %lcmp.mod32.not, label %rev_read.exit12, label %.epil.preheader26

.epil.preheader26:                                ; preds = %rev_read.exit12.loopexit.unr-lcssa, %.preheader.i7
  %.epil.init29 = phi ptr [ %.promoted.i8, %.preheader.i7 ], [ %i.cu, %rev_read.exit12.loopexit.unr-lcssa ] ; 2 uses
  %.047.i9.epil.init = phi i32 [ 0, %.preheader.i7 ], [ %i.cy, %rev_read.exit12.loopexit.unr-lcssa ]
  %.04446.i10.epil.init = phi i32 [ 24, %.preheader.i7 ], [ %i.da, %rev_read.exit12.loopexit.unr-lcssa ]
  %.epil.init31 = phi i32 [ %i.ai, %.preheader.i7 ], [ %i.cz, %rev_read.exit12.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.db = getelementptr inbounds i8, ptr %.epil.init29, i64 -1
  store ptr %i.db, ptr %0, align 8, !tbaa !123
  %i.dc = load i8, ptr %.epil.init29, align 1, !tbaa !46
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl i32 %i.dd, %.04446.i10.epil.init
  %i.df = or i32 %i.de, %.047.i9.epil.init
  %i.dg = add nsw i32 %.epil.init31, -1
  store i32 %i.dg, ptr %i.d, align 4, !tbaa !122
  br label %rev_read.exit12

rev_read.exit12:                                  ; preds = %.epil.preheader26, %rev_read.exit12.loopexit.unr-lcssa, %bb.g, %bb.h
  %.1.i6 = phi i32 [ %.val.i11, %bb.g ], [ 0, %bb.h ], [ %i.cy, %rev_read.exit12.loopexit.unr-lcssa ], [ %i.df, %.epil.preheader26 ] ; 9 uses
  %i.dh = lshr i32 %.1.i6, 24
  %i.di = and i32 %.1.i6, 2130706432
  %i.dj = icmp eq i32 %i.di, 2130706432
  %i.dk = select i1 %i.bt, i1 %i.dj, i1 false
  %i.dl = select i1 %i.dk, i32 7, i32 8           ; 2 uses
  %i.dm = icmp ugt i32 %.1.i6, -1879048193
  %i.dn = lshr i32 %.1.i6, 16
  %i.do = and i32 %i.dn, 255                      ; 2 uses
  %i.dp = shl nuw nsw i32 %i.do, %i.dl
  %i.dq = or i32 %i.dp, %i.dh
  %i.dr = and i32 %.1.i6, 8323072
  %i.ds = icmp eq i32 %i.dr, 8323072
  %i.dt = and i1 %i.dm, %i.ds
  %i.du = select i1 %i.dt, i32 7, i32 8
  %i.dv = add nuw nsw i32 %i.dl, %i.du            ; 2 uses
  %i.dw = icmp samesign ugt i32 %i.do, 143
  %i.dx = lshr i32 %.1.i6, 8
  %i.dy = and i32 %i.dx, 255                      ; 2 uses
  %i.dz = shl nuw nsw i32 %i.dy, %i.dv
  %i.ea = or i32 %i.dq, %i.dz
  %i.eb = and i32 %.1.i6, 32512
  %i.ec = icmp eq i32 %i.eb, 32512
  %i.ed = select i1 %i.dw, i1 %i.ec, i1 false
  %i.ee = select i1 %i.ed, i32 7, i32 8
  %i.ef = add nuw nsw i32 %i.dv, %i.ee            ; 2 uses
  %i.eg = icmp samesign ugt i32 %i.dy, 143
  %i.eh = and i32 %.1.i6, 255                     ; 2 uses
  %i.ei = shl nuw i32 %i.eh, %i.ef
  %i.ej = or i32 %i.ea, %i.ei
  %i.ek = and i32 %.1.i6, 127
  %i.el = icmp eq i32 %i.ek, 127
  %i.em = select i1 %i.eg, i1 %i.el, i1 false
  %i.en = select i1 %i.em, i32 7, i32 8
  %i.eo = icmp samesign ugt i32 %i.eh, 143
  %i.ep = zext i1 %i.eo to i32
  %i.eq = zext i32 %i.ej to i64
  %i.er = zext nneg i32 %i.cc to i64
  %i.es = shl nuw nsw i64 %i.eq, %i.er
  %i.et = or i64 %i.es, %i.ca                     ; 2 uses
  store i64 %i.et, ptr %i.by, align 8, !tbaa !49
  %i.eu = add nuw nsw i32 %i.en, %i.cc
  %i.ev = add nuw nsw i32 %i.eu, %i.ef
  store i32 %i.ev, ptr %i.a, align 8, !tbaa !52
  store i32 %i.ep, ptr %i.ak, align 8, !tbaa !124
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %rev_read.exit, %rev_read.exit12
  %i.ew = phi i64 [ %.pre, %._crit_edge ], [ %i.ca, %rev_read.exit ], [ %i.et, %rev_read.exit12 ]
  %i.ex = trunc i64 %i.ew to i32
  ret i32 %i.ex
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc range(i32 0, 21) i32 @decode_init_uvlc(i32 noundef %0, i32 noundef range(i32 0, 5) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !3
  store i32 1, ptr %2, align 4, !tbaa !3
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 3
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = and i32 %0, 7
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !46
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = lshr i32 %0, %i.i
  %i.k = lshr i32 %i.h, 2
  %i.l = and i32 %i.k, 7                          ; 2 uses
  %i.m = add nuw nsw i32 %i.l, %i.i
  %i.n = lshr i32 %i.h, 5
  %notmask99 = shl nsw i32 -1, %i.l
  %i.o = xor i32 %notmask99, -1
  %i.p = and i32 %i.j, %i.o
  %i.q = icmp eq i32 %1, 1                        ; 2 uses
  %i.r = add nuw nsw i32 %i.n, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 2 uses
  %i.t = select i1 %i.q, i32 %i.s, i32 1
  store i32 %i.t, ptr %2, align 4, !tbaa !3
  %i.u = select i1 %i.q, i32 1, i32 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !3
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %1, 3
  %i.x = and i32 %0, 7
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !46
  %i.ab = zext i8 %i.aa to i32                    ; 7 uses
  %i.ac = and i32 %i.ab, 3                        ; 4 uses
  %i.ad = lshr i32 %0, %i.ac                      ; 6 uses
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i32 %i.ac, 3
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = and i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  %i.ai = lshr i32 %i.ad, 1
  %i.aj = lshr i32 %i.ab, 2
  %i.ak = and i32 %i.aj, 7                        ; 2 uses
  %i.al = add nuw nsw i32 %i.ak, 4
  %i.am = lshr i32 %i.ab, 5
  %notmask98 = shl nsw i32 -1, %i.ak
  %i.an = xor i32 %notmask98, -1
  %i.ao = and i32 %i.ai, %i.an
  %i.ap = add nuw nsw i32 %i.am, 1
  %i.aq = add nuw nsw i32 %i.ap, %i.ao
  store i32 %i.aq, ptr %2, align 4, !tbaa !3
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ar = and i32 %i.ad, 7
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !46
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = and i32 %i.av, 3                        ; 2 uses
  %i.ax = lshr i32 %i.ad, %i.aw                   ; 2 uses
  %i.ay = lshr i32 %i.av, 2
  %i.az = lshr i32 %i.ab, 2
  %i.ba = and i32 %i.ay, 7                        ; 2 uses
  %i.bb = and i32 %i.az, 7                        ; 3 uses
  %i.bc = lshr i32 %i.ax, %i.bb
  %i.bd = add nuw nsw i32 %i.bb, %i.ac
  %i.be = add nuw nsw i32 %i.bd, %i.aw
  %i.bf = add nuw nsw i32 %i.be, %i.ba
  %i.bg = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.bh = insertelement <2 x i32> %i.bg, i32 %i.av, i64 1
  %i.bi = lshr <2 x i32> %i.bh, splat (i32 5)
  %notmask97 = shl nsw i32 -1, %i.ba
  %notmask96 = shl nsw i32 -1, %i.bb
  %i.bj = xor i32 %notmask97, -1
  %i.bk = xor i32 %notmask96, -1
  %i.bl = and i32 %i.bc, %i.bj
  %i.bm = and i32 %i.ax, %i.bk
  %i.bn = add nuw nsw <2 x i32> %i.bi, splat (i32 1)
  %i.bo = insertelement <2 x i32> poison, i32 %i.bm, i64 0
  %i.bp = insertelement <2 x i32> %i.bo, i32 %i.bl, i64 1
  %i.bq = add nuw nsw <2 x i32> %i.bn, %i.bp
  store <2 x i32> %i.bq, ptr %2, align 4, !tbaa !3
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.br = and i32 %i.ad, 7
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !46
  %i.bv = zext i8 %i.bu to i32                    ; 3 uses
  %i.bw = and i32 %i.bv, 3                        ; 2 uses
  %i.bx = add nuw nsw i32 %i.bw, %i.ac
  %i.by = lshr i32 %i.ad, %i.bw                   ; 2 uses
  %i.bz = lshr i32 %i.bv, 2
  %i.ca = lshr i32 %i.ab, 2
  %i.cb = and i32 %i.bz, 7                        ; 2 uses
  %i.cc = and i32 %i.ca, 7                        ; 3 uses
  %i.cd = add nuw nsw i32 %i.bx, %i.cc
  %i.ce = lshr i32 %i.by, %i.cc
  %i.cf = add nuw nsw i32 %i.cd, %i.cb
  %i.cg = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.ch = insertelement <2 x i32> %i.cg, i32 %i.bv, i64 1
  %i.ci = lshr <2 x i32> %i.ch, splat (i32 5)
  %notmask95 = shl nsw i32 -1, %i.cb
  %notmask = shl nsw i32 -1, %i.cc
  %i.cj = xor i32 %notmask95, -1
  %i.ck = xor i32 %notmask, -1
  %i.cl = and i32 %i.ce, %i.cj
  %i.cm = and i32 %i.by, %i.ck
  %i.cn = add nuw nsw <2 x i32> %i.ci, splat (i32 3)
  %i.co = insertelement <2 x i32> poison, i32 %i.cm, i64 0
  %i.cp = insertelement <2 x i32> %i.co, i32 %i.cl, i64 1
  %i.cq = add nuw nsw <2 x i32> %i.cn, %i.cp
  store <2 x i32> %i.cq, ptr %2, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.i, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.m, %bb.d ], [ %i.cf, %bb.i ], [ %i.al, %bb.g ], [ %i.bf, %bb.h ]
  ret i32 %.1
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @frwd_fetch(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = icmp ult i32 %i.b, 32
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !128  ; 10 uses
  %i.f = icmp sgt i32 %i.e, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.h, ptr %0, align 8, !tbaa !126
  %i.i = add nsw i32 %i.e, -4                     ; 2 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %i.e, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !127
  %.not44.i = icmp ne i32 %i.l, 0
  %i.m = sext i1 %.not44.i to i32                 ; 3 uses
  br i1 %i.j, label %.lr.ph.i, label %frwd_read.exit

.lr.ph.i:                                         ; preds = %bb.d
  %.promoted.i = load ptr, ptr %0, align 8, !tbaa !126 ; 2 uses
  %xtraiter = and i32 %i.e, 1
  %i.n = icmp eq i32 %i.e, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.e, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %i.o = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.aa, %bb.e ] ; 3 uses
  %.047.i = phi i32 [ %i.m, %.lr.ph.i.new ], [ %i.ah, %bb.e ]
  %.04246.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.aj, %bb.e ] ; 5 uses
  %i.p = phi i32 [ %i.e, %.lr.ph.i.new ], [ %i.ai, %bb.e ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !126
  %i.r = load i8, ptr %i.o, align 1, !tbaa !46
  %i.s = zext i8 %i.r to i32
  %i.t = shl i32 255, %.04246.i
  %i.u = xor i32 %i.t, -1
  %i.v = and i32 %.047.i, %i.u
  %i.w = shl i32 %i.s, %.04246.i
  %i.x = or i32 %i.w, %i.v
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.d, align 8, !tbaa !128
  %i.z = or disjoint i32 %.04246.i, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !126
  %i.ab = load i8, ptr %i.q, align 1, !tbaa !46
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl i32 65280, %.04246.i
  %i.ae = xor i32 %i.ad, -1
  %i.af = and i32 %i.x, %i.ae
  %i.ag = shl i32 %i.ac, %i.z
  %i.ah = or i32 %i.ag, %i.af                     ; 3 uses
  %i.ai = add nsw i32 %i.p, -2                    ; 3 uses
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !128
  %i.aj = add nuw nsw i32 %.04246.i, 16           ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %frwd_read.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !130

frwd_read.exit.loopexit.unr-lcssa:                ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %frwd_read.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %frwd_read.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.aa, %frwd_read.exit.loopexit.unr-lcssa ] ; 2 uses
  %.047.i.epil.init = phi i32 [ %i.m, %.lr.ph.i ], [ %i.ah, %frwd_read.exit.loopexit.unr-lcssa ]
  %.04246.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.aj, %frwd_read.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init24 = phi i32 [ %i.e, %.lr.ph.i ], [ %i.ai, %frwd_read.exit.loopexit.unr-lcssa ]
  %lcmp.mod26 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.ak = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.ak, ptr %0, align 8, !tbaa !126
  %i.al = load i8, ptr %.epil.init, align 1, !tbaa !46
  %i.am = zext i8 %i.al to i32
  %i.an = shl i32 255, %.04246.i.epil.init
  %i.ao = xor i32 %i.an, -1
  %i.ap = and i32 %.047.i.epil.init, %i.ao
  %i.aq = shl i32 %i.am, %.04246.i.epil.init
  %i.ar = or i32 %i.aq, %i.ap
  %i.as = add nsw i32 %.epil.init24, -1
  store i32 %i.as, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit

frwd_read.exit:                                   ; preds = %.epil.preheader, %frwd_read.exit.loopexit.unr-lcssa, %bb.c, %bb.d
  %i.at = phi i32 [ %i.i, %bb.c ], [ %i.e, %bb.d ], [ 0, %frwd_read.exit.loopexit.unr-lcssa ], [ 0, %.epil.preheader ] ; 9 uses
  %.1.i = phi i32 [ %.val.i, %bb.c ], [ %i.m, %bb.d ], [ %i.ah, %frwd_read.exit.loopexit.unr-lcssa ], [ %i.ar, %.epil.preheader ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129
  %.not45.not.i = icmp eq i32 %i.av, 0
  %i.aw = select i1 %.not45.not.i, i32 8, i32 7   ; 2 uses
  %i.ax = and i32 %.1.i, 255                      ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 255
  %i.az = lshr i32 %.1.i, 8
  %i.ba = and i32 %i.az, 255                      ; 2 uses
  %i.bb = shl nuw nsw i32 %i.ba, %i.aw
  %i.bc = select i1 %i.ay, i32 7, i32 8
  %i.bd = add nuw nsw i32 %i.aw, %i.bc            ; 2 uses
  %i.be = icmp eq i32 %i.ba, 255
  %i.bf = lshr i32 %.1.i, 16
  %i.bg = and i32 %i.bf, 255                      ; 2 uses
  %i.bh = shl nuw nsw i32 %i.bg, %i.bd
  %i.bi = select i1 %i.be, i32 7, i32 8
  %i.bj = add nuw nsw i32 %i.bd, %i.bi            ; 2 uses
  %i.bk = icmp eq i32 %i.bg, 255
  %i.bl = lshr i32 %.1.i, 24                      ; 2 uses
  %i.bm = shl nuw i32 %i.bl, %i.bj
  %i.bn = or i32 %i.bb, %i.bh
  %i.bo = or i32 %i.bn, %i.bm
  %i.bp = or i32 %i.bo, %i.ax
  %i.bq = select i1 %i.bk, i32 7, i32 8
  %i.br = icmp eq i32 %i.bl, 255                  ; 2 uses
  %i.bs = zext i1 %i.br to i32
  store i32 %i.bs, ptr %i.au, align 4, !tbaa !129
  %i.bt = zext i32 %i.bp to i64
  %i.bu = zext nneg i32 %i.b to i64
  %i.bv = shl nuw nsw i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !53
  %i.by = or i64 %i.bv, %i.bx                     ; 3 uses
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !53
  %i.bz = add nuw nsw i32 %i.bq, %i.b
  %i.ca = add nuw nsw i32 %i.bz, %i.bj            ; 4 uses
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !55
  %i.cb = icmp samesign ult i32 %i.ca, 32
  br i1 %i.cb, label %bb.f, label %bb.j

bb.f:                                             ; preds = %frwd_read.exit
  %i.cc = icmp sgt i32 %i.at, 3
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = load ptr, ptr %0, align 8, !tbaa !126   ; 2 uses
  %.val.i12 = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.ce, ptr %0, align 8, !tbaa !126
  %i.cf = add nsw i32 %i.at, -4
  store i32 %i.cf, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit13

bb.h:                                             ; preds = %bb.f
  %i.cg = icmp sgt i32 %i.at, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !127
  %.not44.i5 = icmp ne i32 %i.ci, 0
  %i.cj = sext i1 %.not44.i5 to i32               ; 3 uses
  br i1 %i.cg, label %.lr.ph.i8, label %frwd_read.exit13

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %0, align 8, !tbaa !126 ; 2 uses
  %xtraiter28 = and i32 %i.at, 1
  %i.ck = icmp eq i32 %i.at, 1
  br i1 %i.ck, label %.epil.preheader27, label %.lr.ph.i8.new

.lr.ph.i8.new:                                    ; preds = %.lr.ph.i8
  %unroll_iter36 = and i32 %i.at, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i8.new
  %i.cl = phi ptr [ %.promoted.i9, %.lr.ph.i8.new ], [ %i.cx, %bb.i ] ; 3 uses
  %.047.i10 = phi i32 [ %i.cj, %.lr.ph.i8.new ], [ %i.de, %bb.i ]
  %.04246.i11 = phi i32 [ 0, %.lr.ph.i8.new ], [ %i.dg, %bb.i ] ; 5 uses
  %i.cm = phi i32 [ %i.at, %.lr.ph.i8.new ], [ %i.df, %bb.i ] ; 2 uses
  %niter37 = phi i32 [ 0, %.lr.ph.i8.new ], [ %niter37.next.1, %bb.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !126
  %i.co = load i8, ptr %i.cl, align 1, !tbaa !46
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl i32 255, %.04246.i11
  %i.cr = xor i32 %i.cq, -1
  %i.cs = and i32 %.047.i10, %i.cr
  %i.ct = shl i32 %i.cp, %.04246.i11
  %i.cu = or i32 %i.ct, %i.cs
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.d, align 8, !tbaa !128
  %i.cw = or disjoint i32 %.04246.i11, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 2 ; 3 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !126
  %i.cy = load i8, ptr %i.cn, align 1, !tbaa !46
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl i32 65280, %.04246.i11
  %i.db = xor i32 %i.da, -1
  %i.dc = and i32 %i.cu, %i.db
  %i.dd = shl i32 %i.cz, %i.cw
  %i.de = or i32 %i.dd, %i.dc                     ; 3 uses
  %i.df = add nsw i32 %i.cm, -2                   ; 3 uses
  store i32 %i.df, ptr %i.d, align 8, !tbaa !128
  %i.dg = add nuw nsw i32 %.04246.i11, 16         ; 2 uses
  %niter37.next.1 = add nuw nsw i32 %niter37, 2   ; 2 uses
  %niter37.ncmp.1.not = icmp eq i32 %niter37.next.1, %unroll_iter36
  br i1 %niter37.ncmp.1.not, label %frwd_read.exit13.loopexit.unr-lcssa, label %bb.i, !llvm.loop !130

frwd_read.exit13.loopexit.unr-lcssa:              ; preds = %bb.i
  %lcmp.mod33.not = icmp eq i32 %xtraiter28, 0
  br i1 %lcmp.mod33.not, label %frwd_read.exit13, label %.epil.preheader27

.epil.preheader27:                                ; preds = %frwd_read.exit13.loopexit.unr-lcssa, %.lr.ph.i8
  %.epil.init30 = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.cx, %frwd_read.exit13.loopexit.unr-lcssa ] ; 2 uses
  %.047.i10.epil.init = phi i32 [ %i.cj, %.lr.ph.i8 ], [ %i.de, %frwd_read.exit13.loopexit.unr-lcssa ]
  %.04246.i11.epil.init = phi i32 [ 0, %.lr.ph.i8 ], [ %i.dg, %frwd_read.exit13.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init32 = phi i32 [ %i.at, %.lr.ph.i8 ], [ %i.df, %frwd_read.exit13.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i32 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.dh = getelementptr inbounds nuw i8, ptr %.epil.init30, i64 1
  store ptr %i.dh, ptr %0, align 8, !tbaa !126
  %i.di = load i8, ptr %.epil.init30, align 1, !tbaa !46
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl i32 255, %.04246.i11.epil.init
  %i.dl = xor i32 %i.dk, -1
  %i.dm = and i32 %.047.i10.epil.init, %i.dl
  %i.dn = shl i32 %i.dj, %.04246.i11.epil.init
  %i.do = or i32 %i.dn, %i.dm
  %i.dp = add nsw i32 %.epil.init32, -1
  store i32 %i.dp, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit13

frwd_read.exit13:                                 ; preds = %.epil.preheader27, %frwd_read.exit13.loopexit.unr-lcssa, %bb.g, %bb.h
  %.1.i6 = phi i32 [ %.val.i12, %bb.g ], [ %i.cj, %bb.h ], [ %i.de, %frwd_read.exit13.loopexit.unr-lcssa ], [ %i.do, %.epil.preheader27 ] ; 4 uses
  %i.dq = select i1 %i.br, i32 7, i32 8           ; 2 uses
  %i.dr = and i32 %.1.i6, 255                     ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 255
  %i.dt = lshr i32 %.1.i6, 8
  %i.du = and i32 %i.dt, 255                      ; 2 uses
  %i.dv = shl nuw nsw i32 %i.du, %i.dq
  %i.dw = select i1 %i.ds, i32 7, i32 8
  %i.dx = add nuw nsw i32 %i.dw, %i.dq            ; 2 uses
  %i.dy = icmp eq i32 %i.du, 255
  %i.dz = lshr i32 %.1.i6, 16
  %i.ea = and i32 %i.dz, 255                      ; 2 uses
  %i.eb = shl nuw nsw i32 %i.ea, %i.dx
  %i.ec = select i1 %i.dy, i32 7, i32 8
  %i.ed = add nuw nsw i32 %i.dx, %i.ec            ; 2 uses
  %i.ee = icmp eq i32 %i.ea, 255
  %i.ef = lshr i32 %.1.i6, 24                     ; 2 uses
  %i.eg = shl nuw i32 %i.ef, %i.ed
  %i.eh = or i32 %i.dv, %i.eb
  %i.ei = or i32 %i.eh, %i.eg
  %i.ej = or i32 %i.ei, %i.dr
  %i.ek = select i1 %i.ee, i32 7, i32 8
  %i.el = icmp eq i32 %i.ef, 255
  %i.em = zext i1 %i.el to i32
  store i32 %i.em, ptr %i.au, align 4, !tbaa !129
  %i.en = zext i32 %i.ej to i64
  %i.eo = zext nneg i32 %i.ca to i64
  %i.ep = shl nuw nsw i64 %i.en, %i.eo
  %i.eq = or i64 %i.ep, %i.by                     ; 2 uses
  store i64 %i.eq, ptr %i.bw, align 8, !tbaa !53
  %i.er = add nuw nsw i32 %i.ek, %i.ca
  %i.es = add nuw nsw i32 %i.er, %i.ed
  store i32 %i.es, ptr %i.a, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %frwd_read.exit, %frwd_read.exit13
  %i.et = phi i64 [ %.pre, %._crit_edge ], [ %i.by, %frwd_read.exit ], [ %i.eq, %frwd_read.exit13 ]
  %i.eu = trunc i64 %i.et to i32
  ret i32 %i.eu
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @rev_fetch_mrp(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = icmp ult i32 %i.b, 32
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !49
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 9 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122  ; 10 uses
  %i.f = icmp sgt i32 %i.e, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -3
  %.val.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  store ptr %i.i, ptr %0, align 8, !tbaa !123
  %i.j = add nsw i32 %i.e, -4                     ; 2 uses
  store i32 %i.j, ptr %i.d, align 4, !tbaa !122
  br label %rev_read_mrp.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp sgt i32 %i.e, 0
  br i1 %i.k, label %.preheader.i, label %rev_read_mrp.exit

.preheader.i:                                     ; preds = %bb.d
  %.promoted.i = load ptr, ptr %0, align 8, !tbaa !123 ; 2 uses
  %xtraiter = and i32 %i.e, 1
  %i.l = icmp eq i32 %i.e, 1
  br i1 %i.l, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i32 %i.e, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.new
  %i.m = phi ptr [ %.promoted.i, %.preheader.i.new ], [ %i.v, %bb.e ] ; 3 uses
  %.047.i = phi i32 [ 0, %.preheader.i.new ], [ %i.z, %bb.e ]
  %.04446.i = phi i32 [ 24, %.preheader.i.new ], [ %i.ab, %bb.e ] ; 3 uses
  %i.n = phi i32 [ %i.e, %.preheader.i.new ], [ %i.aa, %bb.e ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.i.new ], [ %niter.next.1, %bb.e ]
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !123
  %i.p = load i8, ptr %i.m, align 1, !tbaa !46
  %i.q = zext i8 %i.p to i32
  %i.r = shl i32 %i.q, %.04446.i
  %i.s = or i32 %i.r, %.047.i
  %i.t = add nsw i32 %i.n, -1
  store i32 %i.t, ptr %i.d, align 4, !tbaa !122
  %i.u = add nsw i32 %.04446.i, -8
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 -2 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !123
  %i.w = load i8, ptr %i.o, align 1, !tbaa !46
  %i.x = zext i8 %i.w to i32
  %i.y = shl i32 %i.x, %i.u
  %i.z = or i32 %i.y, %i.s                        ; 3 uses
  %i.aa = add nsw i32 %i.n, -2                    ; 3 uses
  store i32 %i.aa, ptr %i.d, align 4, !tbaa !122
  %i.ab = add nsw i32 %.04446.i, -16              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %rev_read_mrp.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !131

rev_read_mrp.exit.loopexit.unr-lcssa:             ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %rev_read_mrp.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %rev_read_mrp.exit.loopexit.unr-lcssa, %.preheader.i
  %.epil.init = phi ptr [ %.promoted.i, %.preheader.i ], [ %i.v, %rev_read_mrp.exit.loopexit.unr-lcssa ] ; 2 uses
  %.047.i.epil.init = phi i32 [ 0, %.preheader.i ], [ %i.z, %rev_read_mrp.exit.loopexit.unr-lcssa ]
  %.04446.i.epil.init = phi i32 [ 24, %.preheader.i ], [ %i.ab, %rev_read_mrp.exit.loopexit.unr-lcssa ]
  %.epil.init23 = phi i32 [ %i.e, %.preheader.i ], [ %i.aa, %rev_read_mrp.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.ac = getelementptr inbounds i8, ptr %.epil.init, i64 -1
  store ptr %i.ac, ptr %0, align 8, !tbaa !123
  %i.ad = load i8, ptr %.epil.init, align 1, !tbaa !46
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl i32 %i.ae, %.04446.i.epil.init
  %i.ag = or i32 %i.af, %.047.i.epil.init
  %i.ah = add nsw i32 %.epil.init23, -1
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !122
  br label %rev_read_mrp.exit

rev_read_mrp.exit:                                ; preds = %.epil.preheader, %rev_read_mrp.exit.loopexit.unr-lcssa, %bb.c, %bb.d
  %i.ai = phi i32 [ %i.j, %bb.c ], [ %i.e, %bb.d ], [ 0, %rev_read_mrp.exit.loopexit.unr-lcssa ], [ 0, %.epil.preheader ] ; 9 uses
  %.1.i = phi i32 [ %.val.i, %bb.c ], [ 0, %bb.d ], [ %i.z, %rev_read_mrp.exit.loopexit.unr-lcssa ], [ %i.ag, %.epil.preheader ] ; 9 uses
  %i.aj = lshr i32 %.1.i, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !124
  %i.am = icmp ne i32 %i.al, 0
  %i.an = and i32 %.1.i, 2130706432
  %i.ao = icmp eq i32 %i.an, 2130706432
  %i.ap = select i1 %i.am, i1 %i.ao, i1 false
  %i.aq = select i1 %i.ap, i32 7, i32 8           ; 2 uses
  %i.ar = icmp ugt i32 %.1.i, -1879048193
  %i.as = lshr i32 %.1.i, 16
  %i.at = and i32 %i.as, 255                      ; 2 uses
  %i.au = shl nuw nsw i32 %i.at, %i.aq
  %i.av = or i32 %i.au, %i.aj
  %i.aw = and i32 %.1.i, 8323072
  %i.ax = icmp eq i32 %i.aw, 8323072
  %i.ay = and i1 %i.ar, %i.ax
  %i.az = select i1 %i.ay, i32 7, i32 8
  %i.ba = add nuw nsw i32 %i.aq, %i.az            ; 2 uses
  %i.bb = icmp samesign ugt i32 %i.at, 143
  %i.bc = lshr i32 %.1.i, 8
  %i.bd = and i32 %i.bc, 255                      ; 2 uses
  %i.be = shl nuw nsw i32 %i.bd, %i.ba
  %i.bf = or i32 %i.av, %i.be
  %i.bg = and i32 %.1.i, 32512
  %i.bh = icmp eq i32 %i.bg, 32512
  %i.bi = select i1 %i.bb, i1 %i.bh, i1 false
  %i.bj = select i1 %i.bi, i32 7, i32 8
  %i.bk = add nuw nsw i32 %i.ba, %i.bj            ; 2 uses
  %i.bl = icmp samesign ugt i32 %i.bd, 143
  %i.bm = and i32 %.1.i, 255                      ; 2 uses
  %i.bn = shl nuw i32 %i.bm, %i.bk
  %i.bo = or i32 %i.bf, %i.bn
  %i.bp = and i32 %.1.i, 127
  %i.bq = icmp eq i32 %i.bp, 127
  %i.br = select i1 %i.bl, i1 %i.bq, i1 false
  %i.bs = select i1 %i.br, i32 7, i32 8
  %i.bt = icmp samesign ugt i32 %i.bm, 143        ; 2 uses
  %i.bu = zext i1 %i.bt to i32
  %i.bv = zext i32 %i.bo to i64
  %i.bw = zext nneg i32 %i.b to i64
  %i.bx = shl nuw nsw i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !49
  %i.ca = or i64 %i.bx, %i.bz                     ; 3 uses
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !49
  %i.cb = add nuw nsw i32 %i.bs, %i.b
  %i.cc = add nuw nsw i32 %i.cb, %i.bk            ; 4 uses
  store i32 %i.cc, ptr %i.a, align 8, !tbaa !52
  store i32 %i.bu, ptr %i.ak, align 8, !tbaa !124
  %i.cd = icmp samesign ult i32 %i.cc, 32
  br i1 %i.cd, label %bb.f, label %bb.j

bb.f:                                             ; preds = %rev_read_mrp.exit
  %i.ce = icmp sgt i32 %i.ai, 3
  br i1 %i.ce, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cf = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -3
  %.val.i11 = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -4
  store ptr %i.ch, ptr %0, align 8, !tbaa !123
  %i.ci = add nsw i32 %i.ai, -4
  store i32 %i.ci, ptr %i.d, align 4, !tbaa !122
  br label %rev_read_mrp.exit12

bb.h:                                             ; preds = %bb.f
  %i.cj = icmp sgt i32 %i.ai, 0
  br i1 %i.cj, label %.preheader.i7, label %rev_read_mrp.exit12

.preheader.i7:                                    ; preds = %bb.h
  %.promoted.i8 = load ptr, ptr %0, align 8, !tbaa !123 ; 2 uses
  %xtraiter27 = and i32 %i.ai, 1
  %i.ck = icmp eq i32 %i.ai, 1
  br i1 %i.ck, label %.epil.preheader26, label %.preheader.i7.new

.preheader.i7.new:                                ; preds = %.preheader.i7
  %unroll_iter35 = and i32 %i.ai, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i7.new
  %i.cl = phi ptr [ %.promoted.i8, %.preheader.i7.new ], [ %i.cu, %bb.i ] ; 3 uses
  %.047.i9 = phi i32 [ 0, %.preheader.i7.new ], [ %i.cy, %bb.i ]
  %.04446.i10 = phi i32 [ 24, %.preheader.i7.new ], [ %i.da, %bb.i ] ; 3 uses
  %i.cm = phi i32 [ %i.ai, %.preheader.i7.new ], [ %i.cz, %bb.i ] ; 2 uses
  %niter36 = phi i32 [ 0, %.preheader.i7.new ], [ %niter36.next.1, %bb.i ]
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -1 ; 2 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !123
  %i.co = load i8, ptr %i.cl, align 1, !tbaa !46
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl i32 %i.cp, %.04446.i10
  %i.cr = or i32 %i.cq, %.047.i9
  %i.cs = add nsw i32 %i.cm, -1
  store i32 %i.cs, ptr %i.d, align 4, !tbaa !122
  %i.ct = add nsw i32 %.04446.i10, -8
  %i.cu = getelementptr inbounds i8, ptr %i.cl, i64 -2 ; 3 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !123
  %i.cv = load i8, ptr %i.cn, align 1, !tbaa !46
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl i32 %i.cw, %i.ct
  %i.cy = or i32 %i.cx, %i.cr                     ; 3 uses
  %i.cz = add nsw i32 %i.cm, -2                   ; 3 uses
  store i32 %i.cz, ptr %i.d, align 4, !tbaa !122
  %i.da = add nsw i32 %.04446.i10, -16            ; 2 uses
  %niter36.next.1 = add nuw nsw i32 %niter36, 2   ; 2 uses
  %niter36.ncmp.1.not = icmp eq i32 %niter36.next.1, %unroll_iter35
  br i1 %niter36.ncmp.1.not, label %rev_read_mrp.exit12.loopexit.unr-lcssa, label %bb.i, !llvm.loop !131

rev_read_mrp.exit12.loopexit.unr-lcssa:           ; preds = %bb.i
  %lcmp.mod32.not = icmp eq i32 %xtraiter27, 0
  br i1 %lcmp.mod32.not, label %rev_read_mrp.exit12, label %.epil.preheader26

.epil.preheader26:                                ; preds = %rev_read_mrp.exit12.loopexit.unr-lcssa, %.preheader.i7
  %.epil.init29 = phi ptr [ %.promoted.i8, %.preheader.i7 ], [ %i.cu, %rev_read_mrp.exit12.loopexit.unr-lcssa ] ; 2 uses
  %.047.i9.epil.init = phi i32 [ 0, %.preheader.i7 ], [ %i.cy, %rev_read_mrp.exit12.loopexit.unr-lcssa ]
  %.04446.i10.epil.init = phi i32 [ 24, %.preheader.i7 ], [ %i.da, %rev_read_mrp.exit12.loopexit.unr-lcssa ]
  %.epil.init31 = phi i32 [ %i.ai, %.preheader.i7 ], [ %i.cz, %rev_read_mrp.exit12.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.db = getelementptr inbounds i8, ptr %.epil.init29, i64 -1
  store ptr %i.db, ptr %0, align 8, !tbaa !123
  %i.dc = load i8, ptr %.epil.init29, align 1, !tbaa !46
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl i32 %i.dd, %.04446.i10.epil.init
  %i.df = or i32 %i.de, %.047.i9.epil.init
  %i.dg = add nsw i32 %.epil.init31, -1
  store i32 %i.dg, ptr %i.d, align 4, !tbaa !122
  br label %rev_read_mrp.exit12

rev_read_mrp.exit12:                              ; preds = %.epil.preheader26, %rev_read_mrp.exit12.loopexit.unr-lcssa, %bb.g, %bb.h
  %.1.i6 = phi i32 [ %.val.i11, %bb.g ], [ 0, %bb.h ], [ %i.cy, %rev_read_mrp.exit12.loopexit.unr-lcssa ], [ %i.df, %.epil.preheader26 ] ; 9 uses
  %i.dh = lshr i32 %.1.i6, 24
  %i.di = and i32 %.1.i6, 2130706432
  %i.dj = icmp eq i32 %i.di, 2130706432
  %i.dk = select i1 %i.bt, i1 %i.dj, i1 false
  %i.dl = select i1 %i.dk, i32 7, i32 8           ; 2 uses
  %i.dm = icmp ugt i32 %.1.i6, -1879048193
  %i.dn = lshr i32 %.1.i6, 16
  %i.do = and i32 %i.dn, 255                      ; 2 uses
  %i.dp = shl nuw nsw i32 %i.do, %i.dl
  %i.dq = or i32 %i.dp, %i.dh
  %i.dr = and i32 %.1.i6, 8323072
  %i.ds = icmp eq i32 %i.dr, 8323072
  %i.dt = and i1 %i.dm, %i.ds
  %i.du = select i1 %i.dt, i32 7, i32 8
  %i.dv = add nuw nsw i32 %i.dl, %i.du            ; 2 uses
  %i.dw = icmp samesign ugt i32 %i.do, 143
  %i.dx = lshr i32 %.1.i6, 8
  %i.dy = and i32 %i.dx, 255                      ; 2 uses
  %i.dz = shl nuw nsw i32 %i.dy, %i.dv
  %i.ea = or i32 %i.dq, %i.dz
  %i.eb = and i32 %.1.i6, 32512
  %i.ec = icmp eq i32 %i.eb, 32512
  %i.ed = select i1 %i.dw, i1 %i.ec, i1 false
  %i.ee = select i1 %i.ed, i32 7, i32 8
  %i.ef = add nuw nsw i32 %i.dv, %i.ee            ; 2 uses
  %i.eg = icmp samesign ugt i32 %i.dy, 143
  %i.eh = and i32 %.1.i6, 255                     ; 2 uses
  %i.ei = shl nuw i32 %i.eh, %i.ef
  %i.ej = or i32 %i.ea, %i.ei
  %i.ek = and i32 %.1.i6, 127
  %i.el = icmp eq i32 %i.ek, 127
  %i.em = select i1 %i.eg, i1 %i.el, i1 false
  %i.en = select i1 %i.em, i32 7, i32 8
  %i.eo = icmp samesign ugt i32 %i.eh, 143
  %i.ep = zext i1 %i.eo to i32
  %i.eq = zext i32 %i.ej to i64
  %i.er = zext nneg i32 %i.cc to i64
  %i.es = shl nuw nsw i64 %i.eq, %i.er
  %i.et = or i64 %i.es, %i.ca                     ; 2 uses
  store i64 %i.et, ptr %i.by, align 8, !tbaa !49
  %i.eu = add nuw nsw i32 %i.en, %i.cc
  %i.ev = add nuw nsw i32 %i.eu, %i.ef
  store i32 %i.ev, ptr %i.a, align 8, !tbaa !52
  store i32 %i.ep, ptr %i.ak, align 8, !tbaa !124
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %rev_read_mrp.exit, %rev_read_mrp.exit12
  %i.ew = phi i64 [ %.pre, %._crit_edge ], [ %i.ca, %rev_read_mrp.exit ], [ %i.et, %rev_read_mrp.exit12 ]
  %i.ex = trunc i64 %i.ew to i32
  ret i32 %i.ex
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @opj_aligned_free(ptr noundef) local_unnamed_addr #2

declare ptr @opj_aligned_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

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
!7 = !{!8, !4, i64 240}
!8 = !{!"opj_t1", !9, i64 0, !14, i64 216, !14, i64 224, !4, i64 232, !4, i64 236, !4, i64 240, !4, i64 244, !4, i64 248, !4, i64 252, !10, i64 256, !4, i64 264}
!9 = !{!"opj_mqc", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !12, i64 192, !10, i64 200, !5, i64 208}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p2 _ZTS13opj_mqc_state", !13, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!8, !14, i64 216}
!16 = !{!8, !4, i64 244}
!17 = !{!8, !14, i64 224}
!18 = !{!19, !4, i64 32}
!19 = !{!"opj_tcd_cblk_dec", !20, i64 0, !21, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !14, i64 72, !4, i64 80}
!20 = !{!"p1 _ZTS11opj_tcd_seg", !11, i64 0}
!21 = !{!"p1 _ZTS22opj_tcd_seg_data_chunk", !11, i64 0}
!22 = !{!19, !4, i64 36}
!23 = !{!19, !4, i64 60}
!24 = !{!19, !21, i64 8}
!25 = !{!26, !4, i64 8}
!26 = !{!"opj_tcd_seg_data_chunk", !10, i64 0, !4, i64 8}
!27 = distinct !{!27, !28, !29, !30}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !28, !30, !29}
!32 = !{!8, !4, i64 252}
!33 = !{!8, !4, i64 264}
!34 = !{!8, !10, i64 256}
!35 = !{!26, !10, i64 0}
!36 = distinct !{!36, !28}
!37 = !{!19, !4, i64 48}
!38 = !{!19, !20, i64 0}
!39 = !{!40, !4, i64 8}
!40 = !{!"opj_tcd_seg", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!41 = !{!40, !4, i64 0}
!42 = !{!19, !4, i64 24}
!43 = !{!19, !4, i64 16}
!44 = !{!19, !4, i64 28}
!45 = !{!19, !4, i64 20}
!46 = !{!5, !5, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !5, i64 0}
!49 = !{!50, !51, i64 8}
!50 = !{!"rev_struct", !10, i64 0, !51, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!51 = !{!"long", !5, i64 0}
!52 = !{!50, !4, i64 16}
!53 = !{!54, !51, i64 8}
!54 = !{!"frwd_struct", !10, i64 0, !51, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!55 = !{!54, !4, i64 16}
!56 = distinct !{!56, !28}
!57 = distinct !{!57, !28}
!58 = distinct !{!58, !28}
!59 = distinct !{!59, !28}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = !{!61, !66}
!66 = distinct !{!66, !62}
!67 = !{!66}
!68 = distinct !{!68, !28, !29, !30}
!69 = distinct !{!69, !28, !29}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !28}
!72 = distinct !{!72, !28}
!73 = distinct !{!73, !28}
!74 = distinct !{!74, !28}
!75 = distinct !{!75, !28}
!76 = distinct !{!76, !28}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!81}
!81 = distinct !{!81, !79}
!82 = !{!78, !83}
!83 = distinct !{!83, !79}
!84 = !{!83}
!85 = distinct !{!85, !28, !29, !30}
!86 = distinct !{!86, !28, !29}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !28, !29, !30}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97}
!97 = distinct !{!97, !95}
!98 = !{!99}
!99 = distinct !{!99, !95}
!100 = !{!94, !97, !101}
!101 = distinct !{!101, !95}
!102 = !{!101}
!103 = distinct !{!103, !28, !29, !30}
!104 = distinct !{!104, !28, !29}
!105 = distinct !{!105, !28, !29}
!106 = distinct !{!106, !28}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !28}
!109 = distinct !{!109, !28}
!110 = distinct !{!110, !28, !29, !30}
!111 = distinct !{!111, !28, !30, !29}
!112 = distinct !{!112, !28}
!113 = !{!114, !10, i64 0}
!114 = !{!"dec_mel", !10, i64 0, !51, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !51, i64 40}
!115 = !{!114, !4, i64 16}
!116 = !{!114, !51, i64 8}
!117 = !{!114, !4, i64 24}
!118 = !{!114, !4, i64 20}
!119 = !{!114, !4, i64 28}
!120 = !{!114, !4, i64 32}
!121 = !{!114, !51, i64 40}
!122 = !{!50, !4, i64 20}
!123 = !{!50, !10, i64 0}
!124 = !{!50, !4, i64 24}
!125 = distinct !{!125, !28}
!126 = !{!54, !10, i64 0}
!127 = !{!54, !4, i64 28}
!128 = !{!54, !4, i64 24}
!129 = !{!54, !4, i64 20}
!130 = distinct !{!130, !28}
!131 = distinct !{!131, !28}
!132 = distinct !{!132, !28}
end_hunk_1
