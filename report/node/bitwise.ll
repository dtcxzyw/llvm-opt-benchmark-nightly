Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bitwise?download=true
inline.NumInlined: 238
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2v86bigint17BitwiseAnd_PosPosENS0_8RWDigitsENS0_6DigitsES2_:bb.a
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader30, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader30 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader30 ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %.0.copyload.i.i.prol = load i64, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.prol
  %.0.copyload.i.i9.prol = load i64, ptr %i.p, align 1
  %i.q = and i64 %.0.copyload.i.i9.prol, %.0.copyload.i.i.prol
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.prol
  store i64 %i.q, ptr %i.r, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !14

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader30
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader30 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.s = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.u = icmp ult i32 %.sroa.speculated, %1
  br i1 %i.u, label %.lr.ph21.preheader, label %._crit_edge

.lr.ph21.preheader:                               ; preds = %.preheader
  %i.v = zext i32 %.sroa.speculated to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.w
  %i.x = xor i32 %.sroa.speculated, -1
  %i.y = add i32 %1, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ab, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.0.copyload.i.i9 = load i64, ptr %i.ad, align 1
  %i.ae = and i64 %.0.copyload.i.i9, %.0.copyload.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.ae, ptr %i.af, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %.0.copyload.i.i.1 = load i64, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %.0.copyload.i.i9.1 = load i64, ptr %i.ah, align 1
  %i.ai = and i64 %.0.copyload.i.i9.1, %.0.copyload.i.i.1
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.ai, ptr %i.aj, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %.0.copyload.i.i.2 = load i64, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1
  %.0.copyload.i.i9.2 = load i64, ptr %i.al, align 1
  %i.am = and i64 %.0.copyload.i.i9.2, %.0.copyload.i.i.2
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  store i64 %i.am, ptr %i.an, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %.0.copyload.i.i.3 = load i64, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2
  %.0.copyload.i.i9.3 = load i64, ptr %i.ap, align 1
  %i.aq = and i64 %.0.copyload.i.i9.3, %.0.copyload.i.i.3
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  store i64 %i.aq, ptr %i.ar, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph21.preheader, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint17BitwiseAnd_NegNegENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #0 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %5, i32 %3) ; 4 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %.preheader48, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %.lr.ph

.preheader48:                                     ; preds = %.lr.ph, %bb.a
  %.045.lcssa = phi i64 [ 1, %bb.a ], [ %i.ab, %.lr.ph ] ; 2 uses
  %.043.lcssa = phi i64 [ 1, %bb.a ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.a = icmp ult i32 %5, %3
  br i1 %i.a, label %.lr.ph56.preheader, label %.preheader47

.lr.ph56.preheader:                               ; preds = %.preheader48
  %i.b = zext i32 %.sroa.speculated to i64        ; 6 uses
  %wide.trip.count72 = zext i32 %3 to i64         ; 3 uses
  %i.c = sub nsw i64 %wide.trip.count72, %i.b
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.b
  %.0.copyload.i.i18.prol = load i64, ptr %i.d, align 1
  %i.e = zext i64 %.0.copyload.i.i18.prol to i128
  %i.f = zext nneg i64 %.043.lcssa to i128
  %i.g = sub nsw i128 %i.e, %i.f                  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = and i64 %i.i, 1
  %i.k = trunc i128 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  store i64 %i.k, ptr %i.l, align 4
  %indvars.iv.next70.prol = add nuw nsw i64 %i.b, 1
  br label %.lr.ph56.prol.loopexit

.lr.ph56.prol.loopexit:                           ; preds = %.lr.ph56.prol, %.lr.ph56.preheader
  %indvars.iv69.unr = phi i64 [ %i.b, %.lr.ph56.preheader ], [ %indvars.iv.next70.prol, %.lr.ph56.prol ]
  %.14454.unr = phi i64 [ %.043.lcssa, %.lr.ph56.preheader ], [ %i.j, %.lr.ph56.prol ]
  %i.m = add nsw i64 %wide.trip.count72, -1
  %i.n = icmp eq i64 %i.m, %i.b
  br i1 %i.n, label %.preheader47, label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.04350 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %.04549 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.o, align 1
  %i.p = zext i64 %.0.copyload.i.i to i128
  %i.q = zext nneg i64 %.04350 to i128
  %i.r = sub nsw i128 %i.p, %i.q                  ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = trunc nuw i128 %i.s to i64
  %i.u = and i64 %i.t, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.0.copyload.i.i17 = load i64, ptr %i.v, align 1
  %i.w = zext i64 %.0.copyload.i.i17 to i128
  %i.x = zext nneg i64 %.04549 to i128
  %i.y = sub nsw i128 %i.w, %i.x                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = trunc nuw i128 %i.z to i64
  %i.ab = and i64 %i.aa, 1                        ; 2 uses
  %i.ac = or i128 %i.y, %i.r
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.ad, ptr %i.ae, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader48, label %.lr.ph, !llvm.loop !16

.preheader47:                                     ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56, %.preheader48
  %.1.lcssa = phi i32 [ %.sroa.speculated, %.preheader48 ], [ %3, %.lr.ph56 ], [ %3, %.lr.ph56.prol.loopexit ] ; 3 uses
  %i.af = icmp ult i32 %.1.lcssa, %5
  br i1 %i.af, label %.lr.ph60.preheader, label %.preheader

.lr.ph60.preheader:                               ; preds = %.preheader47
  %i.ag = zext i32 %.1.lcssa to i64               ; 6 uses
  %wide.trip.count77 = zext i32 %5 to i64         ; 3 uses
  %i.ah = sub nsw i64 %wide.trip.count77, %i.ag
  %xtraiter87 = and i64 %i.ah, 1
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %.lr.ph60.prol.loopexit, label %.lr.ph60.prol

.lr.ph60.prol:                                    ; preds = %.lr.ph60.preheader
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ag
  %.0.copyload.i.i19.prol = load i64, ptr %i.ai, align 1
  %i.aj = zext i64 %.0.copyload.i.i19.prol to i128
  %i.ak = zext nneg i64 %.045.lcssa to i128
  %i.al = sub nsw i128 %i.aj, %i.ak               ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = trunc nuw i128 %i.am to i64
  %i.ao = and i64 %i.an, 1
  %i.ap = trunc i128 %i.al to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  store i64 %i.ap, ptr %i.aq, align 4
  %indvars.iv.next75.prol = add nuw nsw i64 %i.ag, 1
  br label %.lr.ph60.prol.loopexit

.lr.ph60.prol.loopexit:                           ; preds = %.lr.ph60.prol, %.lr.ph60.preheader
  %indvars.iv74.unr = phi i64 [ %i.ag, %.lr.ph60.preheader ], [ %indvars.iv.next75.prol, %.lr.ph60.prol ]
  %.14658.unr = phi i64 [ %.045.lcssa, %.lr.ph60.preheader ], [ %i.ao, %.lr.ph60.prol ]
  %i.ar = add nsw i64 %wide.trip.count77, -1
  %i.as = icmp eq i64 %i.ar, %i.ag
  br i1 %i.as, label %.preheader, label %.lr.ph60

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %.lr.ph56 ], [ %indvars.iv69.unr, %.lr.ph56.prol.loopexit ] ; 4 uses
  %.14454 = phi i64 [ %i.bd, %.lr.ph56 ], [ %.14454.unr, %.lr.ph56.prol.loopexit ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv69
  %.0.copyload.i.i18 = load i64, ptr %i.at, align 1
  %i.au = zext i64 %.0.copyload.i.i18 to i128
  %i.av = zext nneg i64 %.14454 to i128
  %i.aw = sub nsw i128 %i.au, %i.av               ; 2 uses
  %6 = lshr i128 %i.aw, 64
  %i.ax = trunc i128 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv69
  store i64 %i.ax, ptr %i.ay, align 4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next70
  %.0.copyload.i.i18.1 = load i64, ptr %i.az, align 1
  %i.ba = zext i64 %.0.copyload.i.i18.1 to i128
  %7 = and i128 %6, 1
  %8 = sub nsw i128 %i.ba, %7                     ; 2 uses
  %i.bb = lshr i128 %8, 64
  %i.bc = trunc nuw i128 %i.bb to i64
  %i.bd = and i64 %i.bc, 1
  %i.be = trunc i128 %8 to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next70
  store i64 %i.be, ptr %i.bf, align 4
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %wide.trip.count72
  br i1 %exitcond73.not.1, label %.preheader47, label %.lr.ph56, !llvm.loop !17

.preheader:                                       ; preds = %.lr.ph60.prol.loopexit, %.lr.ph60, %.preheader47
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader47 ], [ %5, %.lr.ph60 ], [ %5, %.lr.ph60.prol.loopexit ] ; 3 uses
  %i.bg = icmp ult i32 %.2.lcssa, %1
  br i1 %i.bg, label %.lr.ph63.preheader, label %._crit_edge

.lr.ph63.preheader:                               ; preds = %.preheader
  %i.bh = zext i32 %.2.lcssa to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.bi
  %i.bj = xor i32 %.2.lcssa, -1
  %i.bk = add i32 %1, %i.bj
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bn, i1 false)
  br label %._crit_edge

.lr.ph60:                                         ; preds = %.lr.ph60.prol.loopexit, %.lr.ph60
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.1, %.lr.ph60 ], [ %indvars.iv74.unr, %.lr.ph60.prol.loopexit ] ; 4 uses
  %.14658 = phi i64 [ %i.by, %.lr.ph60 ], [ %.14658.unr, %.lr.ph60.prol.loopexit ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv74
  %.0.copyload.i.i19 = load i64, ptr %i.bo, align 1
  %i.bp = zext i64 %.0.copyload.i.i19 to i128
  %i.bq = zext nneg i64 %.14658 to i128
  %i.br = sub nsw i128 %i.bp, %i.bq               ; 2 uses
  %9 = lshr i128 %i.br, 64
  %i.bs = trunc i128 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv74
  store i64 %i.bs, ptr %i.bt, align 4
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next75
  %.0.copyload.i.i19.1 = load i64, ptr %i.bu, align 1
  %i.bv = zext i64 %.0.copyload.i.i19.1 to i128
  %10 = and i128 %9, 1
  %11 = sub nsw i128 %i.bv, %10                   ; 2 uses
  %i.bw = lshr i128 %11, 64
  %i.bx = trunc nuw i128 %i.bw to i64
  %i.by = and i64 %i.bx, 1
  %i.bz = trunc i128 %11 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next75
  store i64 %i.bz, ptr %i.ca, align 4
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %exitcond78.not.1 = icmp eq i64 %indvars.iv.next75.1, %wide.trip.count77
  br i1 %exitcond78.not.1, label %.preheader, label %.lr.ph60, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph63.preheader, %.preheader
  %.0.copyload.i.peel.i = load i64, ptr %0, align 4 ; 2 uses
  %add.narrowed.i.peel.i = add i64 %.0.copyload.i.peel.i, 1
  %add.narrowed.overflow.i.not.peel.i = icmp eq i64 %.0.copyload.i.peel.i, -1
  store i64 %add.narrowed.i.peel.i, ptr %0, align 4
  br i1 %add.narrowed.overflow.i.not.peel.i, label %.peel.next.i, label %_ZN2v86bigint3AddENS0_8RWDigitsEm.exit

.peel.next.i:                                     ; preds = %._crit_edge, %.peel.next.i
  %.0.i = phi i32 [ %i.cd, %.peel.next.i ], [ 1, %._crit_edge ] ; 2 uses
  %i.cb = zext i32 %.0.i to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cb ; 2 uses
  %.0.copyload.i.i20 = load i64, ptr %i.cc, align 4 ; 2 uses
  %add.narrowed.i.i = add i64 %.0.copyload.i.i20, 1
  %add.narrowed.overflow.i.not.i = icmp eq i64 %.0.copyload.i.i20, -1
  store i64 %add.narrowed.i.i, ptr %i.cc, align 4
  %i.cd = add i32 %.0.i, 1
  br i1 %add.narrowed.overflow.i.not.i, label %.peel.next.i, label %_ZN2v86bigint3AddENS0_8RWDigitsEm.exit, !llvm.loop !0

_ZN2v86bigint3AddENS0_8RWDigitsEm.exit:           ; preds = %.peel.next.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint17BitwiseAnd_PosNegENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %5, i32 %3) ; 6 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %.preheader29, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.preheader29.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader29, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader29.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader29.loopexit.unr-lcssa ] ; 3 uses
  %.02830.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.an, %.preheader29.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i32 %.sroa.speculated to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %.0.copyload.i.i.epil = load i64, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  %.0.copyload.i.i13.epil = load i64, ptr %i.e, align 1
  %i.f = xor i64 %.0.copyload.i.i13.epil, -1
  %i.g = add i64 %.02830.epil.init, %i.f
  %i.h = and i64 %.0.copyload.i.i.epil, %i.g
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i64 %i.h, ptr %i.i, align 4
  br label %.preheader29

.preheader29:                                     ; preds = %.lr.ph.epil.preheader, %.preheader29.loopexit.unr-lcssa, %bb.a
  %i.j = icmp ult i32 %5, %3
  br i1 %i.j, label %.lr.ph33.preheader, label %.preheader

.lr.ph33.preheader:                               ; preds = %.preheader29
  %i.k = zext i32 %.sroa.speculated to i64        ; 4 uses
  %wide.trip.count43 = zext i32 %3 to i64         ; 4 uses
  %i.l = sub nsw i64 %wide.trip.count43, %i.k     ; 3 uses
  %min.iters.check = icmp ult i64 %i.l, 8
  %i.m = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph33.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph33.preheader
  %n.vec = and i64 %i.l, -4                       ; 3 uses
  %i.n = add nsw i64 %n.vec, %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = add nuw i64 %index, %i.k                 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <2 x i64>, ptr %i.p, align 1
  %wide.load49 = load <2 x i64>, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x i64> %wide.load, ptr %i.r, align 4
  store <2 x i64> %wide.load49, ptr %i.s, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph33.preheader50

.lr.ph33.preheader50:                             ; preds = %.lr.ph33.preheader, %middle.block
  %indvars.iv40.ph = phi i64 [ %i.k, %.lr.ph33.preheader ], [ %i.n, %middle.block ] ; 4 uses
  %i.u = sub nsw i64 %wide.trip.count43, %indvars.iv40.ph
  %xtraiter52 = and i64 %i.u, 3                   ; 2 uses
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader50, %.lr.ph33.prol
  %indvars.iv40.prol = phi i64 [ %indvars.iv.next41.prol, %.lr.ph33.prol ], [ %indvars.iv40.ph, %.lr.ph33.preheader50 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph33.prol ], [ 0, %.lr.ph33.preheader50 ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv40.prol
  %.0.copyload.i.i14.prol = load i64, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv40.prol
  store i64 %.0.copyload.i.i14.prol, ptr %i.w, align 4
  %indvars.iv.next41.prol = add nuw nsw i64 %indvars.iv40.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter52
  br i1 %prol.iter.cmp.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol, !llvm.loop !20

.lr.ph33.prol.loopexit:                           ; preds = %.lr.ph33.prol, %.lr.ph33.preheader50
  %indvars.iv40.unr = phi i64 [ %indvars.iv40.ph, %.lr.ph33.preheader50 ], [ %indvars.iv.next41.prol, %.lr.ph33.prol ]
  %i.x = sub nsw i64 %indvars.iv40.ph, %wide.trip.count43
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.preheader, label %.lr.ph33

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.02830 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.0.copyload.i.i13 = load i64, ptr %i.aa, align 1
  %i.ab = zext i64 %.0.copyload.i.i13 to i128
  %i.ac = zext nneg i64 %.02830 to i128
  %i.ad = sub nsw i128 %i.ab, %i.ac               ; 2 uses
  %6 = lshr i128 %i.ad, 64
  %i.ae = trunc i128 %i.ad to i64
  %i.af = xor i64 %i.ae, -1
  %i.ag = and i64 %.0.copyload.i.i, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.ag, ptr %i.ah, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %.0.copyload.i.i.1 = load i64, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %.0.copyload.i.i13.1 = load i64, ptr %i.aj, align 1
  %i.ak = zext i64 %.0.copyload.i.i13.1 to i128
  %7 = and i128 %6, 1
  %8 = sub nsw i128 %i.ak, %7                     ; 2 uses
  %i.al = lshr i128 %8, 64
  %i.am = trunc nuw i128 %i.al to i64
  %i.an = and i64 %i.am, 1                        ; 2 uses
  %i.ao = trunc i128 %8 to i64
  %i.ap = xor i64 %i.ao, -1
  %i.aq = and i64 %.0.copyload.i.i.1, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.aq, ptr %i.ar, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader29.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !21

.preheader:                                       ; preds = %.lr.ph33.prol.loopexit, %.lr.ph33, %middle.block, %.preheader29
  %.1.lcssa = phi i32 [ %.sroa.speculated, %.preheader29 ], [ %3, %middle.block ], [ %3, %.lr.ph33 ], [ %3, %.lr.ph33.prol.loopexit ] ; 3 uses
  %i.as = icmp ult i32 %.1.lcssa, %1
  br i1 %i.as, label %.lr.ph36.preheader, label %._crit_edge

.lr.ph36.preheader:                               ; preds = %.preheader
  %i.at = zext i32 %.1.lcssa to i64
  %i.au = shl nuw nsw i64 %i.at, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.au
  %i.av = xor i32 %.1.lcssa, -1
  %i.aw = add i32 %1, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.az, i1 false)
  br label %._crit_edge

.lr.ph33:                                         ; preds = %.lr.ph33.prol.loopexit, %.lr.ph33
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.3, %.lr.ph33 ], [ %indvars.iv40.unr, %.lr.ph33.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv40
  %.0.copyload.i.i14 = load i64, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv40
  store i64 %.0.copyload.i.i14, ptr %i.bb, align 4
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next41
  %.0.copyload.i.i14.1 = load i64, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next41
  store i64 %.0.copyload.i.i14.1, ptr %i.bd, align 4
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next41.1
  %.0.copyload.i.i14.2 = load i64, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next41.1
  store i64 %.0.copyload.i.i14.2, ptr %i.bf, align 4
  %indvars.iv.next41.2 = add nuw nsw i64 %indvars.iv40, 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next41.2
  %.0.copyload.i.i14.3 = load i64, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next41.2
  store i64 %.0.copyload.i.i14.3, ptr %i.bh, align 4
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %indvars.iv.next41.3, %wide.trip.count43
  br i1 %exitcond44.not.3, label %.preheader, label %.lr.ph33, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph36.preheader, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint16BitwiseOr_PosPosENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %5, i32 %3) ; 5 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %.preheader38, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.sroa.speculated to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 12
  br i1 %min.iters.check, label %.lr.ph.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.d, -32
  %i.e = sub i64 %i.a, %i.c
  %diff.check68 = icmp ugt i64 %i.e, -32
  %conflict.rdx = or i1 %diff.check, %diff.check68
  br i1 %conflict.rdx, label %.lr.ph.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x i64>, ptr %i.f, align 1
  %wide.load69 = load <2 x i64>, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load70 = load <2 x i64>, ptr %i.h, align 1
  %wide.load71 = load <2 x i64>, ptr %i.i, align 1
  %i.j = or <2 x i64> %wide.load70, %wide.load
  %i.k = or <2 x i64> %wide.load71, %wide.load69
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %i.j, ptr %i.l, align 4
  store <2 x i64> %i.k, ptr %i.m, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader38, label %.lr.ph.preheader103

.lr.ph.preheader103:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader103, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader103 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader103 ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %.0.copyload.i.i.prol = load i64, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.prol
  %.0.copyload.i.i17.prol = load i64, ptr %i.p, align 1
  %i.q = or i64 %.0.copyload.i.i17.prol, %.0.copyload.i.i.prol
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.prol
  store i64 %i.q, ptr %i.r, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !24

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader103
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader103 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.s = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %.preheader38, label %.lr.ph

.preheader38:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.u = icmp ult i32 %5, %3
  br i1 %i.u, label %.lr.ph41.preheader, label %.preheader37

.lr.ph41.preheader:                               ; preds = %.preheader38
  %i.v = zext i32 %.sroa.speculated to i64        ; 4 uses
  %wide.trip.count55 = zext i32 %3 to i64         ; 4 uses
  %i.w = sub nsw i64 %wide.trip.count55, %i.v     ; 3 uses
  %min.iters.check75 = icmp ult i64 %i.w, 8
  %i.x = sub i64 %i.b, %i.c
  %diff.check73 = icmp ugt i64 %i.x, -32
  %or.cond = select i1 %min.iters.check75, i1 true, i1 %diff.check73
  br i1 %or.cond, label %.lr.ph41.preheader102, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph41.preheader
  %n.vec77 = and i64 %i.w, -4                     ; 3 uses
  %i.y = add nsw i64 %n.vec77, %i.v
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph76
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next82, %vector.body78 ] ; 2 uses
  %i.z = add nuw i64 %index79, %i.v               ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load80 = load <2 x i64>, ptr %i.aa, align 1
  %wide.load81 = load <2 x i64>, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %wide.load80, ptr %i.ac, align 4
  store <2 x i64> %wide.load81, ptr %i.ad, align 4
  %index.next82 = add nuw i64 %index79, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next82, %n.vec77
  br i1 %i.ae, label %middle.block83, label %vector.body78, !llvm.loop !25

middle.block83:                                   ; preds = %vector.body78
  %cmp.n84 = icmp eq i64 %i.w, %n.vec77
  br i1 %cmp.n84, label %.preheader37, label %.lr.ph41.preheader102

.lr.ph41.preheader102:                            ; preds = %.lr.ph41.preheader, %middle.block83
  %indvars.iv52.ph = phi i64 [ %i.v, %.lr.ph41.preheader ], [ %i.y, %middle.block83 ] ; 4 uses
  %i.af = sub nsw i64 %wide.trip.count55, %indvars.iv52.ph
  %xtraiter104 = and i64 %i.af, 3                 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader102, %.lr.ph41.prol
  %indvars.iv52.prol = phi i64 [ %indvars.iv.next53.prol, %.lr.ph41.prol ], [ %indvars.iv52.ph, %.lr.ph41.preheader102 ] ; 3 uses
  %prol.iter106 = phi i64 [ %prol.iter106.next, %.lr.ph41.prol ], [ 0, %.lr.ph41.preheader102 ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv52.prol
  %.0.copyload.i.i18.prol = load i64, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv52.prol
  store i64 %.0.copyload.i.i18.prol, ptr %i.ah, align 4
  %indvars.iv.next53.prol = add nuw nsw i64 %indvars.iv52.prol, 1 ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol, !llvm.loop !26

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol, %.lr.ph41.preheader102
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %.lr.ph41.preheader102 ], [ %indvars.iv.next53.prol, %.lr.ph41.prol ]
  %i.ai = sub nsw i64 %indvars.iv52.ph, %wide.trip.count55
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %.preheader37, label %.lr.ph41

end_hunk_0
begin_hunk_1_@_ZN2v86bigint16BitwiseOr_PosPosENS0_8RWDigitsENS0_6DigitsES2_:bb.a
  %i.cc = add i32 %1, %i.cb
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.ce, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.cf, i1 false)
  br label %._crit_edge

.lr.ph44:                                         ; preds = %.lr.ph44.prol.loopexit, %.lr.ph44
  %indvars.iv58 = phi i64 [ %indvars.iv.next59.3, %.lr.ph44 ], [ %indvars.iv58.unr, %.lr.ph44.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv58
  %.0.copyload.i.i19 = load i64, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv58
  store i64 %.0.copyload.i.i19, ptr %i.ch, align 4
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next59
  %.0.copyload.i.i19.1 = load i64, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next59
  store i64 %.0.copyload.i.i19.1, ptr %i.cj, align 4
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next59.1
  %.0.copyload.i.i19.2 = load i64, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next59.1
  store i64 %.0.copyload.i.i19.2, ptr %i.cl, align 4
  %indvars.iv.next59.2 = add nuw nsw i64 %indvars.iv58, 3 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next59.2
  %.0.copyload.i.i19.3 = load i64, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next59.2
  store i64 %.0.copyload.i.i19.3, ptr %i.cn, align 4
  %indvars.iv.next59.3 = add nuw nsw i64 %indvars.iv58, 4 ; 2 uses
  %exitcond62.not.3 = icmp eq i64 %indvars.iv.next59.3, %wide.trip.count61
  br i1 %exitcond62.not.3, label %.preheader, label %.lr.ph44, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph47.preheader, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint16BitwiseOr_NegNegENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #0 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %5, i32 %3) ; 5 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %i.a = icmp ult i32 %.sroa.speculated, %1
  br i1 %i.a, label %.lr.ph29.preheader, label %._crit_edge

.lr.ph29.preheader:                               ; preds = %.preheader
  %i.b = zext i32 %.sroa.speculated to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.c
  %i.d = xor i32 %.sroa.speculated, -1
  %i.e = add i32 %1, %i.d
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.h, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.02326 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  %.02425 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.v, %.lr.ph ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.i, align 1
  %i.j = zext i64 %.0.copyload.i.i to i128
  %i.k = zext nneg i64 %.02326 to i128
  %i.l = sub nsw i128 %i.j, %i.k                  ; 2 uses
  %i.m = lshr i128 %i.l, 64
  %i.n = trunc nuw i128 %i.m to i64
  %i.o = and i64 %i.n, 1
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.0.copyload.i.i9 = load i64, ptr %i.p, align 1
  %i.q = zext i64 %.0.copyload.i.i9 to i128
  %i.r = zext nneg i64 %.02425 to i128
  %i.s = sub nsw i128 %i.q, %i.r                  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = trunc nuw i128 %i.t to i64
  %i.v = and i64 %i.u, 1
  %i.w = and i128 %i.s, %i.l
  %i.x = trunc i128 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.x, ptr %i.y, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph29.preheader, %.preheader
  %.0.copyload.i.peel.i = load i64, ptr %0, align 4 ; 2 uses
  %add.narrowed.i.peel.i = add i64 %.0.copyload.i.peel.i, 1
  %add.narrowed.overflow.i.not.peel.i = icmp eq i64 %.0.copyload.i.peel.i, -1
  store i64 %add.narrowed.i.peel.i, ptr %0, align 4
  br i1 %add.narrowed.overflow.i.not.peel.i, label %.peel.next.i, label %_ZN2v86bigint3AddENS0_8RWDigitsEm.exit

.peel.next.i:                                     ; preds = %._crit_edge, %.peel.next.i
  %.0.i = phi i32 [ %i.ab, %.peel.next.i ], [ 1, %._crit_edge ] ; 2 uses
  %i.z = zext i32 %.0.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %.0.copyload.i.i10 = load i64, ptr %i.aa, align 4 ; 2 uses
  %add.narrowed.i.i = add i64 %.0.copyload.i.i10, 1
  %add.narrowed.overflow.i.not.i = icmp eq i64 %.0.copyload.i.i10, -1
  store i64 %add.narrowed.i.i, ptr %i.aa, align 4
  %i.ab = add i32 %.0.i, 1
  br i1 %add.narrowed.overflow.i.not.i, label %.peel.next.i, label %_ZN2v86bigint3AddENS0_8RWDigitsEm.exit, !llvm.loop !0

_ZN2v86bigint3AddENS0_8RWDigitsEm.exit:           ; preds = %.peel.next.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint16BitwiseOr_PosNegENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #0 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %5, i32 %3) ; 6 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %.preheader33, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.a = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.preheader33.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader33, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader33.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader33.loopexit.unr-lcssa ] ; 3 uses
  %.03134.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ao, %.preheader33.loopexit.unr-lcssa ]
  %lcmp.mod56 = trunc i32 %.sroa.speculated to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  %.0.copyload.i.i.epil = load i64, ptr %i.b, align 1
  %i.c = zext i64 %.0.copyload.i.i.epil to i128
  %i.d = zext nneg i64 %.03134.epil.init to i128
  %i.e = sub nsw i128 %i.c, %i.d                  ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = trunc nuw i128 %i.f to i64
  %i.h = and i64 %i.g, 1
  %i.i = trunc i128 %i.e to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %.0.copyload.i.i13.epil = load i64, ptr %i.j, align 1
  %i.k = xor i64 %.0.copyload.i.i13.epil, -1
  %i.l = and i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i64 %i.l, ptr %i.m, align 4
  br label %.preheader33

.preheader33:                                     ; preds = %.lr.ph.epil.preheader, %.preheader33.loopexit.unr-lcssa, %bb.a
  %.031.lcssa = phi i64 [ 1, %bb.a ], [ %i.ao, %.preheader33.loopexit.unr-lcssa ], [ %i.h, %.lr.ph.epil.preheader ] ; 2 uses
  %i.n = icmp ult i32 %3, %5
  br i1 %i.n, label %.lr.ph39.preheader, label %.preheader

.lr.ph39.preheader:                               ; preds = %.preheader33
  %i.o = zext i32 %.sroa.speculated to i64        ; 6 uses
  %wide.trip.count49 = zext i32 %5 to i64         ; 3 uses
  %i.p = sub nsw i64 %wide.trip.count49, %i.o
  %xtraiter57 = and i64 %i.p, 1
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph39.prol.loopexit, label %.lr.ph39.prol

.lr.ph39.prol:                                    ; preds = %.lr.ph39.preheader
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.o
  %.0.copyload.i.i14.prol = load i64, ptr %i.q, align 1
  %i.r = zext i64 %.0.copyload.i.i14.prol to i128
  %i.s = zext nneg i64 %.031.lcssa to i128
  %i.t = sub nsw i128 %i.r, %i.s                  ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64
  %i.w = and i64 %i.v, 1
  %i.x = trunc i128 %i.t to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  store i64 %i.x, ptr %i.y, align 4
  %indvars.iv.next47.prol = add nuw nsw i64 %i.o, 1
  br label %.lr.ph39.prol.loopexit

.lr.ph39.prol.loopexit:                           ; preds = %.lr.ph39.prol, %.lr.ph39.preheader
  %indvars.iv46.unr = phi i64 [ %i.o, %.lr.ph39.preheader ], [ %indvars.iv.next47.prol, %.lr.ph39.prol ]
  %.13237.unr = phi i64 [ %.031.lcssa, %.lr.ph39.preheader ], [ %i.w, %.lr.ph39.prol ]
  %i.z = add nsw i64 %wide.trip.count49, -1
  %i.aa = icmp eq i64 %i.z, %i.o
  br i1 %i.aa, label %.preheader, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.03134 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.ab, align 1
  %i.ac = zext i64 %.0.copyload.i.i to i128
  %i.ad = zext nneg i64 %.03134 to i128
  %i.ae = sub nsw i128 %i.ac, %i.ad               ; 2 uses
  %6 = lshr i128 %i.ae, 64
  %i.af = trunc i128 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %.0.copyload.i.i13 = load i64, ptr %i.ag, align 1
  %i.ah = xor i64 %.0.copyload.i.i13, -1
  %i.ai = and i64 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.ai, ptr %i.aj, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %.0.copyload.i.i.1 = load i64, ptr %i.ak, align 1
  %i.al = zext i64 %.0.copyload.i.i.1 to i128
  %7 = and i128 %6, 1
  %8 = sub nsw i128 %i.al, %7                     ; 2 uses
  %i.am = lshr i128 %8, 64
  %i.an = trunc nuw i128 %i.am to i64
  %i.ao = and i64 %i.an, 1                        ; 3 uses
  %i.ap = trunc i128 %8 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %.0.copyload.i.i13.1 = load i64, ptr %i.aq, align 1
  %i.ar = xor i64 %.0.copyload.i.i13.1, -1
  %i.as = and i64 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.as, ptr %i.at, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader33.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !33

.preheader:                                       ; preds = %.lr.ph39.prol.loopexit, %.lr.ph39, %.preheader33
  %.1.lcssa = phi i32 [ %.sroa.speculated, %.preheader33 ], [ %5, %.lr.ph39 ], [ %5, %.lr.ph39.prol.loopexit ] ; 3 uses
  %i.au = icmp ult i32 %.1.lcssa, %1
  br i1 %i.au, label %.lr.ph42.preheader, label %._crit_edge

.lr.ph42.preheader:                               ; preds = %.preheader
  %i.av = zext i32 %.1.lcssa to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.aw
  %i.ax = xor i32 %.1.lcssa, -1
  %i.ay = add i32 %1, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bb, i1 false)
  br label %._crit_edge

.lr.ph39:                                         ; preds = %.lr.ph39.prol.loopexit, %.lr.ph39
  %indvars.iv46 = phi i64 [ %indvars.iv.next47.1, %.lr.ph39 ], [ %indvars.iv46.unr, %.lr.ph39.prol.loopexit ] ; 4 uses
  %.13237 = phi i64 [ %i.bm, %.lr.ph39 ], [ %.13237.unr, %.lr.ph39.prol.loopexit ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv46
  %.0.copyload.i.i14 = load i64, ptr %i.bc, align 1
  %i.bd = zext i64 %.0.copyload.i.i14 to i128
  %i.be = zext nneg i64 %.13237 to i128
  %i.bf = sub nsw i128 %i.bd, %i.be               ; 2 uses
  %9 = lshr i128 %i.bf, 64
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv46
  store i64 %i.bg, ptr %i.bh, align 4
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next47
  %.0.copyload.i.i14.1 = load i64, ptr %i.bi, align 1
  %i.bj = zext i64 %.0.copyload.i.i14.1 to i128
  %10 = and i128 %9, 1
  %11 = sub nsw i128 %i.bj, %10                   ; 2 uses
  %i.bk = lshr i128 %11, 64
  %i.bl = trunc nuw i128 %i.bk to i64
  %i.bm = and i64 %i.bl, 1
  %i.bn = trunc i128 %11 to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next47
  store i64 %i.bn, ptr %i.bo, align 4
  %indvars.iv.next47.1 = add nuw nsw i64 %indvars.iv46, 2 ; 2 uses
  %exitcond50.not.1 = icmp eq i64 %indvars.iv.next47.1, %wide.trip.count49
  br i1 %exitcond50.not.1, label %.preheader, label %.lr.ph39, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph42.preheader, %.preheader
  %.0.copyload.i.peel.i = load i64, ptr %0, align 4 ; 2 uses
  %add.narrowed.i.peel.i = add i64 %.0.copyload.i.peel.i, 1
  %add.narrowed.overflow.i.not.peel.i = icmp eq i64 %.0.copyload.i.peel.i, -1
  store i64 %add.narrowed.i.peel.i, ptr %0, align 4
  br i1 %add.narrowed.overflow.i.not.peel.i, label %.peel.next.i, label %_ZN2v86bigint3AddENS0_8RWDigitsEm.exit

.peel.next.i:                                     ; preds = %._crit_edge, %.peel.next.i
  %.0.i = phi i32 [ %i.br, %.peel.next.i ], [ 1, %._crit_edge ] ; 2 uses
  %i.bp = zext i32 %.0.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp ; 2 uses
  %.0.copyload.i.i15 = load i64, ptr %i.bq, align 4 ; 2 uses
  %add.narrowed.i.i = add i64 %.0.copyload.i.i15, 1
  %add.narrowed.overflow.i.not.i = icmp eq i64 %.0.copyload.i.i15, -1
  store i64 %add.narrowed.i.i, ptr %i.bq, align 4
  %i.br = add i32 %.0.i, 1
  br i1 %add.narrowed.overflow.i.not.i, label %.peel.next.i, label %_ZN2v86bigint3AddENS0_8RWDigitsEm.exit, !llvm.loop !0

_ZN2v86bigint3AddENS0_8RWDigitsEm.exit:           ; preds = %.peel.next.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v86bigint17BitwiseXor_PosPosENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = icmp ult i32 %5, %3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.018.0 = phi ptr [ %2, %bb.b ], [ %4, %bb.a ] ; 13 uses
  %.sroa.5.0 = phi i32 [ %3, %bb.b ], [ %5, %bb.a ] ; 5 uses
  %.sroa.024.0 = phi ptr [ %4, %bb.b ], [ %2, %bb.a ] ; 7 uses
  %.013 = phi i32 [ %5, %bb.b ], [ %3, %bb.a ]    ; 6 uses
  %.sroa.018.054 = ptrtoaddr ptr %.sroa.018.0 to i64 ; 2 uses
  %.sroa.024.055 = ptrtoaddr ptr %.sroa.024.0 to i64
  %.not = icmp eq i32 %.013, 0
  br i1 %.not, label %.preheader33, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %.013 to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %.013, 12
  br i1 %min.iters.check, label %.lr.ph.preheader75, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = sub i64 %.sroa.018.054, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %i.d = sub i64 %.sroa.024.055, %i.a
  %diff.check56 = icmp ugt i64 %i.d, -32
  %conflict.rdx = or i1 %diff.check, %diff.check56
  br i1 %conflict.rdx, label %.lr.ph.preheader75, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x i64>, ptr %i.e, align 1
  %wide.load57 = load <2 x i64>, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load58 = load <2 x i64>, ptr %i.g, align 1
  %wide.load59 = load <2 x i64>, ptr %i.h, align 1
  %i.i = xor <2 x i64> %wide.load58, %wide.load
  %i.j = xor <2 x i64> %wide.load59, %wide.load57
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %i.i, ptr %i.k, align 4
  store <2 x i64> %i.j, ptr %i.l, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader33, label %.lr.ph.preheader75

.lr.ph.preheader75:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader75, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader75 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader75 ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %indvars.iv.prol
  %.0.copyload.i.i.prol = load i64, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.prol
  %.0.copyload.i.i14.prol = load i64, ptr %i.o, align 1
  %i.p = xor i64 %.0.copyload.i.i14.prol, %.0.copyload.i.i.prol
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.prol
  store i64 %i.p, ptr %i.q, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !36

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader75
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader75 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.r = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.preheader33, label %.lr.ph

.preheader33:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %i.t = icmp ult i32 %.013, %.sroa.5.0
  br i1 %i.t, label %.lr.ph36.preheader, label %.preheader

.lr.ph36.preheader:                               ; preds = %.preheader33
  %i.u = zext i32 %.013 to i64                    ; 4 uses
  %wide.trip.count46 = zext i32 %.sroa.5.0 to i64 ; 4 uses
  %i.v = sub nsw i64 %wide.trip.count46, %i.u     ; 3 uses
  %min.iters.check63 = icmp ult i64 %i.v, 8
  %i.w = sub i64 %.sroa.018.054, %i.a
  %diff.check61 = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check63, i1 true, i1 %diff.check61
  br i1 %or.cond, label %.lr.ph36.preheader74, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph36.preheader
  %n.vec65 = and i64 %i.v, -4                     ; 3 uses
  %i.x = add nsw i64 %n.vec65, %i.u
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next70, %vector.body66 ] ; 2 uses
  %i.y = add nuw i64 %index67, %i.u               ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load68 = load <2 x i64>, ptr %i.z, align 1
  %wide.load69 = load <2 x i64>, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x i64> %wide.load68, ptr %i.ab, align 4
  store <2 x i64> %wide.load69, ptr %i.ac, align 4
  %index.next70 = add nuw i64 %index67, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next70, %n.vec65
  br i1 %i.ad, label %middle.block71, label %vector.body66, !llvm.loop !37

middle.block71:                                   ; preds = %vector.body66
  %cmp.n72 = icmp eq i64 %i.v, %n.vec65
  br i1 %cmp.n72, label %.preheader, label %.lr.ph36.preheader74

.lr.ph36.preheader74:                             ; preds = %.lr.ph36.preheader, %middle.block71
  %indvars.iv43.ph = phi i64 [ %i.u, %.lr.ph36.preheader ], [ %i.x, %middle.block71 ] ; 4 uses
  %i.ae = sub nsw i64 %wide.trip.count46, %indvars.iv43.ph
  %xtraiter76 = and i64 %i.ae, 3                  ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph36.prol.loopexit, label %.lr.ph36.prol

.lr.ph36.prol:                                    ; preds = %.lr.ph36.preheader74, %.lr.ph36.prol
  %indvars.iv43.prol = phi i64 [ %indvars.iv.next44.prol, %.lr.ph36.prol ], [ %indvars.iv43.ph, %.lr.ph36.preheader74 ] ; 3 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %.lr.ph36.prol ], [ 0, %.lr.ph36.preheader74 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv43.prol
  %.0.copyload.i.i15.prol = load i64, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv43.prol
  store i64 %.0.copyload.i.i15.prol, ptr %i.ag, align 4
  %indvars.iv.next44.prol = add nuw nsw i64 %indvars.iv43.prol, 1 ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %.lr.ph36.prol.loopexit, label %.lr.ph36.prol, !llvm.loop !38

.lr.ph36.prol.loopexit:                           ; preds = %.lr.ph36.prol, %.lr.ph36.preheader74
  %indvars.iv43.unr = phi i64 [ %indvars.iv43.ph, %.lr.ph36.preheader74 ], [ %indvars.iv.next44.prol, %.lr.ph36.prol ]
  %i.ah = sub nsw i64 %indvars.iv43.ph, %wide.trip.count46
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.preheader, label %.lr.ph36

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv
  %.0.copyload.i.i14 = load i64, ptr %i.ak, align 1
  %i.al = xor i64 %.0.copyload.i.i14, %.0.copyload.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.al, ptr %i.am, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %indvars.iv.next
  %.0.copyload.i.i.1 = load i64, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next
  %.0.copyload.i.i14.1 = load i64, ptr %i.ao, align 1
  %i.ap = xor i64 %.0.copyload.i.i14.1, %.0.copyload.i.i.1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.ap, ptr %i.aq, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %indvars.iv.next.1
  %.0.copyload.i.i.2 = load i64, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next.1
  %.0.copyload.i.i14.2 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i14.2, %.0.copyload.i.i.2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  store i64 %i.at, ptr %i.au, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0, i64 %indvars.iv.next.2
  %.0.copyload.i.i.3 = load i64, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next.2
  %.0.copyload.i.i14.3 = load i64, ptr %i.aw, align 1
  %i.ax = xor i64 %.0.copyload.i.i14.3, %.0.copyload.i.i.3
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  store i64 %i.ax, ptr %i.ay, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader33, label %.lr.ph, !llvm.loop !39

.preheader:                                       ; preds = %.lr.ph36.prol.loopexit, %.lr.ph36, %middle.block71, %.preheader33
  %.1.lcssa = phi i32 [ %.013, %.preheader33 ], [ %.sroa.5.0, %middle.block71 ], [ %.sroa.5.0, %.lr.ph36 ], [ %.sroa.5.0, %.lr.ph36.prol.loopexit ] ; 3 uses
  %i.az = icmp ult i32 %.1.lcssa, %1
  br i1 %i.az, label %.lr.ph39.preheader, label %._crit_edge

.lr.ph39.preheader:                               ; preds = %.preheader
  %i.ba = zext i32 %.1.lcssa to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.bb
  %i.bc = xor i32 %.1.lcssa, -1
  %i.bd = add i32 %1, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bg, i1 false)
  br label %._crit_edge

.lr.ph36:                                         ; preds = %.lr.ph36.prol.loopexit, %.lr.ph36
  %indvars.iv43 = phi i64 [ %indvars.iv.next44.3, %.lr.ph36 ], [ %indvars.iv43.unr, %.lr.ph36.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv43
  %.0.copyload.i.i15 = load i64, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv43
  store i64 %.0.copyload.i.i15, ptr %i.bi, align 4
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next44
  %.0.copyload.i.i15.1 = load i64, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next44
  store i64 %.0.copyload.i.i15.1, ptr %i.bk, align 4
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next44.1
  %.0.copyload.i.i15.2 = load i64, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next44.1
  store i64 %.0.copyload.i.i15.2, ptr %i.bm, align 4
  %indvars.iv.next44.2 = add nuw nsw i64 %indvars.iv43, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.0, i64 %indvars.iv.next44.2
  %.0.copyload.i.i15.3 = load i64, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next44.2
  store i64 %.0.copyload.i.i15.3, ptr %i.bo, align 4
  %indvars.iv.next44.3 = add nuw nsw i64 %indvars.iv43, 4 ; 2 uses
  %exitcond47.not.3 = icmp eq i64 %indvars.iv.next44.3, %wide.trip.count46
  br i1 %exitcond47.not.3, label %.preheader, label %.lr.ph36, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph39.preheader, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint17BitwiseXor_NegNegENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #0 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %5, i32 %3) ; 4 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %.preheader46, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %.lr.ph

.preheader46:                                     ; preds = %.lr.ph, %bb.a
  %.043.lcssa = phi i64 [ 1, %bb.a ], [ %i.ab, %.lr.ph ] ; 2 uses
  %.041.lcssa = phi i64 [ 1, %bb.a ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.a = icmp ult i32 %5, %3
  br i1 %i.a, label %.lr.ph54.preheader, label %.preheader45

.lr.ph54.preheader:                               ; preds = %.preheader46
  %i.b = zext i32 %.sroa.speculated to i64        ; 6 uses
  %wide.trip.count70 = zext i32 %3 to i64         ; 3 uses
  %i.c = sub nsw i64 %wide.trip.count70, %i.b
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol

.lr.ph54.prol:                                    ; preds = %.lr.ph54.preheader
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.b
  %.0.copyload.i.i18.prol = load i64, ptr %i.d, align 1
  %i.e = zext i64 %.0.copyload.i.i18.prol to i128
  %i.f = zext nneg i64 %.041.lcssa to i128
  %i.g = sub nsw i128 %i.e, %i.f                  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = and i64 %i.i, 1
  %i.k = trunc i128 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  store i64 %i.k, ptr %i.l, align 4
  %indvars.iv.next68.prol = add nuw nsw i64 %i.b, 1
  br label %.lr.ph54.prol.loopexit

.lr.ph54.prol.loopexit:                           ; preds = %.lr.ph54.prol, %.lr.ph54.preheader
  %indvars.iv67.unr = phi i64 [ %i.b, %.lr.ph54.preheader ], [ %indvars.iv.next68.prol, %.lr.ph54.prol ]
  %.14252.unr = phi i64 [ %.041.lcssa, %.lr.ph54.preheader ], [ %i.j, %.lr.ph54.prol ]
  %i.m = add nsw i64 %wide.trip.count70, -1
  %i.n = icmp eq i64 %i.m, %i.b
  br i1 %i.n, label %.preheader45, label %.lr.ph54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.04148 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %.04347 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.o, align 1
  %i.p = zext i64 %.0.copyload.i.i to i128
  %i.q = zext nneg i64 %.04148 to i128
  %i.r = sub nsw i128 %i.p, %i.q                  ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = trunc nuw i128 %i.s to i64
  %i.u = and i64 %i.t, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.0.copyload.i.i17 = load i64, ptr %i.v, align 1
  %i.w = zext i64 %.0.copyload.i.i17 to i128
  %i.x = zext nneg i64 %.04347 to i128
  %i.y = sub nsw i128 %i.w, %i.x                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = trunc nuw i128 %i.z to i64
  %i.ab = and i64 %i.aa, 1                        ; 2 uses
  %i.ac = xor i128 %i.y, %i.r
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.ad, ptr %i.ae, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader46, label %.lr.ph, !llvm.loop !41

.preheader45:                                     ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54, %.preheader46
  %.1.lcssa = phi i32 [ %.sroa.speculated, %.preheader46 ], [ %3, %.lr.ph54 ], [ %3, %.lr.ph54.prol.loopexit ] ; 3 uses
  %i.af = icmp ult i32 %.1.lcssa, %5
  br i1 %i.af, label %.lr.ph58.preheader, label %.preheader

.lr.ph58.preheader:                               ; preds = %.preheader45
  %i.ag = zext i32 %.1.lcssa to i64               ; 6 uses
  %wide.trip.count75 = zext i32 %5 to i64         ; 3 uses
  %i.ah = sub nsw i64 %wide.trip.count75, %i.ag
  %xtraiter85 = and i64 %i.ah, 1
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ag
  %.0.copyload.i.i19.prol = load i64, ptr %i.ai, align 1
  %i.aj = zext i64 %.0.copyload.i.i19.prol to i128
  %i.ak = zext nneg i64 %.043.lcssa to i128
  %i.al = sub nsw i128 %i.aj, %i.ak               ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = trunc nuw i128 %i.am to i64
  %i.ao = and i64 %i.an, 1
  %i.ap = trunc i128 %i.al to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  store i64 %i.ap, ptr %i.aq, align 4
  %indvars.iv.next73.prol = add nuw nsw i64 %i.ag, 1
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %indvars.iv72.unr = phi i64 [ %i.ag, %.lr.ph58.preheader ], [ %indvars.iv.next73.prol, %.lr.ph58.prol ]
  %.14456.unr = phi i64 [ %.043.lcssa, %.lr.ph58.preheader ], [ %i.ao, %.lr.ph58.prol ]
  %i.ar = add nsw i64 %wide.trip.count75, -1
  %i.as = icmp eq i64 %i.ar, %i.ag
  br i1 %i.as, label %.preheader, label %.lr.ph58

.lr.ph54:                                         ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54
  %indvars.iv67 = phi i64 [ %indvars.iv.next68.1, %.lr.ph54 ], [ %indvars.iv67.unr, %.lr.ph54.prol.loopexit ] ; 4 uses
  %.14252 = phi i64 [ %i.bd, %.lr.ph54 ], [ %.14252.unr, %.lr.ph54.prol.loopexit ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %.0.copyload.i.i18 = load i64, ptr %i.at, align 1
  %i.au = zext i64 %.0.copyload.i.i18 to i128
  %i.av = zext nneg i64 %.14252 to i128
  %i.aw = sub nsw i128 %i.au, %i.av               ; 2 uses
  %6 = lshr i128 %i.aw, 64
  %i.ax = trunc i128 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv67
  store i64 %i.ax, ptr %i.ay, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next68
  %.0.copyload.i.i18.1 = load i64, ptr %i.az, align 1
  %i.ba = zext i64 %.0.copyload.i.i18.1 to i128
  %7 = and i128 %6, 1
  %8 = sub nsw i128 %i.ba, %7                     ; 2 uses
  %i.bb = lshr i128 %8, 64
  %i.bc = trunc nuw i128 %i.bb to i64
  %i.bd = and i64 %i.bc, 1
  %i.be = trunc i128 %8 to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next68
  store i64 %i.be, ptr %i.bf, align 4
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %indvars.iv.next68.1, %wide.trip.count70
  br i1 %exitcond71.not.1, label %.preheader45, label %.lr.ph54, !llvm.loop !42

.preheader:                                       ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.preheader45
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader45 ], [ %5, %.lr.ph58 ], [ %5, %.lr.ph58.prol.loopexit ] ; 3 uses
  %i.bg = icmp ult i32 %.2.lcssa, %1
  br i1 %i.bg, label %.lr.ph61.preheader, label %._crit_edge

.lr.ph61.preheader:                               ; preds = %.preheader
  %i.bh = zext i32 %.2.lcssa to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.bi
  %i.bj = xor i32 %.2.lcssa, -1
  %i.bk = add i32 %1, %i.bj
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bn, i1 false)
  br label %._crit_edge

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.1, %.lr.ph58 ], [ %indvars.iv72.unr, %.lr.ph58.prol.loopexit ] ; 4 uses
  %.14456 = phi i64 [ %i.by, %.lr.ph58 ], [ %.14456.unr, %.lr.ph58.prol.loopexit ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv72
  %.0.copyload.i.i19 = load i64, ptr %i.bo, align 1
  %i.bp = zext i64 %.0.copyload.i.i19 to i128
  %i.bq = zext nneg i64 %.14456 to i128
  %i.br = sub nsw i128 %i.bp, %i.bq               ; 2 uses
  %9 = lshr i128 %i.br, 64
  %i.bs = trunc i128 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72
  store i64 %i.bs, ptr %i.bt, align 4
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next73
  %.0.copyload.i.i19.1 = load i64, ptr %i.bu, align 1
  %i.bv = zext i64 %.0.copyload.i.i19.1 to i128
  %10 = and i128 %9, 1
  %11 = sub nsw i128 %i.bv, %10                   ; 2 uses
  %i.bw = lshr i128 %11, 64
  %i.bx = trunc nuw i128 %i.bw to i64
  %i.by = and i64 %i.bx, 1
  %i.bz = trunc i128 %11 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next73
  store i64 %i.bz, ptr %i.ca, align 4
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %exitcond76.not.1 = icmp eq i64 %indvars.iv.next73.1, %wide.trip.count75
  br i1 %exitcond76.not.1, label %.preheader, label %.lr.ph58, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph61.preheader, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint17BitwiseXor_PosNegENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %5, i32 %3) ; 6 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %.preheader44, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.preheader44.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader44, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader44.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader44.loopexit.unr-lcssa ] ; 3 uses
  %.04145.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ar, %.preheader44.loopexit.unr-lcssa ]
  %lcmp.mod80 = trunc i32 %.sroa.speculated to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %.0.copyload.i.i.epil = load i64, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  %.0.copyload.i.i17.epil = load i64, ptr %i.e, align 1
  %i.f = zext i64 %.0.copyload.i.i17.epil to i128
  %i.g = zext nneg i64 %.04145.epil.init to i128
  %i.h = sub nsw i128 %i.f, %i.g                  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = trunc nuw i128 %i.i to i64
  %i.k = and i64 %i.j, 1
  %i.l = trunc i128 %i.h to i64
  %i.m = xor i64 %.0.copyload.i.i.epil, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i64 %i.m, ptr %i.n, align 4
  br label %.preheader44

.preheader44:                                     ; preds = %.lr.ph.epil.preheader, %.preheader44.loopexit.unr-lcssa, %bb.a
  %.041.lcssa = phi i64 [ 1, %bb.a ], [ %i.ar, %.preheader44.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil.preheader ] ; 2 uses
  %i.o = icmp ult i32 %5, %3
  br i1 %i.o, label %.lr.ph49.preheader, label %.preheader43

.lr.ph49.preheader:                               ; preds = %.preheader44
  %i.p = zext i32 %.sroa.speculated to i64        ; 4 uses
  %wide.trip.count65 = zext i32 %3 to i64         ; 4 uses
  %i.q = sub nsw i64 %wide.trip.count65, %i.p     ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  %i.r = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph49.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.preheader
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = add nuw i64 %index, %i.p                 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x i64>, ptr %i.u, align 1
  %wide.load77 = load <2 x i64>, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %wide.load, ptr %i.w, align 4
  store <2 x i64> %wide.load77, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.preheader43, label %.lr.ph49.preheader78

.lr.ph49.preheader78:                             ; preds = %.lr.ph49.preheader, %middle.block
  %indvars.iv62.ph = phi i64 [ %i.p, %.lr.ph49.preheader ], [ %i.s, %middle.block ] ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count65, %indvars.iv62.ph
  %xtraiter81 = and i64 %i.z, 3                   ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph49.prol.loopexit, label %.lr.ph49.prol

.lr.ph49.prol:                                    ; preds = %.lr.ph49.preheader78, %.lr.ph49.prol
  %indvars.iv62.prol = phi i64 [ %indvars.iv.next63.prol, %.lr.ph49.prol ], [ %indvars.iv62.ph, %.lr.ph49.preheader78 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph49.prol ], [ 0, %.lr.ph49.preheader78 ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv62.prol
  %.0.copyload.i.i18.prol = load i64, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv62.prol
  store i64 %.0.copyload.i.i18.prol, ptr %i.ab, align 4
  %indvars.iv.next63.prol = add nuw nsw i64 %indvars.iv62.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph49.prol.loopexit, label %.lr.ph49.prol, !llvm.loop !45

.lr.ph49.prol.loopexit:                           ; preds = %.lr.ph49.prol, %.lr.ph49.preheader78
  %indvars.iv62.unr = phi i64 [ %indvars.iv62.ph, %.lr.ph49.preheader78 ], [ %indvars.iv.next63.prol, %.lr.ph49.prol ]
  %i.ac = sub nsw i64 %indvars.iv62.ph, %wide.trip.count65
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.preheader43, label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.04145 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.0.copyload.i.i17 = load i64, ptr %i.af, align 1
  %i.ag = zext i64 %.0.copyload.i.i17 to i128
  %i.ah = zext nneg i64 %.04145 to i128
  %i.ai = sub nsw i128 %i.ag, %i.ah               ; 2 uses
  %6 = lshr i128 %i.ai, 64
  %i.aj = trunc i128 %i.ai to i64
  %i.ak = xor i64 %.0.copyload.i.i, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.ak, ptr %i.al, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %.0.copyload.i.i.1 = load i64, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %.0.copyload.i.i17.1 = load i64, ptr %i.an, align 1
  %i.ao = zext i64 %.0.copyload.i.i17.1 to i128
  %7 = and i128 %6, 1
  %8 = sub nsw i128 %i.ao, %7                     ; 2 uses
  %i.ap = lshr i128 %8, 64
  %i.aq = trunc nuw i128 %i.ap to i64
  %i.ar = and i64 %i.aq, 1                        ; 3 uses
  %i.as = trunc i128 %8 to i64
  %i.at = xor i64 %.0.copyload.i.i.1, %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.at, ptr %i.au, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader44.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !46

.preheader43:                                     ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49, %middle.block, %.preheader44
  %.1.lcssa = phi i32 [ %.sroa.speculated, %.preheader44 ], [ %3, %middle.block ], [ %3, %.lr.ph49 ], [ %3, %.lr.ph49.prol.loopexit ] ; 3 uses
  %i.av = icmp ult i32 %.1.lcssa, %5
  br i1 %i.av, label %.lr.ph53.preheader, label %.preheader

.lr.ph53.preheader:                               ; preds = %.preheader43
  %i.aw = zext i32 %.1.lcssa to i64               ; 6 uses
  %wide.trip.count70 = zext i32 %5 to i64         ; 3 uses
  %i.ax = sub nsw i64 %wide.trip.count70, %i.aw
  %xtraiter83 = and i64 %i.ax, 1
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph53.prol.loopexit, label %.lr.ph53.prol

.lr.ph53.prol:                                    ; preds = %.lr.ph53.preheader
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  %.0.copyload.i.i19.prol = load i64, ptr %i.ay, align 1
  %i.az = zext i64 %.0.copyload.i.i19.prol to i128
  %i.ba = zext nneg i64 %.041.lcssa to i128
  %i.bb = sub nsw i128 %i.az, %i.ba               ; 2 uses
  %i.bc = lshr i128 %i.bb, 64
  %i.bd = trunc nuw i128 %i.bc to i64
  %i.be = and i64 %i.bd, 1
  %i.bf = trunc i128 %i.bb to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw
  store i64 %i.bf, ptr %i.bg, align 4
  %indvars.iv.next68.prol = add nuw nsw i64 %i.aw, 1
  br label %.lr.ph53.prol.loopexit

.lr.ph53.prol.loopexit:                           ; preds = %.lr.ph53.prol, %.lr.ph53.preheader
  %indvars.iv67.unr = phi i64 [ %i.aw, %.lr.ph53.preheader ], [ %indvars.iv.next68.prol, %.lr.ph53.prol ]
  %.14251.unr = phi i64 [ %.041.lcssa, %.lr.ph53.preheader ], [ %i.be, %.lr.ph53.prol ]
  %i.bh = add nsw i64 %wide.trip.count70, -1
  %i.bi = icmp eq i64 %i.bh, %i.aw
  br i1 %i.bi, label %.preheader, label %.lr.ph53

.lr.ph49:                                         ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.3, %.lr.ph49 ], [ %indvars.iv62.unr, %.lr.ph49.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv62
  %.0.copyload.i.i18 = load i64, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv62
  store i64 %.0.copyload.i.i18, ptr %i.bk, align 4
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next63
  %.0.copyload.i.i18.1 = load i64, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next63
  store i64 %.0.copyload.i.i18.1, ptr %i.bm, align 4
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next63.1
  %.0.copyload.i.i18.2 = load i64, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next63.1
  store i64 %.0.copyload.i.i18.2, ptr %i.bo, align 4
  %indvars.iv.next63.2 = add nuw nsw i64 %indvars.iv62, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next63.2
  %.0.copyload.i.i18.3 = load i64, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next63.2
  store i64 %.0.copyload.i.i18.3, ptr %i.bq, align 4
  %indvars.iv.next63.3 = add nuw nsw i64 %indvars.iv62, 4 ; 2 uses
  %exitcond66.not.3 = icmp eq i64 %indvars.iv.next63.3, %wide.trip.count65
  br i1 %exitcond66.not.3, label %.preheader43, label %.lr.ph49, !llvm.loop !47

.preheader:                                       ; preds = %.lr.ph53.prol.loopexit, %.lr.ph53, %.preheader43
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader43 ], [ %5, %.lr.ph53 ], [ %5, %.lr.ph53.prol.loopexit ] ; 3 uses
  %i.br = icmp ult i32 %.2.lcssa, %1
  br i1 %i.br, label %.lr.ph56.preheader, label %._crit_edge

.lr.ph56.preheader:                               ; preds = %.preheader
  %i.bs = zext i32 %.2.lcssa to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.bt
  %i.bu = xor i32 %.2.lcssa, -1
  %i.bv = add i32 %1, %i.bu
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.by, i1 false)
  br label %._crit_edge

.lr.ph53:                                         ; preds = %.lr.ph53.prol.loopexit, %.lr.ph53
  %indvars.iv67 = phi i64 [ %indvars.iv.next68.1, %.lr.ph53 ], [ %indvars.iv67.unr, %.lr.ph53.prol.loopexit ] ; 4 uses
  %.14251 = phi i64 [ %i.cj, %.lr.ph53 ], [ %.14251.unr, %.lr.ph53.prol.loopexit ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv67
  %.0.copyload.i.i19 = load i64, ptr %i.bz, align 1
  %i.ca = zext i64 %.0.copyload.i.i19 to i128
  %i.cb = zext nneg i64 %.14251 to i128
  %i.cc = sub nsw i128 %i.ca, %i.cb               ; 2 uses
  %9 = lshr i128 %i.cc, 64
  %i.cd = trunc i128 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv67
  store i64 %i.cd, ptr %i.ce, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next68
  %.0.copyload.i.i19.1 = load i64, ptr %i.cf, align 1
  %i.cg = zext i64 %.0.copyload.i.i19.1 to i128
  %10 = and i128 %9, 1
  %11 = sub nsw i128 %i.cg, %10                   ; 2 uses
  %i.ch = lshr i128 %11, 64
  %i.ci = trunc nuw i128 %i.ch to i64
  %i.cj = and i64 %i.ci, 1
  %i.ck = trunc i128 %11 to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next68
  store i64 %i.ck, ptr %i.cl, align 4
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %indvars.iv.next68.1, %wide.trip.count70
  br i1 %exitcond71.not.1, label %.preheader, label %.lr.ph53, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph56.preheader, %.preheader
  %.0.copyload.i.peel.i = load i64, ptr %0, align 4 ; 2 uses
  %add.narrowed.i.peel.i = add i64 %.0.copyload.i.peel.i, 1
  %add.narrowed.overflow.i.not.peel.i = icmp eq i64 %.0.copyload.i.peel.i, -1
  store i64 %add.narrowed.i.peel.i, ptr %0, align 4
  br i1 %add.narrowed.overflow.i.not.peel.i, label %.peel.next.i, label %_ZN2v86bigint3AddENS0_8RWDigitsEm.exit

.peel.next.i:                                     ; preds = %._crit_edge, %.peel.next.i
  %.0.i = phi i32 [ %i.co, %.peel.next.i ], [ 1, %._crit_edge ] ; 2 uses
  %i.cm = zext i32 %.0.i to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cm ; 2 uses
  %.0.copyload.i.i20 = load i64, ptr %i.cn, align 4 ; 2 uses
  %add.narrowed.i.i = add i64 %.0.copyload.i.i20, 1
  %add.narrowed.overflow.i.not.i = icmp eq i64 %.0.copyload.i.i20, -1
  store i64 %add.narrowed.i.i, ptr %i.cn, align 4
  %i.co = add i32 %.0.i, 1
  br i1 %add.narrowed.overflow.i.not.i, label %.peel.next.i, label %_ZN2v86bigint3AddENS0_8RWDigitsEm.exit, !llvm.loop !0

_ZN2v86bigint3AddENS0_8RWDigitsEm.exit:           ; preds = %.peel.next.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint9LeftShiftENS0_8RWDigitsENS0_6DigitsEm(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = lshr i64 %4, 6                           ; 5 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = trunc i64 %4 to i32
  %i.f = and i32 %i.e, 63                         ; 2 uses
  %.not70 = icmp eq i32 %i.d, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = shl nuw nsw i64 %i.c, 3
  %i.h = and i64 %i.g, 34359738360
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.h, i1 false)
  %i.i = trunc i64 %i.c to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %.033.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %i.j = icmp eq i32 %i.f, 0
  %i.k = add i32 %3, %i.d                         ; 9 uses
  %i.l = icmp ult i32 %.033.lcssa, %i.k           ; 2 uses
  br i1 %i.j, label %.preheader52, label %.preheader54

.preheader54:                                     ; preds = %._crit_edge
  br i1 %i.l, label %.lr.ph58, label %._crit_edge59.thread

.lr.ph58:                                         ; preds = %.preheader54
  %i.m = and i64 %4, 63                           ; 3 uses
  %i.n = sub nuw nsw i32 64, %i.f
  %i.o = zext nneg i32 %i.n to i64                ; 3 uses
  %i.p = and i64 %i.c, 4294967295                 ; 7 uses
  %wide.trip.count77 = zext i32 %i.k to i64       ; 2 uses
  %i.q = sub nsw i64 %wide.trip.count77, %i.p     ; 3 uses
  %xtraiter = and i64 %i.q, 1
  %i.r = add nsw i64 %wide.trip.count77, -1
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %.epil.preheader, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter = and i64 %i.q, -2
  br label %bb.b

.preheader52:                                     ; preds = %._crit_edge
  br i1 %i.l, label %.lr.ph66.preheader, label %.preheader

.lr.ph66.preheader:                               ; preds = %.preheader52
  %i.t = and i64 %i.c, 4294967295                 ; 11 uses
  %wide.trip.count85 = zext i32 %i.k to i64       ; 4 uses
  %i.u = sub nsw i64 %wide.trip.count85, %i.t     ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 10
  br i1 %min.iters.check, label %.lr.ph66.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph66.preheader
  %i.v = shl nuw nsw i64 %i.t, 3
  %i.w = add i64 %i.v, %i.b
  %i.x = sub i64 %i.a, %i.w
  %diff.check = icmp ugt i64 %i.x, -32
  br i1 %diff.check, label %.lr.ph66.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %i.y = add nsw i64 %i.t, %n.vec
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x i64>, ptr %i.aa, align 1
  %wide.load102 = load <2 x i64>, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %wide.load, ptr %i.ac, align 4
  store <2 x i64> %wide.load102, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph66.preheader103

.lr.ph66.preheader103:                            ; preds = %vector.memcheck, %.lr.ph66.preheader, %middle.block
  %indvars.iv82.ph = phi i64 [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph66.preheader ], [ %i.y, %middle.block ] ; 4 uses
  %i.af = sub nsw i64 %wide.trip.count85, %indvars.iv82.ph
  %xtraiter106 = and i64 %i.af, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader103, %.lr.ph66.prol
  %indvars.iv82.prol = phi i64 [ %indvars.iv.next83.prol, %.lr.ph66.prol ], [ %indvars.iv82.ph, %.lr.ph66.preheader103 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader103 ]
  %i.ag = sub nuw nsw i64 %indvars.iv82.prol, %i.t
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %.0.copyload.i.i.prol = load i64, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv82.prol
  store i64 %.0.copyload.i.i.prol, ptr %i.ai, align 4
  %indvars.iv.next83.prol = add nuw nsw i64 %indvars.iv82.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter106
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !50

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader103
  %indvars.iv82.unr = phi i64 [ %indvars.iv82.ph, %.lr.ph66.preheader103 ], [ %indvars.iv.next83.prol, %.lr.ph66.prol ]
  %i.aj = sub nsw i64 %indvars.iv82.ph, %wide.trip.count85
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %.preheader, label %.lr.ph66

.preheader:                                       ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %middle.block, %.preheader52
  %.1.lcssa = phi i32 [ %.033.lcssa, %.preheader52 ], [ %i.k, %middle.block ], [ %i.k, %.lr.ph66 ], [ %i.k, %.lr.ph66.prol.loopexit ] ; 2 uses
  %i.al = icmp ult i32 %.1.lcssa, %1
  br i1 %i.al, label %.loopexit.sink.split, label %.loopexit

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %indvars.iv82 = phi i64 [ %indvars.iv.next83.3, %.lr.ph66 ], [ %indvars.iv82.unr, %.lr.ph66.prol.loopexit ] ; 6 uses
  %i.am = sub nuw nsw i64 %indvars.iv82, %i.t
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am
  %.0.copyload.i.i = load i64, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv82
  store i64 %.0.copyload.i.i, ptr %i.ao, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.ap = sub nuw nsw i64 %indvars.iv.next83, %i.t
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ap
  %.0.copyload.i.i.1 = load i64, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next83
  store i64 %.0.copyload.i.i.1, ptr %i.ar, align 4
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %i.as = sub nuw nsw i64 %indvars.iv.next83.1, %i.t
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.as
  %.0.copyload.i.i.2 = load i64, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next83.1
  store i64 %.0.copyload.i.i.2, ptr %i.au, align 4
  %indvars.iv.next83.2 = add nuw nsw i64 %indvars.iv82, 3 ; 2 uses
  %i.av = sub nuw nsw i64 %indvars.iv.next83.2, %i.t
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.av
  %.0.copyload.i.i.3 = load i64, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next83.2
  store i64 %.0.copyload.i.i.3, ptr %i.ax, align 4
  %indvars.iv.next83.3 = add nuw nsw i64 %indvars.iv82, 4 ; 2 uses
  %exitcond86.not.3 = icmp eq i64 %indvars.iv.next83.3, %wide.trip.count85
  br i1 %exitcond86.not.3, label %.preheader, label %.lr.ph66, !llvm.loop !51

bb.b:                                             ; preds = %bb.b, %.lr.ph58.new
  %indvars.iv = phi i64 [ %i.p, %.lr.ph58.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.057 = phi i64 [ 0, %.lr.ph58.new ], [ %i.bj, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph58.new ], [ %niter.next.1, %bb.b ]
  %i.ay = sub nuw nsw i64 %indvars.iv, %i.p
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ay
  %.0.copyload.i.i36 = load i64, ptr %i.az, align 1 ; 2 uses
  %i.ba = shl i64 %.0.copyload.i.i36, %i.m
  %i.bb = or i64 %i.ba, %.057
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.bb, ptr %i.bc, align 4
  %i.bd = lshr i64 %.0.copyload.i.i36, %i.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = sub nuw nsw i64 %indvars.iv.next, %i.p
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.be
  %.0.copyload.i.i36.1 = load i64, ptr %i.bf, align 1 ; 2 uses
  %i.bg = shl i64 %.0.copyload.i.i36.1, %i.m
  %i.bh = or i64 %i.bg, %i.bd
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.bh, ptr %i.bi, align 4
  %i.bj = lshr i64 %.0.copyload.i.i36.1, %i.o     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
end_hunk_1
