inline.NumInlined: 5240
inline.NumDeleted: 1637
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN3sat6solver24get_bounded_consequencesERK7svectorINS_7literalEjERKS1_IjjER6vectorIS3_Lb1EjE:bb.a
bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.z

bb.x:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.v
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.body

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit
  invoke void @_ZN3sat6solver16init_assumptionsEjPKNS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 noundef %i.hr, ptr noundef nonnull %i.ho)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.w
  %i.hx = load i32, ptr %i.fp, align 8, !tbaa !182
  %i.hy = invoke noundef zeroext i1 @_ZN3sat6solver14propagate_coreEb(ptr noundef nonnull align 8 dereferenceable(4264) %0, i1 noundef zeroext false)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.z
  %i.hz = load i32, ptr %i.fs, align 8, !tbaa !353
  %i.ia = icmp eq i32 %i.hz, 1
  br i1 %i.ia, label %bb.aa, label %_ZN3sat6solver9propagateEb.exit56

bb.aa:                                            ; preds = %.noexc55
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !354 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ie = load double, ptr %i.id, align 8
  %i.if = fmul double %i.ic, %i.ie
  %i.ig = select i1 %i.hy, double %i.if, double %i.ic
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !197 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %_ZN3sat6solver9propagateEb.exit56, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph.i.i50

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph.i.i50: ; preds = %bb.aa
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.io = zext i32 %i.hx to i64
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i51

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i51: ; preds = %bb.ab, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph.i.i50
  %indvars.iv.i.i52 = phi i64 [ %i.io, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph.i.i50 ], [ %indvars.iv.next.i.i54, %bb.ab ] ; 3 uses
  %i.ip = phi ptr [ %i.ii, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph.i.i50 ], [ %i.jq, %bb.ab ] ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !175
  %i.is = zext i32 %i.ir to i64
  %i.it = icmp samesign ult i64 %indvars.iv.i.i52, %i.is
  br i1 %i.it, label %bb.ab, label %_ZN3sat6solver9propagateEb.exit56

bb.ab:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i51
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i.i52
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !172
  %i.iw = lshr i32 %i.iv, 1                       ; 2 uses
  %i.ix = load i32, ptr %i.ik, align 8, !tbaa !343
  %i.iy = zext i32 %i.ix to i64
  %i.iz = load ptr, ptr %i.il, align 8, !tbaa !199
  %i.ja = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ja
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !232
  %i.jd = add nuw nsw i64 %i.iy, 1
  %i.je = sub i64 %i.jd, %i.jc
  %spec.store.select.i.i53 = call i64 @llvm.umax.i64(i64 %i.je, i64 1)
  %i.jf = uitofp i64 %spec.store.select.i.i53 to double
  %i.jg = fdiv double %i.ig, %i.jf
  %i.jh = load ptr, ptr %i.im, align 8, !tbaa !221
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.ja
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !175
  %i.jk = load double, ptr %i.in, align 8, !tbaa !206 ; 2 uses
  %i.jl = fsub double 1.000000e+00, %i.jk
  %i.jm = uitofp i32 %i.jj to double
  %i.jn = fmul double %i.jl, %i.jm
  %i.jo = call double @llvm.fmuladd.f64(double %i.jk, double %i.jg, double %i.jn)
  %i.jp = fptoui double %i.jo to i32
  call void @_ZN3sat6solver12set_activityEjj(ptr noundef nonnull readonly align 8 dereferenceable(4264) %0, i32 noundef %i.iw, i32 noundef %i.jp)
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i52, 1
  %i.jq = load ptr, ptr %i.ih, align 8, !tbaa !197 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %_ZN3sat6solver9propagateEb.exit56, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i51, !llvm.loop !355

_ZN3sat6solver9propagateEb.exit56:                ; preds = %bb.ab, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i51, %bb.aa, %.noexc55
  %i.js = load i8, ptr %i.fj, align 8, !tbaa !167, !range !257, !noundef !258
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.ac, label %_ZN3sat6solver18check_inconsistentEv.exit.thread131

bb.ac:                                            ; preds = %_ZN3sat6solver9propagateEb.exit56
  %i.ju = load ptr, ptr %i.by, align 8, !tbaa !197 ; 2 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i: ; preds = %bb.ac
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 -4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !175
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i, %bb.ac
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 4200
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !197 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 -4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !175
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !217 ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i57, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.i

_ZNK3sat6solver20tracking_assumptionsEv.exit.i:   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !11
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 344
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = invoke noundef zeroext i1 %i.kj(ptr noundef nonnull align 8 dereferenceable(32) %i.kg)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !508

.noexc58:                                         ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.i
  br i1 %i.kk, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i: ; preds = %.noexc58, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i
  %i.kl = load i32, ptr %i.fh, align 4, !tbaa !183
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !184
  %i.ko = icmp eq i32 %i.kl, %i.kn
  br i1 %i.ko, label %.preheader5.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i

.preheader5.i:                                    ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i, %bb.ad
  %i.kp = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit

.noexc59:                                         ; preds = %.preheader5.i
  %.not.not.not.i.not.i = icmp eq i32 %i.kp, -1
  br i1 %.not.not.not.i.not.i, label %_ZN3sat6solver18check_inconsistentEv.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %.noexc59
  %i.kq = load i8, ptr %i.fj, align 8, !tbaa !167, !range !257, !noundef !258
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %.preheader5.i, label %_ZN3sat6solver18check_inconsistentEv.exit.thread

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i: ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i, %.noexc58, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !303, !range !257, !noundef !258
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.ae, label %_ZN3sat6solver18check_inconsistentEv.exit.thread

bb.ae:                                            ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i
  %i.kv = load i32, ptr %i.fh, align 4, !tbaa !183
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %.preheader.i, label %_ZN3sat6solver18check_inconsistentEv.exit.thread

.preheader.i:                                     ; preds = %bb.ae, %bb.af
  %i.kx = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc60 unwind label %.loopexit

.noexc60:                                         ; preds = %.preheader.i
  %.not.not.not.i2.not.i = icmp eq i32 %i.kx, -1
  br i1 %.not.not.not.i2.not.i, label %_ZN3sat6solver18check_inconsistentEv.exit.thread, label %bb.af

bb.af:                                            ; preds = %.noexc60
  %i.ky = load i8, ptr %i.fj, align 8, !tbaa !167, !range !257, !noundef !258
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %.preheader.i, label %_ZN3sat6solver18check_inconsistentEv.exit.thread

_ZN3sat6solver18check_inconsistentEv.exit.thread131: ; preds = %_ZN3sat6solver9propagateEb.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN3sat11literal_setC2ERK7svectorINS_7literalEjE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ag unwind label %bb.aw

bb.ag:                                            ; preds = %_ZN3sat6solver18check_inconsistentEv.exit.thread131
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 4 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !197 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %bb.ag
  %i.ld = getelementptr inbounds i8, ptr %i.lb, i64 -4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !175 ; 4 uses
  %.not136 = icmp eq i32 %i.le, 0
  br i1 %.not136, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 4256 ; 4 uses
  %i.lh = zext i32 %i.le to i64
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i, %.lr.ph.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i ] ; 2 uses
  %i.li = load ptr, ptr %i.la, align 8, !tbaa !197
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv
  %.sroa.01.0.copyload.i = load i32, ptr %i.lj, align 4, !tbaa !175 ; 2 uses
  %i.lk = lshr i32 %.sroa.01.0.copyload.i, 1
  %i.ll = load ptr, ptr %i.lf, align 8, !tbaa !224
  %i.lm = zext nneg i32 %i.lk to i64
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %i.ll, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !169
  %i.lp = icmp ult i32 %i.lo, 2
  br i1 %i.lp, label %bb.ai, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit

bb.ai:                                            ; preds = %bb.ah
  %i.lq = load ptr, ptr %i.lg, align 8, !tbaa !197 ; 4 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 -4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !175 ; 2 uses
  %i.lu = getelementptr inbounds i8, ptr %i.lq, i64 -8
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !175
  %i.lw = icmp eq i32 %i.lt, %i.lv
  br i1 %i.lw, label %bb.ak, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lg)
          to label %.noexc63 unwind label %.loopexit.split-lp165

.noexc63:                                         ; preds = %bb.ak
  %.pre.i.i.i = load ptr, ptr %i.lg, align 8, !tbaa !197 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !175
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i: ; preds = %.noexc63, %bb.aj
  %i.lx = phi i32 [ %.pre2.i.i.i, %.noexc63 ], [ %i.lt, %bb.aj ] ; 2 uses
  %i.ly = phi ptr [ %.pre.i.i.i, %.noexc63 ], [ %i.lq, %bb.aj ] ; 3 uses
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 -4
  %i.ma = zext i32 %i.lx to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.ma
  store i32 %.sroa.01.0.copyload.i, ptr %i.mb, align 4, !tbaa !175
  %i.mc = add i32 %i.lx, 1
  store i32 %i.mc, ptr %i.lz, align 4, !tbaa !175
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i61

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i61: ; preds = %bb.am, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i
  %i.md = phi ptr [ %.pre.i.i62, %bb.am ], [ %i.ly, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i ] ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 -4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !175 ; 2 uses
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i, label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i

_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i:  ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i61
  %i.mh = add i32 %i.mf, -1
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mi
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.mj, align 4, !tbaa !175
  %i.mk = invoke noundef zeroext i1 @_ZN3sat6solver27extract_fixed_consequences1ENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %.sroa.01.0.copyload.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %8, ptr noundef nonnull readonly align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc64 unwind label %.loopexit164

.noexc64:                                         ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i
  %.pre.i.i62 = load ptr, ptr %i.lg, align 8, !tbaa !197 ; 3 uses
  br i1 %i.mk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.noexc64
  %i.ml = getelementptr inbounds i8, ptr %.pre.i.i62, i64 -4 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !175
  %i.mn = add i32 %i.mm, -1
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !175
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.noexc64
  %i.mo = icmp eq ptr %.pre.i.i62, null
  br i1 %i.mo, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i61, !llvm.loop !931

_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i: ; preds = %bb.am, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.lh
  br i1 %exitcond.not.i, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit, label %bb.ah, !llvm.loop !932

_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit: ; preds = %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i, %bb.ah, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %bb.ag
  %.0.i20.i = phi i32 [ 0, %bb.ag ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i ], [ %i.le, %bb.ah ], [ %i.le, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i ]
  %i.mp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i65, label %_ZN6vectorIjLb0EjED2Ev.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.mr)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ms = landingpad { ptr, i32 }
          catch ptr null
  %i.mt = extractvalue { ptr, i32 } %i.ms, 0
  call void @__clang_call_terminate(ptr %i.mt) #38
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i.i:                  ; preds = %bb.an, %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit
  %i.mu = load ptr, ptr %8, align 8, !tbaa !174   ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i.i1.i.i, label %_ZN3sat11literal_setD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.mv)
          to label %_ZN3sat11literal_setD2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #38
  unreachable

_ZN3sat11literal_setD2Ev.exit:                    ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  invoke void @_ZN3sat6solver11do_simplifyEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %_ZN3sat11literal_setD2Ev.exit
  %i.my = load i8, ptr %i.fj, align 8, !tbaa !167, !range !257, !noundef !258
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %bb.as, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.ar
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 4105 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 4256 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.critedge

bb.as:                                            ; preds = %bb.ar
  %i.nf = load ptr, ptr %i.by, align 8, !tbaa !197 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i73, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i66

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i66: ; preds = %bb.as
  %i.nh = getelementptr inbounds i8, ptr %i.nf, i64 -4
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !175
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i73, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i73: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i66, %bb.as
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 4200
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !197 ; 2 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i75, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i74

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i74: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i73
  %i.nn = getelementptr inbounds i8, ptr %i.nl, i64 -4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !175
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i75, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i75: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i74, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i73
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !217 ; 3 uses
  %.not.i.i76 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i76, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.i77

_ZNK3sat6solver20tracking_assumptionsEv.exit.i77: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i75
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !11
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 344
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = invoke noundef zeroext i1 %i.nu(ptr noundef nonnull align 8 dereferenceable(32) %i.nr)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !508

.noexc78:                                         ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.i77
  br i1 %i.nv, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67: ; preds = %.noexc78, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i74, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i66
  %i.nw = load i32, ptr %i.fh, align 4, !tbaa !183
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !184
  %i.nz = icmp eq i32 %i.nw, %i.ny
  br i1 %i.nz, label %.preheader5.i71, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68

.preheader5.i71:                                  ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67, %bb.at
  %i.oa = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc79:                                         ; preds = %.preheader5.i71
  %.not.not.not.i.not.i72 = icmp eq i32 %i.oa, -1
  br i1 %.not.not.not.i.not.i72, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread, label %bb.at

bb.at:                                            ; preds = %.noexc79
  %i.ob = load i8, ptr %i.fj, align 8, !tbaa !167, !range !257, !noundef !258
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %.preheader5.i71, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68: ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67, %.noexc78, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i75
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.oe = load i8, ptr %i.od, align 8, !tbaa !303, !range !257, !noundef !258
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %bb.au, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread

bb.au:                                            ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68
  %i.og = load i32, ptr %i.fh, align 4, !tbaa !183
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %.preheader.i69, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread

.preheader.i69:                                   ; preds = %bb.au, %bb.av
  %i.oi = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc80:                                         ; preds = %.preheader.i69
  %.not.not.not.i2.not.i70 = icmp eq i32 %i.oi, -1
  br i1 %.not.not.not.i2.not.i70, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread, label %bb.av

bb.av:                                            ; preds = %.noexc80
  %i.oj = load i8, ptr %i.fj, align 8, !tbaa !167, !range !257, !noundef !258
  %i.ok = trunc nuw i8 %i.oj to i1
  br i1 %i.ok, label %.preheader.i69, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread

_ZN3sat6solver18check_inconsistentEv.exit81.thread: ; preds = %.noexc79, %bb.at, %.noexc80, %bb.av, %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68, %bb.au
  invoke void @_ZN3sat6solver22fixup_consequence_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %_ZN3sat6solver18check_inconsistentEv.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %_ZN3sat6solver18check_inconsistentEv.exit.thread131
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit164:                                     ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i
  %lpad.loopexit166 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp165:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp165, %.loopexit164
  %lpad.phi168 = phi { ptr, i32 } [ %lpad.loopexit166, %.loopexit164 ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp165 ]
  call void @_ZN3sat11literal_setD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #36
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %lpad.phi168, %bb.ax ], [ %i.ol, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

.critedge:                                        ; preds = %.critedge.preheader, %bb.bx
  %.0 = phi i32 [ %.0.i20.i83, %bb.bx ], [ %.0.i20.i, %.critedge.preheader ] ; 2 uses
  %i.om = load i8, ptr %i.na, align 8, !tbaa !234, !range !257, !noundef !258 ; 2 uses
  store i8 0, ptr %i.na, align 8, !tbaa !234
  %i.on = load i8, ptr %i.nb, align 1, !tbaa !234, !range !257, !noundef !258 ; 2 uses
  store i8 0, ptr %i.nb, align 1, !tbaa !234
  %i.oo = invoke noundef i32 @_ZN3sat6solver6searchEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %bb.ba unwind label %bb.az     ; 2 uses

bb.az:                                            ; preds = %.critedge
  %i.op = landingpad { ptr, i32 }
          cleanup
  store i8 %i.on, ptr %i.nb, align 1, !tbaa !234
  store i8 %i.om, ptr %i.na, align 8, !tbaa !234
  br label %.body

bb.ba:                                            ; preds = %.critedge
  store i8 %i.on, ptr %i.nb, align 1, !tbaa !234
  store i8 %i.om, ptr %i.na, align 8, !tbaa !234
  %.not38 = icmp eq i32 %i.oo, 0
  br i1 %.not38, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN3sat6solver22fixup_consequence_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %_ZN3sat6solver18check_inconsistentEv.exit.thread unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp

.loopexit148:                                     ; preds = %.preheader.i107
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp149.loopexit:                   ; preds = %.preheader5.i109
  %lpad.loopexit152 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp149.loopexit.split-lp.loopexit: ; preds = %_ZN3sat11literal_setD2Ev.exit103, %bb.bn, %_ZN3sat6solver18check_inconsistentEv.exit119.thread132, %bb.bw
  %lpad.loopexit160.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb, %_ZN3sat6solver18check_inconsistentEv.exit119.thread, %_ZNK3sat6solver20tracking_assumptionsEv.exit.i115
  %lpad.loopexit.split-lp161 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  invoke void @_ZN3sat11literal_setC2ERK7svectorINS_7literalEjE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bd unwind label %bb.bt

bb.bd:                                            ; preds = %bb.bc
  %i.oq = load ptr, ptr %i.la, align 8, !tbaa !197 ; 2 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i82

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i82: ; preds = %bb.bd
  %i.os = getelementptr inbounds i8, ptr %i.oq, i64 -4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !175 ; 5 uses
  %i.ou = icmp ult i32 %.0, %i.ot
  br i1 %i.ou, label %.lr.ph.i84.preheader, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99

.lr.ph.i84.preheader:                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i82
  %i.ov = zext i32 %.0 to i64
  %i.ow = zext i32 %i.ot to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92, %.lr.ph.i84.preheader
  %indvars.iv252 = phi i64 [ %i.ov, %.lr.ph.i84.preheader ], [ %indvars.iv.next253, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92 ] ; 2 uses
  %i.ox = load ptr, ptr %i.la, align 8, !tbaa !197
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv252
  %.sroa.01.0.copyload.i86 = load i32, ptr %i.oy, align 4, !tbaa !175 ; 2 uses
  %i.oz = lshr i32 %.sroa.01.0.copyload.i86, 1
  %i.pa = load ptr, ptr %i.nc, align 8, !tbaa !224
  %i.pb = zext nneg i32 %i.oz to i64
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %i.pa, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !169
  %i.pe = icmp ult i32 %i.pd, 2
  br i1 %i.pe, label %bb.be, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99

bb.be:                                            ; preds = %.lr.ph.i84
  %i.pf = load ptr, ptr %i.nd, align 8, !tbaa !197 ; 4 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ph = getelementptr inbounds i8, ptr %i.pf, i64 -4
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !175 ; 2 uses
  %i.pj = getelementptr inbounds i8, ptr %i.pf, i64 -8
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !175
  %i.pl = icmp eq i32 %i.pi, %i.pk
  br i1 %i.pl, label %bb.bg, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i87

bb.bg:                                            ; preds = %bb.bf, %bb.be
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nd)
          to label %.noexc97 unwind label %.loopexit.split-lp157

.noexc97:                                         ; preds = %bb.bg
  %.pre.i.i.i94 = load ptr, ptr %i.nd, align 8, !tbaa !197 ; 2 uses
  %.phi.trans.insert.i.i.i95 = getelementptr inbounds i8, ptr %.pre.i.i.i94, i64 -4
  %.pre2.i.i.i96 = load i32, ptr %.phi.trans.insert.i.i.i95, align 4, !tbaa !175
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i87

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i87: ; preds = %.noexc97, %bb.bf
  %i.pm = phi i32 [ %.pre2.i.i.i96, %.noexc97 ], [ %i.pi, %bb.bf ] ; 2 uses
  %i.pn = phi ptr [ %.pre.i.i.i94, %.noexc97 ], [ %i.pf, %bb.bf ] ; 3 uses
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 -4
  %i.pp = zext i32 %i.pm to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pp
  store i32 %.sroa.01.0.copyload.i86, ptr %i.pq, align 4, !tbaa !175
  %i.pr = add i32 %i.pm, 1
  store i32 %i.pr, ptr %i.po, align 4, !tbaa !175
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i88

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i88: ; preds = %bb.bi, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i87
  %i.ps = phi ptr [ %.pre.i.i91, %bb.bi ], [ %i.pn, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i87 ] ; 2 uses
  %i.pt = getelementptr inbounds i8, ptr %i.ps, i64 -4
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !175 ; 2 uses
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92, label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i89

_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i89: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i88
  %i.pw = add i32 %i.pu, -1
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.px
  %.sroa.01.0.copyload.i.i90 = load i32, ptr %i.py, align 4, !tbaa !175
  %i.pz = invoke noundef zeroext i1 @_ZN3sat6solver27extract_fixed_consequences1ENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %.sroa.01.0.copyload.i.i90, ptr noundef nonnull readonly align 8 dereferenceable(16) %9, ptr noundef nonnull readonly align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc98 unwind label %.loopexit156

.noexc98:                                         ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i89
  %.pre.i.i91 = load ptr, ptr %i.nd, align 8, !tbaa !197 ; 3 uses
  br i1 %i.pz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.noexc98
  %i.qa = getelementptr inbounds i8, ptr %.pre.i.i91, i64 -4 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !175
  %i.qc = add i32 %i.qb, -1
  store i32 %i.qc, ptr %i.qa, align 4, !tbaa !175
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.noexc98
  %i.qd = icmp eq ptr %.pre.i.i91, null
  br i1 %i.qd, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i88, !llvm.loop !931

_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92: ; preds = %bb.bi, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i88
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next253, %i.ow
  br i1 %exitcond.not.i93, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99, label %.lr.ph.i84, !llvm.loop !932

_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99: ; preds = %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92, %.lr.ph.i84, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i82, %bb.bd
  %.0.i20.i83 = phi i32 [ 0, %bb.bd ], [ %i.ot, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i82 ], [ %i.ot, %.lr.ph.i84 ], [ %i.ot, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92 ]
  %i.qe = load ptr, ptr %i.ne, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i.i100, label %_ZN6vectorIjLb0EjED2Ev.exit.i.i101, label %bb.bj

bb.bj:                                            ; preds = %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99
  %i.qf = getelementptr inbounds i8, ptr %i.qe, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.qf)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i.i101 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  %i.qh = extractvalue { ptr, i32 } %i.qg, 0
  call void @__clang_call_terminate(ptr %i.qh) #38
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i.i101:               ; preds = %bb.bj, %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99
  %i.qi = load ptr, ptr %9, align 8, !tbaa !174   ; 2 uses
  %.not.i.i1.i.i102 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i1.i.i102, label %_ZN3sat11literal_setD2Ev.exit103, label %bb.bl

bb.bl:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i101
  %i.qj = getelementptr inbounds i8, ptr %i.qi, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.qj)
          to label %_ZN3sat11literal_setD2Ev.exit103 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qk = landingpad { ptr, i32 }
          catch ptr null
  %i.ql = extractvalue { ptr, i32 } %i.qk, 0
  call void @__clang_call_terminate(ptr %i.ql) #38
  unreachable

_ZN3sat11literal_setD2Ev.exit103:                 ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i101, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  invoke void @_ZN3sat6solver10do_restartEb(ptr noundef nonnull align 8 dereferenceable(4264) %0, i1 noundef zeroext true)
          to label %bb.bn unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit

bb.bn:                                            ; preds = %_ZN3sat11literal_setD2Ev.exit103
  invoke void @_ZN3sat6solver11do_simplifyEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %bb.bo unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.qm = load i8, ptr %i.fj, align 8, !tbaa !167, !range !257, !noundef !258
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %bb.bp, label %_ZN3sat6solver18check_inconsistentEv.exit119.thread132

bb.bp:                                            ; preds = %bb.bo
  %i.qo = load ptr, ptr %i.by, align 8, !tbaa !197 ; 2 uses
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i111, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i104

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i104: ; preds = %bb.bp
  %i.qq = getelementptr inbounds i8, ptr %i.qo, i64 -4
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !175
  %i.qs = icmp eq i32 %i.qr, 0
  br i1 %i.qs, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i111, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i111: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i104, %bb.bp
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 4200
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !197 ; 2 uses
  %i.qv = icmp eq ptr %i.qu, null
  br i1 %i.qv, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i113, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i112

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i112: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i111
  %i.qw = getelementptr inbounds i8, ptr %i.qu, i64 -4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !175
  %i.qy = icmp eq i32 %i.qx, 0
  br i1 %i.qy, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i113, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i113: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i112, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i111
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !217 ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.ra, null
  br i1 %.not.i.i114, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.i115

_ZNK3sat6solver20tracking_assumptionsEv.exit.i115: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i113
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !11
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 344
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = invoke noundef zeroext i1 %i.rd(ptr noundef nonnull align 8 dereferenceable(32) %i.ra)
          to label %.noexc116 unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp, !inline_history !508

.noexc116:                                        ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.i115
  br i1 %i.re, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105: ; preds = %.noexc116, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i112, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i104
  %i.rf = load i32, ptr %i.fh, align 4, !tbaa !183
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !184
  %i.ri = icmp eq i32 %i.rf, %i.rh
  br i1 %i.ri, label %.preheader5.i109, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106

.preheader5.i109:                                 ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105, %bb.bq
  %i.rj = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc117 unwind label %.loopexit.split-lp149.loopexit

.noexc117:                                        ; preds = %.preheader5.i109
  %.not.not.not.i.not.i110 = icmp eq i32 %i.rj, -1
  br i1 %.not.not.not.i.not.i110, label %_ZN3sat6solver18check_inconsistentEv.exit119.thread, label %bb.bq

bb.bq:                                            ; preds = %.noexc117
  %i.rk = load i8, ptr %i.fj, align 8, !tbaa !167, !range !257, !noundef !258
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %.preheader5.i109, label %_ZN3sat6solver18check_inconsistentEv.exit119.thread

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106: ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105, %.noexc116, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i113
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.rn = load i8, ptr %i.rm, align 8, !tbaa !303, !range !257, !noundef !258
  %i.ro = trunc nuw i8 %i.rn to i1
  br i1 %i.ro, label %bb.br, label %_ZN3sat6solver18check_inconsistentEv.exit119.thread

bb.br:                                            ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106
  %i.rp = load i32, ptr %i.fh, align 4, !tbaa !183
  %i.rq = icmp eq i32 %i.rp, 0
  br i1 %i.rq, label %.preheader.i107, label %_ZN3sat6solver18check_inconsistentEv.exit119.thread

end_hunk_0
begin_hunk_1_@_ZN3sat6solver22fixup_consequence_coreEv:.lr.ph.i.i.i.i.i.i.i
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.139, i32 noundef 390, ptr noundef nonnull @.str.12)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit

.noexc32:                                         ; preds = %._crit_edge.i
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.y, %bb.v, %bb.r, %bb.o, %.noexc32
  %i.fa = phi i32 [ %i.ev, %bb.y ], [ %i.dt, %bb.v ], [ %i.eh, %bb.r ], [ %i.dt, %bb.o ], [ %i.dt, %.noexc32 ] ; 2 uses
  %i.fb = phi i32 [ %i.ey, %bb.y ], [ %i.bq, %bb.v ], [ %i.ek, %bb.r ], [ %i.bq, %bb.o ], [ %i.bq, %.noexc32 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 12 ; 3 uses
  %.not1.i.i.i19 = icmp eq ptr %i.fc, %i.bh
  br i1 %.not1.i.i.i19, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %.noexc, %bb.aa
  %.sroa.010.1.i = phi ptr [ %i.fg, %bb.aa ], [ %i.fc, %.noexc ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !944
  %i.ff = icmp eq i32 %i.fe, 2
  br i1 %i.ff, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i20
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 12 ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.fg, %i.bh
  br i1 %.not.i.i.i21, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i, label %.lr.ph.i.i.i20, !llvm.loop !945

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i: ; preds = %bb.aa, %.lr.ph.i.i.i20, %.noexc
  %.sroa.010.2.i = phi ptr [ %i.fc, %.noexc ], [ %.sroa.010.1.i, %.lr.ph.i.i.i20 ], [ %i.fg, %bb.aa ] ; 2 uses
  %.not.i22 = icmp eq ptr %.sroa.010.2.i, %i.bm
  br i1 %.not.i22, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqEoRERKS4_.exit, label %.lr.ph.i

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqEoRERKS4_.exit: ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i, %bb.d
  %i.fh = phi ptr [ %i.z, %bb.d ], [ %i.z, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i ], [ %i.dr, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i ] ; 2 uses
  %i.fi = phi ptr [ %i.aa, %bb.d ], [ %i.aa, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i ], [ %i.dr, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i ]
  %i.fj = phi i32 [ %i.ab, %bb.d ], [ %i.ab, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i ], [ %i.ds, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i ] ; 2 uses
  %i.fk = phi i32 [ %i.ac, %bb.d ], [ %i.ac, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i ], [ %i.fa, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i ]
  %i.fl = phi i32 [ %i.ad, %bb.d ], [ %i.ad, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i ], [ %i.fb, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fm = load ptr, ptr %i.u, align 8, !tbaa !197 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, !llvm.loop !954

.loopexit51:                                      ; preds = %._crit_edge.i.i, %.noexc39
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.g, %.noexc32, %._crit_edge.i
  %lpad.loopexit52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.c
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit51
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit51 ], [ %lpad.loopexit52, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp53, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.ai

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %bb.b, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.fo = phi ptr [ %i.ao, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %i.ap, %bb.b ], [ %i.ap, %.lr.ph.i.i.i ] ; 2 uses
  %i.fp = phi i64 [ 0, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %i.aq, %bb.b ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.fq = phi ptr [ %i.am, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %i.ar, %bb.b ], [ %i.ar, %.lr.ph.i.i.i ] ; 3 uses
  %i.fr = phi ptr [ %i.ak, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %i.as, %bb.b ], [ %i.as, %.lr.ph.i.i.i ]
  %.sroa.0.1.i = phi ptr [ %i.am, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %.sroa.0.0.i, %.lr.ph.i.i.i ], [ %i.ap, %bb.b ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %i.fp ; 2 uses
  %.not81 = icmp eq ptr %.sroa.0.1.i, %i.fs
  br i1 %.not81, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit, %.loopexit
  %i.ft = icmp eq ptr %i.fq, null
  br i1 %i.ft, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fq)
          to label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #38
  unreachable

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit: ; preds = %._crit_edge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

.lr.ph:                                           ; preds = %.loopexit, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit
  %i.fw = phi ptr [ %i.gf, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit ], [ %i.fr, %.loopexit ] ; 4 uses
  %.sroa.043.082 = phi ptr [ %.sroa.043.2, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit ], [ %.sroa.0.1.i, %.loopexit ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.043.082, i64 8
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !175
  %i.fz = icmp eq ptr %i.fw, null
  br i1 %i.fz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.ga = getelementptr inbounds i8, ptr %i.fw, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !175 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.fw, i64 -8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !175
  %i.ge = icmp eq i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %.lr.ph
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.noexc25 unwind label %bb.ah

.noexc25:                                         ; preds = %bb.ae
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !197 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !175
  br label %bb.af

bb.af:                                            ; preds = %.noexc25, %bb.ad
  %i.gf = phi ptr [ %.pre.i, %.noexc25 ], [ %i.fw, %bb.ad ] ; 3 uses
  %i.gg = phi i32 [ %.pre2.i, %.noexc25 ], [ %i.gb, %bb.ad ] ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 -4
  %i.gi = zext i32 %i.gg to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gi
  store i32 %i.fy, ptr %i.gj, align 4, !tbaa !175
  %i.gk = add i32 %i.gg, 1
  store i32 %i.gk, ptr %i.gh, align 4, !tbaa !175
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.043.082, i64 12 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.gl, %i.fo
  br i1 %.not1.i.i, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ag
  %.sroa.043.1 = phi ptr [ %i.gp, %bb.ag ], [ %i.gl, %bb.af ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.043.1, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !944
  %i.go = icmp eq i32 %i.gn, 2
  br i1 %i.go, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.043.1, i64 12 ; 3 uses
  %.not.i.i = icmp eq ptr %i.gp, %i.fo
  br i1 %.not.i.i, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit, label %.lr.ph.i.i, !llvm.loop !945

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit: ; preds = %.lr.ph.i.i, %bb.ag, %bb.af
  %.sroa.043.2 = phi ptr [ %i.gl, %bb.af ], [ %i.gp, %bb.ag ], [ %.sroa.043.1, %.lr.ph.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.043.2, %i.fs
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %bb.ae
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit.split-lp
  %.pn17 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.gq, %bb.ah ]
  call void @_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !236    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !175  ; 5 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !175    ; 2 uses
  %i.g = icmp ult i32 %i.f, %i.e
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4256 ; 4 uses
  %5 = zext i32 %i.f to i64
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %.sroa.01.0.copyload = load i32, ptr %i.k, align 4, !tbaa !175 ; 2 uses
  %i.l = lshr i32 %.sroa.01.0.copyload, 1
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.n = zext nneg i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 8, !tbaa !169
  %i.q = icmp ult i32 %i.p, 2
  br i1 %i.q, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %.0.i20 = phi i32 [ 0, %bb.a ], [ %i.e, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %i.e, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit ], [ %i.e, %bb.b ]
  store i32 %.0.i20, ptr %1, align 4, !tbaa !175
  ret void

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !197  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !175  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !175
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !197 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !175
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i: ; preds = %bb.e, %bb.d
  %i.y = phi i32 [ %.pre2.i.i, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %i.z = phi ptr [ %.pre.i.i, %bb.e ], [ %i.r, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  store i32 %.sroa.01.0.copyload, ptr %i.ac, align 4, !tbaa !175
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !175
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i:  ; preds = %bb.g, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i
  %i.ae = phi ptr [ %.pre.i, %bb.g ], [ %i.z, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !175 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit, label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i

_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i:    ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i
  %i.ai = add i32 %i.ag, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aj
  %.sroa.01.0.copyload.i = load i32, ptr %i.ak, align 4, !tbaa !175
  %i.al = tail call noundef zeroext i1 @_ZN3sat6solver27extract_fixed_consequences1ENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %.sroa.01.0.copyload.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !197 ; 3 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i
  %i.am = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !175
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !175
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i
  %i.ap = icmp eq ptr %.pre.i, null
  br i1 %i.ap, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i, !llvm.loop !931

_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !932
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3sat11literal_setC2ERK7svectorINS_7literalEjE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !197    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph, %_ZN3sat11literal_set6insertENS_7literalE.exit
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %_ZN3sat11literal_set6insertENS_7literalE.exit ] ; 3 uses
  %i.d = phi ptr [ %i.a, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph ], [ %i.bw, %_ZN3sat11literal_set6insertENS_7literalE.exit ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !175
  %i.g = zext i32 %i.f to i64
  %i.h = icmp samesign ult i64 %indvars.iv, %i.g
  br i1 %i.h, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %_ZN3sat11literal_set6insertENS_7literalE.exit, %bb.a
  ret void

.loopexit:                                        ; preds = %bb.c, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN16tracked_uint_setD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  resume { ptr, i32 } %eh.lpad-body

bb.b:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.i, align 4, !tbaa !175 ; 3 uses
  %i.j = add i32 %.sroa.0.0.copyload, 1           ; 6 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !174    ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.b
  %.not.i.i.i = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.preheader

_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i.i:     ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !175  ; 2 uses
  %i.o = icmp ugt i32 %i.j, %i.n
  br i1 %i.o, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.preheader, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.preheader: ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i.i
  %.ph = phi ptr [ %i.k, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i.i ], [ null, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i ]
  %.0.i17.i.i.i.i.ph = phi i32 [ %i.n, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i.i ], [ 0, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i ] ; 2 uses
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i:          ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.backedge, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.preheader
  %i.p = phi ptr [ %.ph, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.preheader ], [ %.be, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.backedge ] ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i

_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i:      ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !175
  %i.t = icmp ugt i32 %i.j, %i.s
  br i1 %i.t, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i.i, label %bb.k

bb.c:                                             ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i
  %i.u = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10)
          to label %.noexc8 unwind label %.loopexit ; 3 uses

.noexc8:                                          ; preds = %bb.c
  store i32 2, ptr %i.u, align 4, !tbaa !175
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 0, ptr %i.v, align 4, !tbaa !175
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !174
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.backedge

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.backedge: ; preds = %.noexc8, %.noexc9
  %.be = phi ptr [ %i.az, %.noexc9 ], [ %i.w, %.noexc8 ]
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i, !llvm.loop !235

_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i.i: ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i
  %i.x = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !175  ; 3 uses
  %i.z = mul i32 %i.y, 3
  %i.aa = add i32 %i.z, 1
  %i.ab = lshr i32 %i.aa, 1                       ; 3 uses
  %narrow.i = add nuw i32 %i.ab, 8                ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.y
  %i.ac = add i32 %i.y, 8
  %.not27.i = icmp ugt i32 %narrow.i, %i.ac
  %or.cond.i = select i1 %.not.i, i1 %.not27.i, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i.i
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 40) #36 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.136, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ad, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !187
  %i.ag = load ptr, ptr %2, align 8, !tbaa !220   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !188 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !220
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !189
  store i64 %i.an, ptr %i.af, align 8, !tbaa !189
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !188
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !188
  store ptr %i.ah, ptr %2, align 8, !tbaa !220
  store i64 0, ptr %i.ap, align 8, !tbaa !188
  store i8 0, ptr %i.ah, align 8, !tbaa !189
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #39
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %2, align 8, !tbaa !220   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ah
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.g
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !189
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %.body

bb.h:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @__cxa_free_exception(ptr %i.ad) #36
  br label %.body

bb.i:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i.i
  %i.ax = zext i32 %narrow.i to i64
  %i.ay = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.x, i64 noundef %i.ax)
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !174
  store i32 %i.ab, ptr %i.ay, align 4, !tbaa !175
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.backedge

bb.j:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.k:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i32 %i.j, ptr %i.ba, align 4, !tbaa !175
  %.not1319.i.i.i.i = icmp eq i32 %.0.i17.i.i.i.i.ph, %i.j
  br i1 %.not1319.i.i.i.i, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.k
end_hunk_1
