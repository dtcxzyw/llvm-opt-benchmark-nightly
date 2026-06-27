inline.NumInlined: 16
inline.NumDeleted: 4
begin_hunk_0_@new_OpeningGapCount:bb.a

.preheader.thread:                                ; preds = %bb.a
  %i.a = zext i32 %4 to i64
  %i.b = shl nuw nsw i64 %i.a, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.b, i1 false), !tbaa !21
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph36.preheader, label %._crit_edge39.split

.lr.ph36.preheader:                               ; preds = %.preheader.thread
  %wide.trip.count = zext nneg i32 %1 to i64
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.d = add nsw i32 %4, -1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i32 %4, 1
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph36.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.h = load double, ptr %i.g, align 8, !tbaa !24
  %i.i = fptrunc double %i.h to float             ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = icmp eq i8 %i.m, 45                      ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph36
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.k, align 1, !tbaa !8
  %i.q = icmp eq i8 %i.p, 45                      ; 3 uses
  %not..prol = xor i1 %i.q, true
  %i.r = select i1 %not..prol, i1 true, i1 %i.n
  br i1 %i.r, label %.prol.loopexit, label %bb.b

bb.b:                                             ; preds = %.prol.preheader
  %i.s = load float, ptr %0, align 4, !tbaa !21
  %i.t = fadd float %i.s, %i.i
  store float %i.t, ptr %0, align 4, !tbaa !21
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b, %.lr.ph36
  %.in.unr = phi i32 [ %4, %.lr.ph36 ], [ %i.d, %bb.b ], [ %i.d, %.prol.preheader ]
  %.035.unr = phi ptr [ %i.k, %.lr.ph36 ], [ %i.o, %bb.b ], [ %i.o, %.prol.preheader ]
  %.134.unr = phi ptr [ %0, %.lr.ph36 ], [ %i.e, %bb.b ], [ %i.e, %.prol.preheader ]
  %.026.in33.unr = phi i1 [ %i.n, %.lr.ph36 ], [ %i.q, %bb.b ], [ %i.q, %.prol.preheader ]
  br i1 %i.f, label %._crit_edge, label %.lr.ph36.new

.lr.ph36.new:                                     ; preds = %.prol.loopexit, %bb.f
  %.in = phi i32 [ %i.aa, %bb.f ], [ %.in.unr, %.prol.loopexit ]
  %.035 = phi ptr [ %i.ab, %bb.f ], [ %.035.unr, %.prol.loopexit ] ; 3 uses
  %.134 = phi ptr [ %i.ah, %bb.f ], [ %.134.unr, %.prol.loopexit ] ; 4 uses
  %.026.in33 = phi i1 [ %i.ad, %bb.f ], [ %.026.in33.unr, %.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.v = load i8, ptr %.035, align 1, !tbaa !8
  %i.w = icmp ne i8 %i.v, 45                      ; 2 uses
  %i.x = select i1 %i.w, i1 true, i1 %.026.in33
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph36.new
  %i.y = load float, ptr %.134, align 4, !tbaa !21
  %i.z = fadd float %i.y, %i.i
  store float %i.z, ptr %.134, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph36.new
  %i.aa = add nsw i32 %.in, -2                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.035, i64 2
  %i.ac = load i8, ptr %i.u, align 1, !tbaa !8
  %i.ad = icmp eq i8 %i.ac, 45                    ; 2 uses
  %.not43 = and i1 %i.w, %i.ad
  br i1 %.not43, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.134, i64 4 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !21
  %i.ag = fadd float %i.af, %i.i
  store float %i.ag, ptr %i.ae, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.134, i64 8
  %.not27.1 = icmp eq i32 %i.aa, 0
  br i1 %.not27.1, label %._crit_edge, label %.lr.ph36.new, !llvm.loop !489

._crit_edge:                                      ; preds = %bb.f, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge39.split, label %.lr.ph36, !llvm.loop !490

._crit_edge39.split:                              ; preds = %._crit_edge, %bb.a, %.preheader.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @new_OpeningGapCount_zure(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #9 {
bb.a:
  %i.a = add nsw i32 %4, 2                        ; 2 uses
  %.not38 = icmp eq i32 %i.a, 0
  br i1 %.not38, label %.preheader.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.c, i1 false), !tbaa !21
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph48, label %._crit_edge49

.preheader.thread:                                ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph45.preheader, label %._crit_edge49

.lr.ph48:                                         ; preds = %.preheader
  %.not3441 = icmp eq i32 %4, 0
  br i1 %.not3441, label %.lr.ph48.split.us.preheader, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %.preheader.thread, %.lr.ph48
  %wide.trip.count = zext nneg i32 %1 to i64
  %xtraiter69 = and i32 %4, 1
  %lcmp.mod70.not = icmp eq i32 %xtraiter69, 0
  %i.f = add nsw i32 %4, -1                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.h = icmp eq i32 %4, 1
  br label %.lr.ph45

.lr.ph48.split.us.preheader:                      ; preds = %.lr.ph48
  %wide.trip.count56 = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count56, 1
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %.lr.ph48.split.us.epil.preheader, label %.lr.ph48.split.us.preheader.new

.lr.ph48.split.us.preheader.new:                  ; preds = %.lr.ph48.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count56, 2147483646
  br label %.lr.ph48.split.us

.lr.ph48.split.us:                                ; preds = %bb.d, %.lr.ph48.split.us.preheader.new
  %indvars.iv53 = phi i64 [ 0, %.lr.ph48.split.us.preheader.new ], [ %indvars.iv.next54.1, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph48.split.us.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv53
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 45
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv53
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = icmp ne i8 %i.n, 45
  %.not36.us = select i1 %i.o, i1 true, i1 %i.l
  br i1 %.not36.us, label %.lr.ph48.split.us.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph48.split.us
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv53
  %i.q = load double, ptr %i.p, align 8, !tbaa !24
  %i.r = fptrunc double %i.q to float
  %i.s = load float, ptr %0, align 4, !tbaa !21
  %i.t = fadd float %i.s, %i.r
  store float %i.t, ptr %0, align 4, !tbaa !21
  br label %.lr.ph48.split.us.1

.lr.ph48.split.us.1:                              ; preds = %bb.b, %.lr.ph48.split.us
  %indvars.iv.next54 = or disjoint i64 %indvars.iv53, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next54
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 45
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv.next54
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = icmp ne i8 %i.y, 45
  %.not36.us.1 = select i1 %i.z, i1 true, i1 %i.w
  br i1 %.not36.us.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph48.split.us.1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next54
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !24
  %i.ac = fptrunc double %i.ab to float
  %i.ad = load float, ptr %0, align 4, !tbaa !21
  %i.ae = fadd float %i.ad, %i.ac
  store float %i.ae, ptr %0, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph48.split.us.1
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge49.loopexit67.unr-lcssa, label %.lr.ph48.split.us, !llvm.loop !491

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !24
  %i.ah = fptrunc double %i.ag to float           ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = icmp eq i8 %i.al, 45                    ; 2 uses
  br i1 %lcmp.mod70.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph45
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.ap = icmp eq i8 %i.ao, 45                    ; 5 uses
  %i.aq = xor i1 %i.ap, true
  %7 = select i1 %i.aq, i1 true, i1 %i.am
  br i1 %7, label %.prol.loopexit, label %bb.e

bb.e:                                             ; preds = %.prol.preheader
  %i.ar = load float, ptr %0, align 4, !tbaa !21
  %i.as = fadd float %i.ar, %i.ah
  store float %i.as, ptr %0, align 4, !tbaa !21
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e, %.lr.ph45
  %.lcssa.unr = phi i1 [ poison, %.lr.ph45 ], [ %i.ap, %bb.e ], [ %i.ap, %.prol.preheader ]
  %.in.unr = phi i32 [ %4, %.lr.ph45 ], [ %i.f, %bb.e ], [ %i.f, %.prol.preheader ]
  %.044.unr = phi ptr [ %i.aj, %.lr.ph45 ], [ %i.an, %bb.e ], [ %i.an, %.prol.preheader ]
  %.143.unr = phi ptr [ %0, %.lr.ph45 ], [ %i.g, %bb.e ], [ %i.g, %.prol.preheader ]
  %.03242.unr = phi i1 [ %i.am, %.lr.ph45 ], [ %i.ap, %bb.e ], [ %i.ap, %.prol.preheader ]
  br i1 %i.h, label %._crit_edge, label %.lr.ph45.new

.lr.ph45.new:                                     ; preds = %.prol.loopexit, %bb.i
  %.in = phi i32 [ %i.ay, %bb.i ], [ %.in.unr, %.prol.loopexit ]
  %.044 = phi ptr [ %i.az, %bb.i ], [ %.044.unr, %.prol.loopexit ] ; 3 uses
  %.143 = phi ptr [ %i.bf, %bb.i ], [ %.143.unr, %.prol.loopexit ] ; 4 uses
  %.03242 = phi i1 [ %i.bb, %bb.i ], [ %.03242.unr, %.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.044, i64 1
  %i.au = load i8, ptr %.044, align 1, !tbaa !8
  %i.av = icmp ne i8 %i.au, 45                    ; 2 uses
  %8 = select i1 %i.av, i1 true, i1 %.03242
  br i1 %8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph45.new
  %i.aw = load float, ptr %.143, align 4, !tbaa !21
  %i.ax = fadd float %i.aw, %i.ah
  store float %i.ax, ptr %.143, align 4, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph45.new
  %i.ay = add nsw i32 %.in, -2                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.044, i64 2
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !8
  %i.bb = icmp eq i8 %i.ba, 45                    ; 3 uses
  %mulbool.1 = and i1 %i.av, %i.bb
  br i1 %mulbool.1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.143, i64 4 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !21
  %i.be = fadd float %i.bd, %i.ah
  store float %i.be, ptr %i.bc, align 4, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.143, i64 8 ; 2 uses
  %.not34.1 = icmp eq i32 %i.ay, 0
  br i1 %.not34.1, label %._crit_edge, label %.lr.ph45.new, !llvm.loop !492

._crit_edge:                                      ; preds = %bb.i, %.prol.loopexit
  %.lcssa66 = phi ptr [ %i.g, %.prol.loopexit ], [ %i.bf, %bb.i ] ; 2 uses
  %.lcssa = phi i1 [ %.lcssa.unr, %.prol.loopexit ], [ %i.bb, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.bi = icmp ne i8 %i.bh, 45
  %.not36 = or i1 %i.bi, %.lcssa
  br i1 %.not36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bj = load float, ptr %.lcssa66, align 4, !tbaa !21
  %i.bk = fadd float %i.bj, %i.ah
  store float %i.bk, ptr %.lcssa66, align 4, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge49, label %.lr.ph45, !llvm.loop !491

._crit_edge49.loopexit67.unr-lcssa:               ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge49, label %.lr.ph48.split.us.epil.preheader

.lr.ph48.split.us.epil.preheader:                 ; preds = %._crit_edge49.loopexit67.unr-lcssa, %.lr.ph48.split.us.preheader
  %indvars.iv53.epil.init = phi i64 [ 0, %.lr.ph48.split.us.preheader ], [ %indvars.iv.next54.1, %._crit_edge49.loopexit67.unr-lcssa ] ; 3 uses
  %lcmp.mod68 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv53.epil.init
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8
  %i.bn = icmp eq i8 %i.bm, 45
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv53.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.bq = icmp ne i8 %i.bp, 45
  %.not36.us.epil = select i1 %i.bq, i1 true, i1 %i.bn
  br i1 %.not36.us.epil, label %._crit_edge49, label %bb.l

bb.l:                                             ; preds = %.lr.ph48.split.us.epil.preheader
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv53.epil.init
  %i.bs = load double, ptr %i.br, align 8, !tbaa !24
  %i.bt = fptrunc double %i.bs to float
  %i.bu = load float, ptr %0, align 4, !tbaa !21
  %i.bv = fadd float %i.bu, %i.bt
  store float %i.bv, ptr %0, align 4, !tbaa !21
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %._crit_edge49.loopexit67.unr-lcssa, %bb.l, %.lr.ph48.split.us.epil.preheader, %bb.k, %.preheader.thread, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @new_FinalGapCount_zure(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #9 {
bb.a:
  %i.a = add nsw i32 %4, 2                        ; 2 uses
  %.not36 = icmp eq i32 %i.a, 0
  br i1 %.not36, label %.preheader.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.c, i1 false), !tbaa !21
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph46, label %._crit_edge47

.preheader.thread:                                ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph43.preheader, label %._crit_edge47

.lr.ph46:                                         ; preds = %.preheader
  %.not3439 = icmp eq i32 %4, 0
  br i1 %.not3439, label %.lr.ph46.split.us.preheader, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %.preheader.thread, %.lr.ph46
  %wide.trip.count = zext nneg i32 %1 to i64
  %xtraiter67 = and i32 %4, 1
  %lcmp.mod68.not = icmp eq i32 %xtraiter67, 0
  %i.f = add nsw i32 %4, -1                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.h = icmp eq i32 %4, 1
  br label %.lr.ph43

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %wide.trip.count54 = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count54, 1
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %.lr.ph46.split.us.epil.preheader, label %.lr.ph46.split.us.preheader.new

.lr.ph46.split.us.preheader.new:                  ; preds = %.lr.ph46.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count54, 2147483646
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %bb.d, %.lr.ph46.split.us.preheader.new
  %indvars.iv51 = phi i64 [ 0, %.lr.ph46.split.us.preheader.new ], [ %indvars.iv.next52.1, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph46.split.us.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv51
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 45
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv51
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = icmp ne i8 %i.n, 45
  %mulbool.us = and i1 %i.l, %i.o
  br i1 %mulbool.us, label %bb.b, label %.lr.ph46.split.us.1

bb.b:                                             ; preds = %.lr.ph46.split.us
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv51
  %i.q = load double, ptr %i.p, align 8, !tbaa !24
  %i.r = fptrunc double %i.q to float
  %i.s = load float, ptr %0, align 4, !tbaa !21
  %i.t = fadd float %i.s, %i.r
  store float %i.t, ptr %0, align 4, !tbaa !21
  br label %.lr.ph46.split.us.1

.lr.ph46.split.us.1:                              ; preds = %bb.b, %.lr.ph46.split.us
  %indvars.iv.next52 = or disjoint i64 %indvars.iv51, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next52
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 45
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv.next52
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = icmp ne i8 %i.y, 45
  %mulbool.us.1 = and i1 %i.w, %i.z
  br i1 %mulbool.us.1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph46.split.us.1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next52
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !24
  %i.ac = fptrunc double %i.ab to float
  %i.ad = load float, ptr %0, align 4, !tbaa !21
  %i.ae = fadd float %i.ad, %i.ac
  store float %i.ae, ptr %0, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph46.split.us.1
  %indvars.iv.next52.1 = add nuw nsw i64 %indvars.iv51, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge47.loopexit65.unr-lcssa, label %.lr.ph46.split.us, !llvm.loop !493

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph43.preheader ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !24
  %i.ah = fptrunc double %i.ag to float           ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = icmp eq i8 %i.al, 45                    ; 2 uses
  br i1 %lcmp.mod68.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph43
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.ap = icmp eq i8 %i.ao, 45                    ; 5 uses
  %i.aq = xor i1 %i.ap, true
  %mulbool35.prol = and i1 %i.am, %i.aq
  br i1 %mulbool35.prol, label %bb.e, label %.prol.loopexit

bb.e:                                             ; preds = %.prol.preheader
  %i.ar = load float, ptr %0, align 4, !tbaa !21
  %i.as = fadd float %i.ar, %i.ah
  store float %i.as, ptr %0, align 4, !tbaa !21
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e, %.lr.ph43
  %.lcssa.unr = phi i1 [ poison, %.lr.ph43 ], [ %i.ap, %bb.e ], [ %i.ap, %.prol.preheader ]
  %.in.unr = phi i32 [ %4, %.lr.ph43 ], [ %i.f, %bb.e ], [ %i.f, %.prol.preheader ]
  %.042.unr = phi ptr [ %i.aj, %.lr.ph43 ], [ %i.an, %bb.e ], [ %i.an, %.prol.preheader ]
  %.141.unr = phi ptr [ %0, %.lr.ph43 ], [ %i.g, %bb.e ], [ %i.g, %.prol.preheader ]
  %.032.in40.unr = phi i1 [ %i.am, %.lr.ph43 ], [ %i.ap, %bb.e ], [ %i.ap, %.prol.preheader ]
  br i1 %i.h, label %._crit_edge, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.prol.loopexit, %bb.i
  %.in = phi i32 [ %i.ay, %bb.i ], [ %.in.unr, %.prol.loopexit ]
  %.042 = phi ptr [ %i.az, %bb.i ], [ %.042.unr, %.prol.loopexit ] ; 3 uses
  %.141 = phi ptr [ %i.bf, %bb.i ], [ %.141.unr, %.prol.loopexit ] ; 4 uses
  %.032.in40 = phi i1 [ %i.bb, %bb.i ], [ %.032.in40.unr, %.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.042, i64 1
  %i.au = load i8, ptr %.042, align 1, !tbaa !8
  %i.av = icmp ne i8 %i.au, 45                    ; 2 uses
  %mulbool35 = and i1 %.032.in40, %i.av
  br i1 %mulbool35, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph43.new
  %i.aw = load float, ptr %.141, align 4, !tbaa !21
  %i.ax = fadd float %i.aw, %i.ah
end_hunk_0
