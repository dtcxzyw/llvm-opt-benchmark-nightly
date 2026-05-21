inline.NumInlined: 86
inline.NumDeleted: 26
begin_hunk_0_@VP8LPredictor8_C:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @VP8LPredictor9_C(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.d = xor i32 %i.c, %i.a
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, 2139062143
  %i.g = and i32 %i.c, %i.a
  %i.h = add i32 %i.f, %i.g
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @VP8LPredictor10_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = xor i32 %i.c, %i.a
  %i.h = lshr i32 %i.g, 1
  %i.i = and i32 %i.h, 2139062143
  %i.j = and i32 %i.c, %i.a
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  %i.l = xor i32 %i.f, %i.d
  %i.m = lshr i32 %i.l, 1
  %i.n = and i32 %i.m, 2139062143
  %i.o = and i32 %i.f, %i.d
  %i.p = add i32 %i.n, %i.o                       ; 2 uses
  %i.q = xor i32 %i.p, %i.k
  %i.r = lshr i32 %i.q, 1
  %i.s = and i32 %i.r, 2139062143
  %i.t = and i32 %i.p, %i.k
  %i.u = add i32 %i.s, %i.t
  ret i32 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @VP8LPredictor11_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3      ; 5 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !3      ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 4 uses
  %i.e = lshr i32 %i.a, 24
  %i.f = lshr i32 %i.b, 24
  %i.g = lshr i32 %i.d, 24                        ; 2 uses
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = sub nsw i32 %i.e, %i.g
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %i.k = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.l = lshr i32 %i.a, 16
  %i.m = and i32 %i.l, 255
  %i.n = lshr i32 %i.b, 16
  %i.o = and i32 %i.n, 255
  %i.p = lshr i32 %i.d, 16
  %i.q = and i32 %i.p, 255                        ; 2 uses
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = sub nsw i32 %i.m, %i.q
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.v = lshr i32 %i.a, 8
  %i.w = and i32 %i.v, 255
  %i.x = lshr i32 %i.b, 8
  %i.y = and i32 %i.x, 255
  %i.z = lshr i32 %i.d, 8
  %i.aa = and i32 %i.z, 255                       ; 2 uses
  %i.ab = sub nsw i32 %i.y, %i.aa
  %i.ac = sub nsw i32 %i.w, %i.aa
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true)
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.af = and i32 %i.a, 255
  %i.ag = and i32 %i.b, 255
  %i.ah = and i32 %i.d, 255                       ; 2 uses
  %i.ai = sub nsw i32 %i.ag, %i.ah
  %i.aj = sub nsw i32 %i.af, %i.ah
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %.neg5 = add nuw nsw i32 %i.ak, %i.j
  %i.am = add nuw nsw i32 %i.k, %i.al
  %i.an = add nuw nsw i32 %.neg5, %i.ad
  %i.ao = add nuw nsw i32 %i.am, %i.ae
  %i.ap = add nuw nsw i32 %i.ao, %i.u
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = add nsw i32 %i.aq, %i.t
  %i.as = icmp slt i32 %i.ar, 1
  %i.at = select i1 %i.as, i32 %i.a, i32 %i.b
  ret i32 %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @VP8LPredictor12_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !3      ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 4 uses
  %i.e = lshr i32 %i.a, 24
  %i.f = lshr i32 %i.b, 24
  %i.g = lshr i32 %i.d, 24
  %i.h = add nuw nsw i32 %i.f, %i.e
  %i.i = sub nsw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ult i32 %i.i, 256
  %i.k = xor i32 %i.i, -1
  %i.l = lshr i32 %i.k, 24
  %.0.i.i.i = select i1 %i.j, i32 %i.i, i32 %i.l
  %i.m = lshr i32 %i.a, 16
  %i.n = and i32 %i.m, 255
  %i.o = lshr i32 %i.b, 16
  %i.p = and i32 %i.o, 255
  %i.q = lshr i32 %i.d, 16
  %i.r = and i32 %i.q, 255
  %i.s = add nuw nsw i32 %i.p, %i.n
  %i.t = sub nsw i32 %i.s, %i.r                   ; 3 uses
  %i.u = icmp ult i32 %i.t, 256
  %i.v = xor i32 %i.t, -1
  %i.w = lshr i32 %i.v, 24
  %.0.i.i16.i = select i1 %i.u, i32 %i.t, i32 %i.w
  %i.x = lshr i32 %i.a, 8
  %i.y = and i32 %i.x, 255
  %i.z = lshr i32 %i.b, 8
  %i.aa = and i32 %i.z, 255
  %i.ab = lshr i32 %i.d, 8
  %i.ac = and i32 %i.ab, 255
  %i.ad = add nuw nsw i32 %i.aa, %i.y
  %i.ae = sub nsw i32 %i.ad, %i.ac                ; 3 uses
  %i.af = icmp ult i32 %i.ae, 256
  %i.ag = xor i32 %i.ae, -1
  %i.ah = lshr i32 %i.ag, 24
  %.0.i.i17.i = select i1 %i.af, i32 %i.ae, i32 %i.ah
  %i.ai = and i32 %i.a, 255
  %i.aj = and i32 %i.b, 255
  %i.ak = and i32 %i.d, 255
  %i.al = add nuw nsw i32 %i.aj, %i.ai
  %i.am = sub nsw i32 %i.al, %i.ak                ; 3 uses
  %i.an = icmp ult i32 %i.am, 256
  %i.ao = xor i32 %i.am, -1
  %i.ap = lshr i32 %i.ao, 24
  %.0.i.i18.i = select i1 %i.an, i32 %i.am, i32 %i.ap
  %i.aq = shl nuw i32 %.0.i.i.i, 24
  %i.ar = shl nuw nsw i32 %.0.i.i16.i, 16
  %i.as = shl nuw nsw i32 %.0.i.i17.i, 8
  %i.at = add nuw nsw i32 %i.aq, %.0.i.i18.i
  %i.au = add nuw nsw i32 %i.at, %i.ar
  %i.av = add nuw nsw i32 %i.au, %i.as
  ret i32 %i.av
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @VP8LPredictor13_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -4
  %i.d = xor i32 %i.b, %i.a
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, 2139062143
  %i.g = and i32 %i.b, %i.a
  %i.h = load i32, ptr %i.c, align 4, !tbaa !3    ; 4 uses
  %i.i = add i32 %i.f, %i.g                       ; 4 uses
  %i.j = lshr i32 %i.i, 16
  %i.k = lshr i32 %i.i, 8
  %i.l = lshr i32 %i.h, 24
  %i.m = lshr i32 %i.h, 16
  %i.n = lshr i32 %i.h, 8
  %i.o = lshr i32 %i.i, 24                        ; 2 uses
  %i.p = and i32 %i.j, 255                        ; 2 uses
  %i.q = and i32 %i.k, 255                        ; 2 uses
  %i.r = and i32 %i.i, 255                        ; 2 uses
  %i.s = and i32 %i.m, 255
  %i.t = and i32 %i.n, 255
  %i.u = and i32 %i.h, 255
  %i.v = sub nsw i32 %i.o, %i.l
  %i.w = sub nsw i32 %i.p, %i.s
  %i.x = sub nsw i32 %i.q, %i.t
  %i.y = sub nsw i32 %i.r, %i.u
  %.lhs.trunc.i.i = trunc nsw i32 %i.v to i16
  %.lhs.trunc.i14.i = trunc nsw i32 %i.w to i16
  %.lhs.trunc.i17.i = trunc nsw i32 %i.x to i16
  %.lhs.trunc.i20.i = trunc nsw i32 %i.y to i16
  %i.z = insertelement <4 x i16> poison, i16 %.lhs.trunc.i20.i, i64 0
  %i.aa = insertelement <4 x i16> %i.z, i16 %.lhs.trunc.i17.i, i64 1
  %i.ab = insertelement <4 x i16> %i.aa, i16 %.lhs.trunc.i14.i, i64 2
  %i.ac = insertelement <4 x i16> %i.ab, i16 %.lhs.trunc.i.i, i64 3
  %i.ad = sdiv <4 x i16> %i.ac, splat (i16 2)
  %i.ae = sext <4 x i16> %i.ad to <4 x i32>
  %i.af = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.q, i64 1
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.p, i64 2
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.o, i64 3
  %i.aj = add nsw <4 x i32> %i.ai, %i.ae          ; 3 uses
  %i.ak = icmp ult <4 x i32> %i.aj, splat (i32 256)
  %i.al = xor <4 x i32> %i.aj, splat (i32 -1)
  %i.am = lshr <4 x i32> %i.al, splat (i32 24)
  %i.an = select <4 x i1> %i.ak, <4 x i32> %i.aj, <4 x i32> %i.am
  %i.ao = shl <4 x i32> %i.an, <i32 0, i32 8, i32 16, i32 24>
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ao)
  ret i32 %i.ap
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LAddGreenToBlueAndRed_C(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 8
  %i.d = sub i64 %i.b, %i.c
  %diff.check = icmp ult i64 %i.d, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x i32>, ptr %i.e, align 4, !tbaa !3 ; 3 uses
  %wide.load16 = load <4 x i32>, ptr %i.f, align 4, !tbaa !3 ; 3 uses
  %i.g = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.h = lshr <4 x i32> %wide.load16, splat (i32 8)
  %i.i = and <4 x i32> %i.g, splat (i32 255)      ; 2 uses
  %i.j = and <4 x i32> %i.h, splat (i32 255)      ; 2 uses
  %i.k = and <4 x i32> %wide.load, splat (i32 16711935)
  %i.l = and <4 x i32> %wide.load16, splat (i32 16711935)
  %i.m = shl nuw nsw <4 x i32> %i.i, splat (i32 16)
  %i.n = shl nuw nsw <4 x i32> %i.j, splat (i32 16)
  %i.o = add nuw nsw <4 x i32> %i.i, %i.k
  %i.p = add nuw nsw <4 x i32> %i.j, %i.l
  %i.q = add nuw nsw <4 x i32> %i.o, %i.m
  %i.r = add nuw nsw <4 x i32> %i.p, %i.n
  %i.s = and <4 x i32> %i.q, splat (i32 16711935)
  %i.t = and <4 x i32> %i.r, splat (i32 16711935)
  %i.u = and <4 x i32> %wide.load, splat (i32 -16711936)
  %i.v = and <4 x i32> %wide.load16, splat (i32 -16711936)
  %i.w = or disjoint <4 x i32> %i.s, %i.u
  %i.x = or disjoint <4 x i32> %i.t, %i.v
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4, !tbaa !3
  store <4 x i32> %i.x, ptr %i.z, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader17
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3  ; 3 uses
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 255                      ; 2 uses
  %i.af = and i32 %i.ac, 16711935
  %i.ag = shl nuw nsw i32 %i.ae, 16
  %i.ah = add nuw nsw i32 %i.ae, %i.af
  %i.ai = add nuw nsw i32 %i.ah, %i.ag
  %i.aj = and i32 %i.ai, 16711935
  %i.ak = and i32 %i.ac, -16711936
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader17
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader17 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.an = add nsw i64 %wide.trip.count, -1
  %i.ao = icmp eq i64 %indvars.iv.ph, %i.an
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 3 uses
  %i.ar = lshr i32 %i.aq, 8
  %i.as = and i32 %i.ar, 255                      ; 2 uses
  %i.at = and i32 %i.aq, 16711935
  %i.au = shl nuw nsw i32 %i.as, 16
  %i.av = add nuw nsw i32 %i.as, %i.at
  %i.aw = add nuw nsw i32 %i.av, %i.au
  %i.ax = and i32 %i.aw, 16711935
  %i.ay = and i32 %i.aq, -16711936
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 3 uses
  %i.bd = lshr i32 %i.bc, 8
  %i.be = and i32 %i.bd, 255                      ; 2 uses
  %i.bf = and i32 %i.bc, 16711935
  %i.bg = shl nuw nsw i32 %i.be, 16
  %i.bh = add nuw nsw i32 %i.be, %i.bf
  %i.bi = add nuw nsw i32 %i.bh, %i.bg
  %i.bj = and i32 %i.bi, 16711935
  %i.bk = and i32 %i.bc, -16711936
  %i.bl = or disjoint i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LTransformColorInverse_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef writeonly captures(none) %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = load i8, ptr %0, align 1, !tbaa !12
  %i.e = sext i8 %i.d to i32                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = sext i8 %i.g to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = sext i8 %i.j to i32                      ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.l = sub i64 %i.b, %i.c
  %diff.check = icmp ult i64 %i.l, 16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat27 = shufflevector <4 x i32> %broadcast.splatinsert26, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat29 = shufflevector <4 x i32> %broadcast.splatinsert28, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !tbaa !3 ; 4 uses
  %i.n = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.o = shl <4 x i32> %wide.load, splat (i32 16)
  %i.p = ashr <4 x i32> %i.o, splat (i32 24)      ; 2 uses
  %i.q = mul nsw <4 x i32> %i.p, %broadcast.splat
  %i.r = ashr <4 x i32> %i.q, splat (i32 5)
  %i.s = add nsw <4 x i32> %i.r, %i.n             ; 2 uses
  %i.t = mul nsw <4 x i32> %i.p, %broadcast.splat27
  %i.u = lshr <4 x i32> %i.t, splat (i32 5)
  %i.v = add <4 x i32> %i.u, %wide.load
  %i.w = shl <4 x i32> %i.s, splat (i32 24)
  %i.x = ashr exact <4 x i32> %i.w, splat (i32 24)
  %i.y = mul nsw <4 x i32> %i.x, %broadcast.splat29
  %i.z = lshr <4 x i32> %i.y, splat (i32 5)
  %i.aa = add <4 x i32> %i.v, %i.z
  %i.ab = and <4 x i32> %i.aa, splat (i32 255)
  %i.ac = and <4 x i32> %wide.load, splat (i32 -16711936)
  %i.ad = shl <4 x i32> %i.s, splat (i32 16)
  %i.ae = and <4 x i32> %i.ad, splat (i32 16711680)
  %i.af = or disjoint <4 x i32> %i.ae, %i.ac
  %i.ag = or disjoint <4 x i32> %i.af, %i.ab
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <4 x i32> %i.ag, ptr %i.ah, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
end_hunk_0
begin_hunk_1_@PredictorAdd11_C:bb.a
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
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.ay, %.lr.ph ] ; 2 uses
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
  %i.k = lshr i32 %i.j, 24
  %i.l = lshr i32 %i.j, 16
  %i.m = lshr i32 %i.j, 8
  %i.n = add i32 %i.h, %i.i                       ; 4 uses
  %i.o = lshr i32 %i.n, 16
  %i.p = lshr i32 %i.n, 8
  %i.q = lshr i32 %i.n, 24
  %i.r = and i32 %i.o, 255
  %i.s = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %i.p, i64 1
  %i.u = and <2 x i32> %i.t, splat (i32 255)
  %i.v = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.w = insertelement <4 x i32> %i.v, i32 %i.m, i64 1
  %i.x = insertelement <4 x i32> %i.w, i32 %i.l, i64 2
  %i.y = insertelement <4 x i32> %i.x, i32 %i.k, i64 3
  %i.z = and <4 x i32> %i.y, <i32 255, i32 255, i32 255, i32 -1>
  %i.aa = shufflevector <2 x i32> %i.u, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.r, i64 2
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.q, i64 3 ; 2 uses
  %i.ad = sub nsw <4 x i32> %i.ac, %i.z
  %i.ae = trunc <4 x i32> %i.ad to <4 x i16>
  %i.af = sdiv <4 x i16> %i.ae, splat (i16 2)
  %i.ag = sext <4 x i16> %i.af to <4 x i32>
  %i.ah = add nsw <4 x i32> %i.ac, %i.ag          ; 3 uses
  %i.ai = icmp ult <4 x i32> %i.ah, splat (i32 256)
  %i.aj = xor <4 x i32> %i.ah, splat (i32 -1)
  %i.ak = lshr <4 x i32> %i.aj, splat (i32 24)
  %i.al = select <4 x i1> %i.ai, <4 x i32> %i.ah, <4 x i32> %i.ak
  %i.am = shl <4 x i32> %i.al, <i32 0, i32 8, i32 16, i32 24>
  %i.an = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.am) ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 2 uses
  %i.aq = and i32 %i.ap, -16711936
  %i.ar = and i32 %i.an, -16711936
  %i.as = add i32 %i.ar, %i.aq
  %i.at = and i32 %i.ap, 16711935
  %i.au = and i32 %i.an, 16711935
  %i.av = add nuw nsw i32 %i.au, %i.at
  %i.aw = and i32 %i.as, -16711936
  %i.ax = and i32 %i.av, 16711935
  %i.ay = or disjoint i32 %i.aw, %i.ax            ; 2 uses
  store i32 %i.ay, ptr %i.b, align 4, !tbaa !3
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
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.114.us.epil.init = phi ptr [ %.01018.us, %.preheader.us ], [ %i.ab, %._crit_edge.us.unr-lcssa ]
  %.11213.us.epil.init = phi ptr [ %.01117.us, %.preheader.us ], [ %i.ai, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
end_hunk_1
