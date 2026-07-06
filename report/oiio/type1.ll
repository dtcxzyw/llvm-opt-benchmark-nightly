inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@T1_Get_Track_Kerning:bb.a
  %i.s = load i64, ptr %i.r, align 8, !tbaa !389
  store i64 %i.s, ptr %3, align 8, !tbaa !107
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = sub nsw i64 %1, %i.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !389
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !387
  %i.y = sub nsw i64 %i.v, %i.x
  %i.z = sub nsw i64 %i.p, %i.k
  %i.aa = tail call i64 @FT_MulDiv(i64 noundef %i.t, i64 noundef %i.y, i64 noundef %i.z) #17
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !387
  %i.ac = add nsw i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %3, align 8, !tbaa !107
  %.pre = load i32, ptr %i.c, align 8, !tbaa !254
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %i.ad = phi i32 [ %i.f, %bb.d ], [ %.pre, %bb.g ], [ %i.f, %bb.f ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.b, label %.loopexit, !llvm.loop !390

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %.preheader ], [ 0, %bb.h ]
  ret i32 %.0
}

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 7) i32 @T1_Get_Multi_Master(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !113  ; 5 uses
  store i32 %i.d, ptr %1, align 8, !tbaa !391
  %i.e = load i32, ptr %i.b, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !393
  %.not25 = icmp eq i32 %i.d, 0
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %wide.trip.count = zext i32 %i.d to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.d, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !152
  store ptr %i.n, ptr %i.k, align 8, !tbaa !394
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !396  ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !397
  %i.s = load i8, ptr %i.l, align 8, !tbaa !118
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %i.p, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !398
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv.next ; 3 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.next ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !152
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !394
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !396 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !107
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !397
  %i.ag = load i8, ptr %i.z, align 8, !tbaa !118
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr [8 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !398
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !399

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod28 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv.epil.init ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.epil.init ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !152
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !394
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !396 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !107
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !397
  %i.au = load i8, ptr %i.an, align 8, !tbaa !118
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr [8 x i8], ptr %i.ar, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !107
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !398
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.022 = phi i32 [ 6, %bb.a ], [ 0, %bb.b ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.epil.preheader ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 7) i32 @T1_Set_MM_Design(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %t1_set_mm_blend.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !113  ; 3 uses
  %.not104 = icmp eq i32 %i.e, 0
  br i1 %.not104, label %._crit_edge.thread, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.b
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.g = zext i32 %spec.select to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph102, %bb.k
  %i.h = phi i32 [ %i.e, %.lr.ph102 ], [ %i.az, %bb.k ] ; 3 uses
  %indvars.iv110 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next111, %bb.k ] ; 5 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv110 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !396  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !400  ; 5 uses
  %i.n = icmp samesign ult i64 %indvars.iv110, %i.g
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv110
  %i.p = load i64, ptr %i.o, align 8, !tbaa !107
  %.pre = load i8, ptr %i.i, align 8, !tbaa !118
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.i, align 8, !tbaa !118   ; 2 uses
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.k, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !107
  %i.v = load i64, ptr %i.k, align 8, !tbaa !107
  %i.w = sub nsw i64 %i.u, %i.v
  %i.x = sdiv i64 %i.w, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = phi i8 [ %.pre, %bb.d ], [ %i.q, %bb.e ] ; 3 uses
  %.067 = phi i64 [ %i.p, %bb.d ], [ %i.x, %bb.e ] ; 3 uses
  %.not105 = icmp eq i8 %i.y, 0
  br i1 %.not105, label %.thread83.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext i8 %i.y to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 6 uses
  %.05794 = phi i32 [ -1, %.lr.ph.preheader ], [ %i.af, %bb.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !107 ; 2 uses
  %i.ab = icmp eq i64 %.067, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ac = icmp slt i64 %.067, %i.aa
  br i1 %i.ac, label %.thread83, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !107
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !401

.thread83:                                        ; preds = %bb.g
  %i.ag = icmp slt i32 %.05794, 0
  br i1 %i.ag, label %.thread83.thread, label %bb.j

.thread83.thread:                                 ; preds = %bb.f, %.thread83
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !107
  br label %bb.k

.thread:                                          ; preds = %bb.i
  %i.ai = zext i8 %i.y to i64
  %i.aj = getelementptr [8 x i8], ptr %i.m, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !107
  br label %bb.k

bb.j:                                             ; preds = %.thread83
  %i.am = zext nneg i32 %.05794 to i64            ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !107 ; 2 uses
  %i.ap = sub nsw i64 %.067, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !107
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.am
  %i.at = load i64, ptr %i.as, align 8, !tbaa !107
  %i.au = sub nsw i64 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !107
  %i.ax = sub nsw i64 %i.aw, %i.ao
  %i.ay = tail call i64 @FT_MulDiv(i64 noundef %i.ap, i64 noundef %i.au, i64 noundef %i.ax) #17
  %.pre113 = load i32, ptr %i.d, align 4, !tbaa !113
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %.thread83.thread, %bb.j, %.thread
  %i.az = phi i32 [ %i.h, %.thread83.thread ], [ %i.h, %.thread ], [ %.pre113, %bb.j ], [ %i.h, %bb.h ] ; 3 uses
  %.3 = phi i64 [ %i.ah, %.thread83.thread ], [ %i.al, %.thread ], [ %i.ay, %bb.j ], [ %i.ae, %bb.h ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv110
  store i64 %.3, ptr %i.ba, align 8, !tbaa !107
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.bb = zext i32 %i.az to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next111, %i.bb
  br i1 %i.bc, label %bb.c, label %._crit_edge, !llvm.loop !402

._crit_edge:                                      ; preds = %bb.k
  %.val.pre = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %i.bd = zext i32 %i.az to i64
  %.not.i = icmp eq ptr %.val.pre, null
  br i1 %.not.i, label %t1_set_mm_blend.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %.lcssa92133 = phi i64 [ %i.bd, %._crit_edge ], [ 0, %bb.b ]
  %.val132 = phi ptr [ %.val.pre, %._crit_edge ], [ %i.c, %bb.b ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val132, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !113 ; 2 uses
  %i.bg = load i32, ptr %.val132, align 8, !tbaa !111 ; 4 uses
  %.not10.i = icmp eq i32 %i.bg, 0
  br i1 %.not10.i, label %._crit_edge9.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %._crit_edge.thread
  %.not11.i = icmp eq i32 %i.bf, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %.val132, i64 264
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !115 ; 4 uses
  %wide.trip.count20.i = zext i32 %i.bg to i64    ; 3 uses
  br i1 %.not11.i, label %.preheader.i.preheader, label %.preheader.us.preheader.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %xtraiter = and i64 %wide.trip.count20.i, 1
  %i.bj = icmp eq i32 %i.bg, 1
  br i1 %i.bj, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %wide.trip.count20.i, 4294967294
  br label %.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext i32 %i.bf to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.s, %.preheader.us.preheader.i
  %indvars.iv14.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next15.i, %bb.s ] ; 3 uses
  %.0318.us.i = phi i8 [ 0, %.preheader.us.preheader.i ], [ %.132.us.i, %bb.s ]
  %i.bk = trunc nuw i64 %indvars.iv14.i to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.q ] ; 4 uses
  %.0304.us.i = phi i64 [ 65536, %.preheader.us.i ], [ %.1.us.i, %bb.q ] ; 3 uses
  %.not41.us.i = icmp samesign ult i64 %indvars.iv.i, %.lcssa92133
  br i1 %.not41.us.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = lshr i64 %.0304.us.i, 1
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !107 ; 2 uses
  %i.bo = trunc nuw i64 %indvars.iv.i to i32
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = and i32 %i.bp, %i.bk
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = sub nsw i64 65536, %i.bn
  %spec.select43.us.i = select i1 %i.br, i64 %i.bs, i64 %i.bn ; 3 uses
  %i.bt = icmp slt i64 %spec.select43.us.i, 1
  br i1 %i.bt, label %._crit_edge.us.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = icmp samesign ugt i64 %spec.select43.us.i, 65535
  br i1 %i.bu, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = shl nuw nsw i64 %.0304.us.i, 16
  %i.bw = mul nuw nsw i64 %i.bv, %spec.select43.us.i
  %i.bx = add nuw nsw i64 %i.bw, 2147483648
  %i.by = lshr i64 %i.bx, 32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %.1.us.i = phi i64 [ %i.bl, %bb.m ], [ %.0304.us.i, %bb.o ], [ %i.by, %bb.p ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.l, !llvm.loop !403

._crit_edge.us.i:                                 ; preds = %bb.q, %bb.n
  %.2.us.i = phi i64 [ 0, %bb.n ], [ %.1.us.i, %bb.q ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv14.i ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !107
  %.not42.us.i = icmp eq i64 %i.ca, %.2.us.i
  br i1 %.not42.us.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.us.i
  store i64 %.2.us.i, ptr %i.bz, align 8, !tbaa !107
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.us.i
  %.132.us.i = phi i8 [ 1, %bb.r ], [ %.0318.us.i, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next15.i, %wide.trip.count20.i
  br i1 %exitcond17.not.i, label %._crit_edge9.i, label %.preheader.us.i, !llvm.loop !404

.preheader.i:                                     ; preds = %bb.v, %.preheader.i.preheader.new
  %indvars.iv18.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %indvars.iv.next19.i.1, %bb.v ] ; 3 uses
  %.0318.i = phi i8 [ 0, %.preheader.i.preheader.new ], [ %.132.i.1, %bb.v ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %bb.v ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv18.i ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !107
  %.not42.i = icmp eq i64 %i.cc, 65536
  br i1 %.not42.i, label %.preheader.i.1, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  store i64 65536, ptr %i.cb, align 8, !tbaa !107
  br label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.t, %.preheader.i
  %.132.i = phi i8 [ 1, %bb.t ], [ %.0318.i, %.preheader.i ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv18.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !107
  %.not42.i.1 = icmp eq i64 %i.cf, 65536
  br i1 %.not42.i.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.i.1
  store i64 65536, ptr %i.ce, align 8, !tbaa !107
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader.i.1
  %.132.i.1 = phi i8 [ 1, %bb.u ], [ %.132.i, %.preheader.i.1 ] ; 3 uses
  %indvars.iv.next19.i.1 = add nuw nsw i64 %indvars.iv18.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge9.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !404

._crit_edge9.i.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge9.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %._crit_edge9.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %indvars.iv18.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next19.i.1, %._crit_edge9.i.loopexit.unr-lcssa ]
  %.0318.i.epil.init = phi i8 [ 0, %.preheader.i.preheader ], [ %.132.i.1, %._crit_edge9.i.loopexit.unr-lcssa ]
  %lcmp.mod152 = trunc i32 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv18.i.epil.init ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !107
  %.not42.i.epil = icmp eq i64 %i.ch, 65536
  br i1 %.not42.i.epil, label %._crit_edge9.i, label %bb.w

bb.w:                                             ; preds = %.preheader.i.epil.preheader
  store i64 65536, ptr %i.cg, align 8, !tbaa !107
  br label %._crit_edge9.i

._crit_edge9.i:                                   ; preds = %bb.s, %._crit_edge9.i.loopexit.unr-lcssa, %bb.w, %.preheader.i.epil.preheader, %._crit_edge.thread
  %.031.lcssa.i = phi i8 [ 0, %._crit_edge.thread ], [ %.0318.i.epil.init, %.preheader.i.epil.preheader ], [ %.132.i.1, %._crit_edge9.i.loopexit.unr-lcssa ], [ 1, %bb.w ], [ %.132.us.i, %bb.s ]
  %sext.i = add nsw i8 %.031.lcssa.i, -1
  %i.ci = sext i8 %sext.i to i32
  br label %t1_set_mm_blend.exit

t1_set_mm_blend.exit:                             ; preds = %._crit_edge9.i, %._crit_edge, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ %i.ci, %._crit_edge9.i ], [ 6, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 7) i32 @T1_Set_MM_Blend(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 848
  %.val = load ptr, ptr %i.a, align 8, !tbaa !110 ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %t1_set_mm_blend.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !113  ; 2 uses
  %i.d = load i32, ptr %.val, align 8, !tbaa !111 ; 5 uses
  %.not10.i = icmp eq i32 %i.d, 0
  br i1 %.not10.i, label %._crit_edge9.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.b
  %.not11.i = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115  ; 4 uses
  br i1 %.not11.i, label %.preheader.preheader.i, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.g = zext i32 %1 to i64
  %wide.trip.count16.i = zext i32 %i.d to i64
  %wide.trip.count.i = zext i32 %i.c to i64
end_hunk_0
