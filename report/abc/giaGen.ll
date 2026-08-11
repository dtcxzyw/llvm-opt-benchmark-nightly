inline.NumInlined: 491
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 39
begin_hunk_0_@Gia_ManGenPrep:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 -1, i64 %i.c, i1 false), !tbaa !21
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 -1, i64 %i.c, i1 false), !tbaa !21
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %i.c, i1 false), !tbaa !21
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 -1, i64 %i.c, i1 false), !tbaa !21
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 -1, i64 %i.c, i1 false), !tbaa !21
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 -1, i64 %i.c, i1 false), !tbaa !21
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 -1, i64 %i.c, i1 false), !tbaa !21
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 -1, i64 %i.c, i1 false), !tbaa !21
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge12.split.loopexit.unr-lcssa, label %.preheader, !llvm.loop !214

._crit_edge12.split.loopexit.unr-lcssa:           ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge12.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge12.split.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.7, %._crit_edge12.split.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader.epil.preheader ], [ %indvars.iv.next.epil, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 -1, i64 %i.c, i1 false), !tbaa !21
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge12.split, label %.preheader.epil, !llvm.loop !215

._crit_edge12.split:                              ; preds = %._crit_edge12.split.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManGenSK(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i32 %0, 2
  %i.b = add i32 %0, -1
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nuw nsw i32 32, %i.c
  %.09.i = select i1 %i.a, i32 %0, i32 %i.d       ; 2 uses
  %i.e = icmp ne i32 %.09.i, 0
  %i.f = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge18.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count23 = zext nneg i32 %.09.i to i64
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %0, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod25 = trunc i32 %0 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv20 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next21, %._crit_edge ] ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv20 to i32   ; 3 uses
  %i.i = shl nuw i32 1, %i.h                      ; 3 uses
  %notmask = shl nsw i32 -1, %i.h
  %i.j = xor i32 %notmask, -1                     ; 3 uses
  %i.k = shl i32 -2, %i.h                         ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  br i1 %i.g, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader ]
  %i.n = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.o = and i32 %i.i, %i.n
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.new
  %i.p = and i32 %i.k, %i.n
  %i.q = or i32 %i.p, %i.j
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !213
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 %i.q, ptr %i.s, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %.preheader.new, %bb.b
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.u = and i32 %i.i, %i.t
  %.not.1 = icmp eq i32 %i.u, 0
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = and i32 %i.k, %i.t
  %i.w = or i32 %i.v, %i.j
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !213
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  store i32 %i.w, ptr %i.y, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !216

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.z = trunc nuw nsw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %i.aa = and i32 %i.i, %i.z
  %.not.epil = icmp eq i32 %i.aa, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.ab = and i32 %i.k, %i.z
  %i.ac = or i32 %i.ab, %i.j
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !213
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.epil.init
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.f, %._crit_edge.unr-lcssa
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count23
  br i1 %exitcond24.not, label %._crit_edge18.split, label %.preheader, !llvm.loop !217

._crit_edge18.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManGenBK(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i32 %0, 2
  %i.b = add i32 %0, -1
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nuw nsw i32 32, %i.c
  %.09.i = select i1 %i.a, i32 %0, i32 %i.d       ; 6 uses
  %i.e = shl nuw i32 1, %.09.i                    ; 5 uses
  %i.f = icmp samesign ugt i32 %.09.i, 1
  br i1 %i.f, label %.lr.ph43.preheader, label %._crit_edge44.thread

._crit_edge44.thread:                             ; preds = %bb.a
  %.pre = zext nneg i32 %.09.i to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !213
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr [4 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  store i32 0, ptr %i.k, align 4, !tbaa !21
  br label %._crit_edge52

.lr.ph43.preheader:                               ; preds = %bb.a
  %i.l = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %.09.i to i64  ; 3 uses
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %._crit_edge
  %indvars.iv55 = phi i64 [ 1, %.lr.ph43.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 4 uses
  %i.m = trunc nuw nsw i64 %indvars.iv55 to i32
  %i.n = shl nuw i32 1, %i.m                      ; 3 uses
  %.not = icmp sgt i32 %i.n, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph43
  %i.o = add i32 %i.n, -1
  %i.p = trunc i64 %indvars.iv55 to i32
  %i.q = add i32 %i.p, -1
  %.neg = shl nsw i32 -1, %i.q
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv55
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !213
  %i.t = zext i32 %i.o to i64
  %i.u = sext i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.v = trunc nsw i64 %indvars.iv to i32
  %i.w = add i32 %.neg, %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !21
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.u ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !218

._crit_edge:                                      ; preds = %bb.b, %.lr.ph43
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge44, label %.lr.ph43, !llvm.loop !219

._crit_edge44:                                    ; preds = %._crit_edge
  %i.z = add nsw i32 %.09.i, -1
  %notmask = shl nsw i32 -1, %i.z
  %i.aa = xor i32 %notmask, -1
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %wide.trip.count
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !213
  %i.ad = add nsw i32 %i.e, -1
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ae
  store i32 %i.aa, ptr %i.af, align 4, !tbaa !21
  %i.ag = shl nuw nsw i32 %.09.i, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr [8 x i8], ptr %1, i64 %i.ah
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge44, %._crit_edge48
  %indvars.iv61 = phi i64 [ 1, %._crit_edge44 ], [ %indvars.iv.next62, %._crit_edge48 ] ; 4 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv61 to i32
  %i.ak = shl nuw i32 1, %i.aj                    ; 4 uses
  %i.al = sub nsw i32 %i.e, %i.ak                 ; 2 uses
  %.not53 = icmp sgt i32 %i.ak, %i.al
  br i1 %.not53, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.c
  %i.am = add i32 %i.ak, -1
  %i.an = trunc i64 %indvars.iv61 to i32
  %i.ao = add i32 %i.an, -1
  %i.ap = shl nuw i32 1, %i.ao                    ; 2 uses
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = xor i64 %indvars.iv61, -1
  %i.as = getelementptr [8 x i8], ptr %i.ai, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !213
  %i.au = zext i32 %i.am to i64
  %i.av = sext i32 %i.ak to i64
  %i.aw = zext nneg i32 %i.aq to i64
  %i.ax = sext i32 %i.al to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph47, %bb.d
  %indvars.iv58 = phi i64 [ %i.au, %.lr.ph47 ], [ %indvars.iv.next59, %bb.d ] ; 2 uses
  %i.ay = sub nsw i64 %i.ae, %indvars.iv58
  %i.az = add nsw i64 %i.ay, %i.aw                ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.az
  %i.bb = trunc i64 %i.az to i32
  %i.bc = sub i32 %i.bb, %i.ap
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !21
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, %i.av ; 2 uses
  %i.bd = icmp slt i64 %indvars.iv.next59, %i.ax
  br i1 %i.bd, label %bb.d, label %._crit_edge48, !llvm.loop !220

._crit_edge48:                                    ; preds = %bb.d, %bb.c
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond65.not, label %._crit_edge52, label %bb.c, !llvm.loop !221

._crit_edge52:                                    ; preds = %._crit_edge48, %._crit_edge44.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManGenHC(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i32 %0, 2
  %i.b = add i32 %0, -1
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nuw nsw i32 32, %i.c
  %.09.i = select i1 %i.a, i32 %0, i32 %i.d       ; 4 uses
  %i.e = shl nuw i32 1, %.09.i                    ; 6 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %.preheader29

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !213  ; 5 uses
  %i.i = zext nneg i32 %i.e to i64
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.m = icmp ult i64 %i.j, 6
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.l, -4
  br label %bb.c

.preheader29.loopexit.unr-lcssa:                  ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader29, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader29.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %.preheader29.loopexit.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.o = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !21
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader29, label %bb.b, !llvm.loop !222

.preheader29:                                     ; preds = %.preheader29.loopexit.unr-lcssa, %bb.b, %bb.a
  %.not33 = icmp samesign ult i32 %.09.i, 2
  br i1 %.not33, label %.preheader, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %.preheader29
  %i.q = sext i32 %i.e to i64
  %i.r = add nuw nsw i32 %.09.i, 1
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %.lr.ph35

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.w = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.z = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader29.loopexit.unr-lcssa, label %bb.c, !llvm.loop !223

.preheader:                                       ; preds = %._crit_edge, %.preheader29
  %i.ae = icmp sgt i32 %i.e, 2
  br i1 %i.ae, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %.preheader
  %i.af = zext nneg i32 %.09.i to i64
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !213
  %i.aj = zext nneg i32 %i.e to i64
  br label %bb.e

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ 2, %.lr.ph35.preheader ], [ %indvars.iv.next44, %._crit_edge ] ; 3 uses
  %i.ak = trunc i64 %indvars.iv43 to i32
  %i.al = add i32 %i.ak, -1
  %i.am = shl nuw i32 1, %i.al                    ; 3 uses
  %i.an = add nuw nsw i32 %i.am, 1
  %i.ao = icmp slt i32 %i.an, %i.e
  br i1 %i.ao, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %.lr.ph35
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv43
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !213
  %i.ar = sext i32 %i.am to i64
  %i.as = add nsw i64 %i.ar, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph32, %bb.d
  %indvars.iv40 = phi i64 [ %i.as, %.lr.ph32 ], [ %indvars.iv.next41, %bb.d ] ; 3 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv40
  %i.au = trunc i64 %indvars.iv40 to i32
  %i.av = sub i32 %i.au, %i.am
  store i32 %i.av, ptr %i.at, align 4, !tbaa !21
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 2 ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv.next41, %i.q
  br i1 %i.aw, label %bb.d, label %._crit_edge, !llvm.loop !224

._crit_edge:                                      ; preds = %bb.d, %.lr.ph35
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph35, !llvm.loop !225

bb.e:                                             ; preds = %.lr.ph37, %bb.e
  %indvars.iv46 = phi i64 [ 2, %.lr.ph37 ], [ %indvars.iv.next47, %bb.e ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv46
  %i.ay = trunc nuw nsw i64 %indvars.iv46 to i32
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !21
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 2 ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next47, %i.aj
  br i1 %i.ba, label %bb.e, label %._crit_edge38, !llvm.loop !226

._crit_edge38:                                    ; preds = %bb.e, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManGenRca(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.b = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.c = add nsw i32 %0, -2
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = trunc i64 %indvars.iv to i32
  %i.i = add nsw i32 %i.h, -1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !213
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
end_hunk_0
begin_hunk_1_@Gia_ManGenAdder:bb.a
  %i.l = add nsw i32 %0, 2
  %i.m = zext nneg i32 %i.l to i64                ; 3 uses
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 9 uses
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.o = add i32 %0, 1
  %i.p = icmp ult i32 %i.o, 7
  br i1 %i.p, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i64 %i.m, 2147483640
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next.i.7, %.preheader.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter.next.7, %.preheader.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %Gia_ManGenPrep.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !214

Gia_ManGenPrep.exit.loopexit.unr-lcssa:           ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Gia_ManGenPrep.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %Gia_ManGenPrep.exit.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i.7, %Gia_ManGenPrep.exit.loopexit.unr-lcssa ]
  %lcmp.mod357 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod357)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.epil
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Gia_ManGenPrep.exit, label %.preheader.i.epil, !llvm.loop !232

Gia_ManGenPrep.exit:                              ; preds = %Gia_ManGenPrep.exit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.c
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %Gia_ManGenPrep.exit
  %i.ap = icmp ne i32 %.09.i, 0
  %i.aq = icmp sgt i32 %0, 0
  %or.cond.i = and i1 %i.aq, %i.ap
  br i1 %or.cond.i, label %.preheader.preheader.i199, label %Gia_ManGenSK.exit

.preheader.preheader.i199:                        ; preds = %bb.d
  %wide.trip.count23.i = zext nneg i32 %.09.i to i64
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 2 uses
  %xtraiter358 = and i64 %wide.trip.count.i, 1
  %i.ar = icmp eq i32 %0, 1
  %unroll_iter362 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod360.not = icmp eq i64 %xtraiter358, 0
  %lcmp.mod361 = trunc i32 %0 to i1
  br label %.preheader.i200

.preheader.i200:                                  ; preds = %._crit_edge.i, %.preheader.preheader.i199
  %indvars.iv20.i = phi i64 [ 0, %.preheader.preheader.i199 ], [ %indvars.iv.next21.i, %._crit_edge.i ] ; 3 uses
  %i.as = trunc nuw nsw i64 %indvars.iv20.i to i32 ; 3 uses
  %i.at = shl nuw i32 1, %i.as                    ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.as
  %i.au = xor i32 %notmask.i, -1                  ; 3 uses
  %i.av = shl i32 -2, %i.as                       ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv20.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  br i1 %i.ar, label %.epil.preheader, label %.preheader.i200.new

.preheader.i200.new:                              ; preds = %.preheader.i200, %bb.h
  %indvars.iv.i201 = phi i64 [ %indvars.iv.next.i202.1, %bb.h ], [ 0, %.preheader.i200 ] ; 4 uses
  %niter363 = phi i64 [ %niter363.next.1, %bb.h ], [ 0, %.preheader.i200 ]
  %i.ay = trunc nuw nsw i64 %indvars.iv.i201 to i32 ; 2 uses
  %i.az = and i32 %i.at, %i.ay
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i200.new
  %i.ba = and i32 %i.av, %i.ay
  %i.bb = or i32 %i.ba, %i.au
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !213
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i201
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.i200.new
  %indvars.iv.next.i202 = or disjoint i64 %indvars.iv.i201, 1 ; 2 uses
  %i.be = trunc nuw nsw i64 %indvars.iv.next.i202 to i32 ; 2 uses
  %i.bf = and i32 %i.at, %i.be
  %.not.i.1 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = and i32 %i.av, %i.be
  %i.bh = or i32 %i.bg, %i.au
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !213
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.i202
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.i202.1 = add nuw nsw i64 %indvars.iv.i201, 2 ; 2 uses
  %niter363.next.1 = add i64 %niter363, 2         ; 2 uses
  %niter363.ncmp.1 = icmp eq i64 %niter363.next.1, %unroll_iter362
  br i1 %niter363.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i200.new, !llvm.loop !216

._crit_edge.i.unr-lcssa:                          ; preds = %bb.h
  br i1 %lcmp.mod360.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i200
  %indvars.iv.i201.epil.init = phi i64 [ 0, %.preheader.i200 ], [ %indvars.iv.next.i202.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod361)
  %i.bk = trunc nuw nsw i64 %indvars.iv.i201.epil.init to i32 ; 2 uses
  %i.bl = and i32 %i.at, %i.bk
  %.not.i.epil = icmp eq i32 %i.bl, 0
  br i1 %.not.i.epil, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.bm = and i32 %i.av, %i.bk
  %i.bn = or i32 %i.bm, %i.au
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !213
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i201.epil.init
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.i, %._crit_edge.i.unr-lcssa
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %Gia_ManGenSK.exit, label %.preheader.i200, !llvm.loop !217

bb.j:                                             ; preds = %Gia_ManGenPrep.exit
  %.not186 = icmp eq i32 %2, 0
  br i1 %.not186, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp samesign ugt i32 %.09.i, 1
  br i1 %i.bq, label %.lr.ph43.preheader.i, label %._crit_edge44.thread.i

._crit_edge44.thread.i:                           ; preds = %bb.k
  %.pre.i = zext nneg i32 %.09.i to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.pre.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !213
  %i.bt = zext nneg i32 %i.g to i64
  %i.bu = getelementptr [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  store i32 0, ptr %i.bv, align 4, !tbaa !21
  br label %Gia_ManGenSK.exit

.lr.ph43.preheader.i:                             ; preds = %bb.k
  %i.bw = sext i32 %i.g to i64
  %wide.trip.count.i205 = zext nneg i32 %.09.i to i64 ; 3 uses
  br label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %._crit_edge.i209, %.lr.ph43.preheader.i
  %indvars.iv55.i = phi i64 [ 1, %.lr.ph43.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i209 ] ; 3 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv55.i to i32 ; 2 uses
  %i.by = shl nuw i32 1, %i.bx                    ; 3 uses
  %.not.i206 = icmp sgt i32 %i.by, %i.g
  br i1 %.not.i206, label %._crit_edge.i209, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph43.i
  %i.bz = add i32 %i.by, -1
  %i.ca = add i32 %i.bx, -1
  %.neg.i = shl nsw i32 -1, %i.ca
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv55.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !213
  %i.cd = zext i32 %i.bz to i64
  %i.ce = sext i32 %i.by to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.i, %bb.l
  %indvars.iv.i207 = phi i64 [ %i.cd, %.lr.ph.i ], [ %indvars.iv.next.i208, %bb.l ] ; 3 uses
  %i.cf = trunc nsw i64 %indvars.iv.i207 to i32
  %i.cg = add i32 %.neg.i, %i.cf
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %indvars.iv.i207
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !21
  %indvars.iv.next.i208 = add nsw i64 %indvars.iv.i207, %i.ce ; 2 uses
  %i.ci = icmp slt i64 %indvars.iv.next.i208, %i.bw
  br i1 %i.ci, label %bb.l, label %._crit_edge.i209, !llvm.loop !233

._crit_edge.i209:                                 ; preds = %bb.l, %.lr.ph43.i
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond.not.i210 = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count.i205
  br i1 %exitcond.not.i210, label %._crit_edge44.i, label %.lr.ph43.i, !llvm.loop !219

._crit_edge44.i:                                  ; preds = %._crit_edge.i209
  %i.cj = add nsw i32 %.09.i, -1
  %notmask.i211 = shl nsw i32 -1, %i.cj
  %i.ck = xor i32 %notmask.i211, -1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %wide.trip.count.i205
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !213
  %i.cn = add nsw i32 %i.g, -1
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.co
  store i32 %i.ck, ptr %i.cp, align 4, !tbaa !21
  %i.cq = shl nuw nsw i32 %.09.i, 1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.i, i64 %i.cr
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge48.i, %._crit_edge44.i
  %indvars.iv61.i = phi i64 [ 1, %._crit_edge44.i ], [ %indvars.iv.next62.i, %._crit_edge48.i ] ; 3 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv61.i to i32 ; 2 uses
  %i.cu = shl nuw i32 1, %i.ct                    ; 4 uses
  %i.cv = sub nsw i32 %i.g, %i.cu                 ; 2 uses
  %.not53.i = icmp sgt i32 %i.cu, %i.cv
  br i1 %.not53.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.m
  %i.cw = add i32 %i.cu, -1
  %i.cx = add i32 %i.ct, -1
  %i.cy = shl nuw i32 1, %i.cx                    ; 2 uses
  %i.cz = add nsw i32 %i.cy, -1
  %i.da = xor i64 %indvars.iv61.i, -1
  %i.db = getelementptr [8 x i8], ptr %i.cs, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !213
  %i.dd = zext i32 %i.cw to i64
  %i.de = sext i32 %i.cu to i64
  %i.df = zext nneg i32 %i.cz to i64
  %i.dg = sext i32 %i.cv to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph47.i, %bb.n
  %indvars.iv58.i = phi i64 [ %i.dd, %.lr.ph47.i ], [ %indvars.iv.next59.i, %bb.n ] ; 2 uses
  %i.dh = sub nsw i64 %i.co, %indvars.iv58.i
  %i.di = add nsw i64 %i.dh, %i.df                ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.di
  %i.dk = trunc i64 %i.di to i32
  %i.dl = sub i32 %i.dk, %i.cy
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !21
  %indvars.iv.next59.i = add nsw i64 %indvars.iv58.i, %i.de ; 2 uses
  %i.dm = icmp slt i64 %indvars.iv.next59.i, %i.dg
  br i1 %i.dm, label %bb.n, label %._crit_edge48.i, !llvm.loop !234

._crit_edge48.i:                                  ; preds = %bb.n, %bb.m
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count.i205
  br i1 %exitcond65.not.i, label %Gia_ManGenSK.exit, label %bb.m, !llvm.loop !221

bb.o:                                             ; preds = %bb.j
  %.not187 = icmp eq i32 %3, 0
  br i1 %.not187, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = icmp sgt i32 %i.g, 1
  br i1 %i.dn, label %.lr.ph.i217, label %.preheader29.i

.lr.ph.i217:                                      ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !213 ; 5 uses
  %i.dq = zext nneg i32 %i.g to i64
  %i.dr = add nsw i64 %i.dq, -2                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 1
  %i.dt = add nuw i64 %i.ds, 1                    ; 2 uses
  %xtraiter365 = and i64 %i.dt, 3                 ; 3 uses
  %i.du = icmp ult i64 %i.dr, 6
  br i1 %i.du, label %.epil.preheader364, label %.lr.ph.i217.new

.lr.ph.i217.new:                                  ; preds = %.lr.ph.i217
  %unroll_iter369 = and i64 %i.dt, -4
  br label %bb.r

.preheader29.i.loopexit.unr-lcssa:                ; preds = %bb.r
  %lcmp.mod367.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod367.not, label %.preheader29.i, label %.epil.preheader364

.epil.preheader364:                               ; preds = %.preheader29.i.loopexit.unr-lcssa, %.lr.ph.i217
  %indvars.iv.i218.epil.init = phi i64 [ 1, %.lr.ph.i217 ], [ %indvars.iv.next.i219.3, %.preheader29.i.loopexit.unr-lcssa ]
  %lcmp.mod368 = icmp ne i64 %xtraiter365, 0
  tail call void @llvm.assume(i1 %lcmp.mod368)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader364
  %indvars.iv.i218.epil = phi i64 [ %indvars.iv.i218.epil.init, %.epil.preheader364 ], [ %indvars.iv.next.i219.epil, %bb.q ] ; 3 uses
  %epil.iter366 = phi i64 [ 0, %.epil.preheader364 ], [ %epil.iter366.next, %bb.q ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i218.epil
  %i.dw = trunc nuw nsw i64 %indvars.iv.i218.epil to i32
  %i.dx = add nsw i32 %i.dw, -1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !21
  %indvars.iv.next.i219.epil = add nuw nsw i64 %indvars.iv.i218.epil, 2
  %epil.iter366.next = add i64 %epil.iter366, 1   ; 2 uses
  %epil.iter366.cmp.not = icmp eq i64 %epil.iter366.next, %xtraiter365
  br i1 %epil.iter366.cmp.not, label %.preheader29.i, label %bb.q, !llvm.loop !235

.preheader29.i:                                   ; preds = %.preheader29.i.loopexit.unr-lcssa, %bb.q, %bb.p
  %.not33.i = icmp samesign ult i32 %.09.i, 2
  br i1 %.not33.i, label %.preheader.i216, label %.lr.ph35.preheader.i

.lr.ph35.preheader.i:                             ; preds = %.preheader29.i
  %i.dy = sext i32 %i.g to i64
  %i.dz = add nuw nsw i32 %.09.i, 1
  %wide.trip.count.i213 = zext nneg i32 %i.dz to i64
  br label %.lr.ph35.i

bb.r:                                             ; preds = %bb.r, %.lr.ph.i217.new
  %indvars.iv.i218 = phi i64 [ 1, %.lr.ph.i217.new ], [ %indvars.iv.next.i219.3, %bb.r ] ; 6 uses
  %niter370 = phi i64 [ 0, %.lr.ph.i217.new ], [ %niter370.next.3, %bb.r ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i218
  %i.eb = trunc nuw nsw i64 %indvars.iv.i218 to i32
  %i.ec = add nsw i32 %i.eb, -1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !21
  %indvars.iv.next.i219 = add nuw nsw i64 %indvars.iv.i218, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i219
  %i.ee = trunc nuw nsw i64 %indvars.iv.next.i219 to i32
  %i.ef = add nsw i32 %i.ee, -1
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !21
  %indvars.iv.next.i219.1 = add nuw nsw i64 %indvars.iv.i218, 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i219.1
  %i.eh = trunc nuw nsw i64 %indvars.iv.next.i219.1 to i32
  %i.ei = add nsw i32 %i.eh, -1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !21
  %indvars.iv.next.i219.2 = add nuw nsw i64 %indvars.iv.i218, 6 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i219.2
  %i.ek = trunc nuw nsw i64 %indvars.iv.next.i219.2 to i32
  %i.el = add nsw i32 %i.ek, -1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !21
  %indvars.iv.next.i219.3 = add nuw nsw i64 %indvars.iv.i218, 8 ; 2 uses
  %niter370.next.3 = add i64 %niter370, 4         ; 2 uses
  %niter370.ncmp.3.not = icmp eq i64 %niter370.next.3, %unroll_iter369
  br i1 %niter370.ncmp.3.not, label %.preheader29.i.loopexit.unr-lcssa, label %bb.r, !llvm.loop !223

.preheader.i216:                                  ; preds = %._crit_edge.i214, %.preheader29.i
  %i.em = icmp sgt i32 %i.g, 2
  br i1 %i.em, label %.lr.ph37.i, label %Gia_ManGenSK.exit

.lr.ph37.i:                                       ; preds = %.preheader.i216
  %i.en = zext nneg i32 %.09.i to i64
  %i.eo = getelementptr [8 x i8], ptr %i.i, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !213
  %i.er = zext nneg i32 %i.g to i64
  br label %bb.t

.lr.ph35.i:                                       ; preds = %._crit_edge.i214, %.lr.ph35.preheader.i
  %indvars.iv43.i = phi i64 [ 2, %.lr.ph35.preheader.i ], [ %indvars.iv.next44.i, %._crit_edge.i214 ] ; 3 uses
  %i.es = trunc i64 %indvars.iv43.i to i32
  %i.et = add i32 %i.es, -1
  %i.eu = shl nuw i32 1, %i.et                    ; 3 uses
  %i.ev = add nuw nsw i32 %i.eu, 1
  %i.ew = icmp slt i32 %i.ev, %i.g
  br i1 %i.ew, label %.lr.ph32.i, label %._crit_edge.i214

.lr.ph32.i:                                       ; preds = %.lr.ph35.i
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv43.i
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !213
  %i.ez = sext i32 %i.eu to i64
  %i.fa = add nsw i64 %i.ez, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph32.i
  %indvars.iv40.i = phi i64 [ %i.fa, %.lr.ph32.i ], [ %indvars.iv.next41.i, %bb.s ] ; 3 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %indvars.iv40.i
  %i.fc = trunc i64 %indvars.iv40.i to i32
  %i.fd = sub i32 %i.fc, %i.eu
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !21
  %indvars.iv.next41.i = add nsw i64 %indvars.iv40.i, 2 ; 2 uses
  %i.fe = icmp slt i64 %indvars.iv.next41.i, %i.dy
  br i1 %i.fe, label %bb.s, label %._crit_edge.i214, !llvm.loop !224

._crit_edge.i214:                                 ; preds = %bb.s, %.lr.ph35.i
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond.not.i215 = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count.i213
  br i1 %exitcond.not.i215, label %.preheader.i216, label %.lr.ph35.i, !llvm.loop !225

bb.t:                                             ; preds = %bb.t, %.lr.ph37.i
  %indvars.iv46.i = phi i64 [ 2, %.lr.ph37.i ], [ %indvars.iv.next47.i, %bb.t ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv46.i
  %i.fg = trunc nuw nsw i64 %indvars.iv46.i to i32
  %i.fh = add nsw i32 %i.fg, -1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !21
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 2 ; 2 uses
  %i.fi = icmp samesign ult i64 %indvars.iv.next47.i, %i.er
  br i1 %i.fi, label %bb.t, label %Gia_ManGenSK.exit, !llvm.loop !226

bb.u:                                             ; preds = %bb.o
  %i.fj = icmp sgt i32 %0, 1
  br i1 %i.fj, label %.lr.ph.preheader.i, label %Gia_ManGenSK.exit

.lr.ph.preheader.i:                               ; preds = %bb.u
  %wide.trip.count.i221 = zext nneg i32 %0 to i64
  %i.fk = add nsw i64 %wide.trip.count.i221, -1   ; 2 uses
  %xtraiter371 = and i64 %i.fk, 3                 ; 3 uses
  %i.fl = add nsw i32 %0, -2
  %i.fm = icmp ult i32 %i.fl, 3
  br i1 %i.fm, label %.lr.ph.i222.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter375 = and i64 %i.fk, -4
  br label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %.lr.ph.i222, %.lr.ph.preheader.i.new
  %indvars.iv.i223 = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i224.3, %.lr.ph.i222 ] ; 7 uses
  %niter376 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter376.next.3, %.lr.ph.i222 ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i223
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !213
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i223
  %i.fq = trunc i64 %indvars.iv.i223 to i32
  %i.fr = add nsw i32 %i.fq, -1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !21
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i223, 1 ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i224
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !213
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.next.i224
  %i.fv = trunc i64 %indvars.iv.next.i224 to i32
  %i.fw = add nsw i32 %i.fv, -1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !21
  %indvars.iv.next.i224.1 = add nuw nsw i64 %indvars.iv.i223, 2 ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i224.1
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !213
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.next.i224.1
  %i.ga = trunc i64 %indvars.iv.next.i224.1 to i32
  %i.gb = add nsw i32 %i.ga, -1
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !21
  %indvars.iv.next.i224.2 = add nuw nsw i64 %indvars.iv.i223, 3 ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i224.2
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !213
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next.i224.2
end_hunk_1
