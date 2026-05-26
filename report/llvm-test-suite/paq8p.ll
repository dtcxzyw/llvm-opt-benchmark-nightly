inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_Z8wavModelR5Mixer:bb.a
  %i.gt = load i32, ptr @bpos, align 4, !tbaa !4
  %.not301 = icmp eq i32 %i.gt, 0
  br i1 %.not301, label %bb.bo, label %bb.co

bb.bo:                                            ; preds = %bb.bn
  %i.gu = load i32, ptr @_ZZ8wavModelR5MixerE1s, align 4, !tbaa !4
  %i.gv = sub i32 %i.gq, %i.gr
  %i.gw = add i32 %i.gv, %i.gu                    ; 2 uses
  %i.gx = load i32, ptr @_ZZ8wavModelR5MixerE5bytes, align 4, !tbaa !4 ; 2 uses
  %i.gy = srem i32 %i.gw, %i.gx
  %i.gz = load i32, ptr @_ZZ8wavModelR5MixerE1w, align 4, !tbaa !4 ; 31 uses
  %i.ha = srem i32 %i.gw, %i.gz                   ; 13 uses
  %i.hb = sdiv i32 %i.ha, %i.gx                   ; 5 uses
  %.not302 = icmp eq i32 %i.gy, 0
  br i1 %.not302, label %.preheader508, label %_Z1ciiiii.exit395

.preheader508:                                    ; preds = %bb.bo
  %i.hc = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 3 uses
  %.b285526 = load i1, ptr @_ZL1D, align 4        ; 3 uses
  %i.hd = select i1 %.b285526, i32 12, i32 0
  %i.he = add nuw nsw i32 %i.hd, %i.hc
  %.not303527 = icmp slt i32 %i.he, 0
  br i1 %.not303527, label %._crit_edge529, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader508
  %i.hf = sext i32 %i.hb to i64                   ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.hf
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.hf
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph, %bb.bs
  %.b285732 = phi i1 [ %.b285526, %.lr.ph ], [ %.b285, %bb.bs ]
  %i.hh = phi i32 [ %i.hc, %.lr.ph ], [ %i.hw, %bb.bs ] ; 2 uses
  %indvars.iv666 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next667, %bb.bs ] ; 6 uses
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !4  ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv666, %i.hj
  br i1 %i.hk, label %._crit_edge758.a, label %bb.bq

._crit_edge758.a:                                 ; preds = %bb.bp
  %.pre762 = trunc nuw nsw i64 %indvars.iv666 to i32
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hl = xor i32 %i.hh, -1
  %i.hm = trunc nuw nsw i64 %indvars.iv666 to i32 ; 2 uses
  %i.hn = add i32 %i.hm, %i.hl                    ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  %i.hp = icmp slt i32 %i.hn, %i.hi
  %or.cond321 = and i1 %i.ho, %i.hp
  br i1 %or.cond321, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge758.a, %bb.bq
  %.pre-phi763 = phi i32 [ %.pre762, %._crit_edge758.a ], [ %i.hm, %bb.bq ]
  %gep530 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv666 ; 2 uses
  %i.hq = load double, ptr %gep530, align 8, !tbaa !186
  %i.hr = tail call noundef i32 @_Z1Xii(i32 noundef 0, i32 noundef 1)
  %i.hs = tail call noundef i32 @_Z1Xii(i32 noundef %.pre-phi763, i32 noundef 1)
  %i.ht = mul nsw i32 %i.hs, %i.hr
  %i.hu = sitofp i32 %i.ht to double
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hq, double f0x3FEFDF3B645A1CAC, double %i.hu)
  store double %i.hv, ptr %gep530, align 8, !tbaa !186
  %.pre731 = load i32, ptr @_ZL1S, align 4, !tbaa !4
  %.b285.pre = load i1, ptr @_ZL1D, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %.b285 = phi i1 [ %.b285732, %bb.bq ], [ %.b285.pre, %bb.br ] ; 3 uses
  %i.hw = phi i32 [ %i.hh, %bb.bq ], [ %.pre731, %bb.br ] ; 3 uses
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1
  %i.hx = select i1 %.b285, i32 12, i32 0
  %i.hy = add nuw nsw i32 %i.hx, %i.hw
  %i.hz = sext i32 %i.hy to i64
  %.not303.not = icmp slt i64 %indvars.iv666, %i.hz
  br i1 %.not303.not, label %bb.bp, label %._crit_edge529, !llvm.loop !196

._crit_edge529:                                   ; preds = %bb.bs, %.preheader508
  %.b284532 = phi i1 [ %.b285526, %.preheader508 ], [ %.b285, %bb.bs ]
  %i.ia = phi i32 [ %i.hc, %.preheader508 ], [ %i.hw, %bb.bs ] ; 4 uses
  %i.ib = load i32, ptr @_ZZ8wavModelR5MixerE8channels, align 4, !tbaa !4
  %i.ic = icmp eq i32 %i.ib, 2
  br i1 %i.ic, label %.preheader507, label %.loopexit506

.preheader507:                                    ; preds = %._crit_edge529
  br i1 %.b284532, label %.lr.ph536, label %.preheader505

.lr.ph536:                                        ; preds = %.preheader507
  %i.id = sext i32 %i.hb to i64                   ; 3 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.id
  %i.if = sext i32 %i.ia to i64
  br label %bb.bt

.preheader505:                                    ; preds = %bb.bv, %.preheader507
  %i.ig = phi i32 [ %i.ia, %.preheader507 ], [ %i.jf, %bb.bv ] ; 3 uses
  %.not305537 = icmp slt i32 %i.ig, 1
  br i1 %.not305537, label %.loopexit506, label %.lr.ph539

.lr.ph539:                                        ; preds = %.preheader505
  %i.ih = sext i32 %i.hb to i64                   ; 3 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.ih
  br label %bb.bw

bb.bt:                                            ; preds = %.lr.ph536, %bb.bv
  %.b284735 = phi i1 [ true, %.lr.ph536 ], [ %.b284, %bb.bv ]
  %i.ij = phi i32 [ %i.ia, %.lr.ph536 ], [ %i.jf, %bb.bv ] ; 3 uses
  %indvars.iv669 = phi i64 [ %i.if, %.lr.ph536 ], [ %indvars.iv.next670, %bb.bv ] ; 2 uses
  %indvars671 = trunc nsw i64 %indvars.iv669 to i32
  %indvars.iv.next670 = add nsw i64 %indvars.iv669, 1 ; 5 uses
  %i.ik = sub i32 %indvars671, %i.ij
  %i.il = load i32, ptr %i.ie, align 4, !tbaa !4
  %i.im = icmp slt i32 %i.ik, %i.il
  br i1 %i.im, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.in = add nuw nsw i32 %i.ij, 1                ; 2 uses
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [784 x i8], ptr %i.a, i64 %i.io
  %i.iq = getelementptr inbounds [16 x i8], ptr %i.ip, i64 %indvars.iv.next670
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.id
  %i.is = load double, ptr %i.ir, align 8, !tbaa !186
  %i.it = tail call noundef i32 @_Z1Xii(i32 noundef %i.in, i32 noundef 1)
  %i.iu = trunc nsw i64 %indvars.iv.next670 to i32
  %i.iv = tail call noundef i32 @_Z1Xii(i32 noundef %i.iu, i32 noundef 1)
  %i.iw = mul nsw i32 %i.iv, %i.it
  %i.ix = sitofp i32 %i.iw to double
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.is, double f0x3FEFDF3B645A1CAC, double %i.ix)
  %i.iz = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 2 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [784 x i8], ptr %i.a, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 784
  %i.jd = getelementptr inbounds [16 x i8], ptr %i.jc, i64 %indvars.iv.next670
  %i.je = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.id
  store double %i.iy, ptr %i.je, align 8, !tbaa !186
  %.b284.pre = load i1, ptr @_ZL1D, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %.b284 = phi i1 [ %.b284735, %bb.bt ], [ %.b284.pre, %bb.bu ] ; 2 uses
  %i.jf = phi i32 [ %i.ij, %bb.bt ], [ %i.iz, %bb.bu ] ; 3 uses
  %i.jg = select i1 %.b284, i32 12, i32 0
  %i.jh = add nuw nsw i32 %i.jg, %i.jf
  %i.ji = sext i32 %i.jh to i64
  %.not304.not = icmp slt i64 %indvars.iv.next670, %i.ji
  br i1 %.not304.not, label %bb.bt, label %.preheader505, !llvm.loop !197

bb.bw:                                            ; preds = %.lr.ph539, %bb.by
  %i.jj = phi i32 [ %i.ig, %.lr.ph539 ], [ %i.kg, %bb.by ] ; 3 uses
  %indvars.iv672 = phi i64 [ 1, %.lr.ph539 ], [ %indvars.iv.next673, %bb.by ] ; 5 uses
  %i.jk = load i32, ptr %i.ii, align 4, !tbaa !4
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp slt i64 %indvars.iv672, %i.jl
  br i1 %i.jm, label %bb.bx, label %._crit_edge759

._crit_edge759:                                   ; preds = %bb.bw
  %.pre760 = sext i32 %i.jj to i64
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jn = getelementptr inbounds nuw [784 x i8], ptr %i.a, i64 %indvars.iv672 ; 2 uses
  %i.jo = sext i32 %i.jj to i64
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.ih
  %i.js = load double, ptr %i.jr, align 8, !tbaa !186
  %i.jt = trunc nuw nsw i64 %indvars.iv672 to i32
  %i.ju = tail call noundef i32 @_Z1Xii(i32 noundef %i.jt, i32 noundef 1)
  %i.jv = load i32, ptr @_ZL1S, align 4, !tbaa !4
  %i.jw = add nuw nsw i32 %i.jv, 1
  %i.jx = tail call noundef i32 @_Z1Xii(i32 noundef %i.jw, i32 noundef 1)
  %i.jy = mul nsw i32 %i.jx, %i.ju
  %i.jz = sitofp i32 %i.jy to double
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.js, double f0x3FEFDF3B645A1CAC, double %i.jz)
  %i.kb = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 2 uses
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.ih
  store double %i.ka, ptr %i.kf, align 8, !tbaa !186
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge759, %bb.bx
  %.pre-phi761 = phi i64 [ %.pre760, %._crit_edge759 ], [ %i.kc, %bb.bx ]
  %i.kg = phi i32 [ %i.jj, %._crit_edge759 ], [ %i.kb, %bb.bx ] ; 2 uses
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1
  %.not305.not = icmp slt i64 %indvars.iv672, %.pre-phi761
  br i1 %.not305.not, label %bb.bw, label %.loopexit506, !llvm.loop !198

.loopexit506:                                     ; preds = %bb.by, %.preheader505, %._crit_edge529
  %i.kh = phi i32 [ %i.ia, %._crit_edge529 ], [ %i.ig, %.preheader505 ], [ %i.kg, %bb.by ] ; 6 uses
  %i.ki = sext i32 %i.hb to i64                   ; 12 uses
  %i.kj = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE1n, i64 %i.ki ; 3 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !4
  %i.kl = add nsw i32 %i.kk, 1                    ; 2 uses
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !4
  %i.km = load i32, ptr @_ZZ8wavModelR5MixerE1K, align 4, !tbaa !4
  %i.kn = icmp eq i32 %i.kl, %i.km
  br i1 %i.kn, label %bb.bz, label %.loopexit506._crit_edge

.loopexit506._crit_edge:                          ; preds = %.loopexit506
  %.b628.pre = load i1, ptr @_ZL1D, align 4
  %.pre750 = select i1 %.b628.pre, i32 12, i32 0
  %.pre752 = add nuw nsw i32 %.pre750, %i.kh
  br label %bb.cl

bb.bz:                                            ; preds = %.loopexit506
  %i.ko = load i32, ptr @_ZZ8wavModelR5MixerE8channels, align 4, !tbaa !4
  %i.kp = icmp eq i32 %i.ko, 1
  %invariant.gep566 = getelementptr [8 x i8], ptr %i.a, i64 %i.ki ; 4 uses
  %.b283570 = load i1, ptr @_ZL1D, align 4        ; 3 uses
  %i.kq = select i1 %.b283570, i32 12, i32 0      ; 3 uses
  %i.kr = add i32 %i.kq, %i.kh                    ; 3 uses
  %.not310571 = icmp slt i32 %i.kr, 1             ; 2 uses
  br i1 %i.kp, label %.preheader499, label %.preheader503

.preheader503:                                    ; preds = %bb.bz
  br i1 %.not310571, label %.thread, label %.lr.ph556

.preheader499:                                    ; preds = %bb.bz
  br i1 %.not310571, label %.thread, label %.preheader498

.preheader498:                                    ; preds = %.preheader499, %._crit_edge561
  %.b283747 = phi i1 [ %.b282, %._crit_edge561 ], [ %.b283570, %.preheader499 ]
  %i.ks = phi i32 [ %i.lh, %._crit_edge561 ], [ %i.kh, %.preheader499 ] ; 2 uses
  %indvars.iv681 = phi i64 [ %indvars.iv.next682, %._crit_edge561 ], [ 1, %.preheader499 ] ; 6 uses
  %i.kt = select i1 %.b283747, i32 12, i32 0      ; 2 uses
  %i.ku = add i32 %i.kt, %i.ks                    ; 2 uses
  %i.kv = sext i32 %i.ku to i64
  %.not316558 = icmp sgt i64 %indvars.iv681, %i.kv
  br i1 %.not316558, label %.loopexit500, label %.lr.ph560

.lr.ph560:                                        ; preds = %.preheader498
  %i.kw = add nsw i64 %indvars.iv681, -1          ; 2 uses
  %gep567 = getelementptr [784 x i8], ptr %invariant.gep566, i64 %i.kw
  %gep569 = getelementptr [784 x i8], ptr %invariant.gep566, i64 %indvars.iv681
  %i.kx = trunc nuw nsw i64 %i.kw to i32
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph560, %bb.ca
  %indvars.iv683.a = phi i64 [ %indvars.iv681, %.lr.ph560 ], [ %indvars.iv.next684, %bb.ca ] ; 4 uses
  %i.ky = add nsw i64 %indvars.iv683.a, -1        ; 2 uses
  %gep563 = getelementptr [16 x i8], ptr %gep567, i64 %i.ky
  %i.kz = load double, ptr %gep563, align 8, !tbaa !186
  %i.la = tail call noundef i32 @_Z1Xii(i32 noundef %i.kx, i32 noundef 1)
  %i.lb = trunc nuw nsw i64 %i.ky to i32
  %i.lc = tail call noundef i32 @_Z1Xii(i32 noundef %i.lb, i32 noundef 1)
  %i.ld = mul nsw i32 %i.lc, %i.la
  %i.le = sitofp i32 %i.ld to double
  %i.lf = fsub double %i.kz, %i.le
  %i.lg = fdiv double %i.lf, f0x3FEFDF3B645A1CAC
  %gep565 = getelementptr [16 x i8], ptr %gep569, i64 %indvars.iv683.a
  store double %i.lg, ptr %gep565, align 8, !tbaa !186
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv683.a, 1
  %i.lh = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 3 uses
  %.b282 = load i1, ptr @_ZL1D, align 4           ; 2 uses
  %i.li = select i1 %.b282, i32 12, i32 0         ; 2 uses
  %i.lj = add i32 %i.li, %i.lh                    ; 2 uses
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %.not316.not = icmp slt i64 %indvars.iv683.a, %i.lk
  br i1 %.not316.not, label %bb.ca, label %._crit_edge561, !llvm.loop !199

._crit_edge561:                                   ; preds = %bb.ca
  %i.ll = icmp slt i64 %indvars.iv681, %i.lk
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1
  br i1 %i.ll, label %.preheader498, label %.loopexit500, !llvm.loop !200

.lr.ph556:                                        ; preds = %.preheader503, %.loopexit502
  %.b281744 = phi i1 [ %.b281, %.loopexit502 ], [ %.b283570, %.preheader503 ] ; 5 uses
  %i.lm = phi i32 [ %i.mm, %.loopexit502 ], [ %i.kh, %.preheader503 ] ; 6 uses
  %indvars.iv675 = phi i64 [ %indvars.iv.next676, %.loopexit502 ], [ 1, %.preheader503 ] ; 7 uses
  %i.ln = add nuw nsw i32 %i.lm, 1
  %i.lo = zext i32 %i.ln to i64
  %.not307 = icmp eq i64 %indvars.iv675, %i.lo
  br i1 %.not307, label %.loopexit502, label %.preheader501

.preheader501:                                    ; preds = %.lr.ph556
  %i.lp = select i1 %.b281744, i32 12, i32 0
  %i.lq = add nuw nsw i32 %i.lp, %i.lm
  %i.lr = sext i32 %i.lq to i64
  %.not308541 = icmp sgt i64 %indvars.iv675, %i.lr
  br i1 %.not308541, label %.loopexit502, label %.lr.ph543

.lr.ph543:                                        ; preds = %.preheader501
  %i.ls = add nsw i64 %indvars.iv675, -1          ; 2 uses
  %gep549 = getelementptr [784 x i8], ptr %invariant.gep566, i64 %i.ls
  %gep551 = getelementptr [784 x i8], ptr %invariant.gep566, i64 %indvars.iv675
  %i.lt = trunc nuw nsw i64 %i.ls to i32
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph543, %bb.cd
  %.b281742 = phi i1 [ %.b281744, %.lr.ph543 ], [ %.b281741, %bb.cd ]
  %i.lu = phi i32 [ %i.lm, %.lr.ph543 ], [ %i.mh, %bb.cd ]
  %.b280739 = phi i1 [ %.b281744, %.lr.ph543 ], [ %.b280, %bb.cd ]
  %i.lv = phi i32 [ %i.lm, %.lr.ph543 ], [ %i.mi, %bb.cd ] ; 2 uses
  %indvars.iv677 = phi i64 [ %indvars.iv675, %.lr.ph543 ], [ %indvars.iv.next678, %bb.cd ] ; 5 uses
  %i.lw = add nuw nsw i32 %i.lv, 1
  %i.lx = zext i32 %i.lw to i64
  %.not309 = icmp eq i64 %indvars.iv677, %i.lx
  br i1 %.not309, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ly = add nsw i64 %indvars.iv677, -1          ; 2 uses
  %gep545 = getelementptr [16 x i8], ptr %gep549, i64 %i.ly
  %i.lz = load double, ptr %gep545, align 8, !tbaa !186
  %i.ma = tail call noundef i32 @_Z1Xii(i32 noundef %i.lt, i32 noundef 1)
  %i.mb = trunc nuw nsw i64 %i.ly to i32
  %i.mc = tail call noundef i32 @_Z1Xii(i32 noundef %i.mb, i32 noundef 1)
  %i.md = mul nsw i32 %i.mc, %i.ma
  %i.me = sitofp i32 %i.md to double
  %i.mf = fsub double %i.lz, %i.me
  %i.mg = fdiv double %i.mf, f0x3FEFDF3B645A1CAC
  %gep547 = getelementptr [16 x i8], ptr %gep551, i64 %indvars.iv677
  store double %i.mg, ptr %gep547, align 8, !tbaa !186
  %.pre738 = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 2 uses
  %.b280.pre = load i1, ptr @_ZL1D, align 4       ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %.b281741 = phi i1 [ %.b281742, %bb.cb ], [ %.b280.pre, %bb.cc ] ; 2 uses
  %i.mh = phi i32 [ %i.lu, %bb.cb ], [ %.pre738, %bb.cc ] ; 2 uses
  %.b280 = phi i1 [ %.b280739, %bb.cb ], [ %.b280.pre, %bb.cc ] ; 2 uses
  %i.mi = phi i32 [ %i.lv, %bb.cb ], [ %.pre738, %bb.cc ] ; 2 uses
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1
  %i.mj = select i1 %.b280, i32 12, i32 0
  %i.mk = add nuw nsw i32 %i.mj, %i.mi
  %i.ml = sext i32 %i.mk to i64
  %.not308.not = icmp slt i64 %indvars.iv677, %i.ml
  br i1 %.not308.not, label %bb.cb, label %.loopexit502, !llvm.loop !201

.loopexit502:                                     ; preds = %bb.cd, %.preheader501, %.lr.ph556
  %.b281 = phi i1 [ %.b281744, %.lr.ph556 ], [ %.b281744, %.preheader501 ], [ %.b281741, %bb.cd ] ; 2 uses
  %i.mm = phi i32 [ %i.lm, %.lr.ph556 ], [ %i.lm, %.preheader501 ], [ %i.mh, %bb.cd ] ; 3 uses
  %indvars.iv.next676 = add nuw nsw i64 %indvars.iv675, 1
  %i.mn = select i1 %.b281, i32 12, i32 0         ; 2 uses
  %i.mo = add i32 %i.mn, %i.mm                    ; 2 uses
  %i.mp = sext i32 %i.mo to i64
  %.not306.not = icmp slt i64 %indvars.iv675, %i.mp
  br i1 %.not306.not, label %.lr.ph556, label %.loopexit500, !llvm.loop !202

.loopexit500:                                     ; preds = %.loopexit502, %.preheader498, %._crit_edge561
  %.pre-phi754 = phi i32 [ %i.lj, %._crit_edge561 ], [ %i.ku, %.preheader498 ], [ %i.mo, %.loopexit502 ] ; 8 uses
  %.pre-phi = phi i32 [ %i.li, %._crit_edge561 ], [ %i.kt, %.preheader498 ], [ %i.mn, %.loopexit502 ] ; 2 uses
  %i.mq = phi i32 [ %i.lh, %._crit_edge561 ], [ %i.ks, %.preheader498 ], [ %i.mm, %.loopexit502 ] ; 2 uses
  %.not311594 = icmp slt i32 %.pre-phi754, 1
  br i1 %.not311594, label %.thread, label %.lr.ph596.preheader

.lr.ph596.preheader:                              ; preds = %.loopexit500
  %1 = add nuw i32 %.pre-phi754, 1                ; 3 uses
  %2 = zext nneg i32 %.pre-phi754 to i64
  %wide.trip.count707 = zext i32 %1 to i64
  %3 = add nsw i32 %.pre-phi754, -2
  br label %.lr.ph597

.loopexit496:                                     ; preds = %.lr.ph592.split.prol.loopexit, %.lr.ph592.split, %._crit_edge583.us, %bb.cg
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1
  %exitcond708.not = icmp eq i64 %indvars.iv.next709, %wide.trip.count707
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond708.not, label %.thread, label %.lr.ph597, !llvm.loop !203

.lr.ph597:                                        ; preds = %.lr.ph596.preheader, %.loopexit496
  %indvar = phi i64 [ 0, %.lr.ph596.preheader ], [ %indvar.next, %.loopexit496 ] ; 9 uses
  %indvars.iv708 = phi i64 [ 1, %.lr.ph596.preheader ], [ %indvars.iv.next709, %.loopexit496 ] ; 9 uses
  %indvars.iv692 = phi i64 [ 2, %.lr.ph596.preheader ], [ %indvars.iv.next693, %.loopexit496 ] ; 6 uses
  %i.mr = add i64 %indvar, -1
  %i.ms = trunc i64 %indvar to i32
  %i.mt = trunc i64 %indvar to i32
  %i.mu = getelementptr inbounds nuw [784 x i8], ptr %i.a, i64 %indvars.iv708 ; 2 uses
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.mu, i64 %indvars.iv708
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %i.ki
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !186 ; 3 uses
  %i.my = icmp samesign ugt i64 %indvars.iv708, 1 ; 2 uses
  br i1 %i.my, label %.lr.ph576, label %._crit_edge577

.lr.ph576:                                        ; preds = %.lr.ph597
  %i.mz = add i64 %indvar, -1
  %i.na = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv708 ; 5 uses
  %xtraiter862 = and i64 %indvar, 3               ; 3 uses
  %i.nb = icmp ult i64 %i.mz, 3
  br i1 %i.nb, label %.epil.preheader, label %.lr.ph576.new

.lr.ph576.new:                                    ; preds = %.lr.ph576
  %unroll_iter = and i64 %indvar, -4
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.lr.ph576.new
  %indvars.iv687 = phi i64 [ 1, %.lr.ph576.new ], [ %indvars.iv.next688.3, %bb.ce ] ; 5 uses
  %.0255574 = phi double [ %i.mx, %.lr.ph576.new ], [ %i.nu, %bb.ce ]
  %niter = phi i64 [ 0, %.lr.ph576.new ], [ %niter.next.3, %bb.ce ]
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv687
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !186 ; 2 uses
  %i.ne = fneg double %i.nd
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.ne, double %i.nd, double %.0255574)
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv687
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !186 ; 2 uses
  %i.nj = fneg double %i.ni
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nj, double %i.ni, double %i.nf)
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv687
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !186 ; 2 uses
  %i.no = fneg double %i.nn
  %i.np = tail call double @llvm.fmuladd.f64(double %i.no, double %i.nn, double %i.nk)
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv687
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !186 ; 2 uses
  %i.nt = fneg double %i.ns
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.nt, double %i.ns, double %i.np) ; 3 uses
  %indvars.iv.next688.3 = add nuw nsw i64 %indvars.iv687, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge577.loopexit.unr-lcssa, label %bb.ce, !llvm.loop !204

._crit_edge577.loopexit.unr-lcssa:                ; preds = %bb.ce
  %lcmp.mod863.not = icmp eq i64 %xtraiter862, 0
  br i1 %lcmp.mod863.not, label %._crit_edge577, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge577.loopexit.unr-lcssa, %.lr.ph576
  %indvars.iv687.epil.init = phi i64 [ 1, %.lr.ph576 ], [ %indvars.iv.next688.3, %._crit_edge577.loopexit.unr-lcssa ]
  %.0255574.epil.init = phi double [ %i.mx, %.lr.ph576 ], [ %i.nu, %._crit_edge577.loopexit.unr-lcssa ]
  %lcmp.mod865 = icmp ne i64 %xtraiter862, 0
  tail call void @llvm.assume(i1 %lcmp.mod865)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %.epil.preheader
  %indvars.iv687.epil = phi i64 [ %indvars.iv687.epil.init, %.epil.preheader ], [ %indvars.iv.next688.epil, %bb.cf ] ; 2 uses
  %.0255574.epil = phi double [ %.0255574.epil.init, %.epil.preheader ], [ %i.ny, %bb.cf ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cf ]
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv687.epil
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !186 ; 2 uses
  %i.nx = fneg double %i.nw
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.nx, double %i.nw, double %.0255574.epil) ; 2 uses
  %indvars.iv.next688.epil = add nuw nsw i64 %indvars.iv687.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter862
  br i1 %epil.iter.cmp.not, label %._crit_edge577, label %bb.cf, !llvm.loop !205

._crit_edge577:                                   ; preds = %._crit_edge577.loopexit.unr-lcssa, %bb.cf, %.lr.ph597
  %.0255.lcssa = phi double [ %i.mx, %.lr.ph597 ], [ %i.nu, %._crit_edge577.loopexit.unr-lcssa ], [ %i.ny, %bb.cf ] ; 2 uses
  %i.nz = fcmp ogt double %.0255.lcssa, 0.000000e+00
  br i1 %i.nz, label %bb.cg, label %.loopexit

bb.cg:                                            ; preds = %._crit_edge577
  %i.oa = tail call double @sqrt(double noundef %.0255.lcssa) #38, !tbaa !4
  %i.ob = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv708 ; 6 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv708 ; 5 uses
  store double %i.oa, ptr %i.oc, align 8, !tbaa !186
  %indvars.iv.next709 = add nuw nsw i64 %indvars.iv708, 1 ; 2 uses
  %invariant.gep585 = getelementptr [8 x i8], ptr %i.mu, i64 %i.ki ; 4 uses
  %invariant.gep587 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv708 ; 4 uses
  %.not315589.not = icmp samesign ult i64 %indvars.iv708, %2
  br i1 %.not315589.not, label %.lr.ph592, label %.loopexit496

.lr.ph592:                                        ; preds = %bb.cg
  br i1 %i.my, label %.lr.ph582.us.preheader, label %.lr.ph592.split.preheader

.lr.ph592.split.preheader:                        ; preds = %.lr.ph592
  %i.od = sub i32 %i.ms, %.pre-phi754
  %i.oe = and i32 %i.od, 1
  %lcmp.mod867.not.not = icmp eq i32 %i.oe, 0
  br i1 %lcmp.mod867.not.not, label %.lr.ph592.split.prol, label %.lr.ph592.split.prol.loopexit

.lr.ph592.split.prol:                             ; preds = %.lr.ph592.split.preheader
  %gep586.prol = getelementptr [16 x i8], ptr %invariant.gep585, i64 %indvars.iv692
  %i.of = load double, ptr %gep586.prol, align 8, !tbaa !186
  %i.og = load double, ptr %i.oc, align 8, !tbaa !186
  %i.oh = fdiv double %i.of, %i.og
  %gep588.prol = getelementptr inbounds nuw [392 x i8], ptr %invariant.gep587, i64 %indvars.iv692
  store double %i.oh, ptr %gep588.prol, align 8, !tbaa !186
  %indvars.iv.next695.prol = add nuw nsw i64 %indvars.iv692, 1
  br label %.lr.ph592.split.prol.loopexit

.lr.ph592.split.prol.loopexit:                    ; preds = %.lr.ph592.split.prol, %.lr.ph592.split.preheader
  %indvars.iv694.unr = phi i64 [ %indvars.iv692, %.lr.ph592.split.preheader ], [ %indvars.iv.next695.prol, %.lr.ph592.split.prol ]
  %i.oi = icmp eq i32 %3, %i.mt
  br i1 %i.oi, label %.loopexit496, label %.lr.ph592.split

.lr.ph582.us.preheader:                           ; preds = %.lr.ph592
  %xtraiter870 = and i64 %indvar, 3               ; 3 uses
  %i.oj = icmp ult i64 %i.mr, 3
  %unroll_iter875 = and i64 %indvar, -4
  %lcmp.mod872.not = icmp eq i64 %xtraiter870, 0
  %lcmp.mod874 = icmp ne i64 %xtraiter870, 0
  br label %.lr.ph582.us

.lr.ph582.us:                                     ; preds = %.lr.ph582.us.preheader, %._crit_edge583.us
  %indvars.iv703 = phi i64 [ %indvars.iv.next704, %._crit_edge583.us ], [ %indvars.iv692, %.lr.ph582.us.preheader ] ; 4 uses
  %gep586.us = getelementptr [16 x i8], ptr %invariant.gep585, i64 %indvars.iv703
  %i.ok = load double, ptr %gep586.us, align 8, !tbaa !186 ; 2 uses
  %i.ol = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv703 ; 5 uses
  br i1 %i.oj, label %.epil.preheader869, label %.lr.ph582.us.new

.lr.ph582.us.new:                                 ; preds = %.lr.ph582.us, %.lr.ph582.us.new
  %indvars.iv698 = phi i64 [ %indvars.iv.next699.3, %.lr.ph582.us.new ], [ 1, %.lr.ph582.us ] ; 6 uses
  %.1256580.us = phi double [ %i.pj, %.lr.ph582.us.new ], [ %i.ok, %.lr.ph582.us ]
  %niter876 = phi i64 [ %niter876.next.3, %.lr.ph582.us.new ], [ 0, %.lr.ph582.us ]
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv698
  %i.on = load double, ptr %i.om, align 8, !tbaa !186
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv698
  %i.op = load double, ptr %i.oo, align 8, !tbaa !186
  %i.oq = fneg double %i.on
  %i.or = tail call double @llvm.fmuladd.f64(double %i.oq, double %i.op, double %.1256580.us)
  %indvars.iv.next699 = add nuw nsw i64 %indvars.iv698, 1 ; 2 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next699
  %i.ot = load double, ptr %i.os, align 8, !tbaa !186
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv.next699
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !186
  %i.ow = fneg double %i.ot
  %i.ox = tail call double @llvm.fmuladd.f64(double %i.ow, double %i.ov, double %i.or)
  %indvars.iv.next699.1 = add nuw nsw i64 %indvars.iv698, 2 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next699.1
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !186
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv.next699.1
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !186
  %i.pc = fneg double %i.oz
  %i.pd = tail call double @llvm.fmuladd.f64(double %i.pc, double %i.pb, double %i.ox)
  %indvars.iv.next699.2 = add nuw nsw i64 %indvars.iv698, 3 ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next699.2
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !186
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv.next699.2
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !186
  %i.pi = fneg double %i.pf
  %i.pj = tail call double @llvm.fmuladd.f64(double %i.pi, double %i.ph, double %i.pd) ; 3 uses
  %indvars.iv.next699.3 = add nuw nsw i64 %indvars.iv698, 4 ; 2 uses
  %niter876.next.3 = add i64 %niter876, 4         ; 2 uses
  %niter876.ncmp.3 = icmp eq i64 %niter876.next.3, %unroll_iter875
  br i1 %niter876.ncmp.3, label %._crit_edge583.us.unr-lcssa, label %.lr.ph582.us.new, !llvm.loop !206

._crit_edge583.us.unr-lcssa:                      ; preds = %.lr.ph582.us.new
  br i1 %lcmp.mod872.not, label %._crit_edge583.us, label %.epil.preheader869

.epil.preheader869:                               ; preds = %._crit_edge583.us.unr-lcssa, %.lr.ph582.us
  %indvars.iv698.epil.init = phi i64 [ 1, %.lr.ph582.us ], [ %indvars.iv.next699.3, %._crit_edge583.us.unr-lcssa ]
  %.1256580.us.epil.init = phi double [ %i.ok, %.lr.ph582.us ], [ %i.pj, %._crit_edge583.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod874)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.epil.preheader869
  %indvars.iv698.epil = phi i64 [ %indvars.iv698.epil.init, %.epil.preheader869 ], [ %indvars.iv.next699.epil, %bb.ch ] ; 3 uses
  %.1256580.us.epil = phi double [ %.1256580.us.epil.init, %.epil.preheader869 ], [ %i.pp, %bb.ch ]
  %epil.iter871 = phi i64 [ 0, %.epil.preheader869 ], [ %epil.iter871.next, %bb.ch ]
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv698.epil
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !186
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv698.epil
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !186
  %i.po = fneg double %i.pl
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.po, double %i.pn, double %.1256580.us.epil) ; 2 uses
  %indvars.iv.next699.epil = add nuw nsw i64 %indvars.iv698.epil, 1
  %epil.iter871.next = add i64 %epil.iter871, 1   ; 2 uses
  %epil.iter871.cmp.not = icmp eq i64 %epil.iter871.next, %xtraiter870
  br i1 %epil.iter871.cmp.not, label %._crit_edge583.us, label %bb.ch, !llvm.loop !207

._crit_edge583.us:                                ; preds = %bb.ch, %._crit_edge583.us.unr-lcssa
  %.lcssa844 = phi double [ %i.pj, %._crit_edge583.us.unr-lcssa ], [ %i.pp, %bb.ch ]
  %i.pq = load double, ptr %i.oc, align 8, !tbaa !186
  %i.pr = fdiv double %.lcssa844, %i.pq
  %gep588.us = getelementptr inbounds nuw [392 x i8], ptr %invariant.gep587, i64 %indvars.iv703
  store double %i.pr, ptr %gep588.us, align 8, !tbaa !186
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 1 ; 2 uses
  %lftr.wideiv706 = trunc i64 %indvars.iv.next704 to i32
  %exitcond707.not = icmp eq i32 %1, %lftr.wideiv706
  br i1 %exitcond707.not, label %.loopexit496, label %.lr.ph582.us, !llvm.loop !208

.lr.ph592.split:                                  ; preds = %.lr.ph592.split.prol.loopexit, %.lr.ph592.split
  %indvars.iv694 = phi i64 [ %indvars.iv.next695.1, %.lr.ph592.split ], [ %indvars.iv694.unr, %.lr.ph592.split.prol.loopexit ] ; 4 uses
  %gep586 = getelementptr [16 x i8], ptr %invariant.gep585, i64 %indvars.iv694
  %i.ps = load double, ptr %gep586, align 8, !tbaa !186
  %i.pt = load double, ptr %i.oc, align 8, !tbaa !186
  %i.pu = fdiv double %i.ps, %i.pt
  %gep588 = getelementptr inbounds nuw [392 x i8], ptr %invariant.gep587, i64 %indvars.iv694
  store double %i.pu, ptr %gep588, align 8, !tbaa !186
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 2 uses
  %gep586.1 = getelementptr [16 x i8], ptr %invariant.gep585, i64 %indvars.iv.next695
  %i.pv = load double, ptr %gep586.1, align 8, !tbaa !186
  %i.pw = load double, ptr %i.oc, align 8, !tbaa !186
  %i.px = fdiv double %i.pv, %i.pw
  %gep588.1 = getelementptr inbounds nuw [392 x i8], ptr %invariant.gep587, i64 %indvars.iv.next695
  store double %i.px, ptr %gep588.1, align 8, !tbaa !186
  %indvars.iv.next695.1 = add nuw nsw i64 %indvars.iv694, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next695.1 to i32
  %exitcond697.not.1 = icmp eq i32 %1, %lftr.wideiv.1
  br i1 %exitcond697.not.1, label %.loopexit496, label %.lr.ph592.split, !llvm.loop !208

.thread:                                          ; preds = %.loopexit496, %.preheader503, %.preheader499, %.loopexit500
  %.b628752 = phi i1 [ true, %.preheader503 ], [ true, %.loopexit500 ], [ true, %.preheader499 ], [ false, %.loopexit496 ]
  %4 = phi i32 [ %i.kh, %.preheader503 ], [ %i.mq, %.loopexit500 ], [ %i.kh, %.preheader499 ], [ %i.mq, %.loopexit496 ] ; 2 uses
  %.lcssa514 = phi i32 [ %i.kq, %.preheader503 ], [ %.pre-phi, %.loopexit500 ], [ %i.kq, %.preheader499 ], [ %.pre-phi, %.loopexit496 ]
  %.lcssa = phi i32 [ %i.kr, %.preheader503 ], [ %.pre-phi754, %.loopexit500 ], [ %i.kr, %.preheader499 ], [ %.pre-phi754, %.loopexit496 ] ; 7 uses
  %i.py = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.ki
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !4
  %i.qa = add nuw nsw i32 %4, 1
  %i.qb = icmp sgt i32 %i.pz, %i.qa
  br i1 %i.qb, label %.preheader495, label %.loopexit

.preheader495:                                    ; preds = %.thread
  %invariant.gep606 = getelementptr [8 x i8], ptr %i.a, i64 %i.ki ; 9 uses
  br i1 %.b628752, label %.preheader494, label %.lr.ph612

.lr.ph612:                                        ; preds = %.preheader495
  %i.qc = add nuw i32 %.lcssa, 1
  %wide.trip.count719 = zext i32 %i.qc to i64
  br label %bb.ci

.preheader494:                                    ; preds = %._crit_edge605, %.preheader495
  %5 = icmp sgt i32 %.lcssa, 0
  br i1 %5, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader494
  %6 = zext nneg i32 %.lcssa514 to i64
  %i.qd = zext i32 %4 to i64
  %7 = add nuw nsw i64 %6, %i.qd
  %i.qe = zext nneg i32 %.lcssa to i64
  br label %.preheader

bb.ci:                                            ; preds = %.lr.ph612, %._crit_edge605
  %indvar878 = phi i64 [ 0, %.lr.ph612 ], [ %indvar.next879, %._crit_edge605 ] ; 5 uses
  %indvars.iv716 = phi i64 [ 1, %.lr.ph612 ], [ %indvars.iv.next717, %._crit_edge605 ] ; 7 uses
  %gep607 = getelementptr [16 x i8], ptr %invariant.gep606, i64 %indvars.iv716
  %i.qf = load double, ptr %gep607, align 8, !tbaa !186 ; 4 uses
  %gep609 = getelementptr [784 x i8], ptr %invariant.gep606, i64 %indvars.iv716 ; 5 uses
  store double %i.qf, ptr %gep609, align 8, !tbaa !186
  %i.qg = icmp samesign ugt i64 %indvars.iv716, 1
  br i1 %i.qg, label %.lr.ph604, label %._crit_edge605

.lr.ph604:                                        ; preds = %bb.ci
  %i.qh = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv716 ; 3 uses
  %xtraiter880 = and i64 %indvar878, 1
  %i.qi = icmp eq i64 %indvar878, 1
  br i1 %i.qi, label %.epil.preheader877, label %.lr.ph604.new

.lr.ph604.new:                                    ; preds = %.lr.ph604
  %unroll_iter885 = and i64 %indvar878, -2
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.lr.ph604.new
  %indvars.iv711 = phi i64 [ 1, %.lr.ph604.new ], [ %indvars.iv.next712.1, %bb.cj ] ; 4 uses
  %i.qj = phi double [ %i.qf, %.lr.ph604.new ], [ %i.qt, %bb.cj ]
  %niter886 = phi i64 [ 0, %.lr.ph604.new ], [ %niter886.next.1, %bb.cj ]
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv711
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !186
  %gep601 = getelementptr [784 x i8], ptr %invariant.gep606, i64 %indvars.iv711
  %i.qm = load double, ptr %gep601, align 8, !tbaa !186
  %i.qn = fneg double %i.ql
  %i.qo = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.qm, double %i.qj) ; 2 uses
  store double %i.qo, ptr %gep609, align 8, !tbaa !186
  %indvars.iv.next712 = add nuw nsw i64 %indvars.iv711, 1 ; 2 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv.next712
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !186
  %gep601.1 = getelementptr [784 x i8], ptr %invariant.gep606, i64 %indvars.iv.next712
  %i.qr = load double, ptr %gep601.1, align 8, !tbaa !186
  %i.qs = fneg double %i.qq
  %i.qt = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.qr, double %i.qo) ; 4 uses
  store double %i.qt, ptr %gep609, align 8, !tbaa !186
  %indvars.iv.next712.1 = add nuw nsw i64 %indvars.iv711, 2 ; 2 uses
  %niter886.next.1 = add i64 %niter886, 2         ; 2 uses
  %niter886.ncmp.1 = icmp eq i64 %niter886.next.1, %unroll_iter885
  br i1 %niter886.ncmp.1, label %._crit_edge605.loopexit.unr-lcssa, label %bb.cj, !llvm.loop !209

._crit_edge605.loopexit.unr-lcssa:                ; preds = %bb.cj
  %lcmp.mod882.not = icmp eq i64 %xtraiter880, 0
  br i1 %lcmp.mod882.not, label %._crit_edge605, label %.epil.preheader877

.epil.preheader877:                               ; preds = %._crit_edge605.loopexit.unr-lcssa, %.lr.ph604
  %indvars.iv711.epil.init = phi i64 [ 1, %.lr.ph604 ], [ %indvars.iv.next712.1, %._crit_edge605.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.qf, %.lr.ph604 ], [ %i.qt, %._crit_edge605.loopexit.unr-lcssa ]
  %lcmp.mod884 = trunc i64 %indvar878 to i1
  tail call void @llvm.assume(i1 %lcmp.mod884)
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv711.epil.init
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !186
  %gep601.epil = getelementptr [784 x i8], ptr %invariant.gep606, i64 %indvars.iv711.epil.init
  %i.qw = load double, ptr %gep601.epil, align 8, !tbaa !186
  %i.qx = fneg double %i.qv
  %i.qy = tail call double @llvm.fmuladd.f64(double %i.qx, double %i.qw, double %.epil.init) ; 2 uses
  store double %i.qy, ptr %gep609, align 8, !tbaa !186
  br label %._crit_edge605

._crit_edge605:                                   ; preds = %.epil.preheader877, %._crit_edge605.loopexit.unr-lcssa, %bb.ci
  %i.qz = phi double [ %i.qf, %bb.ci ], [ %i.qt, %._crit_edge605.loopexit.unr-lcssa ], [ %i.qy, %.epil.preheader877 ]
  %i.ra = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv716
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %indvars.iv716
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !186
  %i.rd = fdiv double %i.qz, %i.rc
  store double %i.rd, ptr %gep609, align 8, !tbaa !186
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1 ; 2 uses
  %exitcond720.not = icmp eq i64 %indvars.iv.next717, %wide.trip.count719
  %indvar.next879 = add i64 %indvar878, 1
  br i1 %exitcond720.not, label %.preheader494, label %bb.ci, !llvm.loop !210

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge620
  %indvars.iv721.a = phi i64 [ %7, %.preheader.lr.ph ], [ %indvars.iv.next722, %._crit_edge620 ] ; 10 uses
  %.not314.not617 = icmp slt i64 %indvars.iv721.a, %i.qe
  br i1 %.not314.not617, label %.lr.ph619, label %.preheader.._crit_edge620_crit_edge

.preheader.._crit_edge620_crit_edge:              ; preds = %.preheader
  %gep624.phi.trans.insert = getelementptr [784 x i8], ptr %invariant.gep606, i64 %indvars.iv721.a
  %.pre749 = load double, ptr %gep624.phi.trans.insert, align 8, !tbaa !186
  br label %._crit_edge620

.lr.ph619:                                        ; preds = %.preheader
  %invariant.gep621 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv721.a
  %gep616 = getelementptr [784 x i8], ptr %invariant.gep606, i64 %indvars.iv721.a ; 2 uses
  %gep616.promoted = load double, ptr %gep616, align 8, !tbaa !186
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph619, %bb.ck
  %indvars.iv723 = phi i64 [ %indvars.iv721.a, %.lr.ph619 ], [ %indvars.iv.next724, %bb.ck ]
  %i.re = phi double [ %gep616.promoted, %.lr.ph619 ], [ %i.ri, %bb.ck ]
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 4 uses
  %gep622 = getelementptr inbounds nuw [392 x i8], ptr %invariant.gep621, i64 %indvars.iv.next724
  %i.rf = load double, ptr %gep622, align 8, !tbaa !186
  %gep614 = getelementptr [784 x i8], ptr %invariant.gep606, i64 %indvars.iv.next724
  %i.rg = load double, ptr %gep614, align 8, !tbaa !186
  %i.rh = fneg double %i.rf
  %i.ri = tail call double @llvm.fmuladd.f64(double %i.rh, double %i.rg, double %i.re) ; 3 uses
  store double %i.ri, ptr %gep616, align 8, !tbaa !186
  %i.rj = trunc nuw i64 %indvars.iv.next724 to i32
  %.not314.not = icmp sgt i32 %.lcssa, %i.rj
  br i1 %.not314.not, label %bb.ck, label %._crit_edge620, !llvm.loop !211

._crit_edge620:                                   ; preds = %bb.ck, %.preheader.._crit_edge620_crit_edge
  %i.rk = phi double [ %.pre749, %.preheader.._crit_edge620_crit_edge ], [ %i.ri, %bb.ck ]
  %i.rl = getelementptr inbounds nuw [392 x i8], ptr %i.b, i64 %indvars.iv721.a
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %indvars.iv721.a
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !186
  %gep624 = getelementptr [784 x i8], ptr %invariant.gep606, i64 %indvars.iv721.a
  %i.ro = fdiv double %i.rk, %i.rn
  store double %i.ro, ptr %gep624, align 8, !tbaa !186
  %indvars.iv.next722 = add nsw i64 %indvars.iv721.a, -1
  %i.rp = icmp sgt i64 %indvars.iv721.a, 1
  br i1 %i.rp, label %.preheader, label %.loopexit, !llvm.loop !212

.loopexit:                                        ; preds = %._crit_edge577, %._crit_edge620, %.preheader494, %.thread
  %i.rq = phi i32 [ %.lcssa, %._crit_edge620 ], [ %.lcssa, %.thread ], [ %.lcssa, %.preheader494 ], [ %.pre-phi754, %._crit_edge577 ]
  store i32 0, ptr %i.kj, align 4, !tbaa !4
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit506._crit_edge, %.loopexit
  %i.rr = phi i32 [ %.pre752, %.loopexit506._crit_edge ], [ %i.rq, %.loopexit ]
  %invariant.gep626 = getelementptr [8 x i8], ptr %i.a, i64 %i.ki
  %.not313629 = icmp slt i32 %i.rr, 1
  br i1 %.not313629, label %._crit_edge634, label %.lr.ph633

.lr.ph633:                                        ; preds = %bb.cl, %.lr.ph633
  %indvars.iv727 = phi i64 [ %indvars.iv.next728, %.lr.ph633 ], [ 1, %bb.cl ] ; 4 uses
  %.2257631 = phi double [ %i.rw, %.lr.ph633 ], [ 0.000000e+00, %bb.cl ]
  %gep627 = getelementptr [784 x i8], ptr %invariant.gep626, i64 %indvars.iv727
  %i.rs = load double, ptr %gep627, align 8, !tbaa !186
  %i.rt = trunc nuw nsw i64 %indvars.iv727 to i32
  %i.ru = tail call noundef i32 @_Z1Xii(i32 noundef %i.rt, i32 noundef 0)
  %i.rv = sitofp i32 %i.ru to double
  %i.rw = tail call double @llvm.fmuladd.f64(double %i.rs, double %i.rv, double %.2257631) ; 2 uses
  %indvars.iv.next728 = add nuw nsw i64 %indvars.iv727, 1
  %i.rx = load i32, ptr @_ZL1S, align 4, !tbaa !4
  %.b = load i1, ptr @_ZL1D, align 4
  %i.ry = select i1 %.b, i32 12, i32 0
  %i.rz = add nuw nsw i32 %i.ry, %i.rx
  %i.sa = sext i32 %i.rz to i64
  %.not313.not = icmp slt i64 %indvars.iv727, %i.sa
  br i1 %.not313.not, label %.lr.ph633, label %._crit_edge634.loopexit, !llvm.loop !213

._crit_edge634.loopexit:                          ; preds = %.lr.ph633
  %i.sb = tail call double @llvm.floor.f64(double %i.rw)
  %i.sc = fptosi double %i.sb to i32
  br label %._crit_edge634

._crit_edge634:                                   ; preds = %._crit_edge634.loopexit, %bb.cl
  %.2257.lcssa = phi i32 [ 0, %bb.cl ], [ %i.sc, %._crit_edge634.loopexit ] ; 4 uses
  %i.sd = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2pr, i64 16), i64 %i.ki ; 2 uses
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !4
  %i.sf = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2pr, i64 24), i64 %i.ki
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !4
  %i.sg = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2pr, i64 8), i64 %i.ki ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !4  ; 3 uses
  store i32 %i.sh, ptr %i.sd, align 4, !tbaa !4
  %i.si = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE2pr, i64 %i.ki ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !4  ; 4 uses
  store i32 %i.sj, ptr %i.sg, align 4, !tbaa !4
  store i32 %.2257.lcssa, ptr %i.si, align 4, !tbaa !4
  %i.sk = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.ki ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !4
  %i.sm = add nsw i32 %i.sl, 1
  store i32 %i.sm, ptr %i.sk, align 4, !tbaa !4
  %i.sn = load i32, ptr @pos, align 4, !tbaa !4
  %i.so = add nsw i32 %i.sn, -1
  %i.sp = load i32, ptr @buf, align 8, !tbaa !22
  %i.sq = add nsw i32 %i.sp, -1
  %i.sr = and i32 %i.sq, %i.so
  %i.ss = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24 ; 22 uses
  %i.st = sext i32 %i.sr to i64
  %i.su = getelementptr inbounds i8, ptr %i.ss, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !11
  %i.sw = zext i8 %i.sv to i32                    ; 2 uses
  %i.sx = mul i32 %i.sw, 30005491
  %i.sy = mul i32 %i.ha, 50004239                 ; 5 uses
  %i.sz = add i32 %i.sy, 19995673
  %i.ta = add i32 %i.sz, %i.sx                    ; 2 uses
  %i.tb = lshr i32 %i.ta, 9
  %i.tc = lshr i32 %i.sw, 3
  %i.td = lshr i32 %i.ha, 4                       ; 5 uses
  %i.te = xor i32 %i.tc, %i.tb
  %i.tf = xor i32 %i.te, %i.td
  %i.tg = xor i32 %i.tf, %i.ta
  %i.th = xor i32 %i.tg, 67108864
  %i.ti = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110 ; 4 uses
  %i.tj = add nsw i32 %i.ti, 1
  store i32 %i.tj, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110
  %i.tk = mul i32 %i.th, 987654323
  %i.tl = add i32 %i.tk, %i.ti                    ; 2 uses
  %i.tm = tail call i32 @llvm.fshl.i32(i32 %i.tl, i32 %i.tl, i32 16)
  %i.tn = mul i32 %i.tm, 123456791
  %i.to = add i32 %i.tn, %i.ti
  %i.tp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 96), align 8, !tbaa !88 ; 8 uses
  %i.tq = sext i32 %i.ti to i64
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.tq
  store i32 %i.to, ptr %i.tr, align 4, !tbaa !4
  %i.ts = load i32, ptr @pos, align 4, !tbaa !4   ; 2 uses
  %i.tt = add nsw i32 %i.ts, -1
  %i.tu = load i32, ptr @buf, align 8, !tbaa !22
  %i.tv = add nsw i32 %i.tu, -1                   ; 2 uses
  %i.tw = and i32 %i.tv, %i.tt
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds i8, ptr %i.ss, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !11
  %i.ua = zext i8 %i.tz to i32                    ; 2 uses
  %i.ub = add nsw i32 %i.ts, -2
  %i.uc = and i32 %i.tv, %i.ub
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds i8, ptr %i.ss, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !11
  %i.ug = zext i8 %i.uf to i32                    ; 2 uses
  %i.uh = mul i32 %i.ua, 30005491
  %i.ui = mul i32 %i.ug, 50004239
  %i.uj = mul i32 %i.ha, 70004807                 ; 2 uses
  %i.uk = add i32 %i.uj, 290003459
  %i.ul = add i32 %i.uk, %i.uh
  %i.um = add i32 %i.ul, %i.ui                    ; 2 uses
  %i.un = lshr i32 %i.um, 9
  %i.uo = lshr i32 %i.ua, 3
  %i.up = lshr i32 %i.ug, 4
  %i.uq = lshr i32 %i.ha, 5                       ; 2 uses
  %i.ur = xor i32 %i.uo, %i.up
  %i.us = xor i32 %i.ur, %i.un
  %i.ut = xor i32 %i.us, %i.uq
  %i.uu = xor i32 %i.ut, %i.um
  %i.uv = xor i32 %i.uu, 67108863
  %i.uw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110 ; 4 uses
  %i.ux = add nsw i32 %i.uw, 1
  store i32 %i.ux, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110
  %i.uy = mul i32 %i.uv, 987654323
  %i.uz = add i32 %i.uy, %i.uw                    ; 2 uses
  %i.va = tail call i32 @llvm.fshl.i32(i32 %i.uz, i32 %i.uz, i32 16)
  %i.vb = mul i32 %i.va, 123456791
  %i.vc = add i32 %i.vb, %i.uw
  %i.vd = sext i32 %i.uw to i64
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.vd
  store i32 %i.vc, ptr %i.ve, align 4, !tbaa !4
  %i.vf = load i32, ptr @pos, align 4, !tbaa !4   ; 3 uses
  %i.vg = add nsw i32 %i.vf, -1
  %i.vh = load i32, ptr @buf, align 8, !tbaa !22
  %i.vi = add nsw i32 %i.vh, -1                   ; 3 uses
  %i.vj = and i32 %i.vi, %i.vg
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds i8, ptr %i.ss, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !11
  %i.vn = zext i8 %i.vm to i32                    ; 2 uses
  %i.vo = add nsw i32 %i.vf, -2
  %i.vp = and i32 %i.vi, %i.vo
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds i8, ptr %i.ss, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !11
  %i.vt = lshr i8 %i.vs, 3
  %i.vu = zext nneg i8 %i.vt to i32               ; 2 uses
  %i.vv = add nsw i32 %i.vf, -3
  %i.vw = and i32 %i.vi, %i.vv
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds i8, ptr %i.ss, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !11
  %i.wa = zext i8 %i.vz to i32                    ; 2 uses
  %i.wb = mul i32 %i.vn, 30005491
  %i.wc = mul nuw nsw i32 %i.vu, 50004239
  %i.wd = mul i32 %i.wa, 70004807
  %i.we = mul i32 %i.ha, 110002499
  %i.wf = add i32 %i.we, 600008937
  %i.wg = add i32 %i.wf, %i.wb
  %i.wh = add i32 %i.wg, %i.wc
  %i.wi = add i32 %i.wh, %i.wd                    ; 2 uses
  %i.wj = lshr i32 %i.wi, 9
  %i.wk = lshr i32 %i.vn, 3
  %i.wl = lshr i32 %i.vu, 4
  %i.wm = lshr i32 %i.wa, 5
  %i.wn = lshr i32 %i.ha, 6
  %i.wo = xor i32 %i.wk, %i.wn
  %i.wp = xor i32 %i.wo, %i.wl
  %i.wq = xor i32 %i.wp, %i.wm
  %i.wr = xor i32 %i.wq, %i.wj
  %i.ws = xor i32 %i.wr, %i.wi
  %i.wt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110 ; 4 uses
  %i.wu = add nsw i32 %i.wt, 1
  store i32 %i.wu, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110
  %i.wv = mul i32 %i.ws, 987654323
  %i.ww = add i32 %i.wv, %i.wt                    ; 2 uses
  %i.wx = tail call i32 @llvm.fshl.i32(i32 %i.ww, i32 %i.ww, i32 16)
  %i.wy = mul i32 %i.wx, 123456791
  %i.wz = add i32 %i.wy, %i.wt
  %i.xa = sext i32 %i.wt to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.xa
  store i32 %i.wz, ptr %i.xb, align 4, !tbaa !4
  %i.xc = load i32, ptr @pos, align 4, !tbaa !4   ; 3 uses
  %i.xd = add i32 %i.xc, -4
  %i.xe = load i32, ptr @buf, align 8, !tbaa !22
  %i.xf = add nsw i32 %i.xe, -1                   ; 3 uses
  %i.xg = and i32 %i.xf, %i.xd
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds i8, ptr %i.ss, i64 %i.xh
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !11
  %i.xk = add i32 %i.xc, -2
  %i.xl = and i32 %i.xf, %i.xk
  %i.xm = sext i32 %i.xl to i64
  %i.xn = getelementptr inbounds i8, ptr %i.ss, i64 %i.xm
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !11
  %.tr = add i8 %i.xo, %i.xj
  %i.xp = add i32 %i.xc, -6
  %i.xq = and i32 %i.xf, %i.xp
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds i8, ptr %i.ss, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !11
  %.narrow = sub i8 %.tr, %i.xt
  %i.xu = zext i8 %.narrow to i32                 ; 2 uses
  %i.xv = mul i32 %i.xu, 30005491
  %i.xw = add i32 %i.sy, 620004610
  %i.xx = add i32 %i.xw, %i.xv                    ; 2 uses
  %i.xy = lshr i32 %i.xx, 9
  %i.xz = lshr i32 %i.xu, 3
  %i.ya = xor i32 %i.xz, %i.xy
  %i.yb = xor i32 %i.ya, %i.td
  %i.yc = xor i32 %i.yb, %i.xx
  %i.yd = xor i32 %i.yc, 67108865
  %i.ye = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110 ; 4 uses
  %i.yf = add nsw i32 %i.ye, 1
  store i32 %i.yf, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE2cm, i64 136), align 8, !tbaa !110
end_hunk_0
begin_hunk_1_@_Z8wavModelR5Mixer:bb.a
  store i16 %i.caa, ptr %i.bzu, align 2, !tbaa !33
  %i.cab = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE4scm8, i64 24), align 8, !tbaa !121
  %i.cac = add nsw i32 %i.cab, %i.bun
  %i.cad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE4scm8, i64 16), align 8, !tbaa !82
  %i.cae = sext i32 %i.cac to i64
  %i.caf = getelementptr inbounds [2 x i8], ptr %i.cad, i64 %i.cae ; 2 uses
  store ptr %i.caf, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8wavModelR5MixerE4scm8, i64 32), align 8, !tbaa !123
  %i.cag = load i16, ptr %i.caf, align 2, !tbaa !33
  %i.cah = lshr i16 %i.cag, 4
  %i.cai = zext nneg i16 %i.cah to i64
  %i.caj = getelementptr inbounds nuw [2 x i8], ptr %i.buu, i64 %i.cai
  %i.cak = load i16, ptr %i.caj, align 2, !tbaa !33
  %i.cal = add nsw i32 %i.buz, 8
  store i32 %i.cal, ptr %i.buy, align 8, !tbaa !69
  %i.cam = sext i32 %i.buz to i64
  %i.can = getelementptr [2 x i8], ptr %i.bvb, i64 %i.cam
  %i.cao = getelementptr i8, ptr %i.can, i64 14
  store i16 %i.cak, ptr %i.cao, align 2, !tbaa !33
  %i.cap = load i32, ptr @bpos, align 4, !tbaa !4
  %i.caq = load i32, ptr @pos, align 4, !tbaa !4
  %i.car = add nsw i32 %i.caq, -1
  %i.cas = load i32, ptr @buf, align 8, !tbaa !22
  %i.cat = add nsw i32 %i.cas, -1
  %i.cau = and i32 %i.cat, %i.car
  %i.cav = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24
  %i.caw = sext i32 %i.cau to i64
  %i.cax = getelementptr inbounds i8, ptr %i.cav, i64 %i.caw
  %i.cay = load i8, ptr %i.cax, align 1, !tbaa !11
  %i.caz = zext i8 %i.cay to i32
  %i.cba = tail call noundef i32 @_ZN10ContextMap4mix1ER5Mixeriiii(ptr noundef nonnull align 8 dereferenceable(140) @_ZZ8wavModelR5MixerE2cm, ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.bun, i32 noundef %i.cap, i32 noundef %i.caz, i32 noundef %i.buc) ; 0 uses
  %i.cbb = load i32, ptr @_ZZ8wavModelR5MixerE8channels, align 4, !tbaa !4
  %i.cbc = shl i32 %i.cbb, 8
  %i.cbd = load i32, ptr @_ZZ8wavModelR5MixerE4bits, align 4, !tbaa !4
  %i.cbe = or i32 %i.cbc, %i.cbd
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.bm
  %.0253 = phi i32 [ 0, %bb.bm ], [ %i.cbe, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i32 %.0253

bb.cq:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as
  %_ZGVZ8wavModelR5MixerE2cm.sink = phi ptr [ @_ZGVZ8wavModelR5MixerE2cm, %bb.ba ], [ @_ZGVZ8wavModelR5MixerE4scm8, %bb.az ], [ @_ZGVZ8wavModelR5MixerE4scm7, %bb.ay ], [ @_ZGVZ8wavModelR5MixerE4scm6, %bb.ax ], [ @_ZGVZ8wavModelR5MixerE4scm5, %bb.aw ], [ @_ZGVZ8wavModelR5MixerE4scm4, %bb.av ], [ @_ZGVZ8wavModelR5MixerE4scm3, %bb.au ], [ @_ZGVZ8wavModelR5MixerE4scm2, %bb.at ], [ @_ZGVZ8wavModelR5MixerE4scm1, %bb.as ]
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.ba ], [ %i.ce, %bb.az ], [ %i.cd, %bb.ay ], [ %i.cc, %bb.ax ], [ %i.cb, %bb.aw ], [ %i.ca, %bb.av ], [ %i.bz, %bb.au ], [ %i.by, %bb.at ], [ %i.bx, %bb.as ]
  tail call void @__cxa_guard_abort(ptr nonnull %_ZGVZ8wavModelR5MixerE2cm.sink) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z1Xii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = load i32, ptr @_ZL5wmode, align 4, !tbaa !4
  switch i32 %i.a, label %bb.i [
    i32 18, label %bb.b
    i32 17, label %bb.e
    i32 10, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @_ZL1S, align 4, !tbaa !4  ; 2 uses
  %.not19 = icmp sgt i32 %0, %i.b
  %i.c = add i32 %1, %0                           ; 2 uses
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl i32 %i.c, 2
  %i.e = load i32, ptr @pos, align 4, !tbaa !4
  %i.f = sub i32 %i.e, %i.d                       ; 2 uses
  %i.g = load i32, ptr @buf, align 8, !tbaa !22
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  %i.i = and i32 %i.h, %i.f
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24 ; 2 uses
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = zext i8 %i.m to i32
  %i.o = add i32 %i.f, 1
  %i.p = and i32 %i.h, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw i32 %i.t, 24
  %i.v = shl nuw nsw i32 %i.n, 16
  %sext.i = or disjoint i32 %i.u, %i.v
  %i.w = ashr exact i32 %sext.i, 16
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %.neg24 = sub i32 %i.b, %i.c
  %.neg25 = shl i32 %.neg24, 2
  %.neg26 = or disjoint i32 %.neg25, 2
  %i.x = load i32, ptr @pos, align 4, !tbaa !4
  %i.y = add i32 %.neg26, %i.x                    ; 2 uses
  %i.z = load i32, ptr @buf, align 8, !tbaa !22
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = and i32 %i.aa, %i.y
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24 ; 2 uses
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i32
  %i.ah = add i32 %i.y, 1
  %i.ai = and i32 %i.aa, %i.ah
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw i32 %i.am, 24
  %i.ao = shl nuw nsw i32 %i.ag, 16
  %sext.i20 = or disjoint i32 %i.an, %i.ao
  %i.ap = ashr exact i32 %sext.i20, 16
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.aq = add nsw i32 %1, %0
  %i.ar = shl i32 %i.aq, 1
  %i.as = load i32, ptr @pos, align 4, !tbaa !4
  %i.at = sub i32 %i.as, %i.ar                    ; 2 uses
  %i.au = load i32, ptr @buf, align 8, !tbaa !22
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  %i.aw = and i32 %i.av, %i.at
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24 ; 2 uses
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i32 %i.at, 1
  %i.bd = and i32 %i.av, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ax, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw i32 %i.bh, 24
  %i.bj = shl nuw nsw i32 %i.bb, 16
  %sext.i21 = or disjoint i32 %i.bi, %i.bj
  %i.bk = ashr exact i32 %sext.i21, 16
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.bl = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 2 uses
  %.not = icmp sgt i32 %0, %i.bl
  %i.bm = add i32 %1, %0                          ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = shl i32 %i.bm, 1
  %i.bo = load i32, ptr @pos, align 4, !tbaa !4
  %i.bp = sub nsw i32 %i.bo, %i.bn
  %i.bq = load i32, ptr @buf, align 8, !tbaa !22
  %i.br = add nsw i32 %i.bq, -1
  %i.bs = and i32 %i.br, %i.bp
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = zext i8 %i.bw to i32
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %.neg = sub i32 %i.bl, %i.bm
  %.neg22 = shl i32 %.neg, 1
  %.neg23 = or disjoint i32 %.neg22, 1
  %i.by = load i32, ptr @pos, align 4, !tbaa !4
  %i.bz = add i32 %.neg23, %i.by
  %i.ca = load i32, ptr @buf, align 8, !tbaa !22
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = and i32 %i.cb, %i.bz
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = zext i8 %i.cg to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.ci = load i32, ptr @pos, align 4, !tbaa !4
  %i.cj = add i32 %1, %0
  %i.ck = sub i32 %i.ci, %i.cj
  %i.cl = load i32, ptr @buf, align 8, !tbaa !22
  %i.cm = add nsw i32 %i.cl, -1
  %i.cn = and i32 %i.cm, %i.ck
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cs = zext i8 %i.cr to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.w, %bb.c ], [ %i.ap, %bb.d ], [ %i.bk, %bb.e ], [ %i.bx, %bb.g ], [ %i.ch, %bb.h ], [ %i.cs, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z6execxtii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = load i32, ptr @pos, align 4, !tbaa !4    ; 2 uses
  %reass.sub = sub i32 %i.a, %0                   ; 3 uses
  %i.b = add i32 %reass.sub, -2
  %i.c = load i32, ptr @buf, align 8, !tbaa !22
  %i.d = add nsw i32 %i.c, -1                     ; 4 uses
  %i.e = and i32 %i.d, %i.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24 ; 4 uses
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11    ; 3 uses
  %i.j = add i32 %reass.sub, -3
  %i.k = and i32 %i.d, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11    ; 3 uses
  %.neg = xor i32 %0, -1
  %i.o = add i32 %i.a, %.neg
  %i.p = and i32 %i.d, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.f, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = and i32 %i.d, %reass.sub
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 12
  %i.z = and i32 %i.y, 815104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aa = phi i32 [ %i.z, %bb.b ], [ 0, %bb.a ]
  %i.ab = zext i8 %i.s to i32
  %i.ac = icmp eq i8 %i.i, 102
  %i.ad = select i1 %i.ac, i32 2, i32 0
  %i.ae = icmp eq i8 %i.i, 15
  %i.af = zext i1 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp eq i8 %i.i, 103
  %i.ai = select i1 %i.ah, i32 3, i32 0
  %i.aj = add nuw nsw i32 %i.ag, %i.ai
  %i.ak = icmp eq i8 %i.n, 15
  %i.al = select i1 %i.ak, i32 4, i32 0
  %i.am = add nuw nsw i32 %i.aj, %i.al
  %i.an = icmp eq i8 %i.n, 102
  %i.ao = select i1 %i.an, i32 8, i32 0
  %i.ap = add nuw nsw i32 %i.am, %i.ao
  %i.aq = icmp eq i8 %i.n, 103
  %i.ar = select i1 %i.aq, i32 12, i32 0
  %i.as = add nuw nsw i32 %i.ap, %i.ar
  %i.at = shl nuw nsw i32 %i.ab, 4
  %i.au = shl i32 %1, 20
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = or i32 %i.av, %i.as
  %i.ax = or i32 %i.aw, %i.aa
  ret i32 %i.ax
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8exeModelR5Mixer(ptr noundef nonnull align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZ8exeModelR5MixerE2cm acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !119

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ8exeModelR5MixerE2cm) #38
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @level, align 4, !tbaa !4
  %i.e = shl i32 65536, %i.d
  invoke void @_ZN10ContextMapC2Eii(ptr noundef nonnull align 8 dereferenceable(140) @_ZZ8exeModelR5MixerE2cm, i32 noundef %i.e, i32 noundef 12)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN10ContextMapD2Ev, ptr nonnull @_ZZ8exeModelR5MixerE2cm, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ8exeModelR5MixerE2cm) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = load i32, ptr @bpos, align 4, !tbaa !4   ; 2 uses
  %.not6 = icmp eq i32 %i.g, 0
  %.pre9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24 ; 9 uses
  br i1 %.not6, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8exeModelR5MixerE2cm, i64 96), align 8, !tbaa !88 ; 2 uses
  %i.i = load i32, ptr @buf, align 8, !tbaa !22
  %i.j = add nsw i32 %i.i, -1                     ; 3 uses
  %i.k = load i32, ptr @pos, align 4, !tbaa !4    ; 3 uses
  %i.l = add i32 %i.k, -3
  %i.m = and i32 %i.j, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %.pre9, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11    ; 3 uses
  %i.q = add i32 %i.k, -2
  %i.r = and i32 %i.j, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %.pre9, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11    ; 3 uses
  %i.v = add i32 %i.k, -1
  %i.w = and i32 %i.j, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %.pre9, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = zext i8 %i.z to i32
  %i.ab = icmp eq i8 %i.u, 102
  %i.ac = select i1 %i.ab, i32 2, i32 0
  %i.ad = icmp eq i8 %i.u, 15
  %i.ae = zext i1 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp eq i8 %i.u, 103
  %i.ah = select i1 %i.ag, i32 3, i32 0
  %i.ai = add nuw nsw i32 %i.af, %i.ah
  %i.aj = icmp eq i8 %i.p, 15
  %i.ak = select i1 %i.aj, i32 4, i32 0
  %i.al = add nuw nsw i32 %i.ai, %i.ak
  %i.am = icmp eq i8 %i.p, 102
  %i.an = select i1 %i.am, i32 8, i32 0
  %i.ao = add nuw nsw i32 %i.al, %i.an
  %i.ap = icmp eq i8 %i.p, 103
  %i.aq = select i1 %i.ap, i32 12, i32 0
  %i.ar = add nuw nsw i32 %i.ao, %i.aq
  %i.as = shl nuw nsw i32 %i.aa, 4
  %i.at = or i32 %i.ar, %i.as
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8exeModelR5MixerE2cm, i64 136), align 8, !tbaa !110 ; 4 uses
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8exeModelR5MixerE2cm, i64 136), align 8, !tbaa !110
  %i.aw = mul i32 %i.at, 987654323
  %i.ax = add i32 %i.aw, %i.au                    ; 2 uses
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 16)
  %i.az = mul i32 %i.ay, 123456791
  %i.ba = add i32 %i.az, %i.au
  %i.bb = sext i32 %i.au to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bb
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !4
  br label %_Z6execxtii.exit

bb.f:                                             ; preds = %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ8exeModelR5MixerE2cm) #38
  resume { ptr, i32 } %i.bd

_Z6execxtii.exit:                                 ; preds = %.peel.next, %_Z6execxtii.exit
  %.07 = phi i32 [ 1, %.peel.next ], [ %i.dr, %_Z6execxtii.exit ] ; 4 uses
  %i.be = load i32, ptr @pos, align 4, !tbaa !4   ; 3 uses
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = load i32, ptr @buf, align 8, !tbaa !22
  %i.bh = add nsw i32 %i.bg, -1                   ; 5 uses
  %i.bi = and i32 %i.bh, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %.pre9, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i32
  %i.bn = icmp samesign ugt i32 %.07, 4
  %reass.sub.i = sub i32 %i.be, %.07              ; 3 uses
  %i.bo = add i32 %reass.sub.i, -2
  %i.bp = and i32 %i.bh, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %.pre9, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11  ; 3 uses
  %i.bt = add i32 %reass.sub.i, -3
  %i.bu = and i32 %i.bh, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %.pre9, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11  ; 3 uses
  %.neg.i = xor i32 %.07, -1
  %i.by = add i32 %i.be, %.neg.i
  %i.bz = and i32 %i.bh, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %.pre9, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = and i32 %i.bh, %reass.sub.i
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %.pre9, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 12
  %i.cj = and i32 %i.ci, 815104
  %i.ck = zext i8 %i.cc to i32
  %i.cl = icmp eq i8 %i.bs, 102
  %i.cm = select i1 %i.cl, i32 2, i32 0
  %i.cn = icmp eq i8 %i.bs, 15
  %i.co = zext i1 %i.cn to i32
  %i.cp = or disjoint i32 %i.cm, %i.co
end_hunk_1
begin_hunk_2_@_Z7paqmainiPPc:bb.a
  store i32 %i.xy, ptr @programChecker, align 8, !tbaa !15
  %i.xz = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.ya = icmp sgt i32 %i.xy, %i.xz
  br i1 %i.ya, label %bb.hb, label %_ZN5ArrayIcLi0EED2Ev.exit370

bb.hb:                                            ; preds = %bb.ha
  store i32 %i.xy, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIcLi0EED2Ev.exit370

_ZN5ArrayIcLi0EED2Ev.exit370:                     ; preds = %bb.ha, %bb.hb
  %i.yb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !274
  call void @free(ptr noundef %i.yc) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.yd = load i32, ptr %2, align 8, !tbaa !272
  %i.ye = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.yf = sub i32 %i.ye, %i.yd                    ; 3 uses
  store i32 %i.yf, ptr @programChecker, align 8, !tbaa !15
  %i.yg = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.yh = icmp sgt i32 %i.yf, %i.yg
  br i1 %i.yh, label %bb.hc, label %_ZN5ArrayIcLi0EED2Ev.exit372

bb.hc:                                            ; preds = %_ZN5ArrayIcLi0EED2Ev.exit370
  store i32 %i.yf, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIcLi0EED2Ev.exit372

_ZN5ArrayIcLi0EED2Ev.exit372:                     ; preds = %_ZN5ArrayIcLi0EED2Ev.exit370, %bb.hc
  %i.yi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !274
  call void @free(ptr noundef %i.yj) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.yk = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.yl = shl i32 %.sroa.0488.6, 3                ; 2 uses
  %i.ym = sub i32 %i.yk, %i.yl                    ; 3 uses
  store i32 %i.ym, ptr @programChecker, align 8, !tbaa !15
  %i.yn = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.yo = icmp sgt i32 %i.ym, %i.yn
  br i1 %i.yo, label %bb.hd, label %_ZN5ArrayIlLi0EED2Ev.exit

bb.hd:                                            ; preds = %_ZN5ArrayIcLi0EED2Ev.exit372
  store i32 %i.ym, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIlLi0EED2Ev.exit

_ZN5ArrayIlLi0EED2Ev.exit:                        ; preds = %_ZN5ArrayIcLi0EED2Ev.exit372, %bb.hd
  call void @free(ptr noundef %.sroa.19.6) #38
  %i.yp = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.yq = sub i32 %i.yp, %i.yl                    ; 3 uses
  store i32 %i.yq, ptr @programChecker, align 8, !tbaa !15
  %i.yr = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.ys = icmp sgt i32 %i.yq, %i.yr
  br i1 %i.ys, label %bb.he, label %bb.ht

bb.he:                                            ; preds = %_ZN5ArrayIlLi0EED2Ev.exit
  store i32 %i.yq, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %bb.ht

bb.hf:                                            ; preds = %bb.gz, %bb.eh
  %.pn238 = phi { ptr, i32 } [ %i.pu, %bb.eh ], [ %.pn.pn.pn, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.hg

bb.hg:                                            ; preds = %.loopexit549, %.loopexit.split-lp550, %bb.dz, %bb.dx, %bb.hf, %bb.cs, %bb.co
  %.sroa.19496.7 = phi ptr [ %.sroa.19496.2, %bb.co ], [ %.sroa.19496.15793, %bb.dz ], [ %.sroa.19496.6, %bb.hf ], [ %.sroa.19496.4, %bb.cs ], [ %.sroa.19496.5, %bb.dx ], [ %.sroa.19496.3, %.loopexit.split-lp550 ], [ %.sroa.19496.3, %.loopexit549 ]
  %.sroa.0488.7 = phi i32 [ %.sroa.0488.2, %bb.co ], [ %.2209, %bb.dz ], [ %.sroa.0488.6, %bb.hf ], [ %.sroa.0488.4, %bb.cs ], [ %.sroa.0488.5, %bb.dx ], [ %.sroa.14494.0, %.loopexit.split-lp550 ], [ %.sroa.14494.0, %.loopexit549 ]
  %.sroa.19.7 = phi ptr [ %.sroa.19.2, %bb.co ], [ %.sroa.19.14, %bb.dz ], [ %.sroa.19.6, %bb.hf ], [ %.sroa.19.4, %bb.cs ], [ %.sroa.19.5, %bb.dx ], [ %.sroa.19.3, %.loopexit.split-lp550 ], [ %.sroa.19.3, %.loopexit549 ]
  %.sroa.0.7 = phi i32 [ %.sroa.0.2, %bb.co ], [ %.2209, %bb.dz ], [ %.sroa.0488.6, %bb.hf ], [ %.sroa.0488.4, %bb.cs ], [ %.sroa.0.5, %bb.dx ], [ %.sroa.14494.0, %.loopexit.split-lp550 ], [ %.sroa.14494.0, %.loopexit549 ]
  %.pn254.pn.pn.pn = phi { ptr, i32 } [ %.pn254.pn.pn, %bb.co ], [ %i.nh, %bb.dz ], [ %.pn238, %bb.hf ], [ %i.kh, %bb.cs ], [ %i.nb, %bb.dx ], [ %lpad.loopexit.split-lp552, %.loopexit.split-lp550 ], [ %lpad.loopexit551, %.loopexit549 ]
  %i.yt = load i32, ptr %3, align 8, !tbaa !272
  %i.yu = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.yv = sub i32 %i.yu, %i.yt                    ; 3 uses
  store i32 %i.yv, ptr @programChecker, align 8, !tbaa !15
  %i.yw = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.yx = icmp sgt i32 %i.yv, %i.yw
  br i1 %i.yx, label %bb.hh, label %_ZN5ArrayIcLi0EED2Ev.exit376

bb.hh:                                            ; preds = %bb.hg
  store i32 %i.yv, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIcLi0EED2Ev.exit376

_ZN5ArrayIcLi0EED2Ev.exit376:                     ; preds = %bb.hg, %bb.hh
  %i.yy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !274
  call void @free(ptr noundef %i.yz) #38
  %i.za = shl i32 %.sroa.0.7, 3
  %i.zb = shl i32 %.sroa.0488.7, 3
  br label %bb.hi

bb.hi:                                            ; preds = %_ZN5ArrayIcLi0EED2Ev.exit376, %bb.be
  %.sroa.19496.8 = phi ptr [ %.sroa.19496.7, %_ZN5ArrayIcLi0EED2Ev.exit376 ], [ %i.z, %bb.be ]
  %.sroa.0488.8 = phi i32 [ %i.zb, %_ZN5ArrayIcLi0EED2Ev.exit376 ], [ 8, %bb.be ]
  %.sroa.19.8 = phi ptr [ %.sroa.19.7, %_ZN5ArrayIcLi0EED2Ev.exit376 ], [ %i.ae, %bb.be ]
  %.sroa.0.8 = phi i32 [ %i.za, %_ZN5ArrayIcLi0EED2Ev.exit376 ], [ 8, %bb.be ]
  %.pn254.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn254.pn.pn.pn, %_ZN5ArrayIcLi0EED2Ev.exit376 ], [ %i.gb, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.ax
  %.sroa.19496.9 = phi ptr [ %.sroa.19496.8, %bb.hi ], [ %i.z, %bb.ax ]
  %.sroa.0488.9 = phi i32 [ %.sroa.0488.8, %bb.hi ], [ 8, %bb.ax ]
  %.sroa.19.9 = phi ptr [ %.sroa.19.8, %bb.hi ], [ %i.ae, %bb.ax ]
  %.sroa.0.9 = phi i32 [ %.sroa.0.8, %bb.hi ], [ 8, %bb.ax ]
  %.pn254.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn254.pn.pn.pn.pn, %bb.hi ], [ %i.fk, %bb.ax ]
  %i.zc = load i32, ptr %2, align 8, !tbaa !272
  %i.zd = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ze = sub i32 %i.zd, %i.zc                    ; 3 uses
  store i32 %i.ze, ptr @programChecker, align 8, !tbaa !15
  %i.zf = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.zg = icmp sgt i32 %i.ze, %i.zf
  br i1 %i.zg, label %bb.hk, label %_ZN5ArrayIcLi0EED2Ev.exit378

bb.hk:                                            ; preds = %bb.hj
  store i32 %i.ze, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIcLi0EED2Ev.exit378

_ZN5ArrayIcLi0EED2Ev.exit378:                     ; preds = %bb.hj, %bb.hk
  %i.zh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !274
  call void @free(ptr noundef %i.zi) #38
  br label %bb.hl

bb.hl:                                            ; preds = %_ZN5ArrayIcLi0EED2Ev.exit378, %bb.v
  %.sroa.19496.10 = phi ptr [ %.sroa.19496.9, %_ZN5ArrayIcLi0EED2Ev.exit378 ], [ %i.z, %bb.v ]
  %.sroa.0488.10 = phi i32 [ %.sroa.0488.9, %_ZN5ArrayIcLi0EED2Ev.exit378 ], [ 8, %bb.v ]
  %.sroa.19.10 = phi ptr [ %.sroa.19.9, %_ZN5ArrayIcLi0EED2Ev.exit378 ], [ %i.ae, %bb.v ]
  %.sroa.0.10 = phi i32 [ %.sroa.0.9, %_ZN5ArrayIcLi0EED2Ev.exit378 ], [ 8, %bb.v ]
  %.pn254.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn254.pn.pn.pn.pn.pn, %_ZN5ArrayIcLi0EED2Ev.exit378 ], [ %i.bp, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.zj = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.zk = sub i32 %i.zj, %.sroa.0.10              ; 3 uses
  store i32 %i.zk, ptr @programChecker, align 8, !tbaa !15
  %i.zl = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.zm = icmp sgt i32 %i.zk, %i.zl
  br i1 %i.zm, label %bb.hm, label %_ZN5ArrayIlLi0EED2Ev.exit380

bb.hm:                                            ; preds = %bb.hl
  store i32 %i.zk, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIlLi0EED2Ev.exit380

_ZN5ArrayIlLi0EED2Ev.exit380:                     ; preds = %bb.hl, %bb.hm
  call void @free(ptr noundef %.sroa.19.10) #38
  br label %bb.hn

bb.hn:                                            ; preds = %_ZN5ArrayIlLi0EED2Ev.exit380, %bb.u
  %.sroa.19496.11 = phi ptr [ %i.z, %bb.u ], [ %.sroa.19496.10, %_ZN5ArrayIlLi0EED2Ev.exit380 ]
  %.sroa.0488.11 = phi i32 [ 8, %bb.u ], [ %.sroa.0488.10, %_ZN5ArrayIlLi0EED2Ev.exit380 ]
  %.pn254.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.u ], [ %.pn254.pn.pn.pn.pn.pn.pn, %_ZN5ArrayIlLi0EED2Ev.exit380 ]
  %i.zn = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.zo = sub i32 %i.zn, %.sroa.0488.11           ; 3 uses
  store i32 %i.zo, ptr @programChecker, align 8, !tbaa !15
  %i.zp = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.zq = icmp sgt i32 %i.zo, %i.zp
  br i1 %i.zq, label %bb.ho, label %_ZN5ArrayIPcLi0EED2Ev.exit382

bb.ho:                                            ; preds = %bb.hn
  store i32 %i.zo, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIPcLi0EED2Ev.exit382

_ZN5ArrayIPcLi0EED2Ev.exit382:                    ; preds = %bb.hn, %bb.ho
  call void @free(ptr noundef %.sroa.19496.11) #38
  br label %bb.hp

bb.hp:                                            ; preds = %bb.t, %_ZN5ArrayIPcLi0EED2Ev.exit382, %bb.i
  %.pn254.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %.pn254.pn.pn.pn.pn.pn.pn.pn, %_ZN5ArrayIPcLi0EED2Ev.exit382 ], [ %i.bn, %bb.t ] ; 3 uses
  %.2171 = phi i1 [ %.0169, %bb.i ], [ %.1170518, %_ZN5ArrayIPcLi0EED2Ev.exit382 ], [ %.1170518, %bb.t ]
  %.16203 = extractvalue { ptr, i32 } %.pn254.pn.pn.pn.pn.pn.pn.pn.pn.pn, 1
  %i.zr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #38
  %i.zs = icmp eq i32 %.16203, %i.zr
  br i1 %i.zs, label %bb.hq, label %bb.hw

bb.hq:                                            ; preds = %bb.hp
  %.16 = extractvalue { ptr, i32 } %.pn254.pn.pn.pn.pn.pn.pn.pn.pn.pn, 0
  %i.zt = call ptr @__cxa_begin_catch(ptr %.16) #38 ; 2 uses
  %.not265 = icmp eq ptr %i.zt, null
  br i1 %.not265, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.zt) ; 0 uses
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  call void @__cxa_end_catch() #38
  br i1 %.2171, label %bb.hu, label %bb.hv

bb.ht:                                            ; preds = %bb.he, %_ZN5ArrayIlLi0EED2Ev.exit
  call void @free(ptr noundef %.sroa.19496.6) #38
  br i1 %.1170518, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.hs, %bb.ht
  %puts266 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.zu = load ptr, ptr @stdin, align 8, !tbaa !263
  %i.zv = call i32 @getc(ptr noundef %i.zu), !inline_history !298 ; 0 uses
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hs, %bb.hu, %bb.ht
  ret i32 0

bb.hw:                                            ; preds = %bb.hp
  resume { ptr, i32 } %.pn254.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #26

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #27

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #28 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [3 x ptr], align 16               ; 7 uses
  %2 = alloca %class.String, align 8              ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i32 1, ptr %i.a, align 4, !tbaa !4
  %i.c = tail call i32 @fork() #38
  switch i32 %i.c, label %bb.d [
    i32 0, label %bb.b
    i32 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_Z7paqmainiPPc(i32 noundef %0, ptr noundef %1) ; 0 uses
  tail call void @exit(i32 noundef 0) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @perror(ptr noundef nonnull @.str.57) #44
  tail call void @exit(i32 noundef 1) #46
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = call i32 @wait(ptr noundef nonnull %i.a) ; 0 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.al

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.g = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  store ptr %i.g, ptr %i.b, align 16, !tbaa !8
  %i.h = call noalias dereferenceable_or_null(3) ptr @strdup(ptr noundef nonnull @.str.58) #38 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !8
  %i.j = add i32 %0, -1
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 8
  %.01495 = add nsw i32 %0, -1                    ; 2 uses
  %.not1896 = icmp eq i32 %.01495, 0
  br i1 %.not1896, label %..critedge_crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %.014 = add nsw i32 %.01498, -1                 ; 2 uses
  %.not18 = icmp eq i32 %.014, 0
  br i1 %.not18, label %..critedge_crit_edge, label %.lr.ph, !llvm.loop !299

..critedge_crit_edge:                             ; preds = %bb.f, %bb.e
  %.pre = load ptr, ptr %scevgep, align 8, !tbaa !8
  br label %.critedge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.01498 = phi i32 [ %.014, %bb.f ], [ %.01495, %bb.e ]
  %.pn97 = phi ptr [ %.015, %bb.f ], [ %1, %bb.e ]
  %.015 = getelementptr inbounds nuw i8, ptr %.pn97, i64 8 ; 2 uses
  %i.n = load ptr, ptr %.015, align 8, !tbaa !8   ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.f, label %.critedge, !llvm.loop !299

.critedge:                                        ; preds = %.lr.ph, %..critedge_crit_edge
  %i.q = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.n, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @_ZN6StringC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.q)
  %i.r = load i32, ptr %2, align 8, !tbaa !272    ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = sext i1 %i.s to i32
  %spec.select = add nsw i32 %i.r, %i.t           ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.x = load i32, ptr %i.u, align 4, !tbaa !277
  %i.y = icmp eq i32 %spec.select, %i.x
  %.pre59 = load ptr, ptr %i.v, align 8, !tbaa !270 ; 3 uses
  br i1 %i.y, label %bb.g, label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i

bb.g:                                             ; preds = %.critedge
  %i.z = shl nsw i32 %spec.select, 1
  %i.aa = call noundef i32 @llvm.smax.i32(i32 %i.z, i32 1) ; 5 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !274 ; 2 uses
  store i32 %i.aa, ptr %i.u, align 4, !tbaa !277
  store i32 %i.aa, ptr %2, align 8, !tbaa !272
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ae = add nsw i32 %i.ad, %i.aa                ; 3 uses
  store i32 %i.ae, ptr @programChecker, align 8, !tbaa !15
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.ag = icmp sgt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %_ZN14ProgramChecker5allocEi.exit.i.i35

bb.h:                                             ; preds = %bb.g
  store i32 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i35

_ZN14ProgramChecker5allocEi.exit.i.i35:           ; preds = %bb.h, %bb.g
  %i.ah = call noalias ptr @calloc(i64 noundef %i.ac, i64 noundef 1) #40 ; 5 uses
  store ptr %i.ah, ptr %i.w, align 8, !tbaa !274
  %.not.i.i36 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i36, label %.invoke, label %bb.i

bb.i:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i35
  store ptr %i.ah, ptr %i.v, align 8, !tbaa !270
  %.not11.i37 = icmp eq ptr %i.ab, null
  br i1 %.not11.i37, label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not12.i38 = icmp eq ptr %.pre59, null
  br i1 %.not12.i38, label %_ZN14ProgramChecker5allocEi.exit.i39, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = sext i32 %spec.select to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %.pre59, i64 %i.ai, i1 false)
  %i.aj = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ak = sub i32 %i.aj, %i.aa                    ; 3 uses
  store i32 %i.ak, ptr @programChecker, align 8, !tbaa !15
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.am = icmp sgt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %_ZN14ProgramChecker5allocEi.exit.i39

bb.l:                                             ; preds = %bb.k
  store i32 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i39

_ZN14ProgramChecker5allocEi.exit.i39:             ; preds = %bb.l, %bb.k, %bb.j
  call void @free(ptr noundef nonnull %i.ab) #38
  %.pre58.pre = load ptr, ptr %i.v, align 8, !tbaa !270
  br label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i

_ZN5ArrayIcLi0EE9push_backERKc.exit.i:            ; preds = %bb.i, %_ZN14ProgramChecker5allocEi.exit.i39, %.critedge
  %i.an = phi ptr [ %.pre59, %.critedge ], [ %.pre58.pre, %_ZN14ProgramChecker5allocEi.exit.i39 ], [ %i.ah, %bb.i ]
  %i.ao = add nsw i32 %spec.select, 1
  store i32 %i.ao, ptr %2, align 8, !tbaa !272
  %i.ap = sext i32 %spec.select to i64
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  store i8 46, ptr %i.aq, align 1, !tbaa !11
  %.pre6.i = load i32, ptr %2, align 8, !tbaa !272 ; 5 uses
  %i.ar = load i32, ptr %i.u, align 4, !tbaa !277
  %i.as = icmp eq i32 %.pre6.i, %i.ar
  %.pre61 = load ptr, ptr %i.v, align 8, !tbaa !270 ; 3 uses
  br i1 %i.as, label %bb.m, label %bb.s

bb.m:                                             ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i
  %i.at = shl nsw i32 %.pre6.i, 1
  %i.au = call noundef i32 @llvm.smax.i32(i32 %i.at, i32 1) ; 5 uses
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !274 ; 2 uses
  store i32 %i.au, ptr %i.u, align 4, !tbaa !277
  store i32 %i.au, ptr %2, align 8, !tbaa !272
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ay = add nsw i32 %i.ax, %i.au                ; 3 uses
  store i32 %i.ay, ptr @programChecker, align 8, !tbaa !15
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.ba = icmp sgt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.n, label %_ZN14ProgramChecker5allocEi.exit.i.i

bb.n:                                             ; preds = %bb.m
  store i32 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i

_ZN14ProgramChecker5allocEi.exit.i.i:             ; preds = %bb.n, %bb.m
  %i.bb = call noalias ptr @calloc(i64 noundef %i.aw, i64 noundef 1) #40 ; 5 uses
  store ptr %i.bb, ptr %i.w, align 8, !tbaa !274
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %.invoke, label %bb.o

bb.o:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !270
  %.not11.i = icmp eq ptr %i.av, null
  br i1 %.not11.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not12.i = icmp eq ptr %.pre61, null
  br i1 %.not12.i, label %_ZN14ProgramChecker5allocEi.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = sext i32 %.pre6.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull align 1 %.pre61, i64 %i.bc, i1 false)
  %i.bd = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.be = sub i32 %i.bd, %i.au                    ; 3 uses
  store i32 %i.be, ptr @programChecker, align 8, !tbaa !15
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.bg = icmp sgt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.r, label %_ZN14ProgramChecker5allocEi.exit.i

bb.r:                                             ; preds = %bb.q
  store i32 %i.be, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i
end_hunk_2
begin_hunk_3_@_ZN2BHILi4EEixEj:bb.a
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %.loopexit.thread48, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !33
  %i.bn = zext i16 %i.bm to i32
  %i.bo = icmp eq i32 %i.b, %i.bn
  br i1 %i.bo, label %.loopexit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = shl i32 %i.f, 2
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.h, i64 %i.bq   ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 24     ; 3 uses
  %i.bt = getelementptr i8, ptr %i.br, i64 26
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %.loopexit.thread48, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = load i16, ptr %i.bs, align 2, !tbaa !33
  %i.bx = zext i16 %i.bw to i32
  %i.by = icmp eq i32 %i.b, %i.bx
  br i1 %i.by, label %.loopexit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = shl i32 %i.f, 2
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr i8, ptr %i.h, i64 %i.ca   ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 28     ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 30
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.loopexit.thread48, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load i16, ptr %i.cc, align 2, !tbaa !33
  %i.ch = zext i16 %i.cg to i32
  %i.ci = icmp eq i32 %i.b, %i.ch
  br i1 %i.ci, label %.loopexit.thread, label %bb.q

.loopexit.thread48:                               ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o
  %.037.lcssa.wide.ph = phi i64 [ 28, %bb.o ], [ 24, %bb.m ], [ 20, %bb.k ], [ 16, %bb.i ], [ 12, %bb.g ], [ 8, %bb.e ], [ 4, %bb.c ]
  %.lcssa.ph = phi ptr [ %i.cc, %bb.o ], [ %i.bs, %bb.m ], [ %i.bi, %bb.k ], [ %i.ay, %bb.i ], [ %i.ao, %bb.g ], [ %i.ae, %bb.e ], [ %i.u, %bb.c ] ; 2 uses
  %i.cj = trunc nuw i32 %i.b to i16
  store i16 %i.cj, ptr %.lcssa.ph, align 2, !tbaa !33
  br label %.loopexit.thread

.loopexit:                                        ; preds = %bb.a
  %i.ck = trunc nuw i32 %i.b to i16
  store i16 %i.ck, ptr %i.k, align 2, !tbaa !33
  br label %.loopexit.thread43

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr @_ZZN2BHILi4EEixEjE3tmp, align 1
  %i.cl = trunc nuw i32 %i.b to i16
  store i16 %i.cl, ptr @_ZZN2BHILi4EEixEjE3tmp, align 1, !tbaa !33
  %i.cm = getelementptr i8, ptr %i.k, i64 30
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = getelementptr i8, ptr %i.k, i64 26
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !11
  %i.cq = icmp ugt i8 %i.cn, %i.cp
  %spec.select = select i1 %i.cq, i64 24, i64 28
  br label %bb.r

.loopexit.thread:                                 ; preds = %bb.j, %bb.n, %bb.h, %bb.l, %bb.f, %bb.p, %bb.d, %.loopexit.thread48
  %.03642 = phi i64 [ %.037.lcssa.wide.ph, %.loopexit.thread48 ], [ 16, %bb.j ], [ 24, %bb.n ], [ 12, %bb.h ], [ 20, %bb.l ], [ 8, %bb.f ], [ 28, %bb.p ], [ 4, %bb.d ]
  %i.cr = phi ptr [ %.lcssa.ph, %.loopexit.thread48 ], [ %i.ay, %bb.j ], [ %i.bs, %bb.n ], [ %i.ao, %bb.h ], [ %i.bi, %bb.l ], [ %i.ae, %bb.f ], [ %i.cc, %bb.p ], [ %i.u, %bb.d ]
  %i.cs = load i32, ptr %i.cr, align 2
  store i32 %i.cs, ptr @_ZZN2BHILi4EEixEjE3tmp, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.thread
  %.1 = phi i64 [ %.03642, %.loopexit.thread ], [ %spec.select, %bb.q ]
  %i.ct = getelementptr i8, ptr %i.k, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr nonnull align 1 %i.k, i64 %.1, i1 false)
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !163
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.j
  %i.cw = load i32, ptr @_ZZN2BHILi4EEixEjE3tmp, align 1
  store i32 %i.cw, ptr %i.cv, align 1
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !163
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.j
  br label %.loopexit.thread43

.loopexit.thread43:                               ; preds = %bb.b, %.loopexit, %bb.r
  %.131.pn = phi ptr [ %i.cy, %bb.r ], [ %i.k, %.loopexit ], [ %i.k, %bb.b ]
  %.034 = getelementptr i8, ptr %.131.pn, i64 1
  ret ptr %.034
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7Encoder4codeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !239    ; 2 uses
  %i.b = icmp slt i32 %i.a, 2048
  %i.c = zext i1 %i.b to i32
  %i.d = add nsw i32 %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !246  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !247
  %i.i = sub i32 %i.h, %i.f                       ; 2 uses
  %i.j = lshr i32 %i.i, 12
  %i.k = mul i32 %i.j, %i.d
  %i.l = add i32 %i.k, %i.f
  %i.m = and i32 %i.i, 4095
  %i.n = mul i32 %i.m, %i.d
  %i.o = lshr i32 %i.n, 12
  %i.p = add i32 %i.l, %i.o                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !241
  %i.s = icmp eq i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp ule i32 %i.u, %i.p
  %i.w = zext i1 %i.v to i32
  %storemerge = select i1 %i.s, i32 %i.w, i32 %1  ; 2 uses
  store i32 %storemerge, ptr @y, align 4, !tbaa !4
  %.not = icmp eq i32 %storemerge, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.p, ptr %i.g, align 4, !tbaa !247
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.x = add i32 %i.p, 1
  store i32 %i.x, ptr %i.e, align 8, !tbaa !246
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN9Predictor6updateEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  %i.y = load i32, ptr %i.e, align 8, !tbaa !246  ; 2 uses
  %i.z = load i32, ptr %i.g, align 4, !tbaa !247  ; 2 uses
  %i.aa = xor i32 %i.z, %i.y
  %i.ab = icmp ult i32 %i.aa, 16777216
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %i.ad = phi i32 [ %i.y, %.lr.ph ], [ %i.ay, %bb.i ]
  %i.ae = phi i32 [ %i.z, %.lr.ph ], [ %i.ax, %bb.i ] ; 2 uses
  %i.af = load i32, ptr %i.q, align 4, !tbaa !241 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = lshr i32 %i.ae, 24
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !245
  %i.aj = tail call i32 @putc(i32 noundef %i.ah, ptr noundef %i.ai) ; 0 uses
  %.pre = load i32, ptr %i.e, align 8, !tbaa !246
  %.pre8 = load i32, ptr %i.g, align 4, !tbaa !247
  %.pre9 = load i32, ptr %i.q, align 4, !tbaa !241
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi i32 [ %.pre9, %bb.f ], [ %i.af, %bb.e ]
  %i.al = phi i32 [ %.pre8, %bb.f ], [ %i.ae, %bb.e ]
  %i.am = phi i32 [ %.pre, %bb.f ], [ %i.ad, %bb.e ]
  %i.an = shl i32 %i.am, 8                        ; 2 uses
  store i32 %i.an, ptr %i.e, align 8, !tbaa !246
  %i.ao = shl i32 %i.al, 8
  %i.ap = or disjoint i32 %i.ao, 255              ; 2 uses
  store i32 %i.ap, ptr %i.g, align 4, !tbaa !247
  %i.aq = icmp eq i32 %i.ak, 1
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.t, align 8, !tbaa !248
  %i.as = shl i32 %i.ar, 8
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !245
  %i.au = tail call i32 @getc(ptr noundef %i.at)
  %i.av = and i32 %i.au, 255
  %i.aw = or disjoint i32 %i.av, %i.as
  store i32 %i.aw, ptr %i.t, align 8, !tbaa !248
  %.pre10 = load i32, ptr %i.e, align 8, !tbaa !246
  %.pre11 = load i32, ptr %i.g, align 4, !tbaa !247
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi i32 [ %.pre11, %bb.h ], [ %i.ap, %bb.g ] ; 2 uses
  %i.ay = phi i32 [ %.pre10, %bb.h ], [ %i.an, %bb.g ] ; 2 uses
  %i.az = xor i32 %i.ax, %i.ay
  %i.ba = icmp ult i32 %i.az, 16777216
  br i1 %i.ba, label %bb.e, label %._crit_edge, !llvm.loop !265

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %i.bb = load i32, ptr @y, align 4, !tbaa !4
  ret i32 %i.bb
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5ArrayIhLi0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %.not = icmp sgt i32 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !22
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !22
  store i32 %1, ptr %i.a, align 4, !tbaa !20
  store i32 %1, ptr %0, align 8, !tbaa !22
  %i.h = icmp slt i32 %1, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZN5ArrayIhLi0EE6createEi.exit

bb.e:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %1 to i64
  %i.j = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.k = add nsw i32 %i.j, %1                     ; 3 uses
  store i32 %i.k, ptr @programChecker, align 8, !tbaa !15
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.m = icmp sgt i32 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %_ZN14ProgramChecker5allocEi.exit.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i

_ZN14ProgramChecker5allocEi.exit.i:               ; preds = %bb.f, %bb.e
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 1) #40 ; 4 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

bb.h:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i
  store ptr %i.n, ptr %i.e, align 8, !tbaa !24
  br label %_ZN5ArrayIhLi0EE6createEi.exit

_ZN5ArrayIhLi0EE6createEi.exit:                   ; preds = %bb.d, %bb.h
  %i.o = phi ptr [ null, %bb.d ], [ %i.n, %bb.h ]
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN5ArrayIhLi0EE6createEi.exit
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %_ZN14ProgramChecker5allocEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call noundef i32 @llvm.smin.i32(i32 %1, i32 %i.g)
  %i.q = sext i32 %i.p to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.f, i64 %i.q, i1 false)
  %i.r = load i32, ptr %0, align 8, !tbaa !22
  %i.s = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.t = sub i32 %i.s, %i.r                       ; 3 uses
  store i32 %i.t, ptr @programChecker, align 8, !tbaa !15
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.v = icmp sgt i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %_ZN14ProgramChecker5allocEi.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit

_ZN14ProgramChecker5allocEi.exit:                 ; preds = %bb.k, %bb.j, %bb.i
  tail call void @free(ptr noundef nonnull %i.d) #38
  br label %bb.l

bb.l:                                             ; preds = %_ZN5ArrayIhLi0EE6createEi.exit, %_ZN14ProgramChecker5allocEi.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #35

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_paq8p.cpp() #36 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr @programChecker, align 8, !tbaa !15
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.a = tail call i64 @clock() #38
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 8), align 8, !tbaa !300
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 4), align 4, !tbaa !87
  store i32 64, ptr @rnd, align 8, !tbaa !12
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = add nsw i32 %i.b, 256                    ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !15
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i

_ZN14ProgramChecker5allocEi.exit.i.i.i.i:         ; preds = %bb.b, %bb.a
  %i.f = tail call noalias dereferenceable_or_null(256) ptr @calloc(i64 noundef 256, i64 noundef 1) #40 ; 7 uses
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 8), align 8, !tbaa !19
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN5ArrayIjLi0EEC2Ei.exit.i.i

bb.c:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIjLi0EEC2Ei.exit.i.i:                    ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 16), align 8, !tbaa !88
  store i32 123456789, ptr %i.f, align 4, !tbaa !4
  %i.g = getelementptr nuw i8, ptr %i.f, i64 4
  store i32 987654321, ptr %i.g, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5ArrayIjLi0EEC2Ei.exit.i.i
  %store_forwarded = phi i32 [ 987654321, %_ZN5ArrayIjLi0EEC2Ei.exit.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.h = phi i32 [ 123456789, %_ZN5ArrayIjLi0EEC2Ei.exit.i.i ], [ %i.m, %bb.d ]
  %indvars.iv.i.i = phi i64 [ 0, %_ZN5ArrayIjLi0EEC2Ei.exit.i.i ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 3 uses
  %i.i = mul i32 %store_forwarded, 11
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.k = mul i32 %i.h, 23
  %i.l = lshr i32 %i.k, 4
  %i.m = add i32 %i.i, %i.l                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.m, ptr %i.n, align 4, !tbaa !4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.o = mul i32 %i.m, 11
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.q = mul i32 %store_forwarded, 23
  %i.r = lshr i32 %i.q, 4
  %i.s = add i32 %i.o, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 62
  br i1 %exitcond.not.i.i.1, label %__cxx_global_var_init.1.exit, label %bb.d, !llvm.loop !301

__cxx_global_var_init.1.exit:                     ; preds = %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 24), align 8, !tbaa !114
  %i.u = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6RandomD2Ev, ptr nonnull @rnd, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @buf, i8 0, i64 24, i1 false)
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3BufD2Ev, ptr nonnull @buf, ptr nonnull @__dso_handle) #38 ; 0 uses
  store i32 65536, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 4), align 4, !tbaa !20
  store i32 65536, ptr @ilog, align 8, !tbaa !22
  %i.w = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.x = add nsw i32 %i.w, 65536                  ; 3 uses
  store i32 %i.x, ptr @programChecker, align 8, !tbaa !15
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.z = icmp sgt i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i1

bb.e:                                             ; preds = %__cxx_global_var_init.1.exit
  store i32 %i.x, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i1

_ZN14ProgramChecker5allocEi.exit.i.i.i.i1:        ; preds = %bb.e, %__cxx_global_var_init.1.exit
  %i.aa = tail call noalias dereferenceable_or_null(65536) ptr @calloc(i64 noundef 65536, i64 noundef 1) #40 ; 3 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 8), align 8, !tbaa !23
  %.not.i.i.i.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i2, label %bb.f, label %_ZN5ArrayIhLi0EEC2Ei.exit.i.i

bb.f:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i1
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIhLi0EEC2Ei.exit.i.i:                    ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i1
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5ArrayIhLi0EEC2Ei.exit.i.i
  %indvars.iv.i.i3 = phi i64 [ 2, %_ZN5ArrayIhLi0EEC2Ei.exit.i.i ], [ %indvars.iv.next.i.i4.1, %bb.g ] ; 4 uses
  %.067.i.i = phi i32 [ 14155776, %_ZN5ArrayIhLi0EEC2Ei.exit.i.i ], [ %i.ak, %bb.g ]
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i3 to i32
  %i.ab = shl i32 %indvars.iv.tr.i.i, 1
  %i.ac = add nsw i32 %i.ab, -1
  %.udiv.i.i = udiv i32 774541002, %i.ac
  %i.ad = add i32 %.udiv.i.i, %.067.i.i           ; 2 uses
  %i.ae = lshr i32 %i.ad, 24
  %i.af = trunc nuw i32 %i.ae to i8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.i.i3
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !11
  %indvars.iv.next.i.i4 = or disjoint i64 %indvars.iv.i.i3, 1 ; 2 uses
  %indvars.iv.tr.i.i.1 = trunc i64 %indvars.iv.next.i.i4 to i32
  %i.ai = shl i32 %indvars.iv.tr.i.i.1, 1
  %i.aj = add nsw i32 %i.ai, -1
  %.udiv.i.i.1 = udiv i32 774541002, %i.aj
  %i.ak = add i32 %.udiv.i.i.1, %i.ad             ; 2 uses
  %i.al = lshr i32 %i.ak, 24
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.i.i4
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !11
  %indvars.iv.next.i.i4.1 = add nuw nsw i64 %indvars.iv.i.i3, 2 ; 2 uses
  %exitcond.not.i.i5.1 = icmp eq i64 %indvars.iv.next.i.i4.1, 65536
  br i1 %exitcond.not.i.i5.1, label %__cxx_global_var_init.3.exit, label %bb.g, !llvm.loop !25

__cxx_global_var_init.3.exit:                     ; preds = %bb.g
  %i.ap = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4IlogD2Ev, ptr nonnull @ilog, ptr nonnull @__dso_handle) #38 ; 0 uses
  store i32 4096, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 4), align 4, !tbaa !31
  store i32 4096, ptr @stretch, align 8, !tbaa !27
  %i.aq = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ar = add nsw i32 %i.aq, 8192                 ; 3 uses
  store i32 %i.ar, ptr @programChecker, align 8, !tbaa !15
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.at = icmp sgt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6

bb.h:                                             ; preds = %__cxx_global_var_init.3.exit
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6

_ZN14ProgramChecker5allocEi.exit.i.i.i.i6:        ; preds = %bb.h, %__cxx_global_var_init.3.exit
  %i.au = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 8192, i64 noundef 1) #40 ; 7 uses
  store ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 8), align 8, !tbaa !30
  %.not.i.i.i.i7 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i7, label %bb.i, label %_ZN5ArrayIsLi0EEC2Ei.exit.i.i

bb.i:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIsLi0EEC2Ei.exit.i.i:                    ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6
  store ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 16), align 8, !tbaa !32
  br label %_Z6squashi.exit.i.i

_Z6squashi.exit.i.i:                              ; preds = %._crit_edge.i.i, %_ZN5ArrayIsLi0EEC2Ei.exit.i.i
  %.01016.i.i = phi i32 [ 0, %_ZN5ArrayIsLi0EEC2Ei.exit.i.i ], [ %.pre-phi.i.i, %._crit_edge.i.i ] ; 3 uses
  %.01115.i.i = phi i32 [ -2047, %_ZN5ArrayIsLi0EEC2Ei.exit.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 4 uses
  %i.av = and i32 %.01115.i.i, 127                ; 2 uses
  %i.aw = ashr i32 %.01115.i.i, 7
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 64
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = sub nuw nsw i32 128, %i.av
  %i.bc = mul nsw i32 %i.bb, %i.ba
  %i.bd = getelementptr i8, ptr %i.ay, i64 68
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = mul nsw i32 %i.be, %i.av
  %i.bg = add i32 %i.bc, 64
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = ashr i32 %i.bh, 7                       ; 4 uses
  %.not13.i.i = icmp sgt i32 %.01016.i.i, %i.bi
  br i1 %.not13.i.i, label %_Z6squashi.exit.._crit_edge_crit_edge.i.i, label %iter.check

_Z6squashi.exit.._crit_edge_crit_edge.i.i:        ; preds = %_Z6squashi.exit.i.i
  %.pre.i.i = add nsw i32 %i.bi, 1
  br label %._crit_edge.i.i

iter.check:                                       ; preds = %_Z6squashi.exit.i.i
  %i.bj = trunc i32 %.01115.i.i to i16            ; 3 uses
  %i.bk = sext i32 %.01016.i.i to i64             ; 5 uses
  %i.bl = add nsw i32 %i.bi, 1                    ; 4 uses
  %wide.trip.count.i.i = sext i32 %i.bl to i64
  %narrow = add nsw i32 %i.bi, 1
  %narrow27 = sub nsw i32 %narrow, %.01016.i.i    ; 3 uses
  %i.bm = zext nneg i32 %narrow27 to i64          ; 5 uses
  %min.iters.check = icmp ult i32 %narrow27, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i32 %narrow27, 16
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bm, 12
  %n.vec = and i64 %i.bm, 2147483632              ; 4 uses
  %i.bn = add nsw i64 %n.vec, %i.bk
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bj, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.au, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %i.bo, align 2, !tbaa !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bm
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.bm, 2147483644            ; 3 uses
  %i.bq = add nsw i64 %n.vec20, %i.bk
  %broadcast.splatinsert21 = insertelement <4 x i16> poison, i16 %i.bj, i64 0
  %broadcast.splat22 = shufflevector <4 x i16> %broadcast.splatinsert21, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep28 = getelementptr [2 x i8], ptr %i.au, i64 %i.bk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %gep29 = getelementptr [2 x i8], ptr %invariant.gep28, i64 %index23
  store <4 x i16> %broadcast.splat22, ptr %gep29, align 2, !tbaa !33
  %index.next24 = add nuw i64 %index23, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next24, %n.vec20
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !303

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec20, %i.bm
  br i1 %cmp.n25, label %._crit_edge.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i8.ph = phi i64 [ %i.bk, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_Z6squashi.exit.._crit_edge_crit_edge.i.i
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %_Z6squashi.exit.._crit_edge_crit_edge.i.i ], [ %i.bl, %middle.block ], [ %i.bl, %vec.epilog.middle.block ], [ %i.bl, %vec.epilog.scalar.ph ]
  %i.bs = add nsw i32 %.01115.i.i, 1              ; 2 uses
  %exitcond18.not.i.i = icmp eq i32 %i.bs, 2048
  br i1 %exitcond18.not.i.i, label %__cxx_global_var_init.4.exit, label %_Z6squashi.exit.i.i, !llvm.loop !40

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i8 = phi i64 [ %indvars.iv.next.i.i9, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i8.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.au, i64 %indvars.iv.i.i8
  store i16 %i.bj, ptr %i.bt, align 2, !tbaa !33
  %indvars.iv.next.i.i9 = add nsw i64 %indvars.iv.i.i8, 1 ; 2 uses
  %exitcond.not.i.i10 = icmp eq i64 %indvars.iv.next.i.i9, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i10, label %._crit_edge.i.i, label %vec.epilog.scalar.ph, !llvm.loop !304

__cxx_global_var_init.4.exit:                     ; preds = %._crit_edge.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 8190
  store i16 2047, ptr %i.bu, align 2, !tbaa !33
  %i.bv = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7StretchD2Ev, ptr nonnull @stretch, ptr nonnull @__dso_handle) #38 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

attributes #0 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind memory(none) }
attributes #28 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nounwind }
attributes #39 = { noreturn }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { builtin nounwind }
attributes #42 = { builtin allocsize(0) }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { cold }
attributes #45 = { noreturn nounwind }
attributes #46 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"_ZTS5ArrayIjLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !14, i64 16}
!14 = !{!"p1 int", !10, i64 0}
!15 = !{!16, !5, i64 0}
!16 = !{!"_ZTS14ProgramChecker", !5, i64 0, !5, i64 4, !17, i64 8}
!17 = !{!"long", !6, i64 0}
!18 = !{!16, !5, i64 4}
!19 = !{!13, !9, i64 8}
!20 = !{!21, !5, i64 4}
!21 = !{!"_ZTS5ArrayIhLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16}
!22 = !{!21, !5, i64 0}
!23 = !{!21, !9, i64 8}
!24 = !{!21, !9, i64 16}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !5, i64 0}
!28 = !{!"_ZTS5ArrayIsLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !29, i64 16}
!29 = !{!"p1 short", !10, i64 0}
!30 = !{!28, !9, i64 8}
!31 = !{!28, !5, i64 4}
!32 = !{!28, !29, i64 16}
!33 = !{!34, !34, i64 0}
!34 = !{!"short", !6, i64 0}
!35 = distinct !{!35, !26, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 4, i32 12}
!39 = distinct !{!39, !26, !36, !37}
!40 = distinct !{!40, !26}
!41 = distinct !{!41, !26, !37, !36}
!42 = distinct !{!42, !26, !36, !37}
!43 = distinct !{!43, !26, !37, !36}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !26, !36, !37}
!50 = distinct !{!50, !26, !36}
!51 = !{!52, !55, i64 128}
!52 = !{!"_ZTS5Mixer", !5, i64 0, !5, i64 4, !5, i64 8, !53, i64 16, !53, i64 40, !54, i64 64, !5, i64 88, !5, i64 92, !5, i64 96, !54, i64 104, !55, i64 128}
!53 = !{!"_ZTS5ArrayIsLi16EE", !5, i64 0, !5, i64 4, !9, i64 8, !29, i64 16}
!54 = !{!"_ZTS5ArrayIiLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !14, i64 16}
!55 = !{!"p1 _ZTS5Mixer", !10, i64 0}
!56 = !{!54, !5, i64 0}
!57 = !{!54, !9, i64 8}
!58 = !{!53, !5, i64 0}
!59 = !{!53, !9, i64 8}
!60 = !{!52, !5, i64 0}
!61 = !{!52, !5, i64 4}
!62 = !{!52, !5, i64 8}
!63 = !{!53, !5, i64 4}
!64 = !{!53, !29, i64 16}
!65 = !{!54, !5, i64 4}
!66 = !{!54, !14, i64 16}
!67 = !{!52, !5, i64 88}
!68 = !{!52, !5, i64 92}
!69 = !{!52, !5, i64 96}
!70 = distinct !{!70, !26, !36, !37}
!71 = distinct !{!71, !26, !36, !37}
!72 = distinct !{!72, !26, !36, !37}
!73 = distinct !{!73, !26, !37, !36}
!74 = distinct !{!74, !26, !37, !36}
!75 = !{!76, !5, i64 0}
!76 = !{!"_ZTS4APM1", !5, i64 0, !5, i64 4, !77, i64 8}
!77 = !{!"_ZTS5ArrayItLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !29, i64 16}
!78 = !{!76, !5, i64 4}
!79 = !{!77, !5, i64 4}
!80 = !{!77, !5, i64 0}
!81 = !{!77, !9, i64 8}
!82 = !{!77, !29, i64 16}
!83 = distinct !{!83, !26}
!84 = !{!85, !5, i64 0}
!85 = !{!"_ZTS8StateMap", !5, i64 0, !5, i64 4, !13, i64 8}
!86 = !{!85, !5, i64 4}
!87 = !{!13, !5, i64 4}
!88 = !{!13, !14, i64 16}
!89 = distinct !{!89, !26, !36, !37}
!90 = distinct !{!90, !26, !37, !36}
!91 = distinct !{!91, !26, !36, !37}
!92 = distinct !{!92, !26, !37, !36}
!93 = distinct !{!93, !26}
!94 = !{!95, !5, i64 0}
!95 = !{!"_ZTS10ContextMap", !5, i64 0, !96, i64 8, !98, i64 32, !98, i64 56, !13, i64 80, !98, i64 104, !101, i64 128, !5, i64 136}
!96 = !{!"_ZTS5ArrayIN10ContextMap1EELi64EE", !5, i64 0, !5, i64 4, !9, i64 8, !97, i64 16}
!97 = !{!"p1 _ZTSN10ContextMap1EE", !10, i64 0}
!98 = !{!"_ZTS5ArrayIPhLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !99, i64 16}
!99 = !{!"p2 omnipotent char", !100, i64 0}
!100 = !{!"any p2 pointer", !10, i64 0}
!101 = !{!"p1 _ZTS8StateMap", !10, i64 0}
!102 = !{!96, !5, i64 4}
!103 = !{!96, !5, i64 0}
!104 = !{!96, !9, i64 8}
!105 = !{!96, !97, i64 16}
!106 = !{!98, !5, i64 4}
!107 = !{!98, !5, i64 0}
!108 = !{!98, !9, i64 8}
!109 = !{!98, !99, i64 16}
!110 = !{!95, !5, i64 136}
!111 = !{!95, !101, i64 128}
!112 = distinct !{!112, !26, !36, !37}
!113 = distinct !{!113, !26, !37, !36}
!114 = !{!115, !5, i64 24}
!115 = !{!"_ZTS6Random", !13, i64 0, !5, i64 24}
!116 = distinct !{!116, !26}
!117 = !{!118, !6, i64 14}
!118 = !{!"_ZTSN10ContextMap1EE", !6, i64 0, !6, i64 14, !6, i64 15}
!119 = !{!"branch_weights", i32 1, i32 1048575}
!120 = distinct !{!120, !26}
!121 = !{!122, !5, i64 24}
!122 = !{!"_ZTS25SmallStationaryContextMap", !77, i64 0, !5, i64 24, !29, i64 32}
!123 = !{!122, !29, i64 32}
!124 = distinct !{!124, !26, !36, !37}
!125 = distinct !{!125, !26, !36, !37}
!126 = distinct !{!126, !26, !37, !36}
!127 = distinct !{!127, !26}
!128 = distinct !{!128, !26}
!129 = distinct !{!129, !26}
!130 = distinct !{!130, !26}
!131 = distinct !{!131, !26}
!132 = distinct !{null}
!133 = distinct !{!133, !26}
!134 = distinct !{!134, !26}
!135 = !{!136, !137, i64 16}
!136 = !{!"_ZTS5ArrayI3HUFLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !137, i64 16}
!137 = !{!"p1 _ZTS3HUF", !10, i64 0}
!138 = !{!136, !5, i64 0}
!139 = distinct !{!139, !26}
!140 = !{!141, !5, i64 0}
!141 = !{!"_ZTS3HUF", !5, i64 0, !5, i64 4, !5, i64 8}
!142 = !{!141, !5, i64 4}
!143 = !{!141, !5, i64 8}
!144 = distinct !{!144, !26}
!145 = distinct !{!145, !26}
!146 = distinct !{!146, !26}
!147 = distinct !{!147, !26}
!148 = distinct !{!148, !26}
!149 = distinct !{!149, !26}
!150 = distinct !{!150, !26}
!151 = distinct !{!151, !26}
!152 = distinct !{!152, !26}
!153 = distinct !{!153, !26}
!154 = distinct !{!154, !26}
!155 = distinct !{!155, !26}
!156 = distinct !{!156, !26}
!157 = !{!136, !5, i64 4}
!158 = !{!136, !9, i64 8}
!159 = !{!160, !5, i64 4}
!160 = !{!"_ZTS5ArrayIhLi64EE", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16}
!161 = !{!160, !5, i64 0}
!162 = !{!160, !9, i64 8}
!163 = !{!160, !9, i64 16}
!164 = !{!165, !5, i64 24}
!165 = !{!"_ZTS2BHILi9EE", !160, i64 0, !5, i64 24}
!166 = !{!167}
!167 = distinct !{!167, !168}
!168 = distinct !{!168, !"LVerDomain"}
!169 = !{!170}
!170 = distinct !{!170, !168}
!171 = distinct !{!171, !26, !36, !37}
!172 = distinct !{!172, !26, !36}
!173 = distinct !{!173, !26}
!174 = !{!175}
!175 = distinct !{!175, !176}
!176 = distinct !{!176, !"LVerDomain"}
!177 = !{!178}
!178 = distinct !{!178, !176}
!179 = distinct !{!179, !26, !36, !37}
!180 = distinct !{!180, !26, !36}
!181 = distinct !{!181, !26, !36, !37}
!182 = distinct !{!182, !26, !37, !36}
!183 = distinct !{!183, !26}
end_hunk_3
