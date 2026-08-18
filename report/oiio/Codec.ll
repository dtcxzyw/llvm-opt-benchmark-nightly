inline.NumInlined: 193
inline.NumDeleted: 62
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3dpx14ReadBlockTypesINS_17ElementReadStreamEdLNS_8DataSizeE4EhLS2_0EEEbRKNS_6HeaderEPT0_PT_iRKNS_5BlockEPT2_:bb.a
  %indvars.iv54 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next55, %._crit_edge.us ] ; 4 uses
  %i.af = load i32, ptr %i.k, align 4, !tbaa !23
  %i.ag = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.ah = add nsw i32 %i.af, %i.ag
  %i.ai = mul nsw i32 %i.ah, %i.s
  %i.aj = load i32, ptr %4, align 4, !tbaa !21
  %i.ak = add i32 %i.ai, %i.aj
  %i.al = mul i32 %i.t, %i.ak
  %i.am = mul nsw i64 %indvars.iv54, %i.z
  %i.an = sext i32 %i.al to i64
  %i.ao = add nsw i64 %i.am, %i.an
  %i.ap = load ptr, ptr %2, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ao, ptr noundef %1, i64 noundef %i.v) ; 0 uses
  %i.at = mul nuw nsw i64 %indvars.iv54, %i.aa
  %invariant.gep = getelementptr inbounds nuw i8, ptr %5, i64 %i.at ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x double>, ptr %i.au, align 8, !tbaa !72, !alias.scope !74
  %wide.load63 = load <2 x double>, ptr %i.aw, align 8, !tbaa !72, !alias.scope !74
  %i.ax = fptoui <2 x double> %wide.load to <2 x i8>
  %i.ay = fptoui <2 x double> %wide.load63 to <2 x i8>
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store <2 x i8> %i.ax, ptr %i.av, align 1, !tbaa !29, !alias.scope !77, !noalias !74
  store <2 x i8> %i.ay, ptr %i.az, align 1, !tbaa !29, !alias.scope !77, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !72
  %i.bd = fptoui double %i.bc to i8
  store i8 %i.bd, ptr %gep.prol, align 1, !tbaa !29
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.be = sub nsw i64 %indvars.iv.ph, %i.aa
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !72
  %i.bi = fptoui double %i.bh to i8
  store i8 %i.bi, ptr %gep, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !72
  %i.bl = fptoui double %i.bk to i8
  store i8 %i.bl, ptr %gep.1, align 1, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !72
  %i.bo = fptoui double %i.bn to i8
  store i8 %i.bo, ptr %gep.2, align 1, !tbaa !29
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !72
  %i.br = fptoui double %i.bq to i8
  store i8 %i.br, ptr %gep.3, align 1, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond53.not.3 = icmp eq i64 %indvars.iv.next.3, %i.aa
  br i1 %exitcond53.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !81

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge49, label %.lr.ph.us, !llvm.loop !82

._crit_edge49:                                    ; preds = %.lr.ph48.split, %._crit_edge.us, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

.lr.ph48.split:                                   ; preds = %.lr.ph48.split.preheader, %.lr.ph48.split
  %.04147 = phi i32 [ %i.cf, %.lr.ph48.split ], [ 0, %.lr.ph48.split.preheader ] ; 3 uses
  %i.bs = load i32, ptr %i.k, align 4, !tbaa !23
  %i.bt = add nsw i32 %i.bs, %.04147
  %i.bu = mul nsw i32 %i.bt, %i.s
  %i.bv = load i32, ptr %4, align 4, !tbaa !21
  %i.bw = add i32 %i.bu, %i.bv
  %i.bx = mul i32 %i.t, %i.bw
  %i.by = mul nsw i32 %.04147, %i.r
  %i.bz = add nsw i32 %i.bx, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = load ptr, ptr %2, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ca, ptr noundef %1, i64 noundef %i.v) ; 0 uses
  %i.cf = add nuw i32 %.04147, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cf, %i.y
  br i1 %exitcond.not, label %._crit_edge49, label %.lr.ph48.split, !llvm.loop !82
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx15Read10bitFilledINS_17ElementReadStreamEhLi2EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 6 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.k, %bb.b ]
  %i.l = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.m = mul i32 %i.l, %i.e                       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = sdiv i32 %i.n, 3
  %i.p = shl i32 %i.o, 2
  %i.q = add i32 %i.p, 4
  %.not64 = icmp slt i32 %i.b, %i.d
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = sext i32 %i.e to i64
  %i.t = icmp eq i32 %i.e, 1
  %i.u = sext i32 %i.m to i64
  %i.v = add i32 %i.b, 1
  %i.w = sub i32 %i.v, %i.d
  %wide.trip.count = zext i32 %i.w to i64
  br label %bb.c

._crit_edge67:                                    ; preds = %._crit_edge, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %i.x = load i32, ptr %i.c, align 4, !tbaa !23
  %i.y = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = mul nsw i32 %i.z, %i.q
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %indvars.iv78, %.0.i
  %i.ad = add nsw i64 %i.ac, %i.ab
  %i.ae = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.e
  %i.ag = sdiv i32 %i.af, 3
  %i.ah = shl nsw i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ad, %i.ai
  %i.ak = load i32, ptr %i.r, align 4, !tbaa !19
  %reass.sub = sub i32 %i.ak, %i.ae
  %i.al = add i32 %reass.sub, 1
  %i.am = mul nsw i32 %i.al, %i.e                 ; 2 uses
  %i.an = srem i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = sdiv i32 %i.ao, 3
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = mul nsw i64 %indvars.iv78, %i.u
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.aj, ptr noundef %1, i64 noundef %i.as) ; 0 uses
  %i.ax = getelementptr inbounds i8, ptr %5, i64 %i.ar ; 3 uses
  %i.ay = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = urem i64 %i.ba, %i.s
  %i.bc = load i32, ptr %i.r, align 4, !tbaa !19
  %reass.sub68 = sub i32 %i.bc, %i.ay
  %reass.sub68.fr = freeze i32 %reass.sub68
  %i.bd = add i32 %reass.sub68.fr, 1
  %i.be = mul i32 %i.bd, %i.e                     ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.061 = add nsw i32 %i.be, -1                   ; 3 uses
  br i1 %i.t, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %6 = zext nneg i32 %.061 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %7 = urem i32 %.061, 3
  %8 = zext nneg i32 %.061 to i64
  %i.bg = zext nneg i32 %i.be to i64
  %9 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 4 uses
  %i.bh = add i64 %indvars.iv, %i.bb
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = srem i32 %i.bi, 3
  %i.bo = sub nsw i32 2, %i.bn
  %i.bp = mul nuw nsw i32 %i.bo, 10
  %i.bq = add nuw nsw i32 %i.bp, 2
  %i.br = lshr i32 %i.bm, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv
  %i.bt = lshr i32 %i.br, 2
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !29
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %bb.c, !llvm.loop !84

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv73 = phi i64 [ %i.bg, %.lr.ph.split.preheader ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %indvars.iv71 = phi i64 [ %8, %.lr.ph.split.preheader ], [ %indvars.iv.next72, %bb.e ] ; 4 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv71 to i32  ; 2 uses
  %i.bw = sdiv i32 %i.bv, 3
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = srem i32 %i.bv, 3
  %i.cb = sub nsw i32 2, %i.ca
  %i.cc = mul nuw nsw i32 %i.cb, 10
  %i.cd = add nuw nsw i32 %i.cc, 2
  %i.ce = lshr i32 %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv71 ; 2 uses
  %i.cg = lshr i32 %i.ce, 2
  %i.ch = trunc i32 %i.cg to i8                   ; 2 uses
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !29
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv73
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !29
  store i8 %i.ck, ptr %i.cf, align 1, !tbaa !29
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  %i.cl = icmp sgt i64 %indvars.iv71, 0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.cl, label %.lr.ph.split, label %._crit_edge, !llvm.loop !83
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx15Read10bitFilledINS_17ElementReadStreamEhLi0EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 6 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.k, %bb.b ]
  %i.l = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.m = mul i32 %i.l, %i.e                       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = sdiv i32 %i.n, 3
  %i.p = shl i32 %i.o, 2
  %i.q = add i32 %i.p, 4
  %.not64 = icmp slt i32 %i.b, %i.d
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = sext i32 %i.e to i64
  %i.t = icmp eq i32 %i.e, 1
  %i.u = sext i32 %i.m to i64
  %i.v = add i32 %i.b, 1
  %i.w = sub i32 %i.v, %i.d
  %wide.trip.count = zext i32 %i.w to i64
  br label %bb.c

._crit_edge67:                                    ; preds = %._crit_edge, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %i.x = load i32, ptr %i.c, align 4, !tbaa !23
  %i.y = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = mul nsw i32 %i.z, %i.q
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %indvars.iv78, %.0.i
  %i.ad = add nsw i64 %i.ac, %i.ab
  %i.ae = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.e
  %i.ag = sdiv i32 %i.af, 3
  %i.ah = shl nsw i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ad, %i.ai
  %i.ak = load i32, ptr %i.r, align 4, !tbaa !19
  %reass.sub = sub i32 %i.ak, %i.ae
  %i.al = add i32 %reass.sub, 1
  %i.am = mul nsw i32 %i.al, %i.e                 ; 2 uses
  %i.an = srem i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = sdiv i32 %i.ao, 3
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = mul nsw i64 %indvars.iv78, %i.u
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.aj, ptr noundef %1, i64 noundef %i.as) ; 0 uses
  %i.ax = getelementptr inbounds i8, ptr %5, i64 %i.ar ; 3 uses
  %i.ay = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = urem i64 %i.ba, %i.s
  %i.bc = load i32, ptr %i.r, align 4, !tbaa !19
  %reass.sub68 = sub i32 %i.bc, %i.ay
  %reass.sub68.fr = freeze i32 %reass.sub68
  %i.bd = add i32 %reass.sub68.fr, 1
  %i.be = mul i32 %i.bd, %i.e                     ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.061 = add nsw i32 %i.be, -1                   ; 3 uses
  br i1 %i.t, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %6 = zext nneg i32 %.061 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %7 = urem i32 %.061, 3
  %8 = zext nneg i32 %.061 to i64
  %i.bg = zext nneg i32 %i.be to i64
  %9 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 4 uses
  %i.bh = add i64 %indvars.iv, %i.bb
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = srem i32 %i.bi, 3
  %i.bo = sub nsw i32 2, %i.bn
  %i.bp = mul nuw nsw i32 %i.bo, 10
  %i.bq = lshr i32 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv
  %i.bs = lshr i32 %i.bq, 2
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !29
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %bb.c, !llvm.loop !86

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv73 = phi i64 [ %i.bg, %.lr.ph.split.preheader ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %indvars.iv71 = phi i64 [ %8, %.lr.ph.split.preheader ], [ %indvars.iv.next72, %bb.e ] ; 4 uses
  %i.bu = trunc nuw nsw i64 %indvars.iv71 to i32  ; 2 uses
  %i.bv = sdiv i32 %i.bu, 3
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = srem i32 %i.bu, 3
  %i.ca = sub nsw i32 2, %i.bz
  %i.cb = mul nuw nsw i32 %i.ca, 10
  %i.cc = lshr i32 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv71 ; 2 uses
  %i.ce = lshr i32 %i.cc, 2
  %i.cf = trunc i32 %i.ce to i8                   ; 2 uses
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !29
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv73
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !29
  store i8 %i.ci, ptr %i.cd, align 1, !tbaa !29
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  %i.cj = icmp sgt i64 %indvars.iv71, 0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.cj, label %.lr.ph.split, label %._crit_edge, !llvm.loop !85
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx10ReadPackedINS_17ElementReadStreamEhLj65472ELi2ELi4ELi6EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 803
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader8BitDepthEi.exit

_ZNK3dpx13GenericHeader8BitDepthEi.exit:          ; preds = %bb.a, %bb.b
  %.0.i50 = phi i64 [ %i.n, %bb.b ], [ -1, %bb.a ]
  %.0.i48 = phi i32 [ %i.m, %bb.b ], [ 255, %bb.a ] ; 3 uses
  %i.o = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %.not54 = icmp slt i32 %i.b, %i.d
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  %i.p = mul i32 %.0.i48, %i.e                    ; 3 uses
  %i.q = mul i32 %i.p, %i.o
  %i.r = add i32 %i.q, 31
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 536870908
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %trunc = trunc nuw i32 %.0.i48 to i8
  %i.w = add i32 %i.b, 1
  %i.x = sub i32 %i.w, %i.d
  %wide.trip.count = zext i32 %i.x to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN3dpx12UnPackPackedIhLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph, %_ZN3dpx12UnPackPackedIhLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3dpx12UnPackPackedIhLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ] ; 4 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !23
  %i.z = sext i32 %i.y to i64
  %i.aa = add nsw i64 %indvars.iv, %i.z
  %i.ab = mul nsw i64 %i.aa, %i.u
  %i.ac = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.ad = mul i32 %i.p, %i.ac                     ; 2 uses
  %i.ae = sdiv i32 %i.ad, 32
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = mul nsw i64 %indvars.iv, %.0.i50
  %i.ai = add nsw i64 %i.ab, %i.ah
  %i.aj = add nsw i64 %i.ai, %i.ag
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !19
  %reass.sub = sub i32 %i.ak, %i.ac
  %i.al = add i32 %reass.sub, 1
  %i.am = mul i32 %i.p, %i.al
  %i.an = srem i32 %i.ad, 32
  %i.ao = add nsw i32 %i.an, 31
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = sdiv i32 %i.ap, 32
  %i.ar = shl nsw i32 %i.aq, 2
  %i.as = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = mul i32 %i.e, %i.at
  %i.av = mul i32 %i.au, %i.as
  %i.aw = sext i32 %i.ar to i64
  %i.ax = load ptr, ptr %2, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.aj, ptr noundef %1, i64 noundef %i.aw) ; 0 uses
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !19
  %i.bc = load i32, ptr %4, align 4, !tbaa !21
  %i.bd = add i32 %i.bb, 1
  %i.be = sub i32 %i.bd, %i.bc
  %i.bf = mul nsw i32 %i.be, %i.e                 ; 2 uses
  %i.bg = sext i32 %i.av to i64
  %i.bh = getelementptr inbounds i8, ptr %5, i64 %i.bg ; 3 uses
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph.i, label %_ZN3dpx12UnPackPackedIhLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit

.lr.ph.i:                                         ; preds = %bb.c
  %.017.i = add nsw i32 %i.bf, -1
  %i.bj = zext nneg i32 %.017.i to i64            ; 3 uses
  switch i8 %trunc, label %.lr.ph.split.i [
    i8 10, label %.lr.ph.split.us.i
    i8 12, label %.lr.ph.split.us19.i
  ]

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph.split.us.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.bk = trunc i64 %indvars.iv27.i to i32
  %i.bl = mul i32 %i.bk, 10
  %i.bm = sdiv i32 %i.bl, 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !25
  %indvars.iv27.tr.i = trunc i64 %indvars.iv27.i to i16
  %i.bq = shl i16 %indvars.iv27.tr.i, 1
  %.not.us.i = and i16 %i.bq, 6
  %i.br = xor i16 %.not.us.i, 6
  %i.bs = shl i16 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv27.i
  %i.bu = lshr i16 %i.bs, 8
  %i.bv = trunc nuw i16 %i.bu to i8
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !29
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1
  %.not36.i = icmp eq i64 %indvars.iv27.i, 0
  br i1 %.not36.i, label %_ZN3dpx12UnPackPackedIhLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us.i, !llvm.loop !87

.lr.ph.split.us19.i:                              ; preds = %.lr.ph.i, %.lr.ph.split.us19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.us19.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.bw = trunc i64 %indvars.iv.i to i32
  %i.bx = mul i32 %i.bw, 12
  %i.by = sdiv i32 %i.bx, 8
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %1, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !25
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i16
  %i.cc = shl i16 %indvars.iv.tr.i, 1
  %.not.us21.i = and i16 %i.cc, 6
  %i.cd = xor i16 %.not.us21.i, 6
  %i.ce = shl i16 %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.i
  %i.cg = lshr i16 %i.ce, 10
  %i.ch = trunc nuw nsw i16 %i.cg to i8
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !29
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not35.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not35.i, label %_ZN3dpx12UnPackPackedIhLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us19.i, !llvm.loop !87

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph.split.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.ci = trunc i64 %indvars.iv30.i to i32
  %i.cj = mul i32 %.0.i48, %i.ci
  %i.ck = sdiv i32 %i.cj, 8
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %1, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !25
  %indvars.iv30.tr.i = trunc i64 %indvars.iv30.i to i16
  %i.co = shl i16 %indvars.iv30.tr.i, 1
  %.not.i = and i16 %i.co, 6
  %i.cp = xor i16 %.not.i, 6
  %i.cq = shl i16 %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv30.i
  %i.cs = lshr i16 %i.cq, 8
  %i.ct = trunc nuw i16 %i.cs to i8
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !29
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, -1
  %.not37.i = icmp eq i64 %indvars.iv30.i, 0
  br i1 %.not37.i, label %_ZN3dpx12UnPackPackedIhLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.i, !llvm.loop !87

_ZN3dpx12UnPackPackedIhLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit: ; preds = %.lr.ph.split.us19.i, %.lr.ph.split.us.i, %.lr.ph.split.i, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !88
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx10ReadPackedINS_17ElementReadStreamEhLj65520ELi4ELi2ELi4EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
end_hunk_0
begin_hunk_1_@_ZN3dpx14ReadBlockTypesINS_17ElementReadStreamEdLNS_8DataSizeE4EtLS2_1EEEbRKNS_6HeaderEPT0_PT_iRKNS_5BlockEPT2_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 812
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24   ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  %spec.select = select i1 %i.q, i32 0, i32 %i.p
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.b, %bb.a
  %i.r = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.s = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0) ; 2 uses
  %.not46 = icmp slt i32 %i.j, %i.l
  br i1 %.not46, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.t = mul i32 %i.b, %i.a                       ; 2 uses
  %i.u = mul nsw i32 %i.h, %i.b
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp sgt i32 %i.h, 0
  br i1 %i.w, label %.lr.ph.us.preheader, label %.lr.ph48.split.preheader

.lr.ph48.split.preheader:                         ; preds = %.lr.ph48
  %i.x = add i32 %i.j, 1
  %i.y = sub i32 %i.x, %i.l
  br label %.lr.ph48.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph48
  %i.z = sext i32 %i.r to i64
  %i.aa = zext nneg i32 %i.h to i64               ; 4 uses
  %i.ab = add i32 %i.j, 1
  %i.ac = sub i32 %i.ab, %i.l
  %wide.trip.count57 = zext i32 %i.ac to i64
  %min.iters.check = icmp ult i32 %i.h, 4
  %n.vec = and i64 %i.aa, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv54 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next55, %._crit_edge.us ] ; 4 uses
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !23
  %i.ae = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.af = add nsw i32 %i.ad, %i.ae
  %i.ag = mul nsw i32 %i.af, %i.s
  %i.ah = load i32, ptr %4, align 4, !tbaa !21
  %i.ai = add i32 %i.ag, %i.ah
  %i.aj = mul i32 %i.t, %i.ai
  %i.ak = mul nsw i64 %indvars.iv54, %i.z
  %i.al = sext i32 %i.aj to i64
  %i.am = add nsw i64 %i.ak, %i.al
  %i.an = load ptr, ptr %2, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.am, ptr noundef %1, i64 noundef %i.v) ; 0 uses
  %i.ar = mul nuw nsw i64 %indvars.iv54, %i.aa
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ar ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x double>, ptr %i.as, align 8, !tbaa !72
  %wide.load62 = load <2 x double>, ptr %i.au, align 8, !tbaa !72
  %i.av = fptoui <2 x double> %wide.load to <2 x i16>
  %i.aw = fptoui <2 x double> %wide.load62 to <2 x i16>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store <2 x i16> %i.av, ptr %i.at, align 2, !tbaa !25
  store <2 x i16> %i.aw, ptr %i.ax, align 2, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ba = load double, ptr %i.az, align 8, !tbaa !72
  %i.bb = fptoui double %i.ba to i16
  store i16 %i.bb, ptr %gep, align 2, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond53.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !113

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge49, label %.lr.ph.us, !llvm.loop !114

._crit_edge49:                                    ; preds = %.lr.ph48.split, %._crit_edge.us, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

.lr.ph48.split:                                   ; preds = %.lr.ph48.split.preheader, %.lr.ph48.split
  %.04147 = phi i32 [ %i.bp, %.lr.ph48.split ], [ 0, %.lr.ph48.split.preheader ] ; 3 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !23
  %i.bd = add nsw i32 %i.bc, %.04147
  %i.be = mul nsw i32 %i.bd, %i.s
  %i.bf = load i32, ptr %4, align 4, !tbaa !21
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = mul i32 %i.t, %i.bg
  %i.bi = mul nsw i32 %.04147, %i.r
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = load ptr, ptr %2, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.bk, ptr noundef %1, i64 noundef %i.v) ; 0 uses
  %i.bp = add nuw i32 %.04147, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %i.y
  br i1 %exitcond.not, label %._crit_edge49, label %.lr.ph48.split, !llvm.loop !114
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx15Read10bitFilledINS_17ElementReadStreamEtLi2EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 6 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.k, %bb.b ]
  %i.l = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.m = mul i32 %i.l, %i.e                       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = sdiv i32 %i.n, 3
  %i.p = shl i32 %i.o, 2
  %i.q = add i32 %i.p, 4
  %.not64 = icmp slt i32 %i.b, %i.d
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = sext i32 %i.e to i64
  %i.t = icmp eq i32 %i.e, 1
  %i.u = sext i32 %i.m to i64
  %i.v = add i32 %i.b, 1
  %i.w = sub i32 %i.v, %i.d
  %wide.trip.count = zext i32 %i.w to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !21
  %.pre81 = load i32, ptr %i.r, align 4, !tbaa !19
  br label %bb.c

._crit_edge67:                                    ; preds = %._crit_edge, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %i.x = phi i32 [ %.pre81, %.lr.ph66 ], [ %i.bc, %._crit_edge ]
  %i.y = phi i32 [ %.pre, %.lr.ph66 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %i.z = load i32, ptr %i.c, align 4, !tbaa !23
  %i.aa = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.ab = add nsw i32 %i.z, %i.aa
  %i.ac = mul nsw i32 %i.ab, %i.q
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv78, %.0.i
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = mul nsw i32 %i.y, %i.e
  %i.ah = sdiv i32 %i.ag, 3
  %i.ai = shl nsw i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.af, %i.aj
  %reass.sub = sub i32 %i.x, %i.y
  %i.al = add i32 %reass.sub, 1
  %i.am = mul nsw i32 %i.al, %i.e                 ; 2 uses
  %i.an = srem i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = sdiv i32 %i.ao, 3
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = mul nsw i64 %indvars.iv78, %i.u
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ak, ptr noundef %1, i64 noundef %i.as) ; 0 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %5, i64 %i.ar ; 3 uses
  %i.ay = load i32, ptr %4, align 4, !tbaa !21    ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = urem i64 %i.ba, %i.s
  %i.bc = load i32, ptr %i.r, align 4, !tbaa !19  ; 2 uses
  %reass.sub68 = sub i32 %i.bc, %i.ay
  %reass.sub68.fr = freeze i32 %reass.sub68
  %i.bd = add i32 %reass.sub68.fr, 1
  %i.be = mul i32 %i.bd, %i.e                     ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.061 = add nsw i32 %i.be, -1                   ; 3 uses
  br i1 %i.t, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %6 = zext nneg i32 %.061 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %7 = urem i32 %.061, 3
  %8 = zext nneg i32 %.061 to i64
  %i.bg = zext nneg i32 %i.be to i64
  %9 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 4 uses
  %i.bh = add i64 %indvars.iv, %i.bb
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = srem i32 %i.bi, 3
  %i.bo = sub nsw i32 2, %i.bn
  %i.bp = mul nuw nsw i32 %i.bo, 10
  %i.bq = add nuw nsw i32 %i.bp, 2
  %i.br = lshr i32 %i.bm, %i.bq
  %i.bs = trunc i32 %i.br to i16
  %i.bt = and i16 %i.bs, 1023                     ; 2 uses
  %i.bu = shl nuw i16 %i.bt, 6
  %i.bv = lshr i16 %i.bt, 4
  %i.bw = or disjoint i16 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %bb.c, !llvm.loop !116

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv73 = phi i64 [ %i.bg, %.lr.ph.split.preheader ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %indvars.iv71 = phi i64 [ %8, %.lr.ph.split.preheader ], [ %indvars.iv.next72, %bb.e ] ; 4 uses
  %i.by = trunc nuw nsw i64 %indvars.iv71 to i32  ; 2 uses
  %i.bz = sdiv i32 %i.by, 3
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = srem i32 %i.by, 3
  %i.ce = sub nsw i32 2, %i.cd
  %i.cf = mul nuw nsw i32 %i.ce, 10
  %i.cg = add nuw nsw i32 %i.cf, 2
  %i.ch = lshr i32 %i.cc, %i.cg
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = and i16 %i.ci, 1023                     ; 2 uses
  %i.ck = shl nuw i16 %i.cj, 6
  %i.cl = lshr i16 %i.cj, 4
  %i.cm = or disjoint i16 %i.ck, %i.cl            ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv71 ; 2 uses
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !25
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv73
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !25
  store i16 %i.cq, ptr %i.cn, align 2, !tbaa !25
  store i16 %i.cm, ptr %i.cp, align 2, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  %i.cr = icmp sgt i64 %indvars.iv71, 0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.cr, label %.lr.ph.split, label %._crit_edge, !llvm.loop !115
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx15Read10bitFilledINS_17ElementReadStreamEtLi0EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 6 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.k, %bb.b ]
  %i.l = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.m = mul i32 %i.l, %i.e                       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = sdiv i32 %i.n, 3
  %i.p = shl i32 %i.o, 2
  %i.q = add i32 %i.p, 4
  %.not64 = icmp slt i32 %i.b, %i.d
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = sext i32 %i.e to i64
  %i.t = icmp eq i32 %i.e, 1
  %i.u = sext i32 %i.m to i64
  %i.v = add i32 %i.b, 1
  %i.w = sub i32 %i.v, %i.d
  %wide.trip.count = zext i32 %i.w to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !21
  %.pre81 = load i32, ptr %i.r, align 4, !tbaa !19
  br label %bb.c

._crit_edge67:                                    ; preds = %._crit_edge, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %i.x = phi i32 [ %.pre81, %.lr.ph66 ], [ %i.bc, %._crit_edge ]
  %i.y = phi i32 [ %.pre, %.lr.ph66 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %i.z = load i32, ptr %i.c, align 4, !tbaa !23
  %i.aa = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.ab = add nsw i32 %i.z, %i.aa
  %i.ac = mul nsw i32 %i.ab, %i.q
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv78, %.0.i
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = mul nsw i32 %i.y, %i.e
  %i.ah = sdiv i32 %i.ag, 3
  %i.ai = shl nsw i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.af, %i.aj
  %reass.sub = sub i32 %i.x, %i.y
  %i.al = add i32 %reass.sub, 1
  %i.am = mul nsw i32 %i.al, %i.e                 ; 2 uses
  %i.an = srem i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = sdiv i32 %i.ao, 3
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = mul nsw i64 %indvars.iv78, %i.u
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ak, ptr noundef %1, i64 noundef %i.as) ; 0 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %5, i64 %i.ar ; 3 uses
  %i.ay = load i32, ptr %4, align 4, !tbaa !21    ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = urem i64 %i.ba, %i.s
  %i.bc = load i32, ptr %i.r, align 4, !tbaa !19  ; 2 uses
  %reass.sub68 = sub i32 %i.bc, %i.ay
  %reass.sub68.fr = freeze i32 %reass.sub68
  %i.bd = add i32 %reass.sub68.fr, 1
  %i.be = mul i32 %i.bd, %i.e                     ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.061 = add nsw i32 %i.be, -1                   ; 3 uses
  br i1 %i.t, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %6 = zext nneg i32 %.061 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %7 = urem i32 %.061, 3
  %8 = zext nneg i32 %.061 to i64
  %i.bg = zext nneg i32 %i.be to i64
  %9 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 4 uses
  %i.bh = add i64 %indvars.iv, %i.bb
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = srem i32 %i.bi, 3
  %i.bo = sub nsw i32 2, %i.bn
  %i.bp = mul nuw nsw i32 %i.bo, 10
  %i.bq = lshr i32 %i.bm, %i.bp
  %i.br = trunc i32 %i.bq to i16
  %i.bs = and i16 %i.br, 1023                     ; 2 uses
  %i.bt = shl nuw i16 %i.bs, 6
  %i.bu = lshr i16 %i.bs, 4
  %i.bv = or disjoint i16 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !117

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %bb.c, !llvm.loop !118

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv73 = phi i64 [ %i.bg, %.lr.ph.split.preheader ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %indvars.iv71 = phi i64 [ %8, %.lr.ph.split.preheader ], [ %indvars.iv.next72, %bb.e ] ; 4 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv71 to i32  ; 2 uses
  %i.by = sdiv i32 %i.bx, 3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = srem i32 %i.bx, 3
  %i.cd = sub nsw i32 2, %i.cc
  %i.ce = mul nuw nsw i32 %i.cd, 10
  %i.cf = lshr i32 %i.cb, %i.ce
  %i.cg = trunc i32 %i.cf to i16
  %i.ch = and i16 %i.cg, 1023                     ; 2 uses
  %i.ci = shl nuw i16 %i.ch, 6
  %i.cj = lshr i16 %i.ch, 4
  %i.ck = or disjoint i16 %i.ci, %i.cj            ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv71 ; 2 uses
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !25
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv73
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !25
  store i16 %i.co, ptr %i.cl, align 2, !tbaa !25
  store i16 %i.ck, ptr %i.cn, align 2, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  %i.cp = icmp sgt i64 %indvars.iv71, 0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.cp, label %.lr.ph.split, label %._crit_edge, !llvm.loop !117
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx10ReadPackedINS_17ElementReadStreamEtLj65472ELi2ELi4ELi6EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 803
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader8BitDepthEi.exit

_ZNK3dpx13GenericHeader8BitDepthEi.exit:          ; preds = %bb.a, %bb.b
  %.0.i50 = phi i64 [ %i.n, %bb.b ], [ -1, %bb.a ]
  %.0.i48 = phi i32 [ %i.m, %bb.b ], [ 255, %bb.a ] ; 3 uses
  %i.o = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %.not54 = icmp slt i32 %i.b, %i.d
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  %i.p = mul i32 %.0.i48, %i.e                    ; 3 uses
  %i.q = mul i32 %i.p, %i.o
  %i.r = add i32 %i.q, 31
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 536870908
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %trunc = trunc nuw i32 %.0.i48 to i8
  %i.w = add i32 %i.b, 1
  %i.x = sub i32 %i.w, %i.d
  %wide.trip.count = zext i32 %i.x to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !21
  %.pre59 = load i32, ptr %i.v, align 4, !tbaa !19
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN3dpx12UnPackPackedItLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph, %_ZN3dpx12UnPackPackedItLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit
  %i.y = phi i32 [ %.pre59, %.lr.ph ], [ %i.bb, %_ZN3dpx12UnPackPackedItLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ]
  %i.z = phi i32 [ %.pre, %.lr.ph ], [ %i.bc, %_ZN3dpx12UnPackPackedItLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3dpx12UnPackPackedItLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ] ; 4 uses
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !23
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %indvars.iv, %i.ab
  %i.ad = mul nsw i64 %i.ac, %i.u
  %i.ae = mul i32 %i.p, %i.z                      ; 2 uses
  %i.af = sdiv i32 %i.ae, 32
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = mul nsw i64 %indvars.iv, %.0.i50
  %i.aj = add nsw i64 %i.ad, %i.ai
  %i.ak = add nsw i64 %i.aj, %i.ah
  %reass.sub = sub i32 %i.y, %i.z
  %i.al = add i32 %reass.sub, 1
  %i.am = mul i32 %i.p, %i.al
  %i.an = srem i32 %i.ae, 32
  %i.ao = add nsw i32 %i.an, 31
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = sdiv i32 %i.ap, 32
  %i.ar = shl nsw i32 %i.aq, 2
  %i.as = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = mul i32 %i.e, %i.at
  %i.av = mul i32 %i.au, %i.as
  %i.aw = sext i32 %i.ar to i64
  %i.ax = load ptr, ptr %2, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ak, ptr noundef %1, i64 noundef %i.aw) ; 0 uses
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !19  ; 2 uses
  %i.bc = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.bd = add i32 %i.bb, 1
  %i.be = sub i32 %i.bd, %i.bc
  %i.bf = mul nsw i32 %i.be, %i.e                 ; 2 uses
  %i.bg = sext i32 %i.av to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %5, i64 %i.bg ; 3 uses
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph.i, label %_ZN3dpx12UnPackPackedItLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit

.lr.ph.i:                                         ; preds = %bb.c
  %.017.i = add nsw i32 %i.bf, -1
  %i.bj = zext nneg i32 %.017.i to i64            ; 3 uses
  switch i8 %trunc, label %.lr.ph.split.i [
    i8 10, label %.lr.ph.split.us.i
    i8 12, label %.lr.ph.split.us19.i
  ]

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph.split.us.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.bk = trunc i64 %indvars.iv27.i to i32
  %i.bl = mul i32 %i.bk, 10
  %i.bm = sdiv i32 %i.bl, 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !25
  %indvars.iv27.tr.i = trunc i64 %indvars.iv27.i to i16
  %i.bq = shl i16 %indvars.iv27.tr.i, 1
  %.not.us.i = and i16 %i.bq, 6
  %i.br = xor i16 %.not.us.i, 6
  %i.bs = shl i16 %i.bp, %i.br                    ; 2 uses
  %i.bt = and i16 %i.bs, -64
  %i.bu = lshr i16 %i.bs, 10
  %i.bv = or disjoint i16 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv27.i
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !25
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1
  %.not36.i = icmp eq i64 %indvars.iv27.i, 0
  br i1 %.not36.i, label %_ZN3dpx12UnPackPackedItLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us.i, !llvm.loop !119

.lr.ph.split.us19.i:                              ; preds = %.lr.ph.i, %.lr.ph.split.us19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.us19.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.bx = trunc i64 %indvars.iv.i to i32
  %i.by = mul i32 %i.bx, 12
  %i.bz = sdiv i32 %i.by, 8
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !25
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i16
  %i.cd = shl i16 %indvars.iv.tr.i, 1
  %.not.us21.i = and i16 %i.cd, 6
  %i.ce = xor i16 %.not.us21.i, 6
  %i.cf = shl i16 %i.cc, %i.ce                    ; 2 uses
  %i.cg = lshr i16 %i.cf, 2
  %i.ch = and i16 %i.cg, 16368
  %i.ci = lshr i16 %i.cf, 14
  %i.cj = or disjoint i16 %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.i
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !25
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not35.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not35.i, label %_ZN3dpx12UnPackPackedItLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us19.i, !llvm.loop !119

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph.split.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.cl = trunc i64 %indvars.iv30.i to i32
  %i.cm = mul i32 %.0.i48, %i.cl
  %i.cn = sdiv i32 %i.cm, 8
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !25
  %indvars.iv30.tr.i = trunc i64 %indvars.iv30.i to i16
  %i.cr = shl i16 %indvars.iv30.tr.i, 1
  %.not.i = and i16 %i.cr, 6
  %i.cs = xor i16 %.not.i, 6
  %i.ct = shl i16 %i.cq, %i.cs
  %i.cu = and i16 %i.ct, -64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv30.i
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !25
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, -1
  %.not37.i = icmp eq i64 %indvars.iv30.i, 0
  br i1 %.not37.i, label %_ZN3dpx12UnPackPackedItLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.i, !llvm.loop !119

_ZN3dpx12UnPackPackedItLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit: ; preds = %.lr.ph.split.us19.i, %.lr.ph.split.us.i, %.lr.ph.split.i, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !120
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx10ReadPackedINS_17ElementReadStreamEtLj65520ELi4ELi2ELi4EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
end_hunk_1
begin_hunk_2_@_ZN3dpx14ReadBlockTypesINS_17ElementReadStreamEdLNS_8DataSizeE4EjLS2_2EEEbRKNS_6HeaderEPT0_PT_iRKNS_5BlockEPT2_:bb.a
  %i.m = zext nneg i32 %3 to i64
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 812
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24   ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  %spec.select = select i1 %i.q, i32 0, i32 %i.p
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.b, %bb.a
  %i.r = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.s = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0) ; 2 uses
  %.not46 = icmp slt i32 %i.j, %i.l
  br i1 %.not46, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.t = mul i32 %i.b, %i.a                       ; 2 uses
  %i.u = mul nsw i32 %i.h, %i.b
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp sgt i32 %i.h, 0
  br i1 %i.w, label %.lr.ph.us.preheader, label %.lr.ph48.split.preheader

.lr.ph48.split.preheader:                         ; preds = %.lr.ph48
  %i.x = add i32 %i.j, 1
  %i.y = sub i32 %i.x, %i.l
  br label %.lr.ph48.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph48
  %i.z = sext i32 %i.r to i64
  %i.aa = zext nneg i32 %i.h to i64               ; 4 uses
  %i.ab = add i32 %i.j, 1
  %i.ac = sub i32 %i.ab, %i.l
  %wide.trip.count57 = zext i32 %i.ac to i64
  %min.iters.check = icmp ult i32 %i.h, 4
  %n.vec = and i64 %i.aa, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv54 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next55, %._crit_edge.us ] ; 4 uses
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !23
  %i.ae = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.af = add nsw i32 %i.ad, %i.ae
  %i.ag = mul nsw i32 %i.af, %i.s
  %i.ah = load i32, ptr %4, align 4, !tbaa !21
  %i.ai = add i32 %i.ag, %i.ah
  %i.aj = mul i32 %i.t, %i.ai
  %i.ak = mul nsw i64 %indvars.iv54, %i.z
  %i.al = sext i32 %i.aj to i64
  %i.am = add nsw i64 %i.ak, %i.al
  %i.an = load ptr, ptr %2, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.am, ptr noundef %1, i64 noundef %i.v) ; 0 uses
  %i.ar = mul nuw nsw i64 %indvars.iv54, %i.aa
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ar ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x double>, ptr %i.as, align 8, !tbaa !72
  %wide.load62 = load <2 x double>, ptr %i.au, align 8, !tbaa !72
  %i.av = fptoui <2 x double> %wide.load to <2 x i32>
  %i.aw = fptoui <2 x double> %wide.load62 to <2 x i32>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store <2 x i32> %i.av, ptr %i.at, align 4, !tbaa !3
  store <2 x i32> %i.aw, ptr %i.ax, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ba = load double, ptr %i.az, align 8, !tbaa !72
  %i.bb = fptoui double %i.ba to i32
  store i32 %i.bb, ptr %gep, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond53.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !142

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge49, label %.lr.ph.us, !llvm.loop !143

._crit_edge49:                                    ; preds = %.lr.ph48.split, %._crit_edge.us, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

.lr.ph48.split:                                   ; preds = %.lr.ph48.split.preheader, %.lr.ph48.split
  %.04147 = phi i32 [ %i.bp, %.lr.ph48.split ], [ 0, %.lr.ph48.split.preheader ] ; 3 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !23
  %i.bd = add nsw i32 %i.bc, %.04147
  %i.be = mul nsw i32 %i.bd, %i.s
  %i.bf = load i32, ptr %4, align 4, !tbaa !21
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = mul i32 %i.t, %i.bg
  %i.bi = mul nsw i32 %.04147, %i.r
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = load ptr, ptr %2, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.bk, ptr noundef %1, i64 noundef %i.v) ; 0 uses
  %i.bp = add nuw i32 %.04147, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %i.y
  br i1 %exitcond.not, label %._crit_edge49, label %.lr.ph48.split, !llvm.loop !143
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx15Read10bitFilledINS_17ElementReadStreamEjLi2EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 6 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.k, %bb.b ]
  %i.l = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.m = mul i32 %i.l, %i.e                       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = sdiv i32 %i.n, 3
  %i.p = shl i32 %i.o, 2
  %i.q = add i32 %i.p, 4
  %.not64 = icmp slt i32 %i.b, %i.d
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = sext i32 %i.e to i64
  %i.t = icmp eq i32 %i.e, 1
  %i.u = sext i32 %i.m to i64
  %i.v = add i32 %i.b, 1
  %i.w = sub i32 %i.v, %i.d
  %wide.trip.count = zext i32 %i.w to i64
  br label %bb.c

._crit_edge67:                                    ; preds = %._crit_edge, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %i.x = load i32, ptr %i.c, align 4, !tbaa !23
  %i.y = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = mul nsw i32 %i.z, %i.q
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %indvars.iv78, %.0.i
  %i.ad = add nsw i64 %i.ac, %i.ab
  %i.ae = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.e
  %i.ag = sdiv i32 %i.af, 3
  %i.ah = shl nsw i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ad, %i.ai
  %i.ak = load i32, ptr %i.r, align 4, !tbaa !19
  %reass.sub = sub i32 %i.ak, %i.ae
  %i.al = add i32 %reass.sub, 1
  %i.am = mul nsw i32 %i.al, %i.e                 ; 2 uses
  %i.an = srem i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = sdiv i32 %i.ao, 3
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = mul nsw i64 %indvars.iv78, %i.u
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.aj, ptr noundef %1, i64 noundef %i.as) ; 0 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ar ; 3 uses
  %i.ay = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = urem i64 %i.ba, %i.s
  %i.bc = load i32, ptr %i.r, align 4, !tbaa !19
  %reass.sub68 = sub i32 %i.bc, %i.ay
  %reass.sub68.fr = freeze i32 %reass.sub68
  %i.bd = add i32 %reass.sub68.fr, 1
  %i.be = mul i32 %i.bd, %i.e                     ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.061 = add nsw i32 %i.be, -1                   ; 3 uses
  br i1 %i.t, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %6 = zext nneg i32 %.061 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %7 = urem i32 %.061, 3
  %8 = zext nneg i32 %.061 to i64
  %i.bg = zext nneg i32 %i.be to i64
  %9 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 4 uses
  %i.bh = add i64 %indvars.iv, %i.bb
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = srem i32 %i.bi, 3
  %i.bo = sub nsw i32 2, %i.bn
  %i.bp = mul nuw nsw i32 %i.bo, 10
  %i.bq = add nuw nsw i32 %i.bp, 2
  %i.br = lshr i32 %i.bm, %i.bq
  %i.bs = trunc i32 %i.br to i16
  %i.bt = and i16 %i.bs, 1023                     ; 2 uses
  %i.bu = shl nuw i16 %i.bt, 6
  %i.bv = lshr i16 %i.bt, 4
  %i.bw = or disjoint i16 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.by = zext i16 %i.bw to i32
  %i.bz = mul nuw i32 %i.by, 65537
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %bb.c, !llvm.loop !145

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv73 = phi i64 [ %i.bg, %.lr.ph.split.preheader ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %indvars.iv71 = phi i64 [ %8, %.lr.ph.split.preheader ], [ %indvars.iv.next72, %bb.e ] ; 4 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv71 to i32  ; 2 uses
  %i.cb = sdiv i32 %i.ca, 3
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = srem i32 %i.ca, 3
  %i.cg = sub nsw i32 2, %i.cf
  %i.ch = mul nuw nsw i32 %i.cg, 10
  %i.ci = add nuw nsw i32 %i.ch, 2
  %i.cj = lshr i32 %i.ce, %i.ci
  %i.ck = trunc i32 %i.cj to i16
  %i.cl = and i16 %i.ck, 1023                     ; 2 uses
  %i.cm = shl nuw i16 %i.cl, 6
  %i.cn = lshr i16 %i.cl, 4
  %i.co = or disjoint i16 %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv71 ; 2 uses
  %i.cq = zext i16 %i.co to i32
  %i.cr = mul nuw i32 %i.cq, 65537                ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !3
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv73
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !3
  store i32 %i.cr, ptr %i.ct, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  %i.cv = icmp sgt i64 %indvars.iv71, 0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.cv, label %.lr.ph.split, label %._crit_edge, !llvm.loop !144
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx15Read10bitFilledINS_17ElementReadStreamEjLi0EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 6 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.k, %bb.b ]
  %i.l = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.m = mul i32 %i.l, %i.e                       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = sdiv i32 %i.n, 3
  %i.p = shl i32 %i.o, 2
  %i.q = add i32 %i.p, 4
  %.not64 = icmp slt i32 %i.b, %i.d
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = sext i32 %i.e to i64
  %i.t = icmp eq i32 %i.e, 1
  %i.u = sext i32 %i.m to i64
  %i.v = add i32 %i.b, 1
  %i.w = sub i32 %i.v, %i.d
  %wide.trip.count = zext i32 %i.w to i64
  br label %bb.c

._crit_edge67:                                    ; preds = %._crit_edge, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %i.x = load i32, ptr %i.c, align 4, !tbaa !23
  %i.y = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = mul nsw i32 %i.z, %i.q
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %indvars.iv78, %.0.i
  %i.ad = add nsw i64 %i.ac, %i.ab
  %i.ae = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.e
  %i.ag = sdiv i32 %i.af, 3
  %i.ah = shl nsw i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ad, %i.ai
  %i.ak = load i32, ptr %i.r, align 4, !tbaa !19
  %reass.sub = sub i32 %i.ak, %i.ae
  %i.al = add i32 %reass.sub, 1
  %i.am = mul nsw i32 %i.al, %i.e                 ; 2 uses
  %i.an = srem i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = sdiv i32 %i.ao, 3
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = mul nsw i64 %indvars.iv78, %i.u
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.aj, ptr noundef %1, i64 noundef %i.as) ; 0 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ar ; 3 uses
  %i.ay = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = urem i64 %i.ba, %i.s
  %i.bc = load i32, ptr %i.r, align 4, !tbaa !19
  %reass.sub68 = sub i32 %i.bc, %i.ay
  %reass.sub68.fr = freeze i32 %reass.sub68
  %i.bd = add i32 %reass.sub68.fr, 1
  %i.be = mul i32 %i.bd, %i.e                     ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.061 = add nsw i32 %i.be, -1                   ; 3 uses
  br i1 %i.t, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %6 = zext nneg i32 %.061 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %7 = urem i32 %.061, 3
  %8 = zext nneg i32 %.061 to i64
  %i.bg = zext nneg i32 %i.be to i64
  %9 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 4 uses
  %i.bh = add i64 %indvars.iv, %i.bb
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = srem i32 %i.bi, 3
  %i.bo = sub nsw i32 2, %i.bn
  %i.bp = mul nuw nsw i32 %i.bo, 10
  %i.bq = lshr i32 %i.bm, %i.bp
  %i.br = trunc i32 %i.bq to i16
  %i.bs = and i16 %i.br, 1023                     ; 2 uses
  %i.bt = shl nuw i16 %i.bs, 6
  %i.bu = lshr i16 %i.bs, 4
  %i.bv = or disjoint i16 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.bx = zext i16 %i.bv to i32
  %i.by = mul nuw i32 %i.bx, 65537
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !146

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %bb.c, !llvm.loop !147

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv73 = phi i64 [ %i.bg, %.lr.ph.split.preheader ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %indvars.iv71 = phi i64 [ %8, %.lr.ph.split.preheader ], [ %indvars.iv.next72, %bb.e ] ; 4 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv71 to i32  ; 2 uses
  %i.ca = sdiv i32 %i.bz, 3
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = srem i32 %i.bz, 3
  %i.cf = sub nsw i32 2, %i.ce
  %i.cg = mul nuw nsw i32 %i.cf, 10
  %i.ch = lshr i32 %i.cd, %i.cg
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = and i16 %i.ci, 1023                     ; 2 uses
  %i.ck = shl nuw i16 %i.cj, 6
  %i.cl = lshr i16 %i.cj, 4
  %i.cm = or disjoint i16 %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv71 ; 2 uses
  %i.co = zext i16 %i.cm to i32
  %i.cp = mul nuw i32 %i.co, 65537                ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !3
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv73
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  store i32 %i.cs, ptr %i.cn, align 4, !tbaa !3
  store i32 %i.cp, ptr %i.cr, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  %i.ct = icmp sgt i64 %indvars.iv71, 0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.ct, label %.lr.ph.split, label %._crit_edge, !llvm.loop !146
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx10ReadPackedINS_17ElementReadStreamEjLj65472ELi2ELi4ELi6EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 803
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader8BitDepthEi.exit

_ZNK3dpx13GenericHeader8BitDepthEi.exit:          ; preds = %bb.a, %bb.b
  %.0.i50 = phi i64 [ %i.n, %bb.b ], [ -1, %bb.a ]
  %.0.i48 = phi i32 [ %i.m, %bb.b ], [ 255, %bb.a ] ; 3 uses
  %i.o = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %.not54 = icmp slt i32 %i.b, %i.d
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  %i.p = mul i32 %.0.i48, %i.e                    ; 3 uses
  %i.q = mul i32 %i.p, %i.o
  %i.r = add i32 %i.q, 31
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 536870908
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %trunc = trunc nuw i32 %.0.i48 to i8
  %i.w = add i32 %i.b, 1
  %i.x = sub i32 %i.w, %i.d
  %wide.trip.count = zext i32 %i.x to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN3dpx12UnPackPackedIjLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph, %_ZN3dpx12UnPackPackedIjLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3dpx12UnPackPackedIjLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ] ; 4 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !23
  %i.z = sext i32 %i.y to i64
  %i.aa = add nsw i64 %indvars.iv, %i.z
  %i.ab = mul nsw i64 %i.aa, %i.u
  %i.ac = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.ad = mul i32 %i.p, %i.ac                     ; 2 uses
  %i.ae = sdiv i32 %i.ad, 32
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = mul nsw i64 %indvars.iv, %.0.i50
  %i.ai = add nsw i64 %i.ab, %i.ah
  %i.aj = add nsw i64 %i.ai, %i.ag
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !19
  %reass.sub = sub i32 %i.ak, %i.ac
  %i.al = add i32 %reass.sub, 1
  %i.am = mul i32 %i.p, %i.al
  %i.an = srem i32 %i.ad, 32
  %i.ao = add nsw i32 %i.an, 31
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = sdiv i32 %i.ap, 32
  %i.ar = shl nsw i32 %i.aq, 2
  %i.as = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = mul i32 %i.e, %i.at
  %i.av = mul i32 %i.au, %i.as
  %i.aw = sext i32 %i.ar to i64
  %i.ax = load ptr, ptr %2, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.aj, ptr noundef %1, i64 noundef %i.aw) ; 0 uses
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !19
  %i.bc = load i32, ptr %4, align 4, !tbaa !21
  %i.bd = add i32 %i.bb, 1
  %i.be = sub i32 %i.bd, %i.bc
  %i.bf = mul nsw i32 %i.be, %i.e                 ; 2 uses
  %i.bg = sext i32 %i.av to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bg ; 3 uses
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph.i, label %_ZN3dpx12UnPackPackedIjLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit

.lr.ph.i:                                         ; preds = %bb.c
  %.017.i = add nsw i32 %i.bf, -1
  %i.bj = zext nneg i32 %.017.i to i64            ; 3 uses
  switch i8 %trunc, label %.lr.ph.split.i [
    i8 10, label %.lr.ph.split.us.i
    i8 12, label %.lr.ph.split.us19.i
  ]

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph.split.us.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.bk = trunc i64 %indvars.iv27.i to i32
  %i.bl = mul i32 %i.bk, 10
  %i.bm = sdiv i32 %i.bl, 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !25
  %indvars.iv27.tr.i = trunc i64 %indvars.iv27.i to i16
  %i.bq = shl i16 %indvars.iv27.tr.i, 1
  %.not.us.i = and i16 %i.bq, 6
  %i.br = xor i16 %.not.us.i, 6
  %i.bs = shl i16 %i.bp, %i.br                    ; 2 uses
  %i.bt = and i16 %i.bs, -64
  %i.bu = lshr i16 %i.bs, 10
  %i.bv = or disjoint i16 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv27.i
  %i.bx = zext i16 %i.bv to i32
  %i.by = mul nuw i32 %i.bx, 65537
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !3
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1
  %.not36.i = icmp eq i64 %indvars.iv27.i, 0
  br i1 %.not36.i, label %_ZN3dpx12UnPackPackedIjLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us.i, !llvm.loop !148

.lr.ph.split.us19.i:                              ; preds = %.lr.ph.i, %.lr.ph.split.us19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.us19.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.bz = trunc i64 %indvars.iv.i to i32
  %i.ca = mul i32 %i.bz, 12
  %i.cb = sdiv i32 %i.ca, 8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %1, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !25
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i16
  %i.cf = shl i16 %indvars.iv.tr.i, 1
  %.not.us21.i = and i16 %i.cf, 6
  %i.cg = xor i16 %.not.us21.i, 6
  %i.ch = shl i16 %i.ce, %i.cg                    ; 2 uses
  %i.ci = lshr i16 %i.ch, 2
  %i.cj = and i16 %i.ci, 16368
  %i.ck = lshr i16 %i.ch, 14
  %i.cl = or disjoint i16 %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.cn = zext nneg i16 %i.cl to i32
  %i.co = mul nuw nsw i32 %i.cn, 65537
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not35.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not35.i, label %_ZN3dpx12UnPackPackedIjLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us19.i, !llvm.loop !148

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph.split.i ], [ %i.bj, %.lr.ph.i ] ; 4 uses
  %i.cp = trunc i64 %indvars.iv30.i to i32        ; 2 uses
  %i.cq = mul i32 %.0.i48, %i.cp
  %i.cr = sdiv i32 %i.cq, 8
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %1, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !25
  %i.cv = zext i16 %i.cu to i32
  %i.cw = shl i32 %i.cp, 1
  %.not.i = and i32 %i.cw, 6
  %i.cx = xor i32 %.not.i, 6
  %i.cy = shl nuw nsw i32 %i.cv, %i.cx
  %i.cz = and i32 %i.cy, 65472
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv30.i
  %i.db = mul nuw i32 %i.cz, 65537
  store i32 %i.db, ptr %i.da, align 4, !tbaa !3
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, -1
  %.not37.i = icmp eq i64 %indvars.iv30.i, 0
  br i1 %.not37.i, label %_ZN3dpx12UnPackPackedIjLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.i, !llvm.loop !148

_ZN3dpx12UnPackPackedIjLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit: ; preds = %.lr.ph.split.us19.i, %.lr.ph.split.us.i, %.lr.ph.split.i, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !149
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx10ReadPackedINS_17ElementReadStreamEjLj65520ELi4ELi2ELi4EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit, label %bb.b
end_hunk_2
begin_hunk_3_@_ZN3dpx14ReadBlockTypesINS_17ElementReadStreamEdLNS_8DataSizeE4EfLS2_3EEEbRKNS_6HeaderEPT0_PT_iRKNS_5BlockEPT2_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 812
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24   ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  %spec.select = select i1 %i.q, i32 0, i32 %i.p
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.b, %bb.a
  %i.r = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.s = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0) ; 2 uses
  %.not46 = icmp slt i32 %i.j, %i.l
  br i1 %.not46, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.t = mul i32 %i.b, %i.a                       ; 2 uses
  %i.u = mul nsw i32 %i.h, %i.b
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp sgt i32 %i.h, 0
  br i1 %i.w, label %.lr.ph.us.preheader, label %.lr.ph48.split.preheader

.lr.ph48.split.preheader:                         ; preds = %.lr.ph48
  %i.x = add i32 %i.j, 1
  %i.y = sub i32 %i.x, %i.l
  br label %.lr.ph48.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph48
  %i.z = sext i32 %i.r to i64
  %i.aa = zext nneg i32 %i.h to i64               ; 4 uses
  %i.ab = add i32 %i.j, 1
  %i.ac = sub i32 %i.ab, %i.l
  %wide.trip.count57 = zext i32 %i.ac to i64
  %min.iters.check = icmp ult i32 %i.h, 4
  %n.vec = and i64 %i.aa, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv54 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next55, %._crit_edge.us ] ; 4 uses
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !23
  %i.ae = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.af = add nsw i32 %i.ad, %i.ae
  %i.ag = mul nsw i32 %i.af, %i.s
  %i.ah = load i32, ptr %4, align 4, !tbaa !21
  %i.ai = add i32 %i.ag, %i.ah
  %i.aj = mul i32 %i.t, %i.ai
  %i.ak = mul nsw i64 %indvars.iv54, %i.z
  %i.al = sext i32 %i.aj to i64
  %i.am = add nsw i64 %i.ak, %i.al
  %i.an = load ptr, ptr %2, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.am, ptr noundef %1, i64 noundef %i.v) ; 0 uses
  %i.ar = mul nuw nsw i64 %indvars.iv54, %i.aa
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ar ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x double>, ptr %i.as, align 8, !tbaa !72
  %wide.load62 = load <2 x double>, ptr %i.au, align 8, !tbaa !72
  %i.av = fptrunc <2 x double> %wide.load to <2 x float>
  %i.aw = fptrunc <2 x double> %wide.load62 to <2 x float>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store <2 x float> %i.av, ptr %i.at, align 4, !tbaa !62
  store <2 x float> %i.aw, ptr %i.ax, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ba = load double, ptr %i.az, align 8, !tbaa !72
  %i.bb = fptrunc double %i.ba to float
  store float %i.bb, ptr %gep, align 4, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond53.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !172

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge49, label %.lr.ph.us, !llvm.loop !173

._crit_edge49:                                    ; preds = %.lr.ph48.split, %._crit_edge.us, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

.lr.ph48.split:                                   ; preds = %.lr.ph48.split.preheader, %.lr.ph48.split
  %.04147 = phi i32 [ %i.bp, %.lr.ph48.split ], [ 0, %.lr.ph48.split.preheader ] ; 3 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !23
  %i.bd = add nsw i32 %i.bc, %.04147
  %i.be = mul nsw i32 %i.bd, %i.s
  %i.bf = load i32, ptr %4, align 4, !tbaa !21
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = mul i32 %i.t, %i.bg
  %i.bi = mul nsw i32 %.04147, %i.r
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = load ptr, ptr %2, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.bk, ptr noundef %1, i64 noundef %i.v) ; 0 uses
  %i.bp = add nuw i32 %.04147, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %i.y
  br i1 %exitcond.not, label %._crit_edge49, label %.lr.ph48.split, !llvm.loop !173
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx15Read10bitFilledINS_17ElementReadStreamEfLi2EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 6 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.k, %bb.b ]
  %i.l = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.m = mul i32 %i.l, %i.e                       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = sdiv i32 %i.n, 3
  %i.p = shl i32 %i.o, 2
  %i.q = add i32 %i.p, 4
  %.not64 = icmp slt i32 %i.b, %i.d
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = sext i32 %i.e to i64
  %i.t = icmp eq i32 %i.e, 1
  %i.u = sext i32 %i.m to i64
  %i.v = add i32 %i.b, 1
  %i.w = sub i32 %i.v, %i.d
  %wide.trip.count = zext i32 %i.w to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !21
  %.pre81 = load i32, ptr %i.r, align 4, !tbaa !19
  br label %bb.c

._crit_edge67:                                    ; preds = %._crit_edge, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %i.x = phi i32 [ %.pre81, %.lr.ph66 ], [ %i.bc, %._crit_edge ]
  %i.y = phi i32 [ %.pre, %.lr.ph66 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %i.z = load i32, ptr %i.c, align 4, !tbaa !23
  %i.aa = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.ab = add nsw i32 %i.z, %i.aa
  %i.ac = mul nsw i32 %i.ab, %i.q
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv78, %.0.i
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = mul nsw i32 %i.y, %i.e
  %i.ah = sdiv i32 %i.ag, 3
  %i.ai = shl nsw i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.af, %i.aj
  %reass.sub = sub i32 %i.x, %i.y
  %i.al = add i32 %reass.sub, 1
  %i.am = mul nsw i32 %i.al, %i.e                 ; 2 uses
  %i.an = srem i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = sdiv i32 %i.ao, 3
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = mul nsw i64 %indvars.iv78, %i.u
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ak, ptr noundef %1, i64 noundef %i.as) ; 0 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ar ; 3 uses
  %i.ay = load i32, ptr %4, align 4, !tbaa !21    ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = urem i64 %i.ba, %i.s
  %i.bc = load i32, ptr %i.r, align 4, !tbaa !19  ; 2 uses
  %reass.sub68 = sub i32 %i.bc, %i.ay
  %reass.sub68.fr = freeze i32 %reass.sub68
  %i.bd = add i32 %reass.sub68.fr, 1
  %i.be = mul i32 %i.bd, %i.e                     ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.061 = add nsw i32 %i.be, -1                   ; 3 uses
  br i1 %i.t, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %6 = zext nneg i32 %.061 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %7 = urem i32 %.061, 3
  %8 = zext nneg i32 %.061 to i64
  %i.bg = zext nneg i32 %i.be to i64
  %9 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 4 uses
  %i.bh = add i64 %indvars.iv, %i.bb
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = srem i32 %i.bi, 3
  %i.bo = sub nsw i32 2, %i.bn
  %i.bp = mul nuw nsw i32 %i.bo, 10
  %i.bq = add nuw nsw i32 %i.bp, 2
  %i.br = lshr i32 %i.bm, %i.bq
  %i.bs = trunc i32 %i.br to i16
  %i.bt = and i16 %i.bs, 1023                     ; 2 uses
  %i.bu = shl nuw i16 %i.bt, 6
  %i.bv = lshr i16 %i.bt, 4
  %i.bw = or disjoint i16 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.by = uitofp i16 %i.bw to float
  store float %i.by, ptr %i.bx, align 4, !tbaa !62
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !174

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %bb.c, !llvm.loop !175

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv73 = phi i64 [ %i.bg, %.lr.ph.split.preheader ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %indvars.iv71 = phi i64 [ %8, %.lr.ph.split.preheader ], [ %indvars.iv.next72, %bb.e ] ; 4 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv71 to i32  ; 2 uses
  %i.ca = sdiv i32 %i.bz, 3
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = srem i32 %i.bz, 3
  %i.cf = sub nsw i32 2, %i.ce
  %i.cg = mul nuw nsw i32 %i.cf, 10
  %i.ch = add nuw nsw i32 %i.cg, 2
  %i.ci = lshr i32 %i.cd, %i.ch
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = and i16 %i.cj, 1023                     ; 2 uses
  %i.cl = shl nuw i16 %i.ck, 6
  %i.cm = lshr i16 %i.ck, 4
  %i.cn = or disjoint i16 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv71 ; 2 uses
  %i.cp = uitofp i16 %i.cn to float               ; 2 uses
  store float %i.cp, ptr %i.co, align 4, !tbaa !62
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv73
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !62
  store float %i.cs, ptr %i.co, align 4, !tbaa !62
  store float %i.cp, ptr %i.cr, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  %i.ct = icmp sgt i64 %indvars.iv71, 0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.ct, label %.lr.ph.split, label %._crit_edge, !llvm.loop !174
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx15Read10bitFilledINS_17ElementReadStreamEfLi0EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 6 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.k, %bb.b ]
  %i.l = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.m = mul i32 %i.l, %i.e                       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = sdiv i32 %i.n, 3
  %i.p = shl i32 %i.o, 2
  %i.q = add i32 %i.p, 4
  %.not64 = icmp slt i32 %i.b, %i.d
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = sext i32 %i.e to i64
  %i.t = icmp eq i32 %i.e, 1
  %i.u = sext i32 %i.m to i64
  %i.v = add i32 %i.b, 1
  %i.w = sub i32 %i.v, %i.d
  %wide.trip.count = zext i32 %i.w to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !21
  %.pre81 = load i32, ptr %i.r, align 4, !tbaa !19
  br label %bb.c

._crit_edge67:                                    ; preds = %._crit_edge, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %i.x = phi i32 [ %.pre81, %.lr.ph66 ], [ %i.bc, %._crit_edge ]
  %i.y = phi i32 [ %.pre, %.lr.ph66 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %i.z = load i32, ptr %i.c, align 4, !tbaa !23
  %i.aa = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.ab = add nsw i32 %i.z, %i.aa
  %i.ac = mul nsw i32 %i.ab, %i.q
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv78, %.0.i
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = mul nsw i32 %i.y, %i.e
  %i.ah = sdiv i32 %i.ag, 3
  %i.ai = shl nsw i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.af, %i.aj
  %reass.sub = sub i32 %i.x, %i.y
  %i.al = add i32 %reass.sub, 1
  %i.am = mul nsw i32 %i.al, %i.e                 ; 2 uses
  %i.an = srem i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = sdiv i32 %i.ao, 3
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = mul nsw i64 %indvars.iv78, %i.u
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ak, ptr noundef %1, i64 noundef %i.as) ; 0 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ar ; 3 uses
  %i.ay = load i32, ptr %4, align 4, !tbaa !21    ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = urem i64 %i.ba, %i.s
  %i.bc = load i32, ptr %i.r, align 4, !tbaa !19  ; 2 uses
  %reass.sub68 = sub i32 %i.bc, %i.ay
  %reass.sub68.fr = freeze i32 %reass.sub68
  %i.bd = add i32 %reass.sub68.fr, 1
  %i.be = mul i32 %i.bd, %i.e                     ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.061 = add nsw i32 %i.be, -1                   ; 3 uses
  br i1 %i.t, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %6 = zext nneg i32 %.061 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %7 = urem i32 %.061, 3
  %8 = zext nneg i32 %.061 to i64
  %i.bg = zext nneg i32 %i.be to i64
  %9 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 4 uses
  %i.bh = add i64 %indvars.iv, %i.bb
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = srem i32 %i.bi, 3
  %i.bo = sub nsw i32 2, %i.bn
  %i.bp = mul nuw nsw i32 %i.bo, 10
  %i.bq = lshr i32 %i.bm, %i.bp
  %i.br = trunc i32 %i.bq to i16
  %i.bs = and i16 %i.br, 1023                     ; 2 uses
  %i.bt = shl nuw i16 %i.bs, 6
  %i.bu = lshr i16 %i.bs, 4
  %i.bv = or disjoint i16 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.bx = uitofp i16 %i.bv to float
  store float %i.bx, ptr %i.bw, align 4, !tbaa !62
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !176

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %bb.c, !llvm.loop !177

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv73 = phi i64 [ %i.bg, %.lr.ph.split.preheader ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %indvars.iv71 = phi i64 [ %8, %.lr.ph.split.preheader ], [ %indvars.iv.next72, %bb.e ] ; 4 uses
  %i.by = trunc nuw nsw i64 %indvars.iv71 to i32  ; 2 uses
  %i.bz = sdiv i32 %i.by, 3
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = srem i32 %i.by, 3
  %i.ce = sub nsw i32 2, %i.cd
  %i.cf = mul nuw nsw i32 %i.ce, 10
  %i.cg = lshr i32 %i.cc, %i.cf
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = and i16 %i.ch, 1023                     ; 2 uses
  %i.cj = shl nuw i16 %i.ci, 6
  %i.ck = lshr i16 %i.ci, 4
  %i.cl = or disjoint i16 %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv71 ; 2 uses
  %i.cn = uitofp i16 %i.cl to float               ; 2 uses
  store float %i.cn, ptr %i.cm, align 4, !tbaa !62
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv73
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !62
  store float %i.cq, ptr %i.cm, align 4, !tbaa !62
  store float %i.cn, ptr %i.cp, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  %i.cr = icmp sgt i64 %indvars.iv71, 0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.cr, label %.lr.ph.split, label %._crit_edge, !llvm.loop !176
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx10ReadPackedINS_17ElementReadStreamEfLj65472ELi2ELi4ELi6EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 803
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader8BitDepthEi.exit

_ZNK3dpx13GenericHeader8BitDepthEi.exit:          ; preds = %bb.a, %bb.b
  %.0.i50 = phi i64 [ %i.n, %bb.b ], [ -1, %bb.a ]
  %.0.i48 = phi i32 [ %i.m, %bb.b ], [ 255, %bb.a ] ; 3 uses
  %i.o = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %.not54 = icmp slt i32 %i.b, %i.d
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  %i.p = mul i32 %.0.i48, %i.e                    ; 3 uses
  %i.q = mul i32 %i.p, %i.o
  %i.r = add i32 %i.q, 31
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 536870908
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %trunc = trunc nuw i32 %.0.i48 to i8
  %i.w = add i32 %i.b, 1
  %i.x = sub i32 %i.w, %i.d
  %wide.trip.count = zext i32 %i.x to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !21
  %.pre59 = load i32, ptr %i.v, align 4, !tbaa !19
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN3dpx12UnPackPackedIfLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph, %_ZN3dpx12UnPackPackedIfLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit
  %i.y = phi i32 [ %.pre59, %.lr.ph ], [ %i.bb, %_ZN3dpx12UnPackPackedIfLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ]
  %i.z = phi i32 [ %.pre, %.lr.ph ], [ %i.bc, %_ZN3dpx12UnPackPackedIfLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3dpx12UnPackPackedIfLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ] ; 4 uses
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !23
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %indvars.iv, %i.ab
  %i.ad = mul nsw i64 %i.ac, %i.u
  %i.ae = mul i32 %i.p, %i.z                      ; 2 uses
  %i.af = sdiv i32 %i.ae, 32
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = mul nsw i64 %indvars.iv, %.0.i50
  %i.aj = add nsw i64 %i.ad, %i.ai
  %i.ak = add nsw i64 %i.aj, %i.ah
  %reass.sub = sub i32 %i.y, %i.z
  %i.al = add i32 %reass.sub, 1
  %i.am = mul i32 %i.p, %i.al
  %i.an = srem i32 %i.ae, 32
  %i.ao = add nsw i32 %i.an, 31
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = sdiv i32 %i.ap, 32
  %i.ar = shl nsw i32 %i.aq, 2
  %i.as = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = mul i32 %i.e, %i.at
  %i.av = mul i32 %i.au, %i.as
  %i.aw = sext i32 %i.ar to i64
  %i.ax = load ptr, ptr %2, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ak, ptr noundef %1, i64 noundef %i.aw) ; 0 uses
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !19  ; 2 uses
  %i.bc = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.bd = add i32 %i.bb, 1
  %i.be = sub i32 %i.bd, %i.bc
  %i.bf = mul nsw i32 %i.be, %i.e                 ; 2 uses
  %i.bg = sext i32 %i.av to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bg ; 3 uses
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph.i, label %_ZN3dpx12UnPackPackedIfLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit

.lr.ph.i:                                         ; preds = %bb.c
  %.017.i = add nsw i32 %i.bf, -1
  %i.bj = zext nneg i32 %.017.i to i64            ; 3 uses
  switch i8 %trunc, label %.lr.ph.split.i [
    i8 10, label %.lr.ph.split.us.i
    i8 12, label %.lr.ph.split.us19.i
  ]

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph.split.us.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.bk = trunc i64 %indvars.iv27.i to i32
  %i.bl = mul i32 %i.bk, 10
  %i.bm = sdiv i32 %i.bl, 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !25
  %indvars.iv27.tr.i = trunc i64 %indvars.iv27.i to i16
  %i.bq = shl i16 %indvars.iv27.tr.i, 1
  %.not.us.i = and i16 %i.bq, 6
  %i.br = xor i16 %.not.us.i, 6
  %i.bs = shl i16 %i.bp, %i.br                    ; 2 uses
  %i.bt = and i16 %i.bs, -64
  %i.bu = lshr i16 %i.bs, 10
  %i.bv = or disjoint i16 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv27.i
  %i.bx = uitofp i16 %i.bv to float
  store float %i.bx, ptr %i.bw, align 4, !tbaa !62
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1
  %.not36.i = icmp eq i64 %indvars.iv27.i, 0
  br i1 %.not36.i, label %_ZN3dpx12UnPackPackedIfLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us.i, !llvm.loop !178

.lr.ph.split.us19.i:                              ; preds = %.lr.ph.i, %.lr.ph.split.us19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.us19.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.by = trunc i64 %indvars.iv.i to i32
  %i.bz = mul i32 %i.by, 12
  %i.ca = sdiv i32 %i.bz, 8
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %1, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !25
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i16
  %i.ce = shl i16 %indvars.iv.tr.i, 1
  %.not.us21.i = and i16 %i.ce, 6
  %i.cf = xor i16 %.not.us21.i, 6
  %i.cg = shl i16 %i.cd, %i.cf                    ; 2 uses
  %i.ch = lshr i16 %i.cg, 2
  %i.ci = and i16 %i.ch, 16368
  %i.cj = lshr i16 %i.cg, 14
  %i.ck = or disjoint i16 %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.cm = uitofp nneg i16 %i.ck to float
  store float %i.cm, ptr %i.cl, align 4, !tbaa !62
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not35.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not35.i, label %_ZN3dpx12UnPackPackedIfLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us19.i, !llvm.loop !178

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph.split.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.cn = trunc i64 %indvars.iv30.i to i32
  %i.co = mul i32 %.0.i48, %i.cn
  %i.cp = sdiv i32 %i.co, 8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %1, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !25
  %indvars.iv30.tr.i = trunc i64 %indvars.iv30.i to i16
  %i.ct = shl i16 %indvars.iv30.tr.i, 1
  %.not.i = and i16 %i.ct, 6
  %i.cu = xor i16 %.not.i, 6
  %i.cv = shl i16 %i.cs, %i.cu
  %i.cw = and i16 %i.cv, -64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv30.i
  %i.cy = uitofp i16 %i.cw to float
  store float %i.cy, ptr %i.cx, align 4, !tbaa !62
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, -1
  %.not37.i = icmp eq i64 %indvars.iv30.i, 0
  br i1 %.not37.i, label %_ZN3dpx12UnPackPackedIfLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.i, !llvm.loop !178

_ZN3dpx12UnPackPackedIfLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit: ; preds = %.lr.ph.split.us19.i, %.lr.ph.split.us.i, %.lr.ph.split.i, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !179
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx10ReadPackedINS_17ElementReadStreamEfLj65520ELi4ELi2ELi4EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit, label %bb.b
end_hunk_3
begin_hunk_4_@_ZN3dpx14ReadBlockTypesINS_17ElementReadStreamEfLNS_8DataSizeE3EdLS2_4EEEbRKNS_6HeaderEPT0_PT_iRKNS_5BlockEPT2_:bb.a

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !62
  %i.bb = fpext float %i.ba to double
  store double %i.bb, ptr %gep, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond53.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !201

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge49, label %.lr.ph.us, !llvm.loop !202

._crit_edge49:                                    ; preds = %.lr.ph48.split, %._crit_edge.us, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

.lr.ph48.split:                                   ; preds = %.lr.ph48.split.preheader, %.lr.ph48.split
  %.04147 = phi i32 [ %i.bp, %.lr.ph48.split ], [ 0, %.lr.ph48.split.preheader ] ; 3 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !23
  %i.bd = add nsw i32 %i.bc, %.04147
  %i.be = mul nsw i32 %i.bd, %i.s
  %i.bf = load i32, ptr %4, align 4, !tbaa !21
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = mul i32 %i.t, %i.bg
  %i.bi = mul nsw i32 %.04147, %i.r
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = load ptr, ptr %2, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.bk, ptr noundef %1, i64 noundef %i.v) ; 0 uses
  %i.bp = add nuw i32 %.04147, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %i.y
  br i1 %exitcond.not, label %._crit_edge49, label %.lr.ph48.split, !llvm.loop !202
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx14ReadBlockTypesINS_17ElementReadStreamEdLNS_8DataSizeE4EdLS2_4EEEbRKNS_6HeaderEPT0_PT_iRKNS_5BlockEPT2_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 2 uses
  %i.b = tail call noundef i32 @_ZNK3dpx13GenericHeader18ComponentByteCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  %i.e = load i32, ptr %4, align 4, !tbaa !21
  %i.f = add i32 %i.d, 1
  %i.g = sub i32 %i.f, %i.e
  %i.h = mul nsw i32 %i.g, %i.a                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 2 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %3 to i64
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 812
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24   ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  %spec.select = select i1 %i.q, i32 0, i32 %i.p
  %i.r = sext i32 %spec.select to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]
  %i.t = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %.not36 = icmp slt i32 %i.j, %i.l
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.u = mul i32 %i.b, %i.a
  %i.v = mul nsw i32 %i.h, %i.b
  %i.w = sext i32 %i.v to i64
  %i.x = sext i32 %i.h to i64
  %i.y = add i32 %i.j, 1
  %i.z = sub i32 %i.y, %i.l
  %wide.trip.count = zext i32 %i.z to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.aa = load i32, ptr %i.k, align 4, !tbaa !23
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = add nsw i32 %i.aa, %i.ab
  %i.ad = mul nsw i32 %i.ac, %i.t
  %i.ae = load i32, ptr %4, align 4, !tbaa !21
  %i.af = add i32 %i.ad, %i.ae
  %i.ag = mul i32 %i.u, %i.af
  %i.ah = mul nsw i64 %indvars.iv, %i.s
  %i.ai = sext i32 %i.ag to i64
  %i.aj = add nsw i64 %i.ah, %i.ai
  %i.ak = mul nsw i64 %indvars.iv, %i.x
  %i.al = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ak
  %i.am = load ptr, ptr %2, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.aj, ptr noundef %i.al, i64 noundef %i.w) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !203
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx15Read10bitFilledINS_17ElementReadStreamEdLi2EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 6 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.k, %bb.b ]
  %i.l = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.m = mul i32 %i.l, %i.e                       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = sdiv i32 %i.n, 3
  %i.p = shl i32 %i.o, 2
  %i.q = add i32 %i.p, 4
  %.not64 = icmp slt i32 %i.b, %i.d
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = sext i32 %i.e to i64
  %i.t = icmp eq i32 %i.e, 1
  %i.u = sext i32 %i.m to i64
  %i.v = add i32 %i.b, 1
  %i.w = sub i32 %i.v, %i.d
  %wide.trip.count = zext i32 %i.w to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !21
  %.pre81 = load i32, ptr %i.r, align 4, !tbaa !19
  br label %bb.c

._crit_edge67:                                    ; preds = %._crit_edge, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %i.x = phi i32 [ %.pre81, %.lr.ph66 ], [ %i.bc, %._crit_edge ]
  %i.y = phi i32 [ %.pre, %.lr.ph66 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %i.z = load i32, ptr %i.c, align 4, !tbaa !23
  %i.aa = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.ab = add nsw i32 %i.z, %i.aa
  %i.ac = mul nsw i32 %i.ab, %i.q
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv78, %.0.i
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = mul nsw i32 %i.y, %i.e
  %i.ah = sdiv i32 %i.ag, 3
  %i.ai = shl nsw i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.af, %i.aj
  %reass.sub = sub i32 %i.x, %i.y
  %i.al = add i32 %reass.sub, 1
  %i.am = mul nsw i32 %i.al, %i.e                 ; 2 uses
  %i.an = srem i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = sdiv i32 %i.ao, 3
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = mul nsw i64 %indvars.iv78, %i.u
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ak, ptr noundef %1, i64 noundef %i.as) ; 0 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ar ; 3 uses
  %i.ay = load i32, ptr %4, align 4, !tbaa !21    ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = urem i64 %i.ba, %i.s
  %i.bc = load i32, ptr %i.r, align 4, !tbaa !19  ; 2 uses
  %reass.sub68 = sub i32 %i.bc, %i.ay
  %reass.sub68.fr = freeze i32 %reass.sub68
  %i.bd = add i32 %reass.sub68.fr, 1
  %i.be = mul i32 %i.bd, %i.e                     ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.061 = add nsw i32 %i.be, -1                   ; 3 uses
  br i1 %i.t, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %6 = zext nneg i32 %.061 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %7 = urem i32 %.061, 3
  %8 = zext nneg i32 %.061 to i64
  %i.bg = zext nneg i32 %i.be to i64
  %9 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 4 uses
  %i.bh = add i64 %indvars.iv, %i.bb
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = srem i32 %i.bi, 3
  %i.bo = sub nsw i32 2, %i.bn
  %i.bp = mul nuw nsw i32 %i.bo, 10
  %i.bq = add nuw nsw i32 %i.bp, 2
  %i.br = lshr i32 %i.bm, %i.bq
  %i.bs = trunc i32 %i.br to i16
  %i.bt = and i16 %i.bs, 1023                     ; 2 uses
  %i.bu = shl nuw i16 %i.bt, 6
  %i.bv = lshr i16 %i.bt, 4
  %i.bw = or disjoint i16 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.by = uitofp i16 %i.bw to double
  store double %i.by, ptr %i.bx, align 8, !tbaa !72
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !204

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %bb.c, !llvm.loop !205

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv73 = phi i64 [ %i.bg, %.lr.ph.split.preheader ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %indvars.iv71 = phi i64 [ %8, %.lr.ph.split.preheader ], [ %indvars.iv.next72, %bb.e ] ; 4 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv71 to i32  ; 2 uses
  %i.ca = sdiv i32 %i.bz, 3
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = srem i32 %i.bz, 3
  %i.cf = sub nsw i32 2, %i.ce
  %i.cg = mul nuw nsw i32 %i.cf, 10
  %i.ch = add nuw nsw i32 %i.cg, 2
  %i.ci = lshr i32 %i.cd, %i.ch
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = and i16 %i.cj, 1023                     ; 2 uses
  %i.cl = shl nuw i16 %i.ck, 6
  %i.cm = lshr i16 %i.ck, 4
  %i.cn = or disjoint i16 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv71 ; 2 uses
  %i.cp = uitofp i16 %i.cn to double              ; 2 uses
  store double %i.cp, ptr %i.co, align 8, !tbaa !72
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv73
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !72
  store double %i.cs, ptr %i.co, align 8, !tbaa !72
  store double %i.cp, ptr %i.cr, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  %i.ct = icmp sgt i64 %indvars.iv71, 0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.ct, label %.lr.ph.split, label %._crit_edge, !llvm.loop !204
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx15Read10bitFilledINS_17ElementReadStreamEdLi0EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 6 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit

_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.k, %bb.b ]
  %i.l = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.m = mul i32 %i.l, %i.e                       ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = sdiv i32 %i.n, 3
  %i.p = shl i32 %i.o, 2
  %i.q = add i32 %i.p, 4
  %.not64 = icmp slt i32 %i.b, %i.d
  br i1 %.not64, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = sext i32 %i.e to i64
  %i.t = icmp eq i32 %i.e, 1
  %i.u = sext i32 %i.m to i64
  %i.v = add i32 %i.b, 1
  %i.w = sub i32 %i.v, %i.d
  %wide.trip.count = zext i32 %i.w to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !21
  %.pre81 = load i32, ptr %i.r, align 4, !tbaa !19
  br label %bb.c

._crit_edge67:                                    ; preds = %._crit_edge, %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %i.x = phi i32 [ %.pre81, %.lr.ph66 ], [ %i.bc, %._crit_edge ]
  %i.y = phi i32 [ %.pre, %.lr.ph66 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %indvars.iv78 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next79, %._crit_edge ] ; 4 uses
  %i.z = load i32, ptr %i.c, align 4, !tbaa !23
  %i.aa = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.ab = add nsw i32 %i.z, %i.aa
  %i.ac = mul nsw i32 %i.ab, %i.q
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv78, %.0.i
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = mul nsw i32 %i.y, %i.e
  %i.ah = sdiv i32 %i.ag, 3
  %i.ai = shl nsw i32 %i.ah, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.af, %i.aj
  %reass.sub = sub i32 %i.x, %i.y
  %i.al = add i32 %reass.sub, 1
  %i.am = mul nsw i32 %i.al, %i.e                 ; 2 uses
  %i.an = srem i32 %i.am, 3
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = sdiv i32 %i.ao, 3
  %i.aq = shl nsw i32 %i.ap, 2
  %i.ar = mul nsw i64 %indvars.iv78, %i.u
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ak, ptr noundef %1, i64 noundef %i.as) ; 0 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ar ; 3 uses
  %i.ay = load i32, ptr %4, align 4, !tbaa !21    ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = urem i64 %i.ba, %i.s
  %i.bc = load i32, ptr %i.r, align 4, !tbaa !19  ; 2 uses
  %reass.sub68 = sub i32 %i.bc, %i.ay
  %reass.sub68.fr = freeze i32 %reass.sub68
  %i.bd = add i32 %reass.sub68.fr, 1
  %i.be = mul i32 %i.bd, %i.e                     ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.061 = add nsw i32 %i.be, -1                   ; 3 uses
  br i1 %i.t, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %6 = zext nneg i32 %.061 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %7 = urem i32 %.061, 3
  %8 = zext nneg i32 %.061 to i64
  %i.bg = zext nneg i32 %i.be to i64
  %9 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 4 uses
  %i.bh = add i64 %indvars.iv, %i.bb
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = srem i32 %i.bi, 3
  %i.bo = sub nsw i32 2, %i.bn
  %i.bp = mul nuw nsw i32 %i.bo, 10
  %i.bq = lshr i32 %i.bm, %i.bp
  %i.br = trunc i32 %i.bq to i16
  %i.bs = and i16 %i.br, 1023                     ; 2 uses
  %i.bt = shl nuw i16 %i.bs, 6
  %i.bu = lshr i16 %i.bs, 4
  %i.bv = or disjoint i16 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.bx = uitofp i16 %i.bv to double
  store double %i.bx, ptr %i.bw, align 8, !tbaa !72
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !206

._crit_edge:                                      ; preds = %.lr.ph.split.us, %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge67, label %bb.c, !llvm.loop !207

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv73 = phi i64 [ %i.bg, %.lr.ph.split.preheader ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %indvars.iv71 = phi i64 [ %8, %.lr.ph.split.preheader ], [ %indvars.iv.next72, %bb.e ] ; 4 uses
  %i.by = trunc nuw nsw i64 %indvars.iv71 to i32  ; 2 uses
  %i.bz = sdiv i32 %i.by, 3
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = srem i32 %i.by, 3
  %i.ce = sub nsw i32 2, %i.cd
  %i.cf = mul nuw nsw i32 %i.ce, 10
  %i.cg = lshr i32 %i.cc, %i.cf
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = and i16 %i.ch, 1023                     ; 2 uses
  %i.cj = shl nuw i16 %i.ci, 6
  %i.ck = lshr i16 %i.ci, 4
  %i.cl = or disjoint i16 %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv71 ; 2 uses
  %i.cn = uitofp i16 %i.cl to double              ; 2 uses
  store double %i.cn, ptr %i.cm, align 8, !tbaa !72
  br i1 %9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv73
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !72
  store double %i.cq, ptr %i.cm, align 8, !tbaa !72
  store double %i.cn, ptr %i.cp, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  %i.cr = icmp sgt i64 %indvars.iv71, 0
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.cr, label %.lr.ph.split, label %._crit_edge, !llvm.loop !206
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx10ReadPackedINS_17ElementReadStreamEdLj65472ELi2ELi4ELi6EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 812
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %..i = select i1 %i.j, i32 0, i32 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 803
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = sext i32 %..i to i64
  br label %_ZNK3dpx13GenericHeader8BitDepthEi.exit

_ZNK3dpx13GenericHeader8BitDepthEi.exit:          ; preds = %bb.a, %bb.b
  %.0.i50 = phi i64 [ %i.n, %bb.b ], [ -1, %bb.a ]
  %.0.i48 = phi i32 [ %i.m, %bb.b ], [ 255, %bb.a ] ; 3 uses
  %i.o = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %.not54 = icmp slt i32 %i.b, %i.d
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  %i.p = mul i32 %.0.i48, %i.e                    ; 3 uses
  %i.q = mul i32 %i.p, %i.o
  %i.r = add i32 %i.q, 31
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 536870908
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %trunc = trunc nuw i32 %.0.i48 to i8
  %i.w = add i32 %i.b, 1
  %i.x = sub i32 %i.w, %i.d
  %wide.trip.count = zext i32 %i.x to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !21
  %.pre59 = load i32, ptr %i.v, align 4, !tbaa !19
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN3dpx12UnPackPackedIdLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, %_ZNK3dpx13GenericHeader8BitDepthEi.exit
  ret i1 true

bb.c:                                             ; preds = %.lr.ph, %_ZN3dpx12UnPackPackedIdLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit
  %i.y = phi i32 [ %.pre59, %.lr.ph ], [ %i.bb, %_ZN3dpx12UnPackPackedIdLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ]
  %i.z = phi i32 [ %.pre, %.lr.ph ], [ %i.bc, %_ZN3dpx12UnPackPackedIdLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3dpx12UnPackPackedIdLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit ] ; 4 uses
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !23
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %indvars.iv, %i.ab
  %i.ad = mul nsw i64 %i.ac, %i.u
  %i.ae = mul i32 %i.p, %i.z                      ; 2 uses
  %i.af = sdiv i32 %i.ae, 32
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = mul nsw i64 %indvars.iv, %.0.i50
  %i.aj = add nsw i64 %i.ad, %i.ai
  %i.ak = add nsw i64 %i.aj, %i.ah
  %reass.sub = sub i32 %i.y, %i.z
  %i.al = add i32 %reass.sub, 1
  %i.am = mul i32 %i.p, %i.al
  %i.an = srem i32 %i.ae, 32
  %i.ao = add nsw i32 %i.an, 31
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = sdiv i32 %i.ap, 32
  %i.ar = shl nsw i32 %i.aq, 2
  %i.as = tail call noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049) %0)
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = mul i32 %i.e, %i.at
  %i.av = mul i32 %i.au, %i.as
  %i.aw = sext i32 %i.ar to i64
  %i.ax = load ptr, ptr %2, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(2049) %0, i32 noundef %3, i64 noundef %i.ak, ptr noundef %1, i64 noundef %i.aw) ; 0 uses
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !19  ; 2 uses
  %i.bc = load i32, ptr %4, align 4, !tbaa !21    ; 2 uses
  %i.bd = add i32 %i.bb, 1
  %i.be = sub i32 %i.bd, %i.bc
  %i.bf = mul nsw i32 %i.be, %i.e                 ; 2 uses
  %i.bg = sext i32 %i.av to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bg ; 3 uses
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph.i, label %_ZN3dpx12UnPackPackedIdLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit

.lr.ph.i:                                         ; preds = %bb.c
  %.017.i = add nsw i32 %i.bf, -1
  %i.bj = zext nneg i32 %.017.i to i64            ; 3 uses
  switch i8 %trunc, label %.lr.ph.split.i [
    i8 10, label %.lr.ph.split.us.i
    i8 12, label %.lr.ph.split.us19.i
  ]

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph.split.us.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.bk = trunc i64 %indvars.iv27.i to i32
  %i.bl = mul i32 %i.bk, 10
  %i.bm = sdiv i32 %i.bl, 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !25
  %indvars.iv27.tr.i = trunc i64 %indvars.iv27.i to i16
  %i.bq = shl i16 %indvars.iv27.tr.i, 1
  %.not.us.i = and i16 %i.bq, 6
  %i.br = xor i16 %.not.us.i, 6
  %i.bs = shl i16 %i.bp, %i.br                    ; 2 uses
  %i.bt = and i16 %i.bs, -64
  %i.bu = lshr i16 %i.bs, 10
  %i.bv = or disjoint i16 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv27.i
  %i.bx = uitofp i16 %i.bv to double
  store double %i.bx, ptr %i.bw, align 8, !tbaa !72
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, -1
  %.not36.i = icmp eq i64 %indvars.iv27.i, 0
  br i1 %.not36.i, label %_ZN3dpx12UnPackPackedIdLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us.i, !llvm.loop !208

.lr.ph.split.us19.i:                              ; preds = %.lr.ph.i, %.lr.ph.split.us19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.us19.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.by = trunc i64 %indvars.iv.i to i32
  %i.bz = mul i32 %i.by, 12
  %i.ca = sdiv i32 %i.bz, 8
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %1, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !25
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i16
  %i.ce = shl i16 %indvars.iv.tr.i, 1
  %.not.us21.i = and i16 %i.ce, 6
  %i.cf = xor i16 %.not.us21.i, 6
  %i.cg = shl i16 %i.cd, %i.cf                    ; 2 uses
  %i.ch = lshr i16 %i.cg, 2
  %i.ci = and i16 %i.ch, 16368
  %i.cj = lshr i16 %i.cg, 14
  %i.ck = or disjoint i16 %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.cm = uitofp nneg i16 %i.ck to double
  store double %i.cm, ptr %i.cl, align 8, !tbaa !72
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not35.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not35.i, label %_ZN3dpx12UnPackPackedIdLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.us19.i, !llvm.loop !208

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph.split.i ], [ %i.bj, %.lr.ph.i ] ; 5 uses
  %i.cn = trunc i64 %indvars.iv30.i to i32
  %i.co = mul i32 %.0.i48, %i.cn
  %i.cp = sdiv i32 %i.co, 8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %1, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !25
  %indvars.iv30.tr.i = trunc i64 %indvars.iv30.i to i16
  %i.ct = shl i16 %indvars.iv30.tr.i, 1
  %.not.i = and i16 %i.ct, 6
  %i.cu = xor i16 %.not.i, 6
  %i.cv = shl i16 %i.cs, %i.cu
  %i.cw = and i16 %i.cv, -64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv30.i
  %i.cy = uitofp i16 %i.cw to double
  store double %i.cy, ptr %i.cx, align 8, !tbaa !72
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, -1
  %.not37.i = icmp eq i64 %indvars.iv30.i, 0
  br i1 %.not37.i, label %_ZN3dpx12UnPackPackedIdLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit, label %.lr.ph.split.i, !llvm.loop !208

_ZN3dpx12UnPackPackedIdLj65472ELi2ELi4ELi6EEEvPjiPT_ii.exit: ; preds = %.lr.ph.split.us19.i, %.lr.ph.split.us.i, %.lr.ph.split.i, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !209
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3dpx10ReadPackedINS_17ElementReadStreamEdLj65520ELi4ELi2ELi4EEEbRKNS_6HeaderEPjPT_iRKNS_5BlockEPT0_(ptr noundef nonnull align 4 dereferenceable(2049) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %0, i32 noundef %3) ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 7
  br i1 %or.cond.i, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit, label %bb.b
end_hunk_4
