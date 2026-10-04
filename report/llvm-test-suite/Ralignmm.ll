Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Ralignmm?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@R__align:bb.a
bb.s:                                             ; preds = %bb.s, %.epil.preheader1085
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader1085 ], [ %indvars.iv.next.i.epil, %bb.s ] ; 2 uses
  %.056.i.epil = phi ptr [ %.056.i.epil.init, %.epil.preheader1085 ], [ %i.ho, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader1085 ], [ %epil.iter.next, %bb.s ]
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.i.epil
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !13
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !15
  %i.ho = getelementptr inbounds nuw i8, ptr %.056.i.epil, i64 4
  %i.hp = load float, ptr %.056.i.epil, align 4, !tbaa !15
  %i.hq = fadd float %i.hn, %i.hp
  store float %i.hq, ptr %.056.i.epil, align 4, !tbaa !15
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1086
  br i1 %epil.iter.cmp.not, label %imp_match_out_vead_tateR.exit, label %bb.s, !llvm.loop !54

imp_match_out_vead_tateR.exit:                    ; preds = %imp_match_out_vead_tateR.exit.loopexit.unr-lcssa, %bb.s, %bb.q
  tail call fastcc void @match_calc(ptr noundef %i.fy, ptr noundef %i.gd, ptr noundef %i.gc, i32 noundef 0, i32 noundef %i.o, ptr noundef %i.ge, ptr noundef %i.gf, i32 noundef 1)
  %.not5.i = icmp eq i32 %i.o, 0
  br i1 %.not5.i, label %imp_match_out_veadR.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %imp_match_out_vead_tateR.exit
  %i.hr = load ptr, ptr @impmtx, align 8, !tbaa !11
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !13 ; 6 uses
  %i.ht = and i64 %i.n, 4294967295                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ht, 12
  br i1 %min.iters.check, label %.lr.ph.i506.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.hu = shl i64 %i.n, 2
  %i.hv = add i64 %i.hu, 17179869180
  %i.hw = and i64 %i.hv, 17179869180
  %i.hx = add nuw nsw i64 %i.hw, 4                ; 2 uses
  %i.hy = getelementptr i8, ptr %i.fy, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hs, i64 %i.hx
  %bound0 = icmp ult ptr %i.fy, %i.hz
  %bound1 = icmp ult ptr %i.hs, %i.hy
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i506.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 4294967288               ; 4 uses
  %i.ia = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ib = getelementptr i8, ptr %i.hs, i64 %i.ia
  %i.ic = trunc nuw i64 %n.vec to i32
  %i.id = sub i32 %i.o, %i.ic
  %i.ie = getelementptr i8, ptr %i.fy, i64 %i.ia
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.if = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hs, i64 %i.if ; 2 uses
  %next.gep820 = getelementptr i8, ptr %i.fy, i64 %i.if ; 3 uses
  %i.ig = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !15, !alias.scope !119
  %wide.load821 = load <4 x float>, ptr %i.ig, align 4, !tbaa !15, !alias.scope !119
  %i.ih = getelementptr i8, ptr %next.gep820, i64 16 ; 2 uses
  %wide.load822 = load <4 x float>, ptr %next.gep820, align 4, !tbaa !15, !alias.scope !120, !noalias !119
  %wide.load823 = load <4 x float>, ptr %i.ih, align 4, !tbaa !15, !alias.scope !120, !noalias !119
  %i.ii = fadd <4 x float> %wide.load, %wide.load822
  %i.ij = fadd <4 x float> %wide.load821, %wide.load823
  store <4 x float> %i.ii, ptr %next.gep820, align 4, !tbaa !15, !alias.scope !120, !noalias !119
  store <4 x float> %i.ij, ptr %i.ih, align 4, !tbaa !15, !alias.scope !120, !noalias !119
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ht, %n.vec
  br i1 %cmp.n, label %imp_match_out_veadR.exit, label %.lr.ph.i506.preheader

.lr.ph.i506.preheader:                            ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.08.i.ph = phi ptr [ %i.hs, %vector.memcheck ], [ %i.hs, %.lr.ph.preheader.i ], [ %i.ib, %middle.block ] ; 2 uses
  %.037.i.ph = phi i32 [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.preheader.i ], [ %i.id, %middle.block ] ; 4 uses
  %.046.i.ph = phi ptr [ %i.fy, %vector.memcheck ], [ %i.fy, %.lr.ph.preheader.i ], [ %i.ie, %middle.block ] ; 2 uses
  %i.il = add nsw i32 %.037.i.ph, -1
  %xtraiter1091 = and i32 %.037.i.ph, 3           ; 2 uses
  %lcmp.mod1092.not = icmp eq i32 %xtraiter1091, 0
  br i1 %lcmp.mod1092.not, label %.lr.ph.i506.prol.loopexit, label %.lr.ph.i506.prol

.lr.ph.i506.prol:                                 ; preds = %.lr.ph.i506.preheader, %.lr.ph.i506.prol
  %.08.i.prol = phi ptr [ %i.in, %.lr.ph.i506.prol ], [ %.08.i.ph, %.lr.ph.i506.preheader ] ; 2 uses
  %.037.i.prol = phi i32 [ %i.im, %.lr.ph.i506.prol ], [ %.037.i.ph, %.lr.ph.i506.preheader ]
  %.046.i.prol = phi ptr [ %i.ip, %.lr.ph.i506.prol ], [ %.046.i.ph, %.lr.ph.i506.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i506.prol ], [ 0, %.lr.ph.i506.preheader ]
  %i.im = add nsw i32 %.037.i.prol, -1            ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 4 ; 2 uses
  %i.io = load float, ptr %.08.i.prol, align 4, !tbaa !15
  %i.ip = getelementptr inbounds nuw i8, ptr %.046.i.prol, i64 4 ; 2 uses
  %i.iq = load float, ptr %.046.i.prol, align 4, !tbaa !15
  %i.ir = fadd float %i.io, %i.iq
  store float %i.ir, ptr %.046.i.prol, align 4, !tbaa !15
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1091
  br i1 %prol.iter.cmp.not, label %.lr.ph.i506.prol.loopexit, label %.lr.ph.i506.prol, !llvm.loop !59

.lr.ph.i506.prol.loopexit:                        ; preds = %.lr.ph.i506.prol, %.lr.ph.i506.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i506.preheader ], [ %i.in, %.lr.ph.i506.prol ]
  %.037.i.unr = phi i32 [ %.037.i.ph, %.lr.ph.i506.preheader ], [ %i.im, %.lr.ph.i506.prol ]
  %.046.i.unr = phi ptr [ %.046.i.ph, %.lr.ph.i506.preheader ], [ %i.ip, %.lr.ph.i506.prol ]
  %i.is = icmp ult i32 %i.il, 3
  br i1 %i.is, label %imp_match_out_veadR.exit, label %.lr.ph.i506

.lr.ph.i506:                                      ; preds = %.lr.ph.i506.prol.loopexit, %.lr.ph.i506
  %.08.i = phi ptr [ %i.jj, %.lr.ph.i506 ], [ %.08.i.unr, %.lr.ph.i506.prol.loopexit ] ; 5 uses
  %.037.i = phi i32 [ %i.ji, %.lr.ph.i506 ], [ %.037.i.unr, %.lr.ph.i506.prol.loopexit ]
  %.046.i = phi ptr [ %i.jl, %.lr.ph.i506 ], [ %.046.i.unr, %.lr.ph.i506.prol.loopexit ] ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  %i.iu = load float, ptr %.08.i, align 4, !tbaa !15
  %i.iv = getelementptr inbounds nuw i8, ptr %.046.i, i64 4 ; 2 uses
  %i.iw = load float, ptr %.046.i, align 4, !tbaa !15
  %i.ix = fadd float %i.iu, %i.iw
  store float %i.ix, ptr %.046.i, align 4, !tbaa !15
  %i.iy = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.iz = load float, ptr %i.it, align 4, !tbaa !15
  %i.ja = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 2 uses
  %i.jb = load float, ptr %i.iv, align 4, !tbaa !15
  %i.jc = fadd float %i.iz, %i.jb
  store float %i.jc, ptr %i.iv, align 4, !tbaa !15
  %i.jd = getelementptr inbounds nuw i8, ptr %.08.i, i64 12
  %i.je = load float, ptr %i.iy, align 4, !tbaa !15
  %i.jf = getelementptr inbounds nuw i8, ptr %.046.i, i64 12 ; 2 uses
  %i.jg = load float, ptr %i.ja, align 4, !tbaa !15
  %i.jh = fadd float %i.je, %i.jg
  store float %i.jh, ptr %i.ja, align 4, !tbaa !15
  %i.ji = add nsw i32 %.037.i, -4                 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %i.jk = load float, ptr %i.jd, align 4, !tbaa !15
  %i.jl = getelementptr inbounds nuw i8, ptr %.046.i, i64 16
  %i.jm = load float, ptr %i.jf, align 4, !tbaa !15
  %i.jn = fadd float %i.jk, %i.jm
  store float %i.jn, ptr %i.jf, align 4, !tbaa !15
  %.not.i.3 = icmp eq i32 %i.ji, 0
  br i1 %.not.i.3, label %imp_match_out_veadR.exit, label %.lr.ph.i506, !llvm.loop !60

.critedge:                                        ; preds = %bb.p
  tail call fastcc void @match_calc(ptr noundef %i.fy, ptr noundef %i.gd, ptr noundef %i.gc, i32 noundef 0, i32 noundef %i.o, ptr noundef %i.ge, ptr noundef %i.gf, i32 noundef 1)
  br label %imp_match_out_veadR.exit

imp_match_out_veadR.exit:                         ; preds = %.lr.ph.i506.prol.loopexit, %.lr.ph.i506, %middle.block, %.critedge
  %i.jo = load i32, ptr @outgap, align 4, !tbaa !7
  %i.jp = icmp eq i32 %i.jo, 1
  br i1 %i.jp, label %bb.t, label %.preheader582

imp_match_out_veadR.exit.thread:                  ; preds = %imp_match_out_vead_tateR.exit
  %i.jq = load i32, ptr @outgap, align 4, !tbaa !7
  %i.jr = icmp eq i32 %i.jq, 1
  br i1 %i.jr, label %bb.t, label %.preheader580

.preheader582:                                    ; preds = %imp_match_out_veadR.exit
  %.not487596 = icmp slt i32 %i.o, 1
  br i1 %.not487596, label %.preheader580, label %.lr.ph598

.lr.ph598:                                        ; preds = %.preheader582
  %i.js = load i32, ptr @offset, align 4, !tbaa !7 ; 2 uses
  %i.jt = add nuw nsw i64 %i.n, 1
  %wide.trip.count673 = and i64 %i.jt, 4294967295 ; 2 uses
  %i.ju = add nsw i64 %wide.trip.count673, -1     ; 3 uses
  %min.iters.check827 = icmp ult i64 %i.ju, 4
  br i1 %min.iters.check827, label %scalar.ph826.preheader, label %vector.ph828

vector.ph828:                                     ; preds = %.lr.ph598
  %n.vec829 = and i64 %i.ju, -4                   ; 3 uses
  %i.jv = or disjoint i64 %n.vec829, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.js, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body830

vector.body830:                                   ; preds = %vector.body830, %vector.ph828
  %index831 = phi i64 [ 0, %vector.ph828 ], [ %index.next833, %vector.body830 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph828 ], [ %vec.ind.next, %vector.body830 ] ; 2 uses
  %i.jw = mul <4 x i32> %broadcast.splat, %vec.ind
  %i.jx = sitofp <4 x i32> %i.jw to <4 x double>
  %i.jy = fmul nnan <4 x double> %i.jx, splat (double 5.000000e-01)
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %index831
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4 ; 2 uses
  %wide.load832 = load <4 x float>, ptr %i.ka, align 4, !tbaa !15
  %i.kb = fpext <4 x float> %wide.load832 to <4 x double>
  %i.kc = fsub <4 x double> %i.kb, %i.jy
  %i.kd = fptrunc <4 x double> %i.kc to <4 x float>
  store <4 x float> %i.kd, ptr %i.ka, align 4, !tbaa !15
  %index.next833 = add nuw i64 %index831, 4       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ke = icmp eq i64 %index.next833, %n.vec829
  br i1 %i.ke, label %middle.block834, label %vector.body830, !llvm.loop !61

middle.block834:                                  ; preds = %vector.body830
  %cmp.n835 = icmp eq i64 %i.ju, %n.vec829
  br i1 %cmp.n835, label %.preheader580, label %scalar.ph826.preheader

scalar.ph826.preheader:                           ; preds = %.lr.ph598, %middle.block834
  %indvars.iv670.ph = phi i64 [ 1, %.lr.ph598 ], [ %i.jv, %middle.block834 ]
  br label %scalar.ph826

bb.t:                                             ; preds = %imp_match_out_veadR.exit.thread, %imp_match_out_veadR.exit
  %i.kf = load ptr, ptr @R__align.ogcp1g, align 8, !tbaa !13 ; 3 uses
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !15
  %i.kh = load ptr, ptr @R__align.ogcp2g, align 8, !tbaa !13 ; 3 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !15
  %i.kj = fpext float %i.b to double              ; 8 uses
  %i.kk = load ptr, ptr @R__align.fgcp1g, align 8, !tbaa !13 ; 2 uses
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !15
  %i.km = load ptr, ptr @R__align.fgcp2g, align 8, !tbaa !13 ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !15
  %i.ko = insertelement <4 x float> poison, float %i.kg, i64 0
  %i.kp = insertelement <4 x float> %i.ko, float %i.ki, i64 1
  %i.kq = insertelement <4 x float> %i.kp, float %i.kl, i64 2
  %i.kr = insertelement <4 x float> %i.kq, float %i.kn, i64 3
  %i.ks = fpext <4 x float> %i.kr to <4 x double> ; 2 uses
  %i.kt = fsub <4 x double> splat (double 1.000000e+00), %i.ks
  %i.ku = shufflevector <4 x double> %i.ks, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.kv = fmul <4 x double> %i.kt, %i.ku          ; 4 uses
  %13 = extractelement <4 x double> %i.kv, i64 1
  %14 = fmul double %13, %i.kj
  %15 = tail call double @llvm.fmuladd.f64(double %14, double 5.000000e-01, double 0.000000e+00)
  %16 = fptrunc double %15 to float
  %17 = extractelement <4 x double> %i.kv, i64 0
  %18 = fmul double %17, %i.kj
  %i.kw = fpext float %16 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 5.000000e-01, double %i.kw)
  %20 = fptrunc double %19 to float
  %21 = extractelement <4 x double> %i.kv, i64 3
  %22 = fmul double %21, %i.kj
  %23 = fpext float %20 to double
  %i.kx = tail call double @llvm.fmuladd.f64(double %22, double 5.000000e-01, double %23)
  %i.ky = fptrunc double %i.kx to float
  %24 = extractelement <4 x double> %i.kv, i64 2
  %25 = fmul double %24, %i.kj
  %26 = fpext float %i.ky to double
  %i.kz = tail call double @llvm.fmuladd.f64(double %25, double 5.000000e-01, double %26)
  %i.la = fptrunc double %i.kz to float           ; 2 uses
  %i.lb = load float, ptr %i.gb, align 4, !tbaa !15
  %i.lc = fadd float %i.lb, %i.la
  store float %i.lc, ptr %i.gb, align 4, !tbaa !15
  %i.ld = load float, ptr %i.fy, align 4, !tbaa !15
  %i.le = fadd float %i.ld, %i.la
  store float %i.le, ptr %i.fy, align 4, !tbaa !15
  %.not489602 = icmp slt i32 %i.l, 1
  br i1 %.not489602, label %.preheader578, label %.lr.ph606

.lr.ph606:                                        ; preds = %bb.t
  %i.lf = load ptr, ptr @R__align.gapz2, align 8, !tbaa !13 ; 2 uses
  %i.lg = load ptr, ptr @R__align.digf1, align 8, !tbaa !13 ; 2 uses
  %i.lh = load ptr, ptr @R__align.diaf1, align 8, !tbaa !13 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lj = add nuw nsw i64 %i.k, 1
  %wide.trip.count683 = and i64 %i.lj, 4294967295
  br label %bb.u

.preheader578:                                    ; preds = %bb.u, %bb.t
  %.not490607 = icmp slt i32 %i.o, 1
  br i1 %.not490607, label %.loopexit579.thread, label %.lr.ph610

.loopexit579.thread:                              ; preds = %.preheader578
  %i.lk = load ptr, ptr @R__align.m, align 8, !tbaa !13 ; 2 uses
  store float 0.000000e+00, ptr %i.lk, align 4, !tbaa !15
  br label %._crit_edge615

.lr.ph610:                                        ; preds = %.preheader578
  %i.ll = load ptr, ptr @R__align.gapz1, align 8, !tbaa !13 ; 2 uses
  %i.lm = load ptr, ptr @R__align.digf2, align 8, !tbaa !13
  %i.ln = load ptr, ptr @R__align.diaf2, align 8, !tbaa !13
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.lp = add nuw nsw i64 %i.n, 1
  %wide.trip.count688 = and i64 %i.lp, 4294967295
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph606, %bb.u
  %indvars.iv680 = phi i64 [ 1, %.lr.ph606 ], [ %indvars.iv.next681, %bb.u ] ; 6 uses
  %.0450604 = phi float [ 0.000000e+00, %.lr.ph606 ], [ %i.nq, %bb.u ]
  %i.lq = load float, ptr %i.lf, align 4, !tbaa !15
  %i.lr = fpext float %i.lq to double             ; 2 uses
  %i.ls = fsub double 1.000000e+00, %i.lr
  %i.lt = load float, ptr %i.kf, align 4, !tbaa !15
  %i.lu = fpext float %i.lt to double
  %i.lv = fsub double 1.000000e+00, %i.lu
  %i.lw = load float, ptr %i.lg, align 4, !tbaa !15
  %i.lx = fpext float %i.lw to double
  %i.ly = fsub double 1.000000e+00, %i.lx
  %i.lz = load float, ptr %i.lh, align 4, !tbaa !15
  %i.ma = fpext float %i.lz to double
  %i.mb = fsub double %i.ly, %i.ma
  %i.mc = fmul double %i.mb, %i.lr
  %i.md = tail call double @llvm.fmuladd.f64(double %i.ls, double %i.lv, double %i.mc)
  %i.me = fmul double %i.md, 5.000000e-01
  %i.mf = fmul double %i.me, %i.kj
  %i.mg = fptrunc double %i.mf to float
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv680 ; 4 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !15
  %i.mj = fadd float %i.mi, %i.mg                 ; 2 uses
  store float %i.mj, ptr %i.mh, align 4, !tbaa !15
  %i.mk = load float, ptr %i.li, align 4, !tbaa !15
  %i.ml = fpext float %i.mk to double             ; 2 uses
  %i.mm = fsub double 1.000000e+00, %i.ml
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv680 ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !15
  %i.mp = fpext float %i.mo to double
  %i.mq = fsub double 1.000000e+00, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv680 ; 2 uses
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !15
  %i.mt = fpext float %i.ms to double
  %i.mu = fadd double %i.mq, %i.mt
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv680
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !15
  %i.mx = fpext float %i.mw to double
  %i.my = fsub double 1.000000e+00, %i.mx
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv680
  %i.na = load float, ptr %i.mz, align 4, !tbaa !15
  %i.nb = fpext float %i.na to double
  %i.nc = fsub double %i.my, %i.nb
  %i.nd = fmul double %i.nc, %i.ml
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.mm, double %i.mu, double %i.nd)
  %i.nf = fmul double %i.ne, 5.000000e-01
  %i.ng = fmul double %i.nf, %i.kj
  %i.nh = fptrunc double %i.ng to float
  %i.ni = fadd float %i.mj, %i.nh                 ; 2 uses
  store float %i.ni, ptr %i.mh, align 4, !tbaa !15
  %i.nj = load float, ptr %i.mr, align 4, !tbaa !15
  %i.nk = load float, ptr %i.mn, align 4, !tbaa !15 ; 2 uses
  %i.nl = fadd float %i.nj, %i.nk
  %i.nm = fmul float %i.nl, %i.b
  %i.nn = fpext float %i.nm to double
  %i.no = fpext float %.0450604 to double
  %i.np = tail call double @llvm.fmuladd.f64(double %i.nn, double 5.000000e-01, double %i.no)
  %i.nq = fptrunc double %i.np to float           ; 2 uses
  %i.nr = fpext float %i.nq to double
  %i.ns = fmul float %i.nk, %i.b
  %i.nt = fpext float %i.ns to double
  %i.nu = fneg double %i.nt
  %i.nv = tail call double @llvm.fmuladd.f64(double %i.nu, double 5.000000e-01, double %i.nr)
  %i.nw = fpext float %i.ni to double
  %i.nx = fadd double %i.nv, %i.nw
  %i.ny = fptrunc double %i.nx to float
  store float %i.ny, ptr %i.mh, align 4, !tbaa !15
  %indvars.iv.next681 = add nuw nsw i64 %indvars.iv680, 1 ; 2 uses
  %exitcond684.not = icmp eq i64 %indvars.iv.next681, %wide.trip.count683
  br i1 %exitcond684.not, label %.preheader578, label %bb.u, !llvm.loop !62

bb.v:                                             ; preds = %.lr.ph610, %bb.v
  %indvars.iv685 = phi i64 [ 1, %.lr.ph610 ], [ %indvars.iv.next686, %bb.v ] ; 6 uses
  %.1609 = phi float [ 0.000000e+00, %.lr.ph610 ], [ %i.pz, %bb.v ]
  %i.nz = load float, ptr %i.ll, align 4, !tbaa !15
  %i.oa = fpext float %i.nz to double             ; 2 uses
  %i.ob = fsub double 1.000000e+00, %i.oa
  %i.oc = load float, ptr %i.kh, align 4, !tbaa !15
  %i.od = fpext float %i.oc to double
  %i.oe = fsub double 1.000000e+00, %i.od
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv685 ; 2 uses
  %i.og = load float, ptr %i.of, align 4, !tbaa !15
  %i.oh = fpext float %i.og to double
  %i.oi = fsub double 1.000000e+00, %i.oh
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv685 ; 2 uses
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !15
  %i.ol = fpext float %i.ok to double
  %i.om = fsub double %i.oi, %i.ol
  %i.on = fmul double %i.om, %i.oa
  %i.oo = tail call double @llvm.fmuladd.f64(double %i.ob, double %i.oe, double %i.on)
  %i.op = fmul double %i.oo, 5.000000e-01
  %i.oq = fmul double %i.op, %i.kj
  %i.or = fptrunc double %i.oq to float
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv685 ; 4 uses
  %i.ot = load float, ptr %i.os, align 4, !tbaa !15
  %i.ou = fadd float %i.ot, %i.or                 ; 2 uses
  store float %i.ou, ptr %i.os, align 4, !tbaa !15
  %i.ov = load float, ptr %i.lo, align 4, !tbaa !15
  %i.ow = fpext float %i.ov to double             ; 2 uses
  %i.ox = fsub double 1.000000e+00, %i.ow
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv685 ; 2 uses
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !15
  %i.pa = fpext float %i.oz to double
  %i.pb = fsub double 1.000000e+00, %i.pa
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv685 ; 2 uses
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !15
  %i.pe = fpext float %i.pd to double
  %i.pf = fadd double %i.pb, %i.pe
  %i.pg = load float, ptr %i.of, align 4, !tbaa !15
  %i.ph = fpext float %i.pg to double
  %i.pi = fsub double 1.000000e+00, %i.ph
  %i.pj = load float, ptr %i.oj, align 4, !tbaa !15
  %i.pk = fpext float %i.pj to double
  %i.pl = fsub double %i.pi, %i.pk
  %i.pm = fmul double %i.pl, %i.ow
  %i.pn = tail call double @llvm.fmuladd.f64(double %i.ox, double %i.pf, double %i.pm)
  %i.po = fmul double %i.pn, 5.000000e-01
  %i.pp = fmul double %i.po, %i.kj
  %i.pq = fptrunc double %i.pp to float
  %i.pr = fadd float %i.ou, %i.pq                 ; 2 uses
  store float %i.pr, ptr %i.os, align 4, !tbaa !15
  %i.ps = load float, ptr %i.pc, align 4, !tbaa !15
  %i.pt = load float, ptr %i.oy, align 4, !tbaa !15 ; 2 uses
  %i.pu = fadd float %i.ps, %i.pt
  %i.pv = fmul float %i.pu, %i.b
  %i.pw = fpext float %i.pv to double
  %i.px = fpext float %.1609 to double
  %i.py = tail call double @llvm.fmuladd.f64(double %i.pw, double 5.000000e-01, double %i.px)
  %i.pz = fptrunc double %i.py to float           ; 2 uses
  %i.qa = fpext float %i.pz to double
  %i.qb = fmul float %i.pt, %i.b
  %i.qc = fpext float %i.qb to double
  %i.qd = fneg double %i.qc
  %i.qe = tail call double @llvm.fmuladd.f64(double %i.qd, double 5.000000e-01, double %i.qa)
  %i.qf = fpext float %i.pr to double
  %i.qg = fadd double %i.qe, %i.qf
  %i.qh = fptrunc double %i.qg to float
  store float %i.qh, ptr %i.os, align 4, !tbaa !15
  %indvars.iv.next686 = add nuw nsw i64 %indvars.iv685, 1 ; 2 uses
  %exitcond689.not = icmp eq i64 %indvars.iv.next686, %wide.trip.count688
  br i1 %exitcond689.not, label %.loopexit579.thread792, label %bb.v, !llvm.loop !63

.loopexit579.thread792:                           ; preds = %bb.v
  %i.qi = load ptr, ptr @R__align.m, align 8, !tbaa !13 ; 2 uses
  store float 0.000000e+00, ptr %i.qi, align 4, !tbaa !15
  br label %.lr.ph614

.preheader580:                                    ; preds = %scalar.ph826, %middle.block834, %imp_match_out_veadR.exit.thread, %.preheader582
  %.not488599 = icmp slt i32 %i.l, 1
  br i1 %.not488599, label %.loopexit579, label %.lr.ph601

.lr.ph601:                                        ; preds = %.preheader580
  %i.qj = load i32, ptr @offset, align 4, !tbaa !7 ; 2 uses
  %i.qk = add nuw nsw i64 %i.k, 1
  %wide.trip.count678 = and i64 %i.qk, 4294967295 ; 2 uses
  %i.ql = add nsw i64 %wide.trip.count678, -1     ; 3 uses
  %min.iters.check838 = icmp ult i64 %i.ql, 4
  br i1 %min.iters.check838, label %scalar.ph837.preheader, label %vector.ph839

vector.ph839:                                     ; preds = %.lr.ph601
  %n.vec840 = and i64 %i.ql, -4                   ; 3 uses
  %i.qm = or disjoint i64 %n.vec840, 1
  %broadcast.splatinsert841 = insertelement <4 x i32> poison, i32 %i.qj, i64 0
end_hunk_0
