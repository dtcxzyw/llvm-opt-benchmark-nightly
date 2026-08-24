Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/VectorTransform?download=true
inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5faiss9PCAMatrix5trainElPKf:bb.a
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %index550 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store <2 x float> %i.im, ptr %i.io, align 4, !tbaa !33
  store <2 x float> %i.in, ptr %i.ip, align 4, !tbaa !33
  %index.next553 = add nuw i64 %index550, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next553, %n.vec548
  br i1 %i.iq, label %middle.block554, label %vector.body549, !llvm.loop !99

middle.block554:                                  ; preds = %vector.body549
  %cmp.n555 = icmp eq i64 %n.vec548, %umax386
  br i1 %cmp.n555, label %._crit_edge321, label %scalar.ph545.preheader

scalar.ph545.preheader:                           ; preds = %.lr.ph320, %middle.block554
  %.091319.ph = phi i64 [ 0, %.lr.ph320 ], [ %n.vec548, %middle.block554 ]
  br label %scalar.ph545

._crit_edge321:                                   ; preds = %scalar.ph545, %middle.block554, %.preheader275
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.is = sext i32 %i.ig to i64                   ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !31 ; 2 uses
  %i.iv = load ptr, ptr %i.ir, align 8, !tbaa !32 ; 2 uses
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = ashr exact i64 %i.iy, 2                 ; 3 uses
  %i.ja = icmp ult i64 %i.iz, %i.is
  br i1 %i.ja, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge321
  %i.jb = sub nuw nsw i64 %i.is, %i.iz
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i64 noundef %i.jb)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit154_crit_edge unwind label %bb.w

._ZNSt6vectorIfSaIfEE6resizeEm.exit154_crit_edge: ; preds = %bb.t
  %.pre409 = load i32, ptr %i.n, align 8, !tbaa !43
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit154

bb.u:                                             ; preds = %._crit_edge321
  %i.jc = icmp ugt i64 %i.iz, %i.is
  br i1 %i.jc, label %bb.v, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit154

bb.v:                                             ; preds = %bb.u
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.is ; 2 uses
  %.not.i.i151 = icmp eq ptr %i.iu, %i.jd
  br i1 %.not.i.i151, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit154, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i152

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i152:     ; preds = %bb.v
  store ptr %i.jd, ptr %i.it, align 8, !tbaa !31
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit154

_ZNSt6vectorIfSaIfEE6resizeEm.exit154:            ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit154_crit_edge, %bb.u, %bb.v, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i152
  %i.je = phi i32 [ %.pre409, %._ZNSt6vectorIfSaIfEE6resizeEm.exit154_crit_edge ], [ %i.ig, %bb.u ], [ %i.ig, %bb.v ], [ %i.ig, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i152 ] ; 3 uses
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %.lr.ph324, label %._crit_edge325

.lr.ph324:                                        ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit154
  %i.jg = load ptr, ptr %i.ir, align 8, !tbaa !32 ; 2 uses
  %wide.trip.count391 = zext nneg i32 %i.je to i64 ; 3 uses
  %min.iters.check558 = icmp ult i32 %i.je, 4
  br i1 %min.iters.check558, label %scalar.ph557.preheader, label %vector.ph559

vector.ph559:                                     ; preds = %.lr.ph324
  %n.vec560 = and i64 %wide.trip.count391, 2147483644 ; 3 uses
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph559
  %index562 = phi i64 [ 0, %vector.ph559 ], [ %index.next565, %vector.body561 ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0249.0, i64 %index562 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load563.a = load <2 x double>, ptr %i.jh, align 8, !tbaa !95
  %wide.load564 = load <2 x double>, ptr %i.ji, align 8, !tbaa !95
  %i.jj = fptrunc <2 x double> %wide.load563.a to <2 x float>
  %i.jk = fptrunc <2 x double> %wide.load564 to <2 x float>
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %index562 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store <2 x float> %i.jj, ptr %i.jl, align 4, !tbaa !33
  store <2 x float> %i.jk, ptr %i.jm, align 4, !tbaa !33
  %index.next565 = add nuw i64 %index562, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next565, %n.vec560
  br i1 %i.jn, label %middle.block566, label %vector.body561, !llvm.loop !100

middle.block566:                                  ; preds = %vector.body561
  %cmp.n567 = icmp eq i64 %n.vec560, %wide.trip.count391
  br i1 %cmp.n567, label %._crit_edge325.thread, label %scalar.ph557.preheader

scalar.ph557.preheader:                           ; preds = %.lr.ph324, %middle.block566
  %indvars.iv388.ph = phi i64 [ 0, %.lr.ph324 ], [ %n.vec560, %middle.block566 ]
  br label %scalar.ph557

_ZNSt6vectorIdSaIdEED2Ev.exit.thread:             ; preds = %bb.r, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %bb.t, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit150
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0249.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jq = ptrtoint ptr %.sroa.11254.0 to i64
  %i.jr = ptrtoint ptr %.sroa.0249.0 to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0249.0, i64 noundef %i.js) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

scalar.ph545:                                     ; preds = %scalar.ph545.preheader, %scalar.ph545
  %.091319 = phi i64 [ %i.jx, %scalar.ph545 ], [ %.091319.ph, %scalar.ph545.preheader ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0257.0, i64 %.091319
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !95
  %i.jv = fptrunc double %i.ju to float
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.091319
  store float %i.jv, ptr %i.jw, align 4, !tbaa !33
  %i.jx = add nuw nsw i64 %.091319, 1             ; 2 uses
  %exitcond387.not = icmp eq i64 %i.jx, %umax386
  br i1 %exitcond387.not, label %._crit_edge321, label %scalar.ph545, !llvm.loop !101

._crit_edge325:                                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit154
  %.not.i.i.i155 = icmp eq ptr %.sroa.0249.0, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIdSaIdEED2Ev.exit156, label %._crit_edge325.thread

._crit_edge325.thread:                            ; preds = %scalar.ph557, %middle.block566, %._crit_edge325
  %i.jy = ptrtoint ptr %.sroa.11254.0 to i64
  %i.jz = ptrtoint ptr %.sroa.0249.0 to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0249.0, i64 noundef %i.ka) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit156

_ZNSt6vectorIdSaIdEED2Ev.exit156:                 ; preds = %._crit_edge325, %._crit_edge325.thread
  %.not.i.i.i157 = icmp eq ptr %.sroa.0257.0, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIdSaIdEED2Ev.exit158, label %_ZNSt6vectorIdSaIdEED2Ev.exit158.sink.split

scalar.ph557:                                     ; preds = %scalar.ph557.preheader, %scalar.ph557
  %indvars.iv388 = phi i64 [ %indvars.iv.next389, %scalar.ph557 ], [ %indvars.iv388.ph, %scalar.ph557.preheader ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0249.0, i64 %indvars.iv388
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !95
  %i.kd = fptrunc double %i.kc to float
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv388
  store float %i.kd, ptr %i.ke, align 4, !tbaa !33
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %exitcond392.not = icmp eq i64 %indvars.iv.next389, %wide.trip.count391
  br i1 %exitcond392.not, label %._crit_edge325.thread, label %scalar.ph557, !llvm.loop !102

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.x, %bb.w
  %.not.i.i.i159 = icmp eq ptr %.sroa.0257.0, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIdSaIdEED2Ev.exit160, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.pn130473 = phi { ptr, i32 } [ %i.jo, %_ZNSt6vectorIdSaIdEED2Ev.exit.thread ], [ %i.jp, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  %i.kf = ptrtoint ptr %.sroa.12263.0 to i64
  %i.kg = ptrtoint ptr %.sroa.0257.0 to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0257.0, i64 noundef %i.kh) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit160

bb.z:                                             ; preds = %bb.h
  %i.ki = mul nsw i64 %i.dh, %i.dj                ; 5 uses
  %i.kj = icmp ugt i64 %i.ki, 2305843009213693951
  br i1 %i.kj, label %bb.aa, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
          to label %.noexc164 unwind label %bb.ae

.noexc164:                                        ; preds = %bb.aa
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.z
  %.not.i.i.i.i161 = icmp eq i64 %i.ki, 0
  br i1 %.not.i.i.i.i161, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.kk = shl nuw nsw i64 %i.ki, 2
  %i.kl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #28
          to label %.noexc165 unwind label %bb.ae ; 5 uses

.noexc165:                                        ; preds = %bb.ab
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.ki ; 2 uses
  store float 0.000000e+00, ptr %i.kl, align 4, !tbaa !33
  %i.kn = add nsw i64 %i.ki, -1                   ; 2 uses
  %i.ko = icmp eq i64 %i.kn, 0
  br i1 %i.ko, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc165
  %i.kp = getelementptr i8, ptr %i.kl, i64 4
  %.idx.i.i.i.i.i.i.i162 = shl nuw nsw i64 %i.kn, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.kp, i8 0, i64 %.idx.i.i.i.i.i.i.i162, i1 false), !tbaa !33
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc165, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0240.0 = phi ptr [ %i.kl, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.kl, %.noexc165 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.sroa.12246.0 = phi ptr [ %i.km, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.km, %.noexc165 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0240.0570 = ptrtoaddr ptr %.sroa.0240.0 to i64 ; 2 uses
  %i.kq = load i64, ptr %i.a, align 8, !tbaa !53  ; 5 uses
  %i.kr = icmp sgt i64 %i.kq, 0
  br i1 %i.kr, label %.preheader274.lr.ph, label %._crit_edge330.split

.preheader274.lr.ph:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.ks = load i32, ptr %i.n, align 8, !tbaa !43  ; 4 uses
  %i.kt = icmp sgt i32 %i.ks, 0
  %3 = sext i32 %i.ks to i64                      ; 2 uses
  br i1 %i.kt, label %.preheader274.lr.ph.split, label %._crit_edge330.split

.preheader274.lr.ph.split:                        ; preds = %.preheader274.lr.ph
  %i.ku = load ptr, ptr %i.y, align 8, !tbaa !32  ; 7 uses
  %i.kv = ptrtoaddr ptr %i.ku to i64
  %wide.trip.count396 = zext nneg i32 %i.ks to i64 ; 5 uses
  %i.kw = sub i64 %.sroa.0240.0570, %i.kv
  %i.kx = shl nuw nsw i64 %3, 2
  %min.iters.check573 = icmp ult i32 %i.ks, 8
  %i.ky = sub i64 %i.x, %.sroa.0240.0570
  %diff.check = icmp ugt i64 %i.ky, -32
  %invariant.op = add i64 %i.kw, -1
  %n.vec575 = and i64 %wide.trip.count396, 2147483640 ; 3 uses
  %cmp.n584 = icmp eq i64 %n.vec575, %wide.trip.count396
  %xtraiter634 = and i64 %wide.trip.count396, 3   ; 2 uses
  %lcmp.mod635.not = icmp eq i64 %xtraiter634, 0
  br label %.preheader274

.preheader274:                                    ; preds = %.preheader274.lr.ph.split, %._crit_edge328
  %.089329 = phi i64 [ 0, %.preheader274.lr.ph.split ], [ %i.md, %._crit_edge328 ] ; 3 uses
  %i.kz = mul nuw nsw i64 %.089329, %3            ; 2 uses
  %i.la = getelementptr [4 x i8], ptr %i.w, i64 %i.kz ; 6 uses
  %i.lb = getelementptr [4 x i8], ptr %.sroa.0240.0, i64 %i.kz ; 6 uses
  br i1 %min.iters.check573, label %scalar.ph572.preheader, label %vector.memcheck569

vector.memcheck569:                               ; preds = %.preheader274
  %i.lc = mul i64 %i.kx, %.089329
  %.reass = add i64 %i.lc, %invariant.op
  %diff.check571 = icmp ult i64 %.reass, 31
  %conflict.rdx = or i1 %diff.check, %diff.check571
  br i1 %conflict.rdx, label %scalar.ph572.preheader, label %vector.body576

vector.body576:                                   ; preds = %vector.memcheck569, %vector.body576
  %index577 = phi i64 [ %index.next582, %vector.body576 ], [ 0, %vector.memcheck569 ] ; 4 uses
  %i.ld = getelementptr [4 x i8], ptr %i.la, i64 %index577 ; 2 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 16
  %wide.load578.a = load <4 x float>, ptr %i.ld, align 4, !tbaa !33
  %wide.load579.a = load <4 x float>, ptr %i.le, align 4, !tbaa !33
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %index577 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %wide.load580.a = load <4 x float>, ptr %i.lf, align 4, !tbaa !33
  %wide.load581 = load <4 x float>, ptr %i.lg, align 4, !tbaa !33
  %i.lh = fsub <4 x float> %wide.load578.a, %wide.load580.a
  %i.li = fsub <4 x float> %wide.load579.a, %wide.load581
  %i.lj = getelementptr [4 x i8], ptr %i.lb, i64 %index577 ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 16
  store <4 x float> %i.lh, ptr %i.lj, align 4, !tbaa !33
  store <4 x float> %i.li, ptr %i.lk, align 4, !tbaa !33
  %index.next582 = add nuw i64 %index577, 8       ; 2 uses
  %i.ll = icmp eq i64 %index.next582, %n.vec575
  br i1 %i.ll, label %middle.block583, label %vector.body576, !llvm.loop !103

middle.block583:                                  ; preds = %vector.body576
  br i1 %cmp.n584, label %._crit_edge328, label %scalar.ph572.preheader

scalar.ph572.preheader:                           ; preds = %vector.memcheck569, %.preheader274, %middle.block583
  %indvars.iv393.ph = phi i64 [ 0, %vector.memcheck569 ], [ 0, %.preheader274 ], [ %n.vec575, %middle.block583 ] ; 3 uses
  br i1 %lcmp.mod635.not, label %scalar.ph572.prol.loopexit, label %scalar.ph572.prol

scalar.ph572.prol:                                ; preds = %scalar.ph572.preheader, %scalar.ph572.prol
  %indvars.iv393.prol = phi i64 [ %indvars.iv.next394.prol, %scalar.ph572.prol ], [ %indvars.iv393.ph, %scalar.ph572.preheader ] ; 4 uses
  %prol.iter636 = phi i64 [ %prol.iter636.next, %scalar.ph572.prol ], [ 0, %scalar.ph572.preheader ]
  %i.lm = getelementptr [4 x i8], ptr %i.la, i64 %indvars.iv393.prol
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !33
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv393.prol
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !33
  %i.lq = fsub float %i.ln, %i.lp
  %i.lr = getelementptr [4 x i8], ptr %i.lb, i64 %indvars.iv393.prol
  store float %i.lq, ptr %i.lr, align 4, !tbaa !33
  %indvars.iv.next394.prol = add nuw nsw i64 %indvars.iv393.prol, 1 ; 2 uses
  %prol.iter636.next = add i64 %prol.iter636, 1   ; 2 uses
  %prol.iter636.cmp.not = icmp eq i64 %prol.iter636.next, %xtraiter634
  br i1 %prol.iter636.cmp.not, label %scalar.ph572.prol.loopexit, label %scalar.ph572.prol, !llvm.loop !104

scalar.ph572.prol.loopexit:                       ; preds = %scalar.ph572.prol, %scalar.ph572.preheader
  %indvars.iv393.unr = phi i64 [ %indvars.iv393.ph, %scalar.ph572.preheader ], [ %indvars.iv.next394.prol, %scalar.ph572.prol ]
  %i.ls = sub nsw i64 %indvars.iv393.ph, %wide.trip.count396
  %i.lt = icmp ugt i64 %i.ls, -4
  br i1 %i.lt, label %._crit_edge328, label %scalar.ph572

._crit_edge330.split:                             ; preds = %._crit_edge328, %.preheader274.lr.ph, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.lu = mul nsw i64 %i.kq, %i.kq                ; 4 uses
  %i.lv = icmp samesign ugt i64 %i.lu, 2305843009213693951
  br i1 %i.lv, label %bb.ac, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i166

bb.ac:                                            ; preds = %._crit_edge330.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
          to label %.noexc172 unwind label %bb.ai

.noexc172:                                        ; preds = %bb.ac
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i166: ; preds = %._crit_edge330.split
  %.not.i.i.i.i167 = icmp eq i64 %i.kq, 0
  br i1 %.not.i.i.i.i167, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit174, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i166
  %i.lw = shl nuw nsw i64 %i.lu, 2
  %i.lx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lw) #28
          to label %.noexc173 unwind label %bb.ai ; 5 uses

.noexc173:                                        ; preds = %bb.ad
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.lu ; 2 uses
  store float 0.000000e+00, ptr %i.lx, align 4, !tbaa !33
  %i.lz = add nsw i64 %i.lu, -1                   ; 2 uses
  %i.ma = icmp eq i64 %i.lz, 0
  br i1 %i.ma, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit174, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i168

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i168: ; preds = %.noexc173
  %i.mb = getelementptr i8, ptr %i.lx, i64 4
  %.idx.i.i.i.i.i.i.i169 = shl nuw nsw i64 %i.lz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mb, i8 0, i64 %.idx.i.i.i.i.i.i.i169, i1 false), !tbaa !33
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit174

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit160

._crit_edge328:                                   ; preds = %scalar.ph572.prol.loopexit, %scalar.ph572, %middle.block583
  %i.md = add nuw nsw i64 %.089329, 1             ; 2 uses
  %exitcond398.not = icmp eq i64 %i.md, %i.kq
  br i1 %exitcond398.not, label %._crit_edge330.split, label %.preheader274, !llvm.loop !105

scalar.ph572:                                     ; preds = %scalar.ph572.prol.loopexit, %scalar.ph572
  %indvars.iv393 = phi i64 [ %indvars.iv.next394.3, %scalar.ph572 ], [ %indvars.iv393.unr, %scalar.ph572.prol.loopexit ] ; 7 uses
  %i.me = getelementptr [4 x i8], ptr %i.la, i64 %indvars.iv393
  %i.mf = load float, ptr %i.me, align 4, !tbaa !33
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv393
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !33
  %i.mi = fsub float %i.mf, %i.mh
  %i.mj = getelementptr [4 x i8], ptr %i.lb, i64 %indvars.iv393
  store float %i.mi, ptr %i.mj, align 4, !tbaa !33
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1 ; 3 uses
  %i.mk = getelementptr [4 x i8], ptr %i.la, i64 %indvars.iv.next394
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !33
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next394
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !33
  %i.mo = fsub float %i.ml, %i.mn
  %i.mp = getelementptr [4 x i8], ptr %i.lb, i64 %indvars.iv.next394
  store float %i.mo, ptr %i.mp, align 4, !tbaa !33
  %indvars.iv.next394.1 = add nuw nsw i64 %indvars.iv393, 2 ; 3 uses
  %i.mq = getelementptr [4 x i8], ptr %i.la, i64 %indvars.iv.next394.1
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !33
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next394.1
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !33
  %i.mu = fsub float %i.mr, %i.mt
  %i.mv = getelementptr [4 x i8], ptr %i.lb, i64 %indvars.iv.next394.1
  store float %i.mu, ptr %i.mv, align 4, !tbaa !33
  %indvars.iv.next394.2 = add nuw nsw i64 %indvars.iv393, 3 ; 3 uses
  %i.mw = getelementptr [4 x i8], ptr %i.la, i64 %indvars.iv.next394.2
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !33
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next394.2
  %i.mz = load float, ptr %i.my, align 4, !tbaa !33
  %i.na = fsub float %i.mx, %i.mz
  %i.nb = getelementptr [4 x i8], ptr %i.lb, i64 %indvars.iv.next394.2
  store float %i.na, ptr %i.nb, align 4, !tbaa !33
  %indvars.iv.next394.3 = add nuw nsw i64 %indvars.iv393, 4 ; 2 uses
  %exitcond397.not.3 = icmp eq i64 %indvars.iv.next394.3, %wide.trip.count396
  br i1 %exitcond397.not.3, label %._crit_edge328, label %scalar.ph572, !llvm.loop !106

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit174:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i168, %.noexc173, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i166
  %.sroa.0231.0 = phi ptr [ %i.lx, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i168 ], [ %i.lx, %.noexc173 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i166 ] ; 13 uses
  %.sroa.14.0 = phi ptr [ %i.ly, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i168 ], [ %i.ly, %.noexc173 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i166 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.nc = load i32, ptr %i.n, align 8, !tbaa !43
  store i32 %i.nc, ptr %i.f, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.nd = load i64, ptr %i.a, align 8, !tbaa !53
  %i.ne = trunc i64 %i.nd to i32
  store i32 %i.ne, ptr %i.g, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !33
  %i.nf = invoke i32 @ssyrk_(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef %.sroa.0240.0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, ptr noundef %.sroa.0231.0, ptr noundef nonnull %i.g)
          to label %bb.af unwind label %bb.aj     ; 0 uses

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.ng = load i8, ptr %i.t, align 8, !tbaa !68, !range !21, !noundef !22
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.ag, label %.loopexit273thread-pre-split

bb.ag:                                            ; preds = %bb.af
  %i.ni = load i32, ptr %i.n, align 8, !tbaa !43
  %i.nj = icmp slt i32 %i.ni, 11
  br i1 %i.nj, label %bb.ah, label %.loopexit273thread-pre-split

bb.ah:                                            ; preds = %bb.ag
  %puts120 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.nk = load i64, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  %i.nl = icmp sgt i64 %i.nk, 0
  br i1 %i.nl, label %.preheader272, label %.loopexit273

.preheader272:                                    ; preds = %bb.ah, %._crit_edge335
  %i.nm = phi i64 [ %i.nr, %._crit_edge335 ], [ %i.nk, %bb.ah ]
  %.085338 = phi i64 [ %i.nq, %._crit_edge335 ], [ 0, %bb.ah ]
  %.086337 = phi ptr [ %.187.lcssa, %._crit_edge335 ], [ %.sroa.0231.0, %bb.ah ] ; 2 uses
  %i.nn = icmp sgt i64 %i.nm, 0
  br i1 %i.nn, label %.lr.ph334, label %._crit_edge335

bb.ai:                                            ; preds = %bb.ad, %bb.ac
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit213

bb.aj:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit174
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit211

._crit_edge335:                                   ; preds = %.lr.ph334, %.preheader272
  %.187.lcssa = phi ptr [ %.086337, %.preheader272 ], [ %i.nt, %.lr.ph334 ]
  %putchar128 = call i32 @putchar(i32 10)         ; 0 uses
  %i.nq = add nuw nsw i64 %.085338, 1             ; 2 uses
  %i.nr = load i64, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  %i.ns = icmp slt i64 %i.nq, %i.nr
  br i1 %i.ns, label %.preheader272, label %.loopexit273, !llvm.loop !107

.lr.ph334:                                        ; preds = %.preheader272, %.lr.ph334
  %.084333 = phi i64 [ %i.nx, %.lr.ph334 ], [ 0, %.preheader272 ]
  %.187332 = phi ptr [ %i.nt, %.lr.ph334 ], [ %.086337, %.preheader272 ] ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.187332, i64 4 ; 2 uses
  %i.nu = load float, ptr %.187332, align 4, !tbaa !33
  %i.nv = fpext float %i.nu to double
  %i.nw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, double noundef %i.nv) ; 0 uses
  %i.nx = add nuw nsw i64 %.084333, 1             ; 2 uses
  %i.ny = load i64, ptr %i.a, align 8, !tbaa !53
  %i.nz = icmp slt i64 %i.nx, %i.ny
  br i1 %i.nz, label %.lr.ph334, label %._crit_edge335, !llvm.loop !108

.loopexit273thread-pre-split:                     ; preds = %bb.af, %bb.ag
  %.pr = load i64, ptr %i.a, align 8, !tbaa !53
  br label %.loopexit273

.loopexit273:                                     ; preds = %._crit_edge335, %.loopexit273thread-pre-split, %bb.ah
  %i.oa = phi i64 [ %.pr, %.loopexit273thread-pre-split ], [ %i.nk, %bb.ah ], [ %i.nr, %._crit_edge335 ] ; 3 uses
  %i.ob = mul nsw i64 %i.oa, %i.oa                ; 4 uses
  %i.oc = icmp samesign ugt i64 %i.ob, 1152921504606846975
  br i1 %i.oc, label %bb.ak, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i175

bb.ak:                                            ; preds = %.loopexit273
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
          to label %.noexc181 unwind label %bb.an

.noexc181:                                        ; preds = %bb.ak
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i175: ; preds = %.loopexit273
  %.not.i.i.i.i176 = icmp eq i64 %i.oa, 0
  br i1 %.not.i.i.i.i176, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit183, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i175
  %i.od = shl nuw nsw i64 %i.ob, 3
  %i.oe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.od) #28
          to label %.noexc182 unwind label %bb.an ; 5 uses

.noexc182:                                        ; preds = %bb.al
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.ob ; 2 uses
  store double 0.000000e+00, ptr %i.oe, align 8, !tbaa !95
  %i.og = add nsw i64 %i.ob, -1                   ; 2 uses
  %i.oh = icmp eq i64 %i.og, 0
  br i1 %i.oh, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit183, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i177

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i177: ; preds = %.noexc182
  %i.oi = getelementptr i8, ptr %i.oe, i64 8
  %.idx.i.i.i.i.i.i.i178 = shl nuw nsw i64 %i.og, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.oi, i8 0, i64 %.idx.i.i.i.i.i.i.i178, i1 false), !tbaa !95
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit183

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit183:            ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i177, %.noexc182, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i175
  %.sroa.0223.0 = phi ptr [ %i.oe, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i177 ], [ %i.oe, %.noexc182 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i175 ] ; 11 uses
  %.sroa.12.0 = phi ptr [ %i.of, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i177 ], [ %i.of, %.noexc182 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i175 ] ; 2 uses
  %i.oj = load i64, ptr %i.a, align 8, !tbaa !53  ; 7 uses
  %.not359 = icmp eq i64 %i.oj, 0
  br i1 %.not359, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit192, label %.lr.ph340.preheader

.lr.ph340.preheader:                              ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit183
  %i.ok = mul i64 %i.oj, %i.oj                    ; 3 uses
  %umax399 = call i64 @llvm.umax.i64(i64 %i.ok, i64 1) ; 2 uses
  %min.iters.check587 = icmp ult i64 %i.ok, 4
  br i1 %min.iters.check587, label %.lr.ph340.preheader623, label %vector.ph588

vector.ph588:                                     ; preds = %.lr.ph340.preheader
  %n.vec589 = and i64 %umax399, -4                ; 3 uses
  br label %vector.body590

vector.body590:                                   ; preds = %vector.body590, %vector.ph588
  %index591 = phi i64 [ 0, %vector.ph588 ], [ %index.next594, %vector.body590 ] ; 3 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0231.0, i64 %index591 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %wide.load592.a = load <2 x float>, ptr %i.ol, align 4, !tbaa !33
  %wide.load593 = load <2 x float>, ptr %i.om, align 4, !tbaa !33
  %i.on = fpext <2 x float> %wide.load592.a to <2 x double>
  %i.oo = fpext <2 x float> %wide.load593 to <2 x double>
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0223.0, i64 %index591 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  store <2 x double> %i.on, ptr %i.op, align 8, !tbaa !95
  store <2 x double> %i.oo, ptr %i.oq, align 8, !tbaa !95
  %index.next594 = add nuw i64 %index591, 4       ; 2 uses
  %i.or = icmp eq i64 %index.next594, %n.vec589
  br i1 %i.or, label %middle.block595, label %vector.body590, !llvm.loop !109

middle.block595:                                  ; preds = %vector.body590
  %cmp.n596 = icmp eq i64 %i.ok, %n.vec589
  br i1 %cmp.n596, label %._crit_edge341, label %.lr.ph340.preheader623

.lr.ph340.preheader623:                           ; preds = %.lr.ph340.preheader, %middle.block595
  %.083339.ph = phi i64 [ 0, %.lr.ph340.preheader ], [ %n.vec589, %middle.block595 ]
  br label %.lr.ph340

._crit_edge341:                                   ; preds = %.lr.ph340, %middle.block595
  %i.os = icmp ugt i64 %i.oj, 1152921504606846975
  br i1 %i.os, label %bb.am, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i184

bb.am:                                            ; preds = %._crit_edge341
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
          to label %.noexc190 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit209.thread

.noexc190:                                        ; preds = %bb.am
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i184: ; preds = %._crit_edge341
  %i.ot = shl nuw nsw i64 %i.oj, 3
  %i.ou = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ot) #28
          to label %.noexc191 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit209.thread ; 5 uses

.noexc191:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i184
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.oj ; 2 uses
  store double 0.000000e+00, ptr %i.ou, align 8, !tbaa !95
  %i.ow = add nsw i64 %i.oj, -1                   ; 2 uses
  %i.ox = icmp eq i64 %i.ow, 0
  br i1 %i.ox, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit192, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i186

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i186: ; preds = %.noexc191
  %i.oy = getelementptr i8, ptr %i.ou, i64 8
  %.idx.i.i.i.i.i.i.i187 = shl nuw nsw i64 %i.ow, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.oy, i8 0, i64 %.idx.i.i.i.i.i.i.i187, i1 false), !tbaa !95
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit192

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit211

.lr.ph340:                                        ; preds = %.lr.ph340.preheader623, %.lr.ph340
  %.083339 = phi i64 [ %i.pe, %.lr.ph340 ], [ %.083339.ph, %.lr.ph340.preheader623 ] ; 3 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0231.0, i64 %.083339
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !33
  %i.pc = fpext float %i.pb to double
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0223.0, i64 %.083339
end_hunk_0
