inline.NumInlined: 150
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v84base6Bignum21DivideModuloIntBignumERKS1_:bb.a
bb.n:                                             ; preds = %.lr.ph76
  %i.dy = sub nsw i32 %.024.i.i75, %i.dn
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4
  br label %_ZNK2v84base6Bignum7BigitAtEi.exit.i.i

_ZNK2v84base6Bignum7BigitAtEi.exit.i.i:           ; preds = %bb.n, %.lr.ph76
  %.0.i.i.i = phi i32 [ %i.eb, %bb.n ], [ 0, %.lr.ph76 ] ; 3 uses
  %.not.i29.i.i = icmp sgt i32 %.024.in.i.i73, %i.dr
  %i.ec = icmp sle i32 %.024.in.i.i73, %i.dq
  %or.cond.i30.i.i = or i1 %i.ec, %.not.i29.i.i
  br i1 %or.cond.i30.i.i, label %_ZNK2v84base6Bignum7BigitAtEi.exit32.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK2v84base6Bignum7BigitAtEi.exit.i.i
  %i.ed = sub nsw i32 %.024.i.i75, %i.dq
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4
  br label %_ZNK2v84base6Bignum7BigitAtEi.exit32.i.i

_ZNK2v84base6Bignum7BigitAtEi.exit32.i.i:         ; preds = %bb.o, %_ZNK2v84base6Bignum7BigitAtEi.exit.i.i
  %.0.i31.i.i = phi i32 [ %i.eg, %bb.o ], [ 0, %_ZNK2v84base6Bignum7BigitAtEi.exit.i.i ] ; 3 uses
  %.not.i.i = icmp ult i32 %.0.i.i.i, %.0.i31.i.i
  %.not33.i.i = icmp ugt i32 %.0.i.i.i, %.0.i31.i.i
  %..0.i.i = select i1 %.not33.i.i, i32 1, i32 %.0.i.i74
  %cond1.i.i = icmp eq i32 %.0.i.i.i, %.0.i31.i.i
  %.1.i.i = select i1 %.not.i.i, i32 -1, i32 %..0.i.i ; 2 uses
  br i1 %cond1.i.i, label %bb.m, label %_ZN2v84base6Bignum9LessEqualERKS1_S3_.exit, !llvm.loop !53

_ZN2v84base6Bignum9LessEqualERKS1_S3_.exit:       ; preds = %_ZNK2v84base6Bignum7BigitAtEi.exit32.i.i
  %i.eh = icmp slt i32 %.1.i.i, 1
  br i1 %i.eh, label %_ZN2v84base6Bignum9LessEqualERKS1_S3_.exit.thread, label %_ZN2v84base6Bignum5ClampEv.exit

_ZN2v84base6Bignum9LessEqualERKS1_S3_.exit.thread: ; preds = %bb.m, %.preheader.i.i, %.preheader, %_ZN2v84base6Bignum9LessEqualERKS1_S3_.exit
  tail call void @_ZN2v84base6Bignum14SubtractBignumERKS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(536) %1)
  %i.ei = add i16 %.132, 1
  br label %.preheader, !llvm.loop !54

_ZN2v84base6Bignum5ClampEv.exit:                  ; preds = %bb.l, %_ZN2v84base6Bignum9LessEqualERKS1_S3_.exit, %bb.i, %.critedge.thread5.i, %.critedge.i, %bb.k, %bb.a
  %.2 = phi i16 [ 0, %bb.a ], [ %i.cv, %.critedge.thread5.i ], [ %i.di, %bb.k ], [ %i.cv, %bb.i ], [ %i.cv, %.critedge.i ], [ %.132, %_ZN2v84base6Bignum9LessEqualERKS1_S3_.exit ], [ %.132, %bb.l ]
  ret i16 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v84base6Bignum13SubtractTimesERKS1_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph56, label %_ZN2v84base6Bignum5ClampEv.exit

.lr.ph56:                                         ; preds = %.preheader, %.lr.ph56
  %.055 = phi i32 [ %i.c, %.lr.ph56 ], [ 0, %.preheader ]
  tail call void @_ZN2v84base6Bignum14SubtractBignumERKS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(536) %1)
  %i.c = add nuw nsw i32 %.055, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %2
  br i1 %exitcond.not, label %_ZN2v84base6Bignum5ClampEv.exit, label %.lr.ph56, !llvm.loop !55

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 532
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub nsw i32 %i.e, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.l = zext nneg i32 %2 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.o = sext i32 %i.h to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.035.lcssa = phi i32 [ 0, %bb.b ], [ %i.am, %bb.c ]
  %.lcssa45 = phi i32 [ %i.j, %bb.b ], [ %i.an, %bb.c ]
  %i.p = add nsw i32 %.lcssa45, %i.h              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not49 = icmp slt i32 %i.p, %i.r
  br i1 %.not49, label %.lr.ph53, label %.critedge

.lr.ph53:                                         ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.t = sext i32 %i.p to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.03547 = phi i32 [ 0, %.lr.ph ], [ %i.am, %bb.c ]
  %i.u = load ptr, ptr %i.m, align 8
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.x, %i.l
  %i.z = zext i32 %.03547 to i64
  %i.aa = add nuw nsw i64 %i.y, %i.z              ; 2 uses
  %i.ab = load ptr, ptr %i.n, align 8
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %i.o ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = trunc i64 %i.aa to i32
  %i.ag = and i32 %i.af, 268435455
  %i.ah = sub i32 %i.ae, %i.ag                    ; 2 uses
  %i.ai = and i32 %i.ah, 268435455
  store i32 %i.ai, ptr %i.ad, align 4
  %i.aj = lshr i32 %i.ah, 31
  %i.ak = lshr i64 %i.aa, 28
  %i.al = trunc i64 %i.ak to i32
  %i.am = add i32 %i.aj, %i.al                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i32, ptr %i.i, align 8             ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !56

bb.d:                                             ; preds = %.lr.ph53, %bb.e
  %indvars.iv63 = phi i64 [ %i.t, %.lr.ph53 ], [ %indvars.iv.next64, %bb.e ] ; 2 uses
  %.150 = phi i32 [ %.035.lcssa, %.lr.ph53 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.aq = icmp eq i32 %.150, 0
  br i1 %i.aq, label %_ZN2v84base6Bignum5ClampEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %i.s, align 8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv63 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sub i32 %i.at, %.150                    ; 2 uses
  %i.av = and i32 %i.au, 268435455
  store i32 %i.av, ptr %i.as, align 4
  %i.aw = lshr i32 %i.au, 31
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.ax = load i32, ptr %i.q, align 8             ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %.not = icmp slt i64 %indvars.iv.next64, %i.ay
  br i1 %.not, label %bb.d, label %.critedge, !llvm.loop !57

.critedge:                                        ; preds = %bb.e, %._crit_edge
  %.lcssa = phi i32 [ %i.r, %._crit_edge ], [ %i.ax, %bb.e ] ; 3 uses
  %i.az = icmp sgt i32 %.lcssa, 0
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = zext nneg i32 %.lcssa to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %_ZN2v84base6Bignum5ClampEv.exit

bb.g:                                             ; preds = %bb.f
  %i.bg = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.bg, ptr %i.q, align 8
  %i.bh = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bh, label %bb.f, label %.critedge.thread5.i, !llvm.loop !8

.critedge.i:                                      ; preds = %.critedge
  %i.bi = icmp eq i32 %.lcssa, 0
  br i1 %i.bi, label %.critedge.thread5.i, label %_ZN2v84base6Bignum5ClampEv.exit

.critedge.thread5.i:                              ; preds = %bb.g, %.critedge.i
  store i32 0, ptr %i.f, align 4
  br label %_ZN2v84base6Bignum5ClampEv.exit

_ZN2v84base6Bignum5ClampEv.exit:                  ; preds = %bb.d, %bb.f, %.lr.ph56, %.preheader, %.critedge.thread5.i, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK2v84base6Bignum11ToHexStringEPci(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %2, 2
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %1, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.e, align 1
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add i32 %i.g, %i.b
  %i.i = mul i32 %i.h, 7                          ; 2 uses
  %i.j = add i32 %i.i, -7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %i.b to i64
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not5.i = icmp eq i32 %i.p, 0
  br i1 %.not5.i, label %_ZN2v84baseL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %bb.d ]
  %.046.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.p, %bb.d ]
  %i.q = lshr i32 %.046.i, 4                      ; 2 uses
  %i.r = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN2v84baseL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i, !llvm.loop !58

_ZN2v84baseL14SizeInHexCharsIjEEiT_.exit:         ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.s = add nsw i32 %i.j, %.0.lcssa.i            ; 3 uses
  %.not = icmp slt i32 %i.s, %2
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN2v84baseL14SizeInHexCharsIjEEiT_.exit
  %i.t = add i32 %i.s, -1                         ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  store i8 0, ptr %i.v, align 1
  %i.w = load i32, ptr %i.f, align 4
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader41.preheader, label %.preheader

.preheader41.preheader:                           ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %1, i64 -6
  %3 = add i32 %.0.lcssa.i, %i.i
  %4 = add i32 %3, -15
  br label %.preheader41

.preheader41:                                     ; preds = %.preheader41.preheader, %.preheader41
  %indvars.iv66 = phi i32 [ %4, %.preheader41.preheader ], [ %indvars.iv.next67, %.preheader41 ] ; 2 uses
  %.03346.a = phi i32 [ %i.t, %.preheader41.preheader ], [ %indvars.iv.next, %.preheader41 ] ; 2 uses
  %.03346 = phi i32 [ 0, %.preheader41.preheader ], [ %i.y, %.preheader41 ]
  %5 = sext i32 %.03346.a to i64
  %scevgep63 = getelementptr i8, ptr %scevgep, i64 %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep63, i8 48, i64 7, i1 false)
  %i.y = add nuw nsw i32 %.03346, 1               ; 2 uses
  %i.z = load i32, ptr %i.f, align 4
  %i.aa = icmp slt i32 %i.y, %i.z
  %indvars.iv.next = add i32 %.03346.a, -7
  %indvars.iv.next67 = add i32 %indvars.iv66, -7
  br i1 %i.aa, label %.preheader41, label %.preheader, !llvm.loop !59

.preheader:                                       ; preds = %.preheader41, %bb.e
  %.034.lcssa = phi i32 [ %i.t, %bb.e ], [ %indvars.iv66, %.preheader41 ] ; 2 uses
  %i.ab = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %i.ad = add nsw i32 %i.ab, -1
  %i.ae = sext i32 %i.ad to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph
  %indvars.iv.next72.6 = add i32 %indvars.iv69, -7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.._crit_edge_crit_edge, %.lr.ph.preheader
  %.pre-phi = phi i64 [ %i.ae, %.preheader.._crit_edge_crit_edge ], [ %i.bs, %.lr.ph.preheader ]
  %.2.lcssa = phi i32 [ %.034.lcssa, %.preheader.._crit_edge_crit_edge ], [ %indvars.iv.next72.6, %.lr.ph.preheader ]
  %i.af = load ptr, ptr %i.k, align 8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.pre-phi
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not3854 = icmp eq i32 %i.ah, 0
  br i1 %.not3854, label %.loopexit, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %6 = sext i32 %.2.lcssa to i64
  br label %.lr.ph58

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next66, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv69 = phi i32 [ %indvars.iv.next70, %.lr.ph ], [ %.034.lcssa, %.preheader ] ; 3 uses
  %7 = sext i32 %indvars.iv69 to i64              ; 4 uses
  %i.ai = load ptr, ptr %i.k, align 8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4            ; 7 uses
  %i.al = and i32 %i.ak, 15                       ; 2 uses
  %i.am = icmp samesign ult i32 %i.al, 10
  %i.an = trunc nuw nsw i32 %i.al to i8
  %.0.v.i = select i1 %i.am, i8 48, i8 55
  %.0.i = add nuw nsw i8 %.0.v.i, %i.an
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %7
  store i8 %.0.i, ptr %i.ao, align 1
  %i.ap = lshr i32 %i.ak, 4
  %i.aq = and i32 %i.ap, 15                       ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, 10
  %i.as = trunc nuw nsw i32 %i.aq to i8
  %.0.v.i.1 = select i1 %i.ar, i8 48, i8 55
  %.0.i.1 = add nuw nsw i8 %.0.v.i.1, %i.as
  %i.at = getelementptr i8, ptr %1, i64 %7
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  store i8 %.0.i.1, ptr %i.au, align 1
  %i.av = lshr i32 %i.ak, 8
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %i.ax = icmp samesign ult i32 %i.aw, 10
  %i.ay = trunc nuw nsw i32 %i.aw to i8
  %.0.v.i.2 = select i1 %i.ax, i8 48, i8 55
  %.0.i.2 = add nuw nsw i8 %.0.v.i.2, %i.ay
  %i.az = getelementptr i8, ptr %1, i64 %7
  %i.ba = getelementptr i8, ptr %i.az, i64 -2
  store i8 %.0.i.2, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %1, i64 %7
  %i.bc = getelementptr i8, ptr %i.bb, i64 -6
  %i.bd = lshr i32 %i.ak, 12
  %i.be = lshr i32 %i.ak, 16
  %i.bf = lshr i32 %i.ak, 20
  %i.bg = lshr i32 %i.ak, 24
  %i.bh = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.bf, i64 1
  %i.bj = insertelement <4 x i32> %i.bi, i32 %i.be, i64 2
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.bd, i64 3
  %i.bl = and <4 x i32> %i.bk, splat (i32 15)     ; 2 uses
  %i.bm = icmp samesign ult <4 x i32> %i.bl, splat (i32 10)
  %i.bn = trunc nuw nsw <4 x i32> %i.bl to <4 x i8>
  %i.bo = select <4 x i1> %i.bm, <4 x i8> splat (i8 48), <4 x i8> splat (i8 55)
  %i.bp = add nuw nsw <4 x i8> %i.bo, %i.bn
  store <4 x i8> %i.bp, ptr %i.bc, align 1
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load i32, ptr %i.a, align 8
  %i.br = add nsw i32 %i.bq, -1
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = icmp slt i64 %indvars.iv.next66, %i.bs
  %indvars.iv.next70 = add i32 %indvars.iv69, -7
  br i1 %i.bt, label %.lr.ph, label %.lr.ph.preheader, !llvm.loop !60

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv68 = phi i64 [ %6, %.lr.ph58.preheader ], [ %indvars.iv.next69, %.lr.ph58 ] ; 2 uses
  %.056 = phi i32 [ %i.ah, %.lr.ph58.preheader ], [ %i.by, %.lr.ph58 ] ; 2 uses
  %i.bu = and i32 %.056, 15                       ; 2 uses
  %i.bv = icmp samesign ult i32 %i.bu, 10
  %i.bw = trunc nuw nsw i32 %i.bu to i8
  %.0.v.i39 = select i1 %i.bv, i8 48, i8 55
  %.0.i40 = add nuw nsw i8 %.0.v.i39, %i.bw
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, -1
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %indvars.iv68
  store i8 %.0.i40, ptr %i.bx, align 1
  %i.by = lshr i32 %.056, 4                       ; 2 uses
  %.not38 = icmp eq i32 %i.by, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph58, !llvm.loop !61

.loopexit:                                        ; preds = %.lr.ph58, %._crit_edge, %_ZN2v84baseL14SizeInHexCharsIjEEiT_.exit, %bb.b, %bb.c
  %.136 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %_ZN2v84baseL14SizeInHexCharsIjEEiT_.exit ], [ true, %._crit_edge ], [ true, %.lr.ph58 ]
  ret i1 %.136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK2v84base6Bignum7BigitAtEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = add nsw i32 %i.d, %i.b
  %.not = icmp sge i32 %1, %i.e
  %i.f = icmp slt i32 %1, %i.d
  %or.cond = or i1 %i.f, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.h = sub nsw i32 %1, %i.d
  %i.i = zext nneg i32 %i.h to i64
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  %i.l = load i32, ptr %i.k, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN2v84base6Bignum7CompareERKS1_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = add nsw i32 %i.d, %i.b                   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 532
  %i.i = load i32, ptr %i.h, align 4              ; 4 uses
  %i.j = add nsw i32 %i.i, %i.g                   ; 3 uses
  %i.k = icmp slt i32 %i.e, %i.j
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.e, %i.j
  br i1 %i.l, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.d) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.q = load ptr, ptr %i.p, align 8
  %.not.not.not40 = icmp sgt i32 %i.e, %i.m
  br i1 %.not.not.not40, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %_ZNK2v84base6Bignum7BigitAtEi.exit32
  %.not.not.not = icmp sgt i32 %.02443, %i.m
  br i1 %.not.not.not, label %.lr.ph, label %.loopexit, !llvm.loop !53

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.042 = phi i32 [ %.1, %bb.c ], [ undef, %.preheader ]
  %.024.in41 = phi i32 [ %.02443, %bb.c ], [ %i.e, %.preheader ] ; 5 uses
  %.02443 = add nsw i32 %.024.in41, -1            ; 4 uses
  %.not.i = icmp sgt i32 %.024.in41, %i.e
  %i.r = icmp sle i32 %.024.in41, %i.d
  %or.cond.i = or i1 %i.r, %.not.i
  br i1 %or.cond.i, label %_ZNK2v84base6Bignum7BigitAtEi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.s = sub nsw i32 %.02443, %i.d
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  br label %_ZNK2v84base6Bignum7BigitAtEi.exit

_ZNK2v84base6Bignum7BigitAtEi.exit:               ; preds = %.lr.ph, %bb.d
  %.0.i = phi i32 [ %i.v, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %.not.i29 = icmp sgt i32 %.024.in41, %i.j
  %i.w = icmp sle i32 %.024.in41, %i.i
  %or.cond.i30 = or i1 %i.w, %.not.i29
  br i1 %or.cond.i30, label %_ZNK2v84base6Bignum7BigitAtEi.exit32, label %bb.e

bb.e:                                             ; preds = %_ZNK2v84base6Bignum7BigitAtEi.exit
  %i.x = sub nsw i32 %.02443, %i.i
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  br label %_ZNK2v84base6Bignum7BigitAtEi.exit32

_ZNK2v84base6Bignum7BigitAtEi.exit32:             ; preds = %_ZNK2v84base6Bignum7BigitAtEi.exit, %bb.e
  %.0.i31 = phi i32 [ %i.aa, %bb.e ], [ 0, %_ZNK2v84base6Bignum7BigitAtEi.exit ] ; 3 uses
  %.not = icmp ult i32 %.0.i, %.0.i31
  %.not33 = icmp ugt i32 %.0.i, %.0.i31
  %..0 = select i1 %.not33, i32 1, i32 %.042
  %cond1 = icmp eq i32 %.0.i, %.0.i31
  %.1 = select i1 %.not, i32 -1, i32 %..0         ; 2 uses
  br i1 %cond1, label %bb.c, label %_ZNK2v84base6Bignum7BigitAtEi.exit32..loopexit.loopexit_crit_edge, !llvm.loop !53

_ZNK2v84base6Bignum7BigitAtEi.exit32..loopexit.loopexit_crit_edge: ; preds = %_ZNK2v84base6Bignum7BigitAtEi.exit32
  br label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZNK2v84base6Bignum7BigitAtEi.exit32..loopexit.loopexit_crit_edge, %bb.b, %bb.a
  %.3 = phi i32 [ 1, %bb.b ], [ -1, %bb.a ], [ %.1, %_ZNK2v84base6Bignum7BigitAtEi.exit32..loopexit.loopexit_crit_edge ], [ 0, %.preheader ], [ 0, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN2v84base6Bignum11PlusCompareERKS1_S3_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 528
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %0, i64 532
  %.pre90 = load i32, ptr %.phi.trans.insert89, align 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %i.a = phi i32 [ %.pre90, %bb.a ], [ %i.g, %tailrecurse ] ; 6 uses
  %i.b = phi i32 [ %.pre, %bb.a ], [ %i.e, %tailrecurse ]
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr64, %tailrecurse ] ; 2 uses
  %.tr64 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.c = add nsw i32 %i.a, %i.b                   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr64, i64 528
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.tr64, i64 532
  %i.g = load i32, ptr %i.f, align 4              ; 6 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = icmp slt i32 %i.c, %i.h
  br i1 %i.i, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.j = add nsw i32 %i.c, 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 532
  %i.n = load i32, ptr %i.m, align 4              ; 5 uses
  %i.o = add nsw i32 %i.n, %i.l                   ; 6 uses
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp sgt i32 %i.c, %i.o
  br i1 %i.q, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp sge i32 %i.a, %i.h
  %i.r = icmp slt i32 %i.c, %i.o
  %or.cond = and i1 %.not, %i.r
  br i1 %or.cond, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.a)
  %i.t = icmp slt i32 %i.n, %i.s
  %.sroa.speculate.load.false.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.a)
  %.sroa.speculated = select i1 %i.t, i32 %i.n, i32 %.sroa.speculate.load.false.sroa.speculated ; 2 uses
  %.not50.not.not70 = icmp sgt i32 %i.o, %.sroa.speculated
  br i1 %.not50.not.not70, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.tr, i64 512
  %i.v = getelementptr inbounds nuw i8, ptr %.tr64, i64 512
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.x = load ptr, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.04072 = phi i32 [ 0, %.lr.ph ], [ %i.au, %bb.j ]
  %.043.in71 = phi i32 [ %i.o, %.lr.ph ], [ %.04373, %bb.j ] ; 7 uses
  %.04373 = add nsw i32 %.043.in71, -1            ; 5 uses
  %.not.i = icmp sgt i32 %.043.in71, %i.c
  %i.y = icmp sle i32 %.043.in71, %i.a
  %or.cond.i = or i1 %i.y, %.not.i
  br i1 %or.cond.i, label %_ZNK2v84base6Bignum7BigitAtEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sub nsw i32 %.04373, %i.a
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = load ptr, ptr %i.u, align 8
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load i32, ptr %i.ac, align 4
  br label %_ZNK2v84base6Bignum7BigitAtEi.exit

_ZNK2v84base6Bignum7BigitAtEi.exit:               ; preds = %bb.e, %bb.f
end_hunk_0
