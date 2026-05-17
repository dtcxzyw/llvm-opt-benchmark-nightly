inline.NumInlined: 136
inline.NumDeleted: 16
begin_hunk_0_@_ZN14arrow_vendored17double_conversion6Bignum13SubtractTimesERKS1_i:bb.a
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, %i.n
  %i.ar = zext i32 %.03545 to i64
  %i.as = add nuw nsw i64 %i.aq, %i.ar            ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.at = load i32, ptr %gep, align 4, !tbaa !3
  %i.au = trunc i64 %i.as to i32
  %i.av = and i32 %i.au, 268435455
  %i.aw = sub i32 %i.at, %i.av                    ; 2 uses
  %i.ax = and i32 %i.aw, 268435455
  store i32 %i.ax, ptr %gep, align 4, !tbaa !3
  %i.ay = lshr i32 %i.aw, 31
  %i.az = lshr i64 %i.as, 28
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %i.ay, %i.ba
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.be, %i.n
  %i.bg = zext i32 %i.bb to i64
  %i.bh = add nuw nsw i64 %i.bf, %i.bg            ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bi = load i32, ptr %gep.1, align 4, !tbaa !3
  %i.bj = trunc i64 %i.bh to i32
  %i.bk = and i32 %i.bj, 268435455
  %i.bl = sub i32 %i.bi, %i.bk                    ; 2 uses
  %i.bm = and i32 %i.bl, 268435455
  store i32 %i.bm, ptr %gep.1, align 4, !tbaa !3
  %i.bn = lshr i32 %i.bl, 31
  %i.bo = lshr i64 %i.bh, 28
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %i.bn, %i.bp                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !65

bb.d:                                             ; preds = %.lr.ph51, %bb.e
  %indvars.iv58 = phi i64 [ %i.al, %.lr.ph51 ], [ %indvars.iv.next59, %bb.e ] ; 2 uses
  %.148 = phi i32 [ %.035.lcssa, %.lr.ph51 ], [ %i.bw, %bb.e ] ; 2 uses
  %i.br = icmp eq i32 %.148, 0
  br i1 %i.br, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv58 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = sub i32 %i.bt, %.148                    ; 2 uses
  %i.bv = and i32 %i.bu, 268435455
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !3
  %i.bw = lshr i32 %i.bu, 31
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next59, %i.am
  br i1 %.not, label %bb.d, label %.critedge, !llvm.loop !66

.critedge:                                        ; preds = %bb.e, %._crit_edge
  %i.bx = icmp sgt i16 %i.ai, 0
  br i1 %i.bx, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.bz = phi i16 [ %i.ai, %.lr.ph.i ], [ %i.cg, %bb.g ] ; 3 uses
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 4294967295
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.g, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %bb.f
  %i.cg = add nsw i16 %i.bz, -1                   ; 2 uses
  store i16 %i.cg, ptr %0, align 4, !tbaa !7
  %i.ch = icmp sgt i16 %i.bz, 1
  br i1 %i.ch, label %bb.f, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %.critedge
  %i.ci = icmp eq i16 %i.ai, 0
  br i1 %i.ci, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.g, %.critedge.i
  store i16 0, ptr %i.g, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.d, %bb.f, %.lr.ph54, %.preheader, %.critedge.thread3.i, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion6Bignum11ToHexStringEPci(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !7      ; 3 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 2
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %1, align 1, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !19
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.e = sext i16 %i.a to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !10
  %i.h = sext i16 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.e
  %i.j = mul nsw i32 %i.i, 7
  %i.k = add nsw i32 %i.j, -7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.m = sext i16 %i.a to i64
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %.not5.i = icmp eq i32 %i.p, 0
  br i1 %.not5.i, label %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %bb.d ]
  %.046.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.p, %bb.d ]
  %i.q = lshr i32 %.046.i, 4                      ; 2 uses
  %i.r = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i, !llvm.loop !67

_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.r, %.lr.ph.i ]
  %i.s = add nsw i32 %i.k, %.0.lcssa.i            ; 3 uses
  %.not = icmp slt i32 %i.s, %2
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !19
  %i.w = load i16, ptr %i.f, align 2, !tbaa !10
  %i.x = icmp sgt i16 %i.w, 0
  br i1 %i.x, label %.preheader40.preheader, label %.preheader

.preheader40.preheader:                           ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %1, i64 -6
  %i.y = sext i32 %i.t to i64
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.preheader, %.preheader40
  %indvars.iv = phi i64 [ %i.y, %.preheader40.preheader ], [ %indvars.iv.next, %.preheader40 ] ; 2 uses
  %.03345 = phi i32 [ 0, %.preheader40.preheader ], [ %i.z, %.preheader40 ]
  %scevgep62 = getelementptr i8, ptr %scevgep, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep62, i8 48, i64 7, i1 false), !tbaa !19
  %indvars.iv.next = add nsw i64 %indvars.iv, -7  ; 2 uses
  %i.z = add nuw nsw i32 %.03345, 1               ; 2 uses
  %i.aa = load i16, ptr %i.f, align 2, !tbaa !10
  %i.ab = sext i16 %i.aa to i32
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.preheader40, label %.preheader.loopexit, !llvm.loop !68

.preheader.loopexit:                              ; preds = %.preheader40
  %indvars = trunc i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.034.lcssa = phi i32 [ %i.t, %bb.e ], [ %indvars, %.preheader.loopexit ] ; 2 uses
  %i.ad = load i16, ptr %0, align 4, !tbaa !7     ; 2 uses
  %i.ae = icmp sgt i16 %i.ad, 1
  br i1 %i.ae, label %.lr.ph.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %i.af = sext i16 %i.ad to i64
  %.pre = add nsw i64 %i.af, -1
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = sext i32 %.034.lcssa to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %indvars75 = trunc i64 %indvars.iv.next72 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.ar, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.034.lcssa, %.preheader.._crit_edge_crit_edge ], [ %indvars75, %._crit_edge.loopexit ]
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.pre-phi
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3  ; 2 uses
  %.not3853 = icmp eq i32 %i.ai, 0
  br i1 %.not3853, label %.loopexit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %._crit_edge
  %i.aj = sext i32 %.2.lcssa to i64
  br label %.lr.ph57

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv71 = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %indvars.iv.next72, %.lr.ph ] ; 2 uses
  %indvars.iv69 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next70, %.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv69
  %i.al = getelementptr i8, ptr %1, i64 %indvars.iv71
  %i.am = getelementptr i8, ptr %i.al, i64 -6
  %3 = load i32, ptr %i.ak, align 4, !tbaa !3     ; 7 uses
  %i.an = lshr i32 %3, 4
  %4 = lshr i32 %3, 8
  %5 = lshr i32 %3, 12
  %6 = lshr i32 %3, 16
  %7 = lshr i32 %3, 20
  %i.ao = lshr i32 %3, 24
  %8 = insertelement <7 x i32> poison, i32 %i.ao, i64 0
  %9 = insertelement <7 x i32> %8, i32 %7, i64 1
  %10 = insertelement <7 x i32> %9, i32 %6, i64 2
  %11 = insertelement <7 x i32> %10, i32 %5, i64 3
  %12 = insertelement <7 x i32> %11, i32 %4, i64 4
  %13 = insertelement <7 x i32> %12, i32 %i.an, i64 5
  %14 = insertelement <7 x i32> %13, i32 %3, i64 6
  %15 = and <7 x i32> %14, splat (i32 15)         ; 2 uses
  %16 = icmp samesign ult <7 x i32> %15, splat (i32 10)
  %17 = trunc nuw nsw <7 x i32> %15 to <7 x i8>   ; 2 uses
  %18 = or disjoint <7 x i8> %17, splat (i8 48)
  %19 = add nuw nsw <7 x i8> %17, splat (i8 55)
  %20 = select <7 x i1> %16, <7 x i8> %18, <7 x i8> %19
  store <7 x i8> %20, ptr %i.am, align 1, !tbaa !19
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -7 ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.ap = load i16, ptr %0, align 4, !tbaa !7
  %i.aq = sext i16 %i.ap to i64
  %i.ar = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next70, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !69

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %.lr.ph57
  %indvars.iv77 = phi i64 [ %i.aj, %.lr.ph57.preheader ], [ %indvars.iv.next78, %.lr.ph57 ] ; 2 uses
  %.055 = phi i32 [ %i.ai, %.lr.ph57.preheader ], [ %i.az, %.lr.ph57 ] ; 2 uses
  %i.at = and i32 %.055, 15                       ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, 10
  %i.av = trunc nuw nsw i32 %i.at to i8           ; 2 uses
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = add nuw nsw i8 %i.av, 55
  %.0.i39 = select i1 %i.au, i8 %i.aw, i8 %i.ax
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, -1
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %indvars.iv77
  store i8 %.0.i39, ptr %i.ay, align 1, !tbaa !19
  %i.az = lshr i32 %.055, 4                       ; 2 uses
  %.not38 = icmp eq i32 %i.az, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph57, !llvm.loop !70

.loopexit:                                        ; preds = %.lr.ph57, %._crit_edge, %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit, %bb.b, %bb.c
  %.136 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %_ZN14arrow_vendored17double_conversionL14SizeInHexCharsIjEEiT_.exit ], [ true, %._crit_edge ], [ true, %.lr.ph57 ]
  ret i1 %.136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !7
  %i.b = sext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = add nsw i32 %i.e, %i.b
  %.not = icmp sge i32 %1, %i.f
  %i.g = icmp slt i32 %1, %i.e
  %or.cond = or i1 %i.g, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub nsw i32 %1, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !7
  %i.b = sext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = add nsw i32 %i.e, %i.b                   ; 5 uses
  %i.g = load i16, ptr %1, align 4, !tbaa !7
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !10   ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 3 uses
  %i.l = add nsw i32 %i.k, %i.h                   ; 3 uses
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i32 %i.f, %i.l
  br i1 %i.n, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.o = tail call i16 @llvm.smin.i16(i16 %i.j, i16 %i.d)
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not.not.not40 = icmp sgt i32 %i.f, %i.p
  br i1 %.not.not.not40, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32
  %.not.not.not = icmp sgt i32 %.02443, %i.p
  br i1 %.not.not.not, label %.lr.ph, label %.loopexit, !llvm.loop !62

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.042 = phi i32 [ %.1, %bb.c ], [ undef, %.preheader ]
  %.024.in41 = phi i32 [ %.02443, %bb.c ], [ %i.f, %.preheader ] ; 5 uses
  %.02443 = add nsw i32 %.024.in41, -1            ; 4 uses
  %.not.i = icmp sgt i32 %.024.in41, %i.f
  %i.s = icmp sle i32 %.024.in41, %i.e
  %or.cond.i = or i1 %i.s, %.not.i
  br i1 %or.cond.i, label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = sub nsw i32 %.02443, %i.e
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  br label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit

_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit: ; preds = %.lr.ph, %bb.d
  %.0.i = phi i32 [ %i.w, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %.not.i29 = icmp sgt i32 %.024.in41, %i.l
  %i.x = icmp sle i32 %.024.in41, %i.k
  %or.cond.i30 = or i1 %i.x, %.not.i29
  br i1 %or.cond.i30, label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32, label %bb.e

bb.e:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit
  %i.y = sub nsw i32 %.02443, %i.k
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32

_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32: ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit, %bb.e
  %.0.i31 = phi i32 [ %i.ab, %bb.e ], [ 0, %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit ] ; 3 uses
  %.not = icmp ult i32 %.0.i, %.0.i31
  %.not34 = icmp ugt i32 %.0.i, %.0.i31
  %..0 = select i1 %.not34, i32 1, i32 %.042
  %cond1 = icmp eq i32 %.0.i, %.0.i31
  %.1 = select i1 %.not, i32 -1, i32 %..0         ; 2 uses
  br i1 %cond1, label %bb.c, label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge, !llvm.loop !62

_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge: ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32
  br label %.loopexit, !llvm.loop !62

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge, %bb.b, %bb.a
  %.3 = phi i32 [ 1, %bb.b ], [ -1, %bb.a ], [ %.1, %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge ], [ 0, %.preheader ], [ 0, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -1, 2) i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(516) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.pre = load i16, ptr %0, align 4, !tbaa !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre96 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !10
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %i.a = phi i16 [ %.pre96, %bb.a ], [ %i.i, %tailrecurse ] ; 2 uses
  %i.b = phi i16 [ %.pre, %bb.a ], [ %i.f, %tailrecurse ]
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr65, %tailrecurse ] ; 3 uses
  %.tr65 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.c = sext i16 %i.b to i32
  %i.d = sext i16 %i.a to i32                     ; 4 uses
  %i.e = add nsw i32 %i.d, %i.c                   ; 5 uses
  %i.f = load i16, ptr %.tr65, align 4, !tbaa !7  ; 2 uses
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %.tr65, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !10   ; 4 uses
  %i.j = sext i16 %i.i to i32                     ; 3 uses
  %i.k = add nsw i32 %i.j, %i.g                   ; 3 uses
  %i.l = icmp slt i32 %i.e, %i.k
  br i1 %i.l, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.n = add nsw i32 %i.e, 1
  %i.o = load i16, ptr %2, align 4, !tbaa !7
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !10   ; 2 uses
  %i.s = sext i16 %i.r to i32                     ; 3 uses
  %i.t = add nsw i32 %i.s, %i.p                   ; 6 uses
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp sgt i32 %i.e, %i.t
  br i1 %i.v, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp sle i32 %i.k, %i.d
  %i.w = icmp slt i32 %i.e, %i.t
  %or.cond = and i1 %.not, %i.w
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp slt i16 %i.i, %i.a
  %.val64 = load i16, ptr %i.m, align 2
  %i.y = select i1 %i.x, i16 %i.i, i16 %.val64
  %i.z = tail call i16 @llvm.smin.i16(i16 %i.r, i16 %i.y)
  %i.aa = sext i16 %i.z to i32                    ; 2 uses
  %.not50.not.not77 = icmp sgt i32 %i.t, %i.aa
  br i1 %.not50.not.not77, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr65, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
end_hunk_0
