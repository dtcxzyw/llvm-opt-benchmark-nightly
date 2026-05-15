inline.NumInlined: 86
inline.NumDeleted: 26
begin_hunk_0_@PredictorAdd10_C:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @PredictorAdd11_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noalias noundef captures(none) %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %3, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.bg, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 4 uses
  %i.g = lshr i32 %i.d, 24
  %i.h = lshr i32 %store_forwarded, 24
  %i.i = lshr i32 %i.f, 24                        ; 2 uses
  %i.j = sub nsw i32 %i.h, %i.i
  %i.k = sub nsw i32 %i.g, %i.i
  %i.l = tail call i32 @llvm.abs.i32(i32 %i.j, i1 true)
  %i.m = tail call i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.n = lshr i32 %i.d, 16
  %i.o = and i32 %i.n, 255
  %i.p = lshr i32 %store_forwarded, 16
  %i.q = and i32 %i.p, 255
  %i.r = lshr i32 %i.f, 16
  %i.s = and i32 %i.r, 255                        ; 2 uses
  %i.t = sub nsw i32 %i.q, %i.s
  %i.u = sub nsw i32 %i.o, %i.s
  %i.v = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true)
  %i.w = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true)
  %i.x = lshr i32 %i.d, 8
  %i.y = and i32 %i.x, 255
  %i.z = lshr i32 %store_forwarded, 8
  %i.aa = and i32 %i.z, 255
  %i.ab = lshr i32 %i.f, 8
  %i.ac = and i32 %i.ab, 255                      ; 2 uses
  %i.ad = sub nsw i32 %i.aa, %i.ac
  %i.ae = sub nsw i32 %i.y, %i.ac
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.ah = and i32 %i.d, 255
  %i.ai = and i32 %store_forwarded, 255
  %i.aj = and i32 %i.f, 255                       ; 2 uses
  %i.ak = sub nsw i32 %i.ai, %i.aj
  %i.al = sub nsw i32 %i.ah, %i.aj
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %.neg13 = add nuw nsw i32 %i.am, %i.l
  %i.ao = add nuw nsw i32 %i.an, %i.m
  %i.ap = add nuw nsw i32 %.neg13, %i.af
  %i.aq = add nuw nsw i32 %i.ao, %i.ag
  %i.ar = add nuw nsw i32 %i.aq, %i.w
  %i.as = sub nsw i32 %i.ap, %i.ar
  %i.at = add nsw i32 %i.as, %i.v
  %i.au = icmp slt i32 %i.at, 1
  %i.av = select i1 %i.au, i32 %i.d, i32 %store_forwarded ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.ay = and i32 %i.ax, -16711936
  %i.az = and i32 %i.av, -16711936
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = and i32 %i.ax, 16711935
  %i.bc = and i32 %i.av, 16711935
  %i.bd = add nuw nsw i32 %i.bc, %i.bb
  %i.be = and i32 %i.ba, -16711936
  %i.bf = and i32 %i.bd, 16711935
  %i.bg = or disjoint i32 %i.be, %i.bf            ; 2 uses
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @PredictorAdd12_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noalias noundef captures(none) %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %3, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.bi, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 4 uses
  %i.g = lshr i32 %store_forwarded, 24
  %i.h = lshr i32 %i.d, 24
  %i.i = lshr i32 %i.f, 24
  %i.j = add nuw nsw i32 %i.h, %i.g
  %i.k = sub nsw i32 %i.j, %i.i                   ; 3 uses
  %i.l = icmp ult i32 %i.k, 256
  %i.m = xor i32 %i.k, -1
  %i.n = lshr i32 %i.m, 24
  %.0.i.i.i.i = select i1 %i.l, i32 %i.k, i32 %i.n
  %i.o = lshr i32 %store_forwarded, 16
  %i.p = and i32 %i.o, 255
  %i.q = lshr i32 %i.d, 16
  %i.r = and i32 %i.q, 255
  %i.s = lshr i32 %i.f, 16
  %i.t = and i32 %i.s, 255
  %i.u = add nuw nsw i32 %i.r, %i.p
  %i.v = sub nsw i32 %i.u, %i.t                   ; 3 uses
  %i.w = icmp ult i32 %i.v, 256
  %i.x = xor i32 %i.v, -1
  %i.y = lshr i32 %i.x, 24
  %.0.i.i16.i.i = select i1 %i.w, i32 %i.v, i32 %i.y
  %i.z = lshr i32 %store_forwarded, 8
  %i.aa = and i32 %i.z, 255
  %i.ab = lshr i32 %i.d, 8
  %i.ac = and i32 %i.ab, 255
  %i.ad = lshr i32 %i.f, 8
  %i.ae = and i32 %i.ad, 255
  %i.af = add nuw nsw i32 %i.ac, %i.aa
  %i.ag = sub nsw i32 %i.af, %i.ae                ; 3 uses
  %i.ah = icmp ult i32 %i.ag, 256
  %i.ai = xor i32 %i.ag, -1
  %i.aj = lshr i32 %i.ai, 24
  %.0.i.i17.i.i = select i1 %i.ah, i32 %i.ag, i32 %i.aj
  %i.ak = and i32 %store_forwarded, 255
  %i.al = and i32 %i.d, 255
  %i.am = and i32 %i.f, 255
  %i.an = add nuw nsw i32 %i.al, %i.ak
  %i.ao = sub nsw i32 %i.an, %i.am                ; 3 uses
  %i.ap = icmp ult i32 %i.ao, 256
  %i.aq = xor i32 %i.ao, -1
  %i.ar = lshr i32 %i.aq, 24
  %.0.i.i18.i.i = select i1 %i.ap, i32 %i.ao, i32 %i.ar
  %i.as = shl nuw i32 %.0.i.i.i.i, 24
  %i.at = shl nuw nsw i32 %.0.i.i16.i.i, 16
  %i.au = shl nuw nsw i32 %.0.i.i17.i.i, 8
  %i.av = add nuw nsw i32 %i.as, %.0.i.i18.i.i
  %i.aw = add nuw nsw i32 %i.av, %i.at
  %i.ax = add nuw nsw i32 %i.aw, %i.au            ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 2 uses
  %i.ba = and i32 %i.az, -16711936
  %i.bb = and i32 %i.ax, -16711936
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = and i32 %i.az, 16711935
  %i.be = and i32 %i.ax, 16711935
  %i.bf = add nuw nsw i32 %i.be, %i.bd
  %i.bg = and i32 %i.bc, -16711936
  %i.bh = and i32 %i.bf, 16711935
  %i.bi = or disjoint i32 %i.bg, %i.bh            ; 2 uses
  store i32 %i.bi, ptr %i.b, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @PredictorAdd13_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noalias noundef captures(none) %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %3, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = xor i32 %i.d, %store_forwarded
  %i.g = lshr i32 %i.f, 1
  %i.h = and i32 %i.g, 2139062143
  %i.i = and i32 %i.d, %store_forwarded
  %i.j = load i32, ptr %i.e, align 4, !tbaa !3    ; 4 uses
  %4 = lshr i32 %i.j, 24
  %i.k = lshr i32 %i.j, 16
  %i.l = lshr i32 %i.j, 8
  %5 = add i32 %i.h, %i.i                         ; 4 uses
  %i.m = lshr i32 %5, 16
  %i.n = lshr i32 %5, 8
  %i.o = lshr i32 %5, 24
  %i.p = and i32 %i.m, 255
  %6 = insertelement <2 x i32> poison, i32 %5, i64 0
  %7 = insertelement <2 x i32> %6, i32 %i.n, i64 1
  %8 = and <2 x i32> %7, splat (i32 255)
  %i.q = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.r = insertelement <4 x i32> %i.q, i32 %i.l, i64 1
  %i.s = insertelement <4 x i32> %i.r, i32 %i.k, i64 2
  %9 = insertelement <4 x i32> %i.s, i32 %4, i64 3
  %10 = and <4 x i32> %9, <i32 255, i32 255, i32 255, i32 -1>
  %11 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.t = insertelement <4 x i32> %11, i32 %i.p, i64 2
  %i.u = insertelement <4 x i32> %i.t, i32 %i.o, i64 3 ; 2 uses
  %i.v = sub nsw <4 x i32> %i.u, %10
  %i.w = trunc <4 x i32> %i.v to <4 x i16>
  %i.x = sdiv <4 x i16> %i.w, splat (i16 2)
  %i.y = sext <4 x i16> %i.x to <4 x i32>
  %i.z = add nsw <4 x i32> %i.u, %i.y             ; 3 uses
  %i.aa = icmp ult <4 x i32> %i.z, splat (i32 256)
  %i.ab = xor <4 x i32> %i.z, splat (i32 -1)
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 24)
  %i.ad = select <4 x i1> %i.aa, <4 x i32> %i.z, <4 x i32> %i.ac
  %i.ae = shl <4 x i32> %i.ad, <i32 0, i32 8, i32 16, i32 24>
  %i.af = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 2 uses
  %i.ai = and i32 %i.ah, -16711936
  %i.aj = and i32 %i.af, -16711936
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = and i32 %i.ah, 16711935
  %i.am = and i32 %i.af, 16711935
  %i.an = add nuw nsw i32 %i.am, %i.al
  %i.ao = and i32 %i.ak, -16711936
  %i.ap = and i32 %i.an, 16711935
  %i.aq = or disjoint i32 %i.ao, %i.ap            ; 2 uses
  store i32 %i.aq, ptr %i.b, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @MapARGB_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = icmp slt i32 %3, %4
  %i.b = icmp sgt i32 %5, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge20

.preheader.us.preheader:                          ; preds = %bb.a
  %xtraiter = and i32 %5, 3                       ; 3 uses
  %i.c = icmp ult i32 %5, 4
  %unroll_iter = and i32 %5, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod32 = icmp ne i32 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.0919.us = phi i32 [ %i.ar, %._crit_edge.us ], [ %3, %.preheader.us.preheader ]
  %.01018.us = phi ptr [ %.lcssa29, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 2 uses
  %.01117.us = phi ptr [ %.lcssa, %._crit_edge.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.114.us = phi ptr [ %i.ab, %.preheader.us.new ], [ %.01018.us, %.preheader.us ] ; 5 uses
  %.11213.us = phi ptr [ %i.ai, %.preheader.us.new ], [ %.01117.us, %.preheader.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.d = getelementptr inbounds nuw i8, ptr %.114.us, i64 4
  %i.e = load i32, ptr %.114.us, align 4, !tbaa !3
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %.11213.us, i64 4
  store i32 %i.j, ptr %.11213.us, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %.114.us, i64 8
  %i.m = load i32, ptr %i.d, align 4, !tbaa !3
  %i.n = lshr i32 %i.m, 8
  %i.o = and i32 %i.n, 255
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %.11213.us, i64 8
  store i32 %i.r, ptr %i.k, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %.114.us, i64 12
  %i.u = load i32, ptr %i.l, align 4, !tbaa !3
  %i.v = lshr i32 %i.u, 8
  %i.w = and i32 %i.v, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %.11213.us, i64 12
  store i32 %i.z, ptr %i.s, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.114.us, i64 16 ; 3 uses
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !3
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 255
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.11213.us, i64 16 ; 3 uses
  store i32 %i.ah, ptr %i.aa, align 4, !tbaa !3
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !112

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.114.us.epil.init = phi ptr [ %.01018.us, %.preheader.us ], [ %i.ab, %._crit_edge.us.unr-lcssa ]
  %.11213.us.epil.init = phi ptr [ %.01117.us, %.preheader.us ], [ %i.ai, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.114.us.epil = phi ptr [ %.114.us.epil.init, %.epil.preheader ], [ %i.aj, %bb.b ] ; 2 uses
  %.11213.us.epil = phi ptr [ %.11213.us.epil.init, %.epil.preheader ], [ %i.aq, %bb.b ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.114.us.epil, i64 4 ; 2 uses
  %i.ak = load i32, ptr %.114.us.epil, align 4, !tbaa !3
  %i.al = lshr i32 %i.ak, 8
  %i.am = and i32 %i.al, 255
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %.11213.us.epil, i64 4 ; 2 uses
  store i32 %i.ap, ptr %.11213.us.epil, align 4, !tbaa !3
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !113

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa29 = phi ptr [ %i.ab, %._crit_edge.us.unr-lcssa ], [ %i.aj, %bb.b ]
  %.lcssa = phi ptr [ %i.ai, %._crit_edge.us.unr-lcssa ], [ %i.aq, %bb.b ]
  %i.ar = add nsw i32 %.0919.us, 1                ; 2 uses
  %exitcond23.not = icmp eq i32 %i.ar, %4
  br i1 %exitcond23.not, label %._crit_edge20, label %.preheader.us, !llvm.loop !115

._crit_edge20:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @MapAlpha_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = icmp slt i32 %3, %4
  %i.b = icmp sgt i32 %5, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge20

.preheader.us.preheader:                          ; preds = %bb.a
  %xtraiter = and i32 %5, 3                       ; 3 uses
  %i.c = icmp ult i32 %5, 4
  %unroll_iter = and i32 %5, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod32 = icmp ne i32 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.0919.us = phi i32 [ %i.ar, %._crit_edge.us ], [ %3, %.preheader.us.preheader ]
  %.01018.us = phi ptr [ %.lcssa29, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 2 uses
  %.01117.us = phi ptr [ %.lcssa, %._crit_edge.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.114.us = phi ptr [ %i.ab, %.preheader.us.new ], [ %.01018.us, %.preheader.us ] ; 5 uses
  %.11213.us = phi ptr [ %i.ai, %.preheader.us.new ], [ %.01117.us, %.preheader.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.d = getelementptr inbounds nuw i8, ptr %.114.us, i64 1
  %i.e = load i8, ptr %.114.us, align 1, !tbaa !24
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = lshr i32 %i.h, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.11213.us, i64 1
  store i8 %i.j, ptr %.11213.us, align 1, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %.114.us, i64 2
  %i.m = load i8, ptr %i.d, align 1, !tbaa !24
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = lshr i32 %i.p, 8
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.11213.us, i64 2
  store i8 %i.r, ptr %i.k, align 1, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %.114.us, i64 3
  %i.u = load i8, ptr %i.l, align 1, !tbaa !24
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = lshr i32 %i.x, 8
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.11213.us, i64 3
  store i8 %i.z, ptr %i.s, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %.114.us, i64 4 ; 3 uses
  %i.ac = load i8, ptr %i.t, align 1, !tbaa !24
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = lshr i32 %i.af, 8
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %.11213.us, i64 4 ; 3 uses
  store i8 %i.ah, ptr %i.aa, align 1, !tbaa !24
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !116

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
end_hunk_0
