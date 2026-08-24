Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/optflowgf?download=true
inline.NumInlined: 292
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv12_GLOBAL__N_124FarnebackOpticalFlowImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE:bb.a

.noexc179:                                        ; preds = %bb.cn
  store ptr %i.jx, ptr %18, align 8, !tbaa !103
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i

_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i:           ; preds = %.noexc179, %bb.cm
  %i.jy = phi ptr [ %i.fv, %bb.cm ], [ %i.jx, %.noexc179 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.jz = shl nsw i32 %i.jd, 1                    ; 5 uses
  %i.ka = add nsw i32 %i.jp, %i.jz                ; 2 uses
  %i.kb = mul nsw i32 %i.ka, 3                    ; 2 uses
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  store ptr %i.fx, ptr %19, align 8, !tbaa !103
  %.not.i.i208.i = icmp ugt i32 %i.kb, 264
  store i64 %i.kc, ptr %i.fy, align 8, !tbaa !106
  br i1 %.not.i.i208.i, label %bb.co, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit209.i

bb.co:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i
  %i.kd = icmp slt i32 %i.ka, 0
  %i.ke = shl nuw nsw i64 %i.kc, 2
  %i.kf = select i1 %i.kd, i64 -1, i64 %i.ke
  %i.kg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kf) #24
          to label %.noexc.i unwind label %bb.dk  ; 2 uses

.noexc.i:                                         ; preds = %bb.co
  store ptr %i.kg, ptr %19, align 8, !tbaa !103
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit209.i

_ZN2cv10AutoBufferIfLm264EEC2Em.exit209.i:        ; preds = %.noexc.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i
  %i.kh = phi ptr [ %i.kg, %.noexc.i ], [ %i.fx, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i ] ; 3 uses
  %i.ki = sext i32 %i.jd to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.ki ; 12 uses
  %i.kk = sext i32 %i.jz to i64                   ; 4 uses
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4 ; 5 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.kk
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4 ; 4 uses
  %i.kp = mul i32 %i.jd, 3                        ; 3 uses
  %i.kq = sext i32 %i.kp to i64                   ; 3 uses
  %i.kr = getelementptr [4 x i8], ptr %i.kh, i64 %i.kq ; 22 uses
  %i.ks = sub nsw i32 0, %i.jd                    ; 4 uses
  %.not129.i.i = icmp slt i32 %i.jd, 0            ; 2 uses
  br i1 %.not129.i.i, label %._crit_edge136.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit209.i
  %i.kt = fcmp olt double %i.je, f0x3E80000000000000
  %i.ku = uitofp nneg i32 %i.jd to double
  %i.kv = fmul nnan double %i.ku, 3.000000e-01
  %.083.i.i = select i1 %i.kt, double %i.kv, double %i.je ; 2 uses
  %i.kw = fmul double %.083.i.i, 2.000000e+00
  %i.kx = fmul double %.083.i.i, %i.kw
  %i.ky = sext i32 %i.ks to i64                   ; 6 uses
  %i.kz = add nuw i32 %i.jd, 1                    ; 2 uses
  br label %bb.cp

.lr.ph135.preheader.i.i:                          ; preds = %bb.cp
  %i.la = fdiv double 1.000000e+00, %i.mg         ; 2 uses
  %min.iters.check648 = icmp ult i32 %i.jz, 4
  br i1 %min.iters.check648, label %.lr.ph135.i.i.preheader, label %vector.memcheck627

.lr.ph135.i.i.preheader:                          ; preds = %vector.body658, %vector.memcheck627, %.lr.ph135.preheader.i.i
  %indvars.iv165.i.i.ph = phi i64 [ %i.ky, %vector.memcheck627 ], [ %i.ky, %.lr.ph135.preheader.i.i ], [ %i.li, %vector.body658 ]
  br label %.lr.ph135.i.i

vector.memcheck627:                               ; preds = %.lr.ph135.preheader.i.i
  %scevgep628 = getelementptr i8, ptr %i.jy, i64 4 ; 2 uses
  %i.lb = zext nneg i32 %i.jz to i64
  %i.lc = shl nuw nsw i64 %i.lb, 2                ; 3 uses
  %scevgep629 = getelementptr i8, ptr %scevgep628, i64 %i.lc ; 2 uses
  %i.ld = shl nuw nsw i64 %i.kk, 2                ; 2 uses
  %scevgep630 = getelementptr i8, ptr %scevgep628, i64 %i.ld ; 2 uses
  %scevgep631 = getelementptr i8, ptr %i.jy, i64 8 ; 2 uses
  %i.le = getelementptr i8, ptr %scevgep631, i64 %i.ld
  %scevgep632 = getelementptr i8, ptr %i.le, i64 %i.lc ; 2 uses
  %i.lf = shl nuw nsw i64 %i.kk, 3                ; 2 uses
  %scevgep633 = getelementptr i8, ptr %scevgep631, i64 %i.lf ; 2 uses
  %scevgep634 = getelementptr i8, ptr %i.jy, i64 12
  %i.lg = getelementptr i8, ptr %scevgep634, i64 %i.lf
  %scevgep635 = getelementptr i8, ptr %i.lg, i64 %i.lc ; 2 uses
  %bound0636 = icmp ult ptr %i.jy, %scevgep632
  %bound1637 = icmp ult ptr %scevgep630, %scevgep629
  %found.conflict638 = and i1 %bound0636, %bound1637
  %bound0639 = icmp ult ptr %i.jy, %scevgep635
  %bound1640 = icmp ult ptr %scevgep633, %scevgep629
  %found.conflict641 = and i1 %bound0639, %bound1640
  %conflict.rdx642 = or i1 %found.conflict638, %found.conflict641
  %bound0643 = icmp ult ptr %scevgep630, %scevgep635
  %bound1644 = icmp ult ptr %scevgep633, %scevgep632
  %found.conflict645 = and i1 %bound0643, %bound1644
  %conflict.rdx646 = or i1 %conflict.rdx642, %found.conflict645
  br i1 %conflict.rdx646, label %.lr.ph135.i.i.preheader, label %vector.ph649

vector.ph649:                                     ; preds = %vector.memcheck627
  %i.lh = and i32 %i.jz, 2147483644
  %n.vec650 = zext nneg i32 %i.lh to i64          ; 2 uses
  %i.li = add nsw i64 %n.vec650, %i.ky
  %broadcast.splatinsert651 = insertelement <4 x double> poison, double %i.la, i64 0
  %broadcast.splat652 = shufflevector <4 x double> %broadcast.splatinsert651, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert653 = insertelement <4 x i64> poison, i64 %i.ky, i64 0
  %broadcast.splat654 = shufflevector <4 x i64> %broadcast.splatinsert653, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i64> %broadcast.splat654, <i64 0, i64 1, i64 2, i64 3>
  %broadcast.splatinsert655 = insertelement <4 x i32> poison, i32 %i.ks, i64 0
  %broadcast.splat656 = shufflevector <4 x i32> %broadcast.splatinsert655, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction657 = add <4 x i32> %broadcast.splat656, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body658

vector.body658:                                   ; preds = %vector.body658, %vector.ph649
  %index659 = phi i64 [ 0, %vector.ph649 ], [ %index.next662, %vector.body658 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph649 ], [ %vec.ind.next, %vector.body658 ] ; 3 uses
  %vec.ind660 = phi <4 x i32> [ %induction657, %vector.ph649 ], [ %vec.ind.next663, %vector.body658 ] ; 2 uses
  %i.lj = add i64 %index659, %i.ky                ; 3 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.lj ; 2 uses
  %wide.load661 = load <4 x float>, ptr %i.lk, align 4, !tbaa !107, !alias.scope !109, !noalias !112
  %i.ll = fpext <4 x float> %wide.load661 to <4 x double>
  %i.lm = fmul <4 x double> %broadcast.splat652, %i.ll
  %i.ln = fptrunc <4 x double> %i.lm to <4 x float> ; 3 uses
  store <4 x float> %i.ln, ptr %i.lk, align 4, !tbaa !107, !alias.scope !109, !noalias !112
  %i.lo = sitofp <4 x i32> %vec.ind660 to <4 x float>
  %i.lp = fmul <4 x float> %i.lo, %i.ln
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.lj
  store <4 x float> %i.lp, ptr %i.lq, align 4, !tbaa !107, !alias.scope !115, !noalias !116
  %i.lr = mul nsw <4 x i64> %vec.ind, %vec.ind
  %i.ls = trunc nsw <4 x i64> %i.lr to <4 x i32>
  %i.lt = uitofp nneg <4 x i32> %i.ls to <4 x float>
  %i.lu = fmul <4 x float> %i.lt, %i.ln
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.lj
  store <4 x float> %i.lu, ptr %i.lv, align 4, !tbaa !107, !alias.scope !116
  %index.next662 = add nuw i64 %index659, 4       ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next663 = add <4 x i32> %vec.ind660, splat (i32 4)
  %i.lw = icmp eq i64 %index.next662, %n.vec650
  br i1 %i.lw, label %.lr.ph135.i.i.preheader, label %vector.body658, !llvm.loop !117

bb.cp:                                            ; preds = %bb.cp, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.ky, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cp ] ; 3 uses
  %.082130.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i ], [ %i.mg, %bb.cp ]
  %i.lx = trunc nsw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.ly = mul i32 %i.lx, %i.lx
  %i.lz = sub i32 0, %i.ly
  %i.ma = sitofp i32 %i.lz to double
  %i.mb = fdiv double %i.ma, %i.kx
  %i.mc = call double @exp(double noundef %i.mb) #23
  %i.md = fptrunc double %i.mc to float           ; 2 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv.i.i
  store float %i.md, ptr %i.me, align 4, !tbaa !107
  %i.mf = fpext float %i.md to double
  %i.mg = fadd double %.082130.i.i, %i.mf         ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.kz, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph135.preheader.i.i, label %bb.cp, !llvm.loop !120

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %.lr.ph135.i.i
  %indvars.iv165.i.i = phi i64 [ %indvars.iv.next166.i.i, %.lr.ph135.i.i ], [ %indvars.iv165.i.i.ph, %.lr.ph135.i.i.preheader ] ; 7 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv165.i.i ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !107
  %i.mj = fpext float %i.mi to double
  %i.mk = fmul double %i.la, %i.mj
  %i.ml = fptrunc double %i.mk to float           ; 3 uses
  store float %i.ml, ptr %i.mh, align 4, !tbaa !107
  %i.mm = trunc nsw i64 %indvars.iv165.i.i to i32
  %i.mn = sitofp i32 %i.mm to float
  %i.mo = fmul float %i.mn, %i.ml
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.km, i64 %indvars.iv165.i.i
  store float %i.mo, ptr %i.mp, align 4, !tbaa !107
  %i.mq = mul nsw i64 %indvars.iv165.i.i, %indvars.iv165.i.i
  %i.mr = trunc nsw i64 %i.mq to i32
  %i.ms = uitofp nneg i32 %i.mr to float
  %i.mt = fmul float %i.ms, %i.ml
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %indvars.iv165.i.i
  store float %i.mt, ptr %i.mu, align 4, !tbaa !107
  %indvars.iv.next166.i.i = add nsw i64 %indvars.iv165.i.i, 1 ; 2 uses
  %lftr.wideiv168.i.i = trunc i64 %indvars.iv.next166.i.i to i32
  %exitcond169.not.i.i = icmp eq i32 %i.kz, %lftr.wideiv168.i.i
  br i1 %exitcond169.not.i.i, label %._crit_edge136.i.i, label %.lr.ph135.i.i, !llvm.loop !121

._crit_edge136.i.i:                               ; preds = %.lr.ph135.i.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit209.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef 6, i32 noundef 6, i32 noundef 6)
          to label %.noexc210.i unwind label %bb.dl

.noexc210.i:                                      ; preds = %._crit_edge136.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !122
  store i32 -1056833530, ptr %13, align 8, !tbaa !94
  store ptr %i.a, ptr %i.ga, align 8, !tbaa !66
  store i64 4294967297, ptr %i.fz, align 8
  %i.mv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %.noexc210.i
  %i.mw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.mv)
          to label %bb.cr unwind label %bb.ct     ; 0 uses

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  %.fr159.i.i = freeze i32 %.pre.i.i              ; 2 uses
  %.pre191.i.i = load ptr, ptr %.phi.trans.insert190.i.i, align 8 ; 21 uses
  br i1 %.not129.i.i, label %._crit_edge149.split.i.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.cr
  %i.mx = icmp slt i32 %.fr159.i.i, 2
  %52 = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 24 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 40 ; 2 uses
  br i1 %i.mx, label %.preheader.lr.ph.split.split.us.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.na = sext i32 %i.ks to i64                   ; 2 uses
  %i.nb = add nuw i32 %i.jd, 1                    ; 2 uses
  br label %.preheader.i.i

.preheader.lr.ph.split.split.us.i.i:              ; preds = %.preheader.lr.ph.i.i
  %i.nc = load <2 x double>, ptr %.pre191.i.i, align 8, !tbaa !122
  %.promoted155.i.i = load double, ptr %i.my, align 8, !tbaa !122
  %.promoted157.i.i = load double, ptr %i.mz, align 8, !tbaa !122
  %i.nd = sext i32 %i.ks to i64                   ; 2 uses
  %i.ne = add nuw i32 %i.jd, 1                    ; 2 uses
  %53 = insertelement <4 x double> poison, double %.promoted157.i.i, i64 0
  %54 = insertelement <4 x double> %53, double %.promoted155.i.i, i64 1
  %55 = shufflevector <2 x double> %i.nc, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %56 = shufflevector <4 x double> %54, <4 x double> %55, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge140.split.us.us.i.i, %.preheader.lr.ph.split.split.us.i.i
  %indvars.iv185.i.i = phi i64 [ %indvars.iv.next186.i.i, %._crit_edge140.split.us.us.i.i ], [ %i.nd, %.preheader.lr.ph.split.split.us.i.i ] ; 3 uses
  %57 = phi <4 x double> [ %66, %._crit_edge140.split.us.us.i.i ], [ %56, %.preheader.lr.ph.split.split.us.i.i ]
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv185.i.i
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !107
  %i.nh = trunc nsw i64 %indvars.iv185.i.i to i32
  %i.ni = sitofp i32 %i.nh to float               ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %.preheader.us.i.i
  %indvars.iv180.i.i = phi i64 [ %indvars.iv.next181.i.i, %bb.cs ], [ %i.nd, %.preheader.us.i.i ] ; 3 uses
  %58 = phi <4 x double> [ %66, %bb.cs ], [ %57, %.preheader.us.i.i ]
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv180.i.i
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !107
  %i.nl = trunc nsw i64 %indvars.iv180.i.i to i32
  %i.nm = sitofp i32 %i.nl to float               ; 4 uses
  %i.nn = fmul float %i.ng, %i.nk                 ; 2 uses
  %i.no = fmul float %i.nn, %i.nm
  %i.np = fmul float %i.no, %i.nm                 ; 3 uses
  %59 = fmul float %i.np, %i.nm
  %60 = fmul float %59, %i.nm
  %i.nq = fmul float %i.np, %i.ni
  %i.nr = fmul float %i.nq, %i.ni
  %61 = insertelement <4 x float> poison, float %i.nr, i64 0
  %62 = insertelement <4 x float> %61, float %60, i64 1
  %63 = insertelement <4 x float> %62, float %i.np, i64 2
  %64 = insertelement <4 x float> %63, float %i.nn, i64 3
  %65 = fpext <4 x float> %64 to <4 x double>
  %66 = fadd <4 x double> %58, %65                ; 6 uses
  %indvars.iv.next181.i.i = add nsw i64 %indvars.iv180.i.i, 1 ; 2 uses
  %lftr.wideiv183.i.i = trunc i64 %indvars.iv.next181.i.i to i32
  %exitcond184.not.i.i = icmp eq i32 %i.ne, %lftr.wideiv183.i.i
  br i1 %exitcond184.not.i.i, label %._crit_edge140.split.us.us.i.i, label %bb.cs, !llvm.loop !123

._crit_edge140.split.us.us.i.i:                   ; preds = %bb.cs
  %indvars.iv.next186.i.i = add nsw i64 %indvars.iv185.i.i, 1 ; 2 uses
  %lftr.wideiv188.i.i = trunc i64 %indvars.iv.next186.i.i to i32
  %exitcond189.not.i.i = icmp eq i32 %i.ne, %lftr.wideiv188.i.i
  br i1 %exitcond189.not.i.i, label %._crit_edge149.split151.us.i.i, label %.preheader.us.i.i, !llvm.loop !124

._crit_edge149.split151.us.i.i:                   ; preds = %._crit_edge140.split.us.us.i.i
  %67 = extractelement <4 x double> %66, i64 3
  store double %67, ptr %.pre191.i.i, align 8, !tbaa !122
  %68 = extractelement <4 x double> %66, i64 2
  store double %68, ptr %52, align 8, !tbaa !122
  %69 = extractelement <4 x double> %66, i64 1
  store double %69, ptr %i.my, align 8, !tbaa !122
  %70 = extractelement <4 x double> %66, i64 0
  store double %70, ptr %i.mz, align 8, !tbaa !122
  br label %._crit_edge149.split.i.i

.preheader.i.i:                                   ; preds = %._crit_edge140.split.i.i, %.preheader.preheader.i.i
  %indvars.iv175.i.i = phi i64 [ %i.na, %.preheader.preheader.i.i ], [ %indvars.iv.next176.i.i, %._crit_edge140.split.i.i ] ; 3 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv175.i.i
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !107
  %i.nu = trunc nsw i64 %indvars.iv175.i.i to i32
  %i.nv = sitofp i32 %i.nu to float               ; 2 uses
  br label %bb.cu

._crit_edge149.split.i.i:                         ; preds = %._crit_edge140.split.i.i, %._crit_edge149.split151.us.i.i, %bb.cr
  %i.nw = icmp slt i32 %.fr159.i.i, 2             ; 9 uses
  %i.nx = load i64, ptr %i.gb, align 8            ; 2 uses
  %.sink.idx.i.i.i = select i1 %i.nw, i64 0, i64 %i.nx
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %.sink.idx.i.i.i
  %i.ny = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !122 ; 5 uses
  %i.oa = shl i64 %i.nx, 2
  %.sink.idx.i93.i.i = select i1 %i.nw, i64 0, i64 %i.oa
  %.sink.i94.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %.sink.idx.i93.i.i
  store double %i.nz, ptr %.sink.i94.i.i, align 8, !tbaa !122
  %i.ob = load i64, ptr %i.gb, align 8
  %i.oc = mul i64 %i.ob, 3
  %.sink.idx.i95.i.i = select i1 %i.nw, i64 0, i64 %i.oc
  %.sink.i96.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %.sink.idx.i95.i.i
  store double %i.nz, ptr %.sink.i96.i.i, align 8, !tbaa !122
  %i.od = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 32
  store double %i.nz, ptr %i.od, align 8, !tbaa !122
  %i.oe = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 24
  store double %i.nz, ptr %i.oe, align 8, !tbaa !122
  %i.of = load i64, ptr %i.gb, align 8
  %i.og = shl i64 %i.of, 1
  %.sink.idx.i101.i.i = select i1 %i.nw, i64 0, i64 %i.og
  %.sink.i102.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %.sink.idx.i101.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %.sink.i102.i.i, i64 16
  store double %i.nz, ptr %i.oh, align 8, !tbaa !122
  %i.oi = load i64, ptr %i.gb, align 8            ; 2 uses
  %i.oj = mul i64 %i.oi, 3
  %.sink.idx.i103.i.i = select i1 %i.nw, i64 0, i64 %i.oj
  %.sink.i104.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %.sink.idx.i103.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %.sink.i104.i.i, i64 24
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !122
  %i.om = shl i64 %i.oi, 2
  %.sink.idx.i105.i.i = select i1 %i.nw, i64 0, i64 %i.om
  %.sink.i106.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %.sink.idx.i105.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %.sink.i106.i.i, i64 32
  store double %i.ol, ptr %i.on, align 8, !tbaa !122
  %i.oo = load i64, ptr %i.gb, align 8            ; 2 uses
  %i.op = mul i64 %i.oo, 5
  %.sink.idx.i107.i.i = select i1 %i.nw, i64 0, i64 %i.op
  %.sink.i108.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %.sink.idx.i107.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %.sink.i108.i.i, i64 40
  %i.or = load double, ptr %i.oq, align 8, !tbaa !122 ; 2 uses
  %i.os = shl i64 %i.oo, 2
  %.sink.idx.i109.i.i = select i1 %i.nw, i64 0, i64 %i.os
  %.sink.i110.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %.sink.idx.i109.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.sink.i110.i.i, i64 24
  store double %i.or, ptr %i.ot, align 8, !tbaa !122
  %i.ou = load i64, ptr %i.gb, align 8
  %i.ov = mul i64 %i.ou, 3
  %.sink.idx.i111.i.i = select i1 %i.nw, i64 0, i64 %i.ov
  %.sink.i112.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %.sink.idx.i111.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %.sink.i112.i.i, i64 32
  store double %i.or, ptr %i.ow, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef 3)
          to label %bb.cv unwind label %bb.dg

bb.ct:                                            ; preds = %bb.cq, %.noexc210.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.di

._crit_edge140.split.i.i:                         ; preds = %bb.cu
  %indvars.iv.next176.i.i = add nsw i64 %indvars.iv175.i.i, 1 ; 2 uses
  %lftr.wideiv178.i.i = trunc i64 %indvars.iv.next176.i.i to i32
  %exitcond179.not.i.i = icmp eq i32 %i.nb, %lftr.wideiv178.i.i
  br i1 %exitcond179.not.i.i, label %._crit_edge149.split.i.i, label %.preheader.i.i, !llvm.loop !124

bb.cu:                                            ; preds = %bb.cu, %.preheader.i.i
  %indvars.iv170.i.i = phi i64 [ %i.na, %.preheader.i.i ], [ %indvars.iv.next171.i.i, %bb.cu ] ; 3 uses
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv170.i.i
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !107
  %i.pa = fmul float %i.nt, %i.oz                 ; 2 uses
  %i.pb = fpext float %i.pa to double
  %i.pc = load double, ptr %.pre191.i.i, align 8, !tbaa !122
  %i.pd = fadd double %i.pc, %i.pb
  store double %i.pd, ptr %.pre191.i.i, align 8, !tbaa !122
  %i.pe = trunc nsw i64 %indvars.iv170.i.i to i32
  %i.pf = sitofp i32 %i.pe to float               ; 4 uses
  %i.pg = fmul float %i.pa, %i.pf
  %i.ph = fmul float %i.pg, %i.pf                 ; 3 uses
  %i.pi = fpext float %i.ph to double
  %i.pj = load i64, ptr %i.gb, align 8
  %.sink.i116.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %i.pj
  %i.pk = getelementptr inbounds nuw i8, ptr %.sink.i116.i.i, i64 8 ; 2 uses
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !122
  %i.pm = fadd double %i.pl, %i.pi
  store double %i.pm, ptr %i.pk, align 8, !tbaa !122
  %i.pn = fmul float %i.ph, %i.pf
  %i.po = fmul float %i.pn, %i.pf
  %i.pp = fpext float %i.po to double
  %i.pq = load i64, ptr %i.gb, align 8
  %i.pr = mul i64 %i.pq, 3
  %.sink.i118.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %i.pr
  %i.ps = getelementptr inbounds nuw i8, ptr %.sink.i118.i.i, i64 24 ; 2 uses
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !122
  %i.pu = fadd double %i.pt, %i.pp
  store double %i.pu, ptr %i.ps, align 8, !tbaa !122
  %i.pv = fmul float %i.ph, %i.nv
  %i.pw = fmul float %i.pv, %i.nv
  %i.px = fpext float %i.pw to double
  %i.py = load i64, ptr %i.gb, align 8
  %i.pz = mul i64 %i.py, 5
  %.sink.i120.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %i.pz
  %i.qa = getelementptr inbounds nuw i8, ptr %.sink.i120.i.i, i64 40 ; 2 uses
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !122
  %i.qc = fadd double %i.qb, %i.px
  store double %i.qc, ptr %i.qa, align 8, !tbaa !122
  %indvars.iv.next171.i.i = add nsw i64 %indvars.iv170.i.i, 1 ; 2 uses
  %lftr.wideiv173.i.i = trunc i64 %indvars.iv.next171.i.i to i32
  %exitcond174.not.i.i = icmp eq i32 %i.nb, %lftr.wideiv173.i.i
  br i1 %exitcond174.not.i.i, label %._crit_edge140.split.i.i, label %bb.cu, !llvm.loop !123

bb.cv:                                            ; preds = %._crit_edge149.split.i.i
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %14) #23
  %i.qd = load i32, ptr %14, align 8, !tbaa !78
  %i.qe = and i32 %i.qd, -4096
  %i.qf = or disjoint i32 %i.qe, 6
  store i32 %i.qf, ptr %14, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #23
  %i.qg = load ptr, ptr %15, align 8, !tbaa !95, !noalias !125 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !16
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8
  invoke void %i.qj(ptr noundef nonnull align 8 dereferenceable(8) %i.qg, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i:           ; preds = %bb.cv
  %i.ql = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %.noexc252 unwind label %bb.df

.noexc252:                                        ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i
  br i1 %i.ql, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.noexc252
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %.noexc253 unwind label %bb.df

.noexc253:                                        ; preds = %bb.cx
  %i.qm = load i32, ptr %14, align 8, !tbaa !78
  %i.qn = and i32 %i.qm, -4096
  %i.qo = or disjoint i32 %i.qn, 6
  store i32 %i.qo, ptr %14, align 8, !tbaa !78
  br label %_ZN2cv4Mat_IdEaSEONS_3MatE.exit

bb.cy:                                            ; preds = %.noexc252
  %i.qp = load i32, ptr %11, align 8, !tbaa !78   ; 2 uses
  %i.qq = and i32 %i.qp, 4095
  %i.qr = icmp eq i32 %i.qq, 6
  br i1 %i.qr, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.qs = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %_ZN2cv4Mat_IdEaSEONS_3MatE.exit unwind label %bb.df ; 0 uses

bb.da:                                            ; preds = %bb.cy
  %i.qt = and i32 %i.qp, 31
  %i.qu = icmp eq i32 %i.qt, 6
  br i1 %i.qu, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.qv = load i32, ptr %i.ge, align 4, !tbaa !128
  invoke void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 1, i32 noundef %i.qv, ptr noundef null)
          to label %.noexc255 unwind label %bb.df

.noexc255:                                        ; preds = %bb.db
  %i.qw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.dc unwind label %bb.dd     ; 0 uses

bb.dc:                                            ; preds = %.noexc255
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN2cv4Mat_IdEaSEONS_3MatE.exit

bb.dd:                                            ; preds = %.noexc255
  %i.qx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
end_hunk_0
