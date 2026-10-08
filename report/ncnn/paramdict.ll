Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/paramdict?download=true
inline.NumInlined: 305
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4ncnn9ParamDict10load_paramERKNS_10DataReaderE:bb.a
  br i1 %.not113, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite123 = call i64 @fwrite(ptr nonnull @.str.4, i64 34, i64 1, ptr %i.br) #29 ; 0 uses
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc125 = call i32 @fputc(i32 10, ptr %i.bs)  ; 0 uses
  br label %.loopexit.jt1

bb.l:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.bu = load i32, ptr %i.e, align 4, !tbaa !42
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [112 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.f, align 4, !tbaa !42
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.bx, i32 noundef %i.by, i64 noundef 4, ptr noundef null)
  %i.bz = load i32, ptr %i.f, align 4, !tbaa !42
  %.not122397 = icmp sgt i32 %i.bz, 0
  br i1 %.not122397, label %.lr.ph, label %.loopexit.jt2

.lr.ph:                                           ; preds = %bb.l, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.ca = load ptr, ptr %1, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.g)
  %.not114 = icmp eq i32 %i.cd, 1
  br i1 %.not114, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite119 = call i64 @fwrite(ptr nonnull @.str.6, i64 35, i64 1, ptr %i.ce) #29 ; 0 uses
  br label %.critedge129

bb.n:                                             ; preds = %.lr.ph
  %i.cf = call fastcc noundef zeroext i1 @_ZN4ncnnL13vstr_is_floatEPKc(ptr noundef %i.g)
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !19  ; 2 uses
  %i.ch = load i32, ptr %i.e, align 4, !tbaa !42
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [112 x i8], ptr %i.cg, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !32 ; 2 uses
  br i1 %i.cf, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cm = load i8, ptr %i.g, align 16, !tbaa !29  ; 3 uses
  switch i8 %i.cm, label %bb.q [
    i8 43, label %bb.p
    i8 45, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %.pre.i = load i8, ptr %i.bd, align 1, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cn = phi i8 [ %.pre.i, %bb.p ], [ %i.cm, %bb.o ] ; 2 uses
  %.049.i = phi ptr [ %i.bd, %bb.p ], [ %i.g, %bb.o ] ; 2 uses
  %i.co = sext i8 %i.cn to i32
  %isdigittmp65.i = add nsw i32 %i.co, -48        ; 2 uses
  %isdigit66.i = icmp ult i32 %isdigittmp65.i, 10
  br i1 %isdigit66.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %isdigittmp69.i = phi i32 [ %isdigittmp.i, %.lr.ph.i ], [ %isdigittmp65.i, %bb.q ]
  %.04868.i = phi i32 [ %i.cq, %.lr.ph.i ], [ 0, %bb.q ]
  %.15067.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %.049.i, %bb.q ]
  %i.cp = mul i32 %.04868.i, 10
  %i.cq = add i32 %i.cp, %isdigittmp69.i          ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.15067.i, i64 1 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29  ; 2 uses
  %i.ct = sext i8 %i.cs to i32
  %isdigittmp.i = add nsw i32 %i.ct, -48          ; 2 uses
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !2

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.cu = uitofp fast i32 %i.cq to double
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.q
  %.150.lcssa.i = phi ptr [ %.049.i, %bb.q ], [ %i.cr, %._crit_edge.loopexit.i ] ; 2 uses
  %.048.lcssa.i = phi double [ 0.000000e+00, %bb.q ], [ %i.cu, %._crit_edge.loopexit.i ] ; 3 uses
  %.lcssa.i = phi i8 [ %i.cn, %bb.q ], [ %i.cs, %._crit_edge.loopexit.i ] ; 2 uses
  %i.cv = icmp eq i8 %.lcssa.i, 46
  br i1 %i.cv, label %.preheader64.i, label %._crit_edge80.i

.preheader64.i:                                   ; preds = %._crit_edge.i
  %.25172.i = getelementptr inbounds nuw i8, ptr %.150.lcssa.i, i64 1 ; 3 uses
  %i.cw = load i8, ptr %.25172.i, align 1, !tbaa !29 ; 2 uses
  %i.cx = sext i8 %i.cw to i32
  %isdigittmp5773.i = add nsw i32 %i.cx, -48      ; 2 uses
  %isdigit5874.i = icmp ult i32 %isdigittmp5773.i, 10
  br i1 %isdigit5874.i, label %.lr.ph79.i, label %._crit_edge80.i

.lr.ph79.i:                                       ; preds = %.preheader64.i, %.lr.ph79.i
  %isdigittmp5778.i = phi i32 [ %isdigittmp57.i, %.lr.ph79.i ], [ %isdigittmp5773.i, %.preheader64.i ]
  %.25177.i = phi ptr [ %.251.i, %.lr.ph79.i ], [ %.25172.i, %.preheader64.i ]
  %.04676.i = phi i32 [ %i.cz, %.lr.ph79.i ], [ 0, %.preheader64.i ]
  %.04775.i = phi i32 [ %i.da, %.lr.ph79.i ], [ 1, %.preheader64.i ]
  %i.cy = mul i32 %.04676.i, 10
  %i.cz = add i32 %i.cy, %isdigittmp5778.i        ; 2 uses
  %i.da = mul i32 %.04775.i, 10                   ; 2 uses
  %.251.i = getelementptr inbounds nuw i8, ptr %.25177.i, i64 1 ; 3 uses
  %i.db = load i8, ptr %.251.i, align 1, !tbaa !29 ; 2 uses
  %i.dc = sext i8 %i.db to i32
  %isdigittmp57.i = add nsw i32 %i.dc, -48        ; 2 uses
  %isdigit58.i = icmp ult i32 %isdigittmp57.i, 10
  br i1 %isdigit58.i, label %.lr.ph79.i, label %._crit_edge80.loopexit.i, !llvm.loop !3

._crit_edge80.loopexit.i:                         ; preds = %.lr.ph79.i
  %i.dd = uitofp fast i32 %i.cz to double
  %i.de = uitofp fast i32 %i.da to double
  %i.df = fdiv fast double %i.dd, %i.de
  %i.dg = fadd fast double %i.df, %.048.lcssa.i
  br label %._crit_edge80.i

._crit_edge80.i:                                  ; preds = %._crit_edge80.loopexit.i, %.preheader64.i, %._crit_edge.i
  %i.dh = phi i8 [ %.lcssa.i, %._crit_edge.i ], [ %i.cw, %.preheader64.i ], [ %i.db, %._crit_edge80.loopexit.i ]
  %.052.i = phi nsz double [ %.048.lcssa.i, %._crit_edge.i ], [ %.048.lcssa.i, %.preheader64.i ], [ %i.dg, %._crit_edge80.loopexit.i ] ; 3 uses
  %.3.i = phi ptr [ %.150.lcssa.i, %._crit_edge.i ], [ %.25172.i, %.preheader64.i ], [ %.251.i, %._crit_edge80.loopexit.i ] ; 2 uses
  switch i8 %i.dh, label %_ZN4ncnnL13vstr_to_floatEPKc.exit [
    i8 101, label %bb.r
    i8 69, label %bb.r
  ]

bb.r:                                             ; preds = %._crit_edge80.i, %._crit_edge80.i
  %i.di = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !29  ; 3 uses
  %.not59.i = icmp eq i8 %i.dj, 45
  switch i8 %i.dj, label %bb.t [
    i8 43, label %bb.s
    i8 45, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 2 uses
  %.pre113.i = load i8, ptr %i.dk, align 1, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dl = phi i8 [ %.pre113.i, %bb.s ], [ %i.dj, %bb.r ]
  %.4.i = phi ptr [ %i.dk, %bb.s ], [ %i.di, %bb.r ]
  %i.dm = sext i8 %i.dl to i32
  %isdigittmp6084.i = add nsw i32 %i.dm, -48      ; 2 uses
  %isdigit6185.i = icmp ult i32 %isdigittmp6084.i, 10
  br i1 %isdigit6185.i, label %.lr.ph90.i, label %._crit_edge101.i

.preheader63.i:                                   ; preds = %.lr.ph90.i
  %i.dn = icmp ugt i32 %i.dx, 7
  br i1 %i.dn, label %.lr.ph94.i.preheader, label %.preheader.i

.lr.ph94.i.preheader:                             ; preds = %.preheader63.i
  %i.do = add i32 %isdigittmp6088.i, %i.dw
  %i.dp = add i32 %i.do, -8                       ; 2 uses
  %i.dq = lshr i32 %i.dp, 3
  %i.dr = add nuw nsw i32 %i.dq, 1                ; 2 uses
  %min.iters.check625 = icmp ult i32 %i.dp, 24
  br i1 %min.iters.check625, label %.lr.ph94.i.preheader640, label %vector.ph626

vector.ph626:                                     ; preds = %.lr.ph94.i.preheader
  %n.vec627 = and i32 %i.dr, 1073741820           ; 3 uses
  %i.ds = shl i32 %n.vec627, 3
  %i.dt = sub i32 %i.dx, %i.ds                    ; 2 uses
  br label %vector.body628

vector.body628:                                   ; preds = %vector.body628, %vector.ph626
  %index629 = phi i32 [ 0, %vector.ph626 ], [ %index.next632, %vector.body628 ]
  %reduced.phi = phi <2 x double> [ splat (double 1.000000e+00), %vector.ph626 ], [ %bin.rdx634, %vector.body628 ]
  %bin.rdx634 = fmul fast <2 x double> %reduced.phi, splat (double 1.000000e+16) ; 2 uses
  %index.next632 = add nuw i32 %index629, 4       ; 2 uses
  %i.du = icmp eq i32 %index.next632, %n.vec627
  br i1 %i.du, label %middle.block633, label %vector.body628, !llvm.loop !53

middle.block633:                                  ; preds = %vector.body628
  %i.dv = call fast double @llvm.vector.reduce.fmul.v2f64(double 1.000000e+00, <2 x double> %bin.rdx634) ; 2 uses
  %cmp.n635 = icmp eq i32 %i.dr, %n.vec627
  br i1 %cmp.n635, label %.preheader.i, label %.lr.ph94.i.preheader640

.lr.ph94.i.preheader640:                          ; preds = %.lr.ph94.i.preheader, %middle.block633
  %.093.i.ph = phi double [ 1.000000e+00, %.lr.ph94.i.preheader ], [ %i.dv, %middle.block633 ]
  %.14592.i.ph = phi i32 [ %i.dx, %.lr.ph94.i.preheader ], [ %i.dt, %middle.block633 ]
  br label %.lr.ph94.i

.lr.ph90.i:                                       ; preds = %bb.t, %.lr.ph90.i
  %isdigittmp6088.i = phi i32 [ %isdigittmp60.i, %.lr.ph90.i ], [ %isdigittmp6084.i, %bb.t ] ; 2 uses
  %.04487.i = phi i32 [ %i.dx, %.lr.ph90.i ], [ 0, %bb.t ]
  %.586.i = phi ptr [ %i.dy, %.lr.ph90.i ], [ %.4.i, %bb.t ]
  %i.dw = mul i32 %.04487.i, 10                   ; 2 uses
  %i.dx = add i32 %i.dw, %isdigittmp6088.i        ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.586.i, i64 1 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !29
  %i.ea = sext i8 %i.dz to i32
  %isdigittmp60.i = add nsw i32 %i.ea, -48        ; 2 uses
  %isdigit61.i = icmp ult i32 %isdigittmp60.i, 10
  br i1 %isdigit61.i, label %.lr.ph90.i, label %.preheader63.i, !llvm.loop !4

.preheader.i:                                     ; preds = %.lr.ph94.i, %middle.block633, %.preheader63.i
  %.145.lcssa.i = phi i32 [ %i.dx, %.preheader63.i ], [ %i.dt, %middle.block633 ], [ %i.ee, %.lr.ph94.i ] ; 5 uses
  %.0.lcssa.i = phi double [ 1.000000e+00, %.preheader63.i ], [ %i.dv, %middle.block633 ], [ %i.ed, %.lr.ph94.i ] ; 3 uses
  %.not6297.i = icmp eq i32 %.145.lcssa.i, 0
  br i1 %.not6297.i, label %._crit_edge101.i, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.eb = and i32 %.145.lcssa.i, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %i.eb, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %.199.i.prol = phi double [ %8, %vector.body ], [ %.0.lcssa.i, %vector.ph ]
  %.298.i.prol = phi i32 [ %9, %vector.body ], [ %.145.lcssa.i, %vector.ph ]
  %prol.iter = phi i32 [ %index.next, %vector.body ], [ 0, %vector.ph ]
  %8 = fmul fast double %.199.i.prol, 1.000000e+01 ; 3 uses
  %9 = add nsw i32 %.298.i.prol, -1               ; 2 uses
  %index.next = add i32 %prol.iter, 1             ; 2 uses
  %i.ec = icmp eq i32 %index.next, %i.eb
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body, %vector.ph
  %.lcssa675.unr = phi double [ poison, %vector.ph ], [ %8, %vector.body ]
  %.199.i.unr = phi double [ %.0.lcssa.i, %vector.ph ], [ %8, %vector.body ]
  %.298.i.unr = phi i32 [ %.145.lcssa.i, %vector.ph ], [ %9, %vector.body ]
  %10 = icmp ult i32 %.145.lcssa.i, 8
  br i1 %10, label %._crit_edge101.i, label %.lr.ph100.i

.lr.ph94.i:                                       ; preds = %.lr.ph94.i.preheader640, %.lr.ph94.i
  %.093.i = phi double [ %i.ed, %.lr.ph94.i ], [ %.093.i.ph, %.lr.ph94.i.preheader640 ]
  %.14592.i = phi i32 [ %i.ee, %.lr.ph94.i ], [ %.14592.i.ph, %.lr.ph94.i.preheader640 ]
  %i.ed = fmul fast double %.093.i, 1.000000e+08  ; 2 uses
  %i.ee = add i32 %.14592.i, -8                   ; 3 uses
  %i.ef = icmp ugt i32 %i.ee, 7
  br i1 %i.ef, label %.lr.ph94.i, label %.preheader.i, !llvm.loop !55

.lr.ph100.i:                                      ; preds = %middle.block, %.lr.ph100.i
  %.199.i = phi double [ %i.eg, %.lr.ph100.i ], [ %.199.i.unr, %middle.block ]
  %.298.i = phi i32 [ %i.eh, %.lr.ph100.i ], [ %.298.i.unr, %middle.block ]
  %i.eg = fmul fast double %.199.i, 1.000000e+08  ; 2 uses
  %i.eh = add nsw i32 %.298.i, -8                 ; 2 uses
  %.not62.i = icmp eq i32 %i.eh, 0
  br i1 %.not62.i, label %._crit_edge101.i, label %.lr.ph100.i, !llvm.loop !56

._crit_edge101.i:                                 ; preds = %middle.block, %.lr.ph100.i, %.preheader.i, %bb.t
  %.1.lcssa.i = phi double [ %.0.lcssa.i, %.preheader.i ], [ 1.000000e+00, %bb.t ], [ %.lcssa675.unr, %middle.block ], [ %i.eg, %.lr.ph100.i ] ; 2 uses
  %i.ei = fmul fast double %.1.lcssa.i, %.052.i
  %i.ej = fdiv fast double %.052.i, %.1.lcssa.i
  %i.ek = select fast i1 %.not59.i, double %i.ej, double %i.ei
  br label %_ZN4ncnnL13vstr_to_floatEPKc.exit

_ZN4ncnnL13vstr_to_floatEPKc.exit:                ; preds = %._crit_edge80.i, %._crit_edge101.i
  %.153.i = phi nsz double [ %i.ek, %._crit_edge101.i ], [ %.052.i, %._crit_edge80.i ]
  %.not.i = icmp eq i8 %i.cm, 45
  %i.el = fptrunc fast double %.153.i to float    ; 2 uses
  %i.em = fneg fast float %i.el
  %i.en = select fast i1 %.not.i, float %i.em, float %i.el
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  store float %i.en, ptr %i.eo, align 4, !tbaa !66
  br label %.critedge

bb.u:                                             ; preds = %bb.n
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  %i.eq = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.3, ptr noundef %i.ep) #24
  %.not115 = icmp eq i32 %i.eq, 1
  br i1 %.not115, label %..critedge_crit_edge, label %bb.v

..critedge_crit_edge:                             ; preds = %bb.u
  %.pre444 = load ptr, ptr %i.m, align 8, !tbaa !19
  %.pre445 = load i32, ptr %i.e, align 4, !tbaa !42
  %.pre446 = sext i32 %.pre445 to i64
  br label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite116 = call i64 @fwrite(ptr nonnull @.str.7, i64 36, i64 1, ptr %i.er) #29 ; 0 uses
  br label %.critedge129

.critedge:                                        ; preds = %..critedge_crit_edge, %_ZN4ncnnL13vstr_to_floatEPKc.exit
  %.pre-phi = phi i64 [ %.pre446, %..critedge_crit_edge ], [ %i.ci, %_ZN4ncnnL13vstr_to_floatEPKc.exit ]
  %i.es = phi ptr [ %.pre444, %..critedge_crit_edge ], [ %i.cg, %_ZN4ncnnL13vstr_to_floatEPKc.exit ]
  %i.et = phi i32 [ 5, %..critedge_crit_edge ], [ 6, %_ZN4ncnnL13vstr_to_floatEPKc.exit ]
  %i.eu = getelementptr inbounds [112 x i8], ptr %i.es, i64 %.pre-phi
  store i32 %i.et, ptr %i.eu, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ev = load i32, ptr %i.f, align 4, !tbaa !42
  %i.ew = sext i32 %i.ev to i64
  %.not122 = icmp slt i64 %indvars.iv.next, %i.ew
  br i1 %.not122, label %.lr.ph, label %.loopexit.jt2, !llvm.loop !57

.critedge129:                                     ; preds = %bb.v, %bb.m
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc118 = call i32 @fputc(i32 10, ptr %i.ex)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %.loopexit.jt1

.loopexit.jt2:                                    ; preds = %.critedge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.backedge

.loopexit.jt1:                                    ; preds = %.critedge129, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.loopexit333

.thread284:                                       ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.ey = load ptr, ptr %1, align 8, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call noundef i32 %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.h)
  %.not = icmp eq i32 %i.fb, 1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread284
  %i.fc = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite110 = call i64 @fwrite(ptr nonnull @.str.9, i64 27, i64 1, ptr %i.fc) #29 ; 0 uses
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc112 = call i32 @fputc(i32 10, ptr %i.fd)  ; 0 uses
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1

bb.x:                                             ; preds = %.thread284
  %.val = load i8, ptr %i.h, align 16, !tbaa !29  ; 2 uses
  %i.fe = sext i8 %.val to i32
  %i.ff = call i32 @isalpha(i32 noundef %i.fe) #30
  %.not.i132 = icmp ne i32 %i.ff, 0
  %i.fg = icmp eq i8 %.val, 34                    ; 2 uses
  %spec.select.i = or i1 %i.fg, %.not.i132
  br i1 %spec.select.i, label %bb.y, label %bb.cg

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i8 0, ptr %i.ap, align 1, !tbaa !29
  br i1 %i.fg, label %.preheader.preheader, label %bb.z

.preheader.preheader:                             ; preds = %bb.y
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.h)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 %strlen
  %i.fi = getelementptr i8, ptr %i.fh, i64 -1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !29
  %.not100 = icmp eq i8 %i.fj, 34
  br i1 %.not100, label %.thread285.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader.preheader
  %.str.10.sink = phi ptr [ @.str.10, %.preheader.preheader ], [ @.str.11, %bb.y ]
  %i.fk = load ptr, ptr %1, align 8, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call noundef i32 %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.10.sink, ptr noundef nonnull %i.j)
  %i.fo = icmp eq i32 %i.fn, 1
  br i1 %i.fo, label %bb.aa, label %.thread285

bb.aa:                                            ; preds = %bb.z
  %i.fp = load i8, ptr %i.ap, align 1, !tbaa !29
  %.not101 = icmp eq i8 %i.fp, 0
  br i1 %.not101, label %bb.ab, label %bb.ce

bb.ab:                                            ; preds = %bb.aa
  %i.fq = load i8, ptr %i.h, align 16, !tbaa !29
  %i.fr = icmp eq i8 %i.fq, 34
  br i1 %i.fr, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.av, ptr %3, align 8, !tbaa !38
  %i.fs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 %i.fs, ptr %i.d, align 8, !tbaa !44
  %i.ft = icmp ugt i64 %i.fs, 15
  br i1 %i.ft, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ac
  %i.fu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.ap    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.fu, ptr %3, align 8, !tbaa !36
  %i.fv = load i64, ptr %i.d, align 8, !tbaa !44
  store i64 %i.fv, ptr %i.av, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.ac
  %i.fw = phi ptr [ %i.fu, %.noexc ], [ %i.av, %bb.ac ] ; 2 uses
  switch i64 %i.fs, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.fx = load i8, ptr %i.au, align 1, !tbaa !29
  store i8 %i.fx, ptr %i.fw, align 1, !tbaa !29
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr nonnull align 1 %i.au, i64 %i.fs, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i
  %i.fy = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  store i64 %i.fy, ptr %i.aw, align 8, !tbaa !35
  %i.fz = load ptr, ptr %3, align 8, !tbaa !36
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fy
  store i8 0, ptr %i.ga, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.gb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #24, !noalias !67 ; 2 uses
  %i.gc = load i64, ptr %i.aw, align 8, !tbaa !35, !noalias !67
  %i.gd = sub i64 4611686018427387903, %i.gc
  %i.ge = icmp ult i64 %i.gd, %i.gb
  br i1 %i.ge, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
          to label %.noexc134 unwind label %.loopexit.split-lp340

.noexc134:                                        ; preds = %bb.ag
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.af
  %i.gf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.j, i64 noundef %i.gb)
          to label %.noexc135 unwind label %.loopexit339 ; 6 uses

.noexc135:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ax, ptr %2, align 8, !tbaa !38, !alias.scope !67
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !36 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 5 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ah:                                            ; preds = %.noexc135
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !35 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 16
  call void @llvm.assume(i1 %i.gl)
  %i.gm = add nuw nsw i64 %i.gk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.gh, i64 %i.gm, i1 false)
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc135
  store ptr %i.gg, ptr %2, align 8, !tbaa !36, !alias.scope !67
  %i.gn = load i64, ptr %i.gh, align 8, !tbaa !29
  store i64 %i.gn, ptr %i.ax, align 8, !tbaa !29, !alias.scope !67
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.pre.i133 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ah
  %i.go = phi i64 [ %i.gk, %bb.ah ], [ %.pre.i133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 %i.go, ptr %i.ay, align 8, !tbaa !35, !alias.scope !67
  store ptr %i.gh, ptr %i.gf, align 8, !tbaa !36
  store i64 0, ptr %i.gp, align 8, !tbaa !35
  store i8 0, ptr %i.gh, align 8, !tbaa !29
  %i.gq = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.gr = load i32, ptr %i.e, align 4, !tbaa !42
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [112 x i8], ptr %i.gq, i64 %i.gs ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 80 ; 5 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !36 ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 96 ; 4 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  %i.gy = load ptr, ptr %2, align 8, !tbaa !36    ; 6 uses
  %i.gz = icmp eq ptr %i.gy, %i.ax                ; 2 uses
  br i1 %i.gx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ai
  br i1 %i.gz, label %bb.aj, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ai
  br i1 %i.gz, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ha = load i64, ptr %i.ay, align 8, !tbaa !35 ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 16
  call void @llvm.assume(i1 %i.hb)
  %.not21.i = icmp eq ptr %2, %i.gu
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ak, !prof !68

bb.ak:                                            ; preds = %bb.aj
  switch i64 %i.ha, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.hc = load i8, ptr %i.gy, align 1, !tbaa !29
  store i8 %i.hc, ptr %i.gv, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gy, i64 %i.ha, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.hd = load i64, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !35
  %i.hf = load ptr, ptr %i.gu, align 8, !tbaa !36
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hd
  store i8 0, ptr %i.hg, align 1, !tbaa !29
  %.pre.i137 = load ptr, ptr %2, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  store ptr %i.gy, ptr %i.gu, align 8, !tbaa !36
  %i.hi = load i64, ptr %i.ay, align 8, !tbaa !35
  store i64 %i.hi, ptr %i.hh, align 8, !tbaa !35
  %i.hj = load i64, ptr %i.ax, align 8, !tbaa !29
  store i64 %i.hj, ptr %i.gw, align 8, !tbaa !29
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hk = load i64, ptr %i.gw, align 8, !tbaa !29
  store ptr %i.gy, ptr %i.gu, align 8, !tbaa !36
  %i.hl = load i64, ptr %i.ay, align 8, !tbaa !35
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !35
  %i.hn = load i64, ptr %i.ax, align 8, !tbaa !29
  store i64 %i.hn, ptr %i.gw, align 8, !tbaa !29
  %.not.i136 = icmp eq ptr %i.gv, null
  br i1 %.not.i136, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.gv, ptr %2, align 8, !tbaa !36
  store i64 %i.hk, ptr %i.ax, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ax, ptr %2, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.an, %bb.ao
  %i.ho = phi ptr [ %.pre.i137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.gv, %bb.an ], [ %i.ax, %bb.ao ], [ %i.gy, %bb.aj ]
  store i64 0, ptr %i.ay, align 8, !tbaa !35
  store i8 0, ptr %i.ho, align 1, !tbaa !29
  %i.hp = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.ax
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hr = load i64, ptr %i.ax, align 8, !tbaa !29
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.ht = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.av
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hv = load i64, ptr %i.av, align 8, !tbaa !29
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.cb

bb.ap:                                            ; preds = %.noexc.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

.loopexit339:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit341 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp340:                            ; preds = %bb.ag
  %lpad.loopexit.split-lp342 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp340, %.loopexit339
  %lpad.phi343 = phi { ptr, i32 } [ %lpad.loopexit341, %.loopexit339 ], [ %lpad.loopexit.split-lp342, %.loopexit.split-lp340 ] ; 2 uses
  %i.hy = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.av
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.aq
  %i.ia = load i64, ptr %i.av, align 8, !tbaa !29
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ap
  %.pn104 = phi { ptr, i32 } [ %i.hx, %bb.ap ], [ %lpad.phi343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %lpad.phi343, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.cf

bb.ar:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.aq, ptr %5, align 8, !tbaa !38
  %i.ic = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.ic, ptr %i.c, align 8, !tbaa !44
  %i.id = icmp ugt i64 %i.ic, 15
  br i1 %i.id, label %.noexc.i146, label %._crit_edge.i.i145

.noexc.i146:                                      ; preds = %bb.ar
  %i.ie = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc147 unwind label %bb.be ; 2 uses

.noexc147:                                        ; preds = %.noexc.i146
  store ptr %i.ie, ptr %5, align 8, !tbaa !36
  %i.if = load i64, ptr %i.c, align 8, !tbaa !44
  store i64 %i.if, ptr %i.aq, align 8, !tbaa !29
  br label %._crit_edge.i.i145

._crit_edge.i.i145:                               ; preds = %.noexc147, %bb.ar
  %i.ig = phi ptr [ %i.ie, %.noexc147 ], [ %i.aq, %bb.ar ] ; 2 uses
  switch i64 %i.ic, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i145
  %i.ih = load i8, ptr %i.h, align 16, !tbaa !29
  store i8 %i.ih, ptr %i.ig, align 1, !tbaa !29
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i145
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ig, ptr nonnull align 16 %i.h, i64 %i.ic, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i145
  %i.ii = load i64, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  store i64 %i.ii, ptr %i.ar, align 8, !tbaa !35
  %i.ij = load ptr, ptr %5, align 8, !tbaa !36
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ii
  store i8 0, ptr %i.ik, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.il = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #24, !noalias !69 ; 2 uses
  %i.im = load i64, ptr %i.ar, align 8, !tbaa !35, !noalias !69
  %i.in = sub i64 4611686018427387903, %i.im
  %i.io = icmp ult i64 %i.in, %i.il
  br i1 %i.io, label %bb.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i149

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
          to label %.noexc153 unwind label %.loopexit.split-lp335

.noexc153:                                        ; preds = %bb.av
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i149: ; preds = %bb.au
  %i.ip = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.j, i64 noundef %i.il)
          to label %.noexc154 unwind label %.loopexit334 ; 6 uses

.noexc154:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i149
  store ptr %i.as, ptr %4, align 8, !tbaa !38, !alias.scope !69
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !36 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 5 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

bb.aw:                                            ; preds = %.noexc154
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !35 ; 3 uses
  %i.iv = icmp ult i64 %i.iu, 16
  call void @llvm.assume(i1 %i.iv)
  %i.iw = add nuw nsw i64 %i.iu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.ir, i64 %i.iw, i1 false)
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %.noexc154
  store ptr %i.iq, ptr %4, align 8, !tbaa !36, !alias.scope !69
  %i.ix = load i64, ptr %i.ir, align 8, !tbaa !29
  store i64 %i.ix, ptr %i.as, align 8, !tbaa !29, !alias.scope !69
  %.phi.trans.insert.i151 = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %.pre.i152 = load i64, ptr %.phi.trans.insert.i151, align 8, !tbaa !35
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.aw
  %i.iy = phi i64 [ %i.iu, %bb.aw ], [ %.pre.i152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ]
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i64 %i.iy, ptr %i.at, align 8, !tbaa !35, !alias.scope !69
  store ptr %i.ir, ptr %i.ip, align 8, !tbaa !36
  store i64 0, ptr %i.iz, align 8, !tbaa !35
  store i8 0, ptr %i.ir, align 8, !tbaa !29
  %i.ja = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.jb = load i32, ptr %i.e, align 4, !tbaa !42
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [112 x i8], ptr %i.ja, i64 %i.jc ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 80 ; 5 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !36 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 96 ; 4 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  %i.ji = load ptr, ptr %4, align 8, !tbaa !36    ; 6 uses
  %i.jj = icmp eq ptr %i.ji, %i.as                ; 2 uses
  br i1 %i.jh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i162: ; preds = %bb.ax
  br i1 %i.jj, label %bb.ay, label %.thread.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i156: ; preds = %bb.ax
  br i1 %i.jj, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i157

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i162
  %i.jk = load i64, ptr %i.at, align 8, !tbaa !35 ; 3 uses
  %i.jl = icmp ult i64 %i.jk, 16
  call void @llvm.assume(i1 %i.jl)
  %.not21.i159 = icmp eq ptr %4, %i.je
  br i1 %.not21.i159, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit164, label %bb.az, !prof !68

bb.az:                                            ; preds = %bb.ay
  switch i64 %i.jk, label %bb.bb [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160
    i64 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.jm = load i8, ptr %i.ji, align 1, !tbaa !29
  store i8 %i.jm, ptr %i.jf, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jf, ptr align 1 %i.ji, i64 %i.jk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.jn = load i64, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jd, i64 88
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !35
  %i.jp = load ptr, ptr %i.je, align 8, !tbaa !36
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jn
  store i8 0, ptr %i.jq, align 1, !tbaa !29
  %.pre.i161 = load ptr, ptr %4, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit164

.thread.i163:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i162
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jd, i64 88
  store ptr %i.ji, ptr %i.je, align 8, !tbaa !36
  %i.js = load i64, ptr %i.at, align 8, !tbaa !35
  store i64 %i.js, ptr %i.jr, align 8, !tbaa !35
  %i.jt = load i64, ptr %i.as, align 8, !tbaa !29
  store i64 %i.jt, ptr %i.jg, align 8, !tbaa !29
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i157: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i156
  %i.ju = load i64, ptr %i.jg, align 8, !tbaa !29
  store ptr %i.ji, ptr %i.je, align 8, !tbaa !36
  %i.jv = load i64, ptr %i.at, align 8, !tbaa !35
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jd, i64 88
  store i64 %i.jv, ptr %i.jw, align 8, !tbaa !35
  %i.jx = load i64, ptr %i.as, align 8, !tbaa !29
  store i64 %i.jx, ptr %i.jg, align 8, !tbaa !29
  %.not.i158 = icmp eq ptr %i.jf, null
  br i1 %.not.i158, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i157
  store ptr %i.jf, ptr %4, align 8, !tbaa !36
  store i64 %i.ju, ptr %i.as, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit164

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i157, %.thread.i163
  store ptr %i.as, ptr %4, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit164: ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160, %bb.bc, %bb.bd
  %i.jy = phi ptr [ %.pre.i161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160 ], [ %i.jf, %bb.bc ], [ %i.as, %bb.bd ], [ %i.ji, %bb.ay ]
  store i64 0, ptr %i.at, align 8, !tbaa !35
  store i8 0, ptr %i.jy, align 1, !tbaa !29
  %i.jz = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.as
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit164
  %i.kb = load i64, ptr %i.as, align 8, !tbaa !29
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  %i.kd = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.aq
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.kf = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.cb

bb.be:                                            ; preds = %.noexc.i146
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

.loopexit334:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i149
  %lpad.loopexit336 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp335:                            ; preds = %bb.av
  %lpad.loopexit.split-lp337 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp335, %.loopexit334
  %lpad.phi338 = phi { ptr, i32 } [ %lpad.loopexit336, %.loopexit334 ], [ %lpad.loopexit.split-lp337, %.loopexit.split-lp335 ] ; 2 uses
  %i.ki = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.aq
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.bf
  %i.kk = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %bb.be
  %.pn102 = phi { ptr, i32 } [ %i.kh, %bb.be ], [ %lpad.phi338, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %lpad.phi338, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.cf

.thread285:                                       ; preds = %bb.z
  %.pre = load i8, ptr %i.h, align 16, !tbaa !29
  %i.km = icmp eq i8 %.pre, 34
  br i1 %i.km, label %.thread285.thread, label %bb.bq

.thread285.thread:                                ; preds = %.preheader.preheader, %.thread285
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.bb, ptr %6, align 8, !tbaa !38
  %i.kn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.kn, ptr %i.b, align 8, !tbaa !44
  %i.ko = icmp ugt i64 %i.kn, 15
  br i1 %i.ko, label %.noexc.i175, label %._crit_edge.i.i174

.noexc.i175:                                      ; preds = %.thread285.thread
  %i.kp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc176 unwind label %bb.bp ; 2 uses

.noexc176:                                        ; preds = %.noexc.i175
  store ptr %i.kp, ptr %6, align 8, !tbaa !36
  %i.kq = load i64, ptr %i.b, align 8, !tbaa !44
  store i64 %i.kq, ptr %i.bb, align 8, !tbaa !29
  br label %._crit_edge.i.i174

._crit_edge.i.i174:                               ; preds = %.noexc176, %.thread285.thread
  %i.kr = phi ptr [ %i.kp, %.noexc176 ], [ %i.bb, %.thread285.thread ] ; 2 uses
  switch i64 %i.kn, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %bb.bi
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i174
  %i.ks = load i8, ptr %i.au, align 1, !tbaa !29
  store i8 %i.ks, ptr %i.kr, align 1, !tbaa !29
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i.i174
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr nonnull align 1 %i.au, i64 %i.kn, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %._crit_edge.i.i174
  %i.kt = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  store i64 %i.kt, ptr %i.bc, align 8, !tbaa !35
  %i.ku = load ptr, ptr %6, align 8, !tbaa !36
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kt
  store i8 0, ptr %i.kv, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.kw = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.kx = load i32, ptr %i.e, align 4, !tbaa !42
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [112 x i8], ptr %i.kw, i64 %i.ky ; 5 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 80 ; 5 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !36 ; 6 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 96 ; 4 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  %i.le = load ptr, ptr %6, align 8, !tbaa !36    ; 6 uses
  %i.lf = icmp eq ptr %i.le, %i.bb                ; 2 uses
  br i1 %i.ld, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i184: ; preds = %bb.bi
  br i1 %i.lf, label %bb.bj, label %.thread.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i178: ; preds = %bb.bi
  br i1 %i.lf, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i179

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i184
  %i.lg = load i64, ptr %i.bc, align 8, !tbaa !35 ; 3 uses
  %i.lh = icmp ult i64 %i.lg, 16
  call void @llvm.assume(i1 %i.lh)
  %.not21.i181 = icmp eq ptr %6, %i.la
  br i1 %.not21.i181, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186, label %bb.bk, !prof !68

bb.bk:                                            ; preds = %bb.bj
  switch i64 %i.lg, label %bb.bm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182
    i64 1, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.li = load i8, ptr %i.le, align 1, !tbaa !29
  store i8 %i.li, ptr %i.lb, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr align 1 %i.le, i64 %i.lg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.lj = load i64, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 88
  store i64 %i.lj, ptr %i.lk, align 8, !tbaa !35
  %i.ll = load ptr, ptr %i.la, align 8, !tbaa !36
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lj
  store i8 0, ptr %i.lm, align 1, !tbaa !29
  %.pre.i183 = load ptr, ptr %6, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186

.thread.i185:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i184
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kz, i64 88
  store ptr %i.le, ptr %i.la, align 8, !tbaa !36
  %i.lo = load i64, ptr %i.bc, align 8, !tbaa !35
  store i64 %i.lo, ptr %i.ln, align 8, !tbaa !35
  %i.lp = load i64, ptr %i.bb, align 8, !tbaa !29
  store i64 %i.lp, ptr %i.lc, align 8, !tbaa !29
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i179: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i178
  %i.lq = load i64, ptr %i.lc, align 8, !tbaa !29
  store ptr %i.le, ptr %i.la, align 8, !tbaa !36
  %i.lr = load i64, ptr %i.bc, align 8, !tbaa !35
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kz, i64 88
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !35
  %i.lt = load i64, ptr %i.bb, align 8, !tbaa !29
  store i64 %i.lt, ptr %i.lc, align 8, !tbaa !29
  %.not.i180 = icmp eq ptr %i.lb, null
  br i1 %.not.i180, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i179
  store ptr %i.lb, ptr %6, align 8, !tbaa !36
  store i64 %i.lq, ptr %i.bb, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i179, %.thread.i185
  store ptr %i.bb, ptr %6, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186: ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182, %bb.bn, %bb.bo
  %i.lu = phi ptr [ %.pre.i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i182 ], [ %i.lb, %bb.bn ], [ %i.bb, %bb.bo ], [ %i.le, %bb.bj ]
  store i64 0, ptr %i.bc, align 8, !tbaa !35
  store i8 0, ptr %i.lu, align 1, !tbaa !29
  %i.lv = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.bb
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186
  %i.lx = load i64, ptr %i.bb, align 8, !tbaa !29
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.cb

bb.bp:                                            ; preds = %.noexc.i175
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.cf

bb.bq:                                            ; preds = %.thread285
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.az, ptr %7, align 8, !tbaa !38
  %i.ma = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ma, ptr %i.a, align 8, !tbaa !44
  %i.mb = icmp ugt i64 %i.ma, 15
  br i1 %i.mb, label %.noexc.i191, label %._crit_edge.i.i190

.noexc.i191:                                      ; preds = %bb.bq
  %i.mc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc192 unwind label %bb.ca ; 2 uses

.noexc192:                                        ; preds = %.noexc.i191
  store ptr %i.mc, ptr %7, align 8, !tbaa !36
  %i.md = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.md, ptr %i.az, align 8, !tbaa !29
  br label %._crit_edge.i.i190

._crit_edge.i.i190:                               ; preds = %.noexc192, %bb.bq
  %i.me = phi ptr [ %i.mc, %.noexc192 ], [ %i.az, %bb.bq ] ; 2 uses
  switch i64 %i.ma, label %bb.bs [
    i64 1, label %bb.br
    i64 0, label %bb.bt
  ]

bb.br:                                            ; preds = %._crit_edge.i.i190
  %i.mf = load i8, ptr %i.h, align 16, !tbaa !29
  store i8 %i.mf, ptr %i.me, align 1, !tbaa !29
  br label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i.i190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.me, ptr nonnull align 16 %i.h, i64 %i.ma, i1 false)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %._crit_edge.i.i190
  %i.mg = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  store i64 %i.mg, ptr %i.ba, align 8, !tbaa !35
  %i.mh = load ptr, ptr %7, align 8, !tbaa !36
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mg
  store i8 0, ptr %i.mi, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.mj = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.mk = load i32, ptr %i.e, align 4, !tbaa !42
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [112 x i8], ptr %i.mj, i64 %i.ml ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 80 ; 5 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !36 ; 6 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 96 ; 4 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  %i.mr = load ptr, ptr %7, align 8, !tbaa !36    ; 6 uses
  %i.ms = icmp eq ptr %i.mr, %i.az                ; 2 uses
  br i1 %i.mq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i200: ; preds = %bb.bt
  br i1 %i.ms, label %bb.bu, label %.thread.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194: ; preds = %bb.bt
  br i1 %i.ms, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i195

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i200
  %i.mt = load i64, ptr %i.ba, align 8, !tbaa !35 ; 3 uses
  %i.mu = icmp ult i64 %i.mt, 16
  call void @llvm.assume(i1 %i.mu)
  %.not21.i197 = icmp eq ptr %7, %i.mn
  br i1 %.not21.i197, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit202, label %bb.bv, !prof !68

bb.bv:                                            ; preds = %bb.bu
  switch i64 %i.mt, label %bb.bx [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i198
    i64 1, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.mv = load i8, ptr %i.mr, align 1, !tbaa !29
  store i8 %i.mv, ptr %i.mo, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i198

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mo, ptr align 1 %i.mr, i64 %i.mt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i198: ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.mw = load i64, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mm, i64 88
  store i64 %i.mw, ptr %i.mx, align 8, !tbaa !35
  %i.my = load ptr, ptr %i.mn, align 8, !tbaa !36
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mw
  store i8 0, ptr %i.mz, align 1, !tbaa !29
  %.pre.i199 = load ptr, ptr %7, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit202

.thread.i201:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i200
  %i.na = getelementptr inbounds nuw i8, ptr %i.mm, i64 88
  store ptr %i.mr, ptr %i.mn, align 8, !tbaa !36
  %i.nb = load i64, ptr %i.ba, align 8, !tbaa !35
  store i64 %i.nb, ptr %i.na, align 8, !tbaa !35
  %i.nc = load i64, ptr %i.az, align 8, !tbaa !29
  store i64 %i.nc, ptr %i.mp, align 8, !tbaa !29
  br label %bb.bz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i195: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i194
  %i.nd = load i64, ptr %i.mp, align 8, !tbaa !29
  store ptr %i.mr, ptr %i.mn, align 8, !tbaa !36
  %i.ne = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mm, i64 88
  store i64 %i.ne, ptr %i.nf, align 8, !tbaa !35
  %i.ng = load i64, ptr %i.az, align 8, !tbaa !29
  store i64 %i.ng, ptr %i.mp, align 8, !tbaa !29
  %.not.i196 = icmp eq ptr %i.mo, null
  br i1 %.not.i196, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i195
  store ptr %i.mo, ptr %7, align 8, !tbaa !36
  store i64 %i.nd, ptr %i.az, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit202

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i195, %.thread.i201
  store ptr %i.az, ptr %7, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit202: ; preds = %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i198, %bb.by, %bb.bz
  %i.nh = phi ptr [ %.pre.i199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i198 ], [ %i.mo, %bb.by ], [ %i.az, %bb.bz ], [ %i.mr, %bb.bu ]
  store i64 0, ptr %i.ba, align 8, !tbaa !35
  store i8 0, ptr %i.nh, align 1, !tbaa !29
  %i.ni = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.az
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit202
  %i.nk = load i64, ptr %i.az, align 8, !tbaa !29
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cb

bb.ca:                                            ; preds = %.noexc.i191
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cf

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.nn = load ptr, ptr %i.m, align 8, !tbaa !19  ; 2 uses
  %i.no = load i32, ptr %i.e, align 4, !tbaa !42
  %i.np = sext i32 %i.no to i64                   ; 2 uses
  %i.nq = getelementptr inbounds [112 x i8], ptr %i.nn, i64 %i.np ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 80 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 88
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !35
  %i.nu = add i64 %i.nt, -1                       ; 2 uses
  %i.nv = load ptr, ptr %i.nr, align 8, !tbaa !36
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nu
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !29
  %i.ny = icmp eq i8 %i.nx, 34
  br i1 %i.ny, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.nr, i64 noundef %i.nu, i8 noundef signext 0)
  %.pre442 = load ptr, ptr %i.m, align 8, !tbaa !19
  %.pre443 = load i32, ptr %i.e, align 4, !tbaa !42
  %.pre447 = sext i32 %.pre443 to i64
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %.pre-phi448 = phi i64 [ %.pre447, %bb.cc ], [ %i.np, %bb.cb ]
  %i.nz = phi ptr [ %.pre442, %bb.cc ], [ %i.nn, %bb.cb ]
  %i.oa = getelementptr inbounds [112 x i8], ptr %i.nz, i64 %.pre-phi448
  store i32 7, ptr %i.oa, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt2

bb.ce:                                            ; preds = %bb.aa
  %i.ob = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.oc = load i32, ptr %i.e, align 4, !tbaa !42
  %i.od = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ob, ptr noundef nonnull @.str.12, i32 noundef %i.oc) #28 ; 0 uses
  %i.oe = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc109 = call i32 @fputc(i32 10, ptr %i.oe)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1

bb.cf:                                            ; preds = %bb.ca, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %.pn104.pn = phi { ptr, i32 } [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.pn102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %i.lz, %bb.bp ], [ %i.nm, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit241

bb.cg:                                            ; preds = %bb.x
  %i.of = call fastcc noundef zeroext i1 @_ZN4ncnnL13vstr_is_floatEPKc(ptr noundef %i.h) ; 4 uses
  %i.og = load ptr, ptr %1, align 8, !tbaa !15
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = call noundef i32 %i.oi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.i)
  %i.ok = icmp eq i32 %i.oj, 1
  br i1 %i.ok, label %bb.ch, label %bb.do

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.of, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, label %bb.ci

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ch
  %i.ol = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL13vstr_to_floatEPKc(ptr noundef %i.h)
  %i.om = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26 ; 3 uses
  store float %i.ol, ptr %i.om, align 4, !tbaa !66
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  br label %.preheader

.preheader:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.0261.1.ph = phi ptr [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %i.om, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i ]
  %.sroa.23273.1.ph = phi ptr [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %i.on, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.sroa.0.2.ph = phi ptr [ %i.op, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i ]
  %.sroa.23.2.ph = phi ptr [ %i.or, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24
  store i32 0, ptr %i.k, align 4, !tbaa !42
  %i.oo = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.k) #24
  %.not88 = icmp eq i32 %i.oo, 1
  br i1 %.not88, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit235.thread

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ci
  %i.op = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26 ; 3 uses
  %i.oq = load i32, ptr %i.k, align 4, !tbaa !42
  store i32 %i.oq, ptr %i.op, align 4, !tbaa !42
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  br label %.preheader

_ZNSt6vectorIiSaIiEED2Ev.exit235.thread:          ; preds = %bb.ci
  %i.os = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite89 = call i64 @fwrite(ptr nonnull @.str.14, i64 28, i64 1, ptr %i.os) #29 ; 0 uses
  %i.ot = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc91 = call i32 @fputc(i32 10, ptr %i.ot)   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1

bb.cj:                                            ; preds = %.preheader, %bb.da
  %.sroa.0261.1 = phi ptr [ %.sroa.0261.3, %bb.da ], [ %.sroa.0261.1.ph, %.preheader ] ; 14 uses
  %.sroa.15269.1 = phi ptr [ %.sroa.15269.2, %bb.da ], [ %.sroa.23273.1.ph, %.preheader ] ; 8 uses
  %.sroa.23273.1 = phi ptr [ %.sroa.23273.3, %bb.da ], [ %.sroa.23273.1.ph, %.preheader ] ; 7 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.5, %bb.da ], [ %.sroa.0.2.ph, %.preheader ] ; 15 uses
  %.sroa.15.2 = phi ptr [ %.sroa.15.4, %bb.da ], [ %.sroa.23.2.ph, %.preheader ] ; 8 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.5, %bb.da ], [ %.sroa.23.2.ph, %.preheader ] ; 9 uses
  %i.ou = load ptr, ptr %1, align 8, !tbaa !15
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = invoke noundef i32 %i.ow(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.h)
          to label %bb.ck unwind label %.loopexit322

bb.ck:                                            ; preds = %bb.cj
  %.not92 = icmp eq i32 %i.ox, 1
  br i1 %.not92, label %bb.cl, label %bb.db

.loopexit322:                                     ; preds = %bb.cj, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit221
  %.sroa.0261.2.ph = phi ptr [ %.sroa.0261.1, %bb.cj ], [ %.sroa.0261.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit221 ]
  %.sroa.23273.2.ph = phi ptr [ %.sroa.23273.1, %bb.cj ], [ %.sroa.23273.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit221 ]
  %.sroa.0.3.ph = phi ptr [ %.sroa.0.2, %bb.cj ], [ %.sroa.0.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit221 ]
  %.sroa.23.3.ph = phi ptr [ %.sroa.23.2, %bb.cj ], [ %.sroa.23.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit221 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.loopexit.split-lp:                               ; preds = %bb.dc, %bb.de
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.of, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %i.oy = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL13vstr_to_floatEPKc(ptr noundef %i.h) ; 2 uses
  %.not.i.i212 = icmp eq ptr %.sroa.15269.1, %.sroa.23273.1
  br i1 %.not.i.i212, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store float %i.oy, ptr %.sroa.15269.1, align 4, !tbaa !66
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.15269.1, i64 4
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit221

bb.co:                                            ; preds = %bb.cm
  %i.pa = ptrtoint ptr %.sroa.15269.1 to i64
  %i.pb = ptrtoint ptr %.sroa.0261.1 to i64
  %i.pc = sub i64 %i.pa, %i.pb                    ; 6 uses
  %i.pd = icmp eq i64 %i.pc, 9223372036854775804
  br i1 %i.pd, label %bb.cp, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i213

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #31
          to label %.noexc219 unwind label %.loopexit.split-lp329

.noexc219:                                        ; preds = %bb.cp
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i213: ; preds = %bb.co
  %i.pe = ashr exact i64 %i.pc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i214 = call i64 @llvm.umax.i64(i64 %i.pe, i64 1)
  %i.pf = add nsw i64 %.sroa.speculated.i.i.i.i214, %i.pe ; 2 uses
  %i.pg = icmp ult i64 %i.pf, %i.pe
  %i.ph = call i64 @llvm.umin.i64(i64 %i.pf, i64 2305843009213693951)
  %i.pi = select i1 %i.pg, i64 2305843009213693951, i64 %i.ph ; 3 uses
  %.not.i.i.i.i215 = icmp ne i64 %i.pi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i215)
  %i.pj = shl nuw nsw i64 %i.pi, 2
  %i.pk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pj) #26
          to label %.noexc220 unwind label %.loopexit328 ; 4 uses

.noexc220:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i213
  %i.pl = getelementptr inbounds i8, ptr %i.pk, i64 %i.pc ; 2 uses
  store float %i.oy, ptr %i.pl, align 4, !tbaa !66
  %i.pm = icmp sgt i64 %i.pc, 0
  br i1 %i.pm, label %bb.cq, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i216

bb.cq:                                            ; preds = %.noexc220
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pk, ptr align 4 %.sroa.0261.1, i64 %i.pc, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i216

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i216: ; preds = %bb.cq, %.noexc220
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  %.not.i17.i.i.i217 = icmp eq ptr %.sroa.0261.1, null
  br i1 %.not.i17.i.i.i217, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i218, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i216
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0261.1, i64 noundef %i.pc) #25
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i218

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i218: ; preds = %bb.cr, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i216
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.pi
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit221

.loopexit328:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i213
  %lpad.loopexit330 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.loopexit.split-lp329:                            ; preds = %bb.cp
  %lpad.loopexit.split-lp331 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cs:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  store i32 0, ptr %i.l, align 4, !tbaa !42
  %i.pp = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.l) #24
  %.not93 = icmp eq i32 %i.pp, 1
  br i1 %.not93, label %bb.ct, label %bb.di

bb.ct:                                            ; preds = %bb.cs
  %.not.i222 = icmp eq ptr %.sroa.15.2, %.sroa.23.2
  br i1 %.not.i222, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pq = load i32, ptr %i.l, align 4, !tbaa !42
  store i32 %i.pq, ptr %.sroa.15.2, align 4, !tbaa !42
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231.thread

bb.cv:                                            ; preds = %bb.ct
  %i.pr = ptrtoint ptr %.sroa.15.2 to i64
  %i.ps = ptrtoint ptr %.sroa.0.2 to i64
  %i.pt = sub i64 %i.pr, %i.ps                    ; 6 uses
  %i.pu = icmp eq i64 %i.pt, 9223372036854775804
  br i1 %i.pu, label %bb.cw, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i223

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #31
          to label %.noexc229 unwind label %.loopexit.split-lp324

.noexc229:                                        ; preds = %bb.cw
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i223: ; preds = %bb.cv
  %i.pv = ashr exact i64 %i.pt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i224 = call i64 @llvm.umax.i64(i64 %i.pv, i64 1)
  %i.pw = add nsw i64 %.sroa.speculated.i.i.i224, %i.pv ; 2 uses
  %i.px = icmp ult i64 %i.pw, %i.pv
  %i.py = call i64 @llvm.umin.i64(i64 %i.pw, i64 2305843009213693951)
  %i.pz = select i1 %i.px, i64 2305843009213693951, i64 %i.py ; 3 uses
  %.not.i.i.i225 = icmp ne i64 %i.pz, 0
  call void @llvm.assume(i1 %.not.i.i.i225)
  %i.qa = shl nuw nsw i64 %i.pz, 2
  %i.qb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qa) #26
          to label %.noexc230 unwind label %.loopexit323 ; 4 uses

.noexc230:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i223
  %i.qc = getelementptr inbounds i8, ptr %i.qb, i64 %i.pt ; 2 uses
  %i.qd = load i32, ptr %i.l, align 4, !tbaa !42
  store i32 %i.qd, ptr %i.qc, align 4, !tbaa !42
  %i.qe = icmp sgt i64 %i.pt, 0
  br i1 %i.qe, label %bb.cx, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i226

bb.cx:                                            ; preds = %.noexc230
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qb, ptr align 4 %.sroa.0.2, i64 %i.pt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i226

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i226: ; preds = %bb.cx, %.noexc230
  %.not.i17.i.i227 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i17.i.i227, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i226
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.pt) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228: ; preds = %bb.cy, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i226
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.pz
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231.thread

_ZNSt6vectorIiSaIiEE9push_backERKi.exit231.thread: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228, %bb.cu
  %.sroa.0.4.ph = phi ptr [ %.sroa.0.2, %bb.cu ], [ %i.qb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228 ]
  %.sroa.15.2.pn = phi ptr [ %.sroa.15.2, %bb.cu ], [ %i.qc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228 ]
  %.sroa.23.4.ph = phi ptr [ %.sroa.23.2, %bb.cu ], [ %i.qf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228 ]
  %.sroa.15.3.ph = getelementptr inbounds nuw i8, ptr %.sroa.15.2.pn, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit221

.loopexit323:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i223
  %lpad.loopexit325 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp324:                            ; preds = %bb.cw
  %lpad.loopexit.split-lp326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cz:                                            ; preds = %.loopexit.split-lp324, %.loopexit323
  %lpad.phi327 = phi { ptr, i32 } [ %lpad.loopexit325, %.loopexit323 ], [ %lpad.loopexit.split-lp326, %.loopexit.split-lp324 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  br label %bb.dl

_ZNSt6vectorIfSaIfEE9push_backEOf.exit221:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231.thread, %bb.cn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i218
  %.sroa.0261.3 = phi ptr [ %.sroa.0261.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231.thread ], [ %i.pk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i218 ], [ %.sroa.0261.1, %bb.cn ] ; 3 uses
  %.sroa.15269.2 = phi ptr [ %.sroa.15269.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231.thread ], [ %i.pn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i218 ], [ %i.oz, %bb.cn ] ; 2 uses
  %.sroa.23273.3 = phi ptr [ %.sroa.23273.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231.thread ], [ %i.po, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i218 ], [ %.sroa.23273.1, %bb.cn ] ; 3 uses
  %.sroa.0.5 = phi ptr [ %.sroa.0.4.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231.thread ], [ %.sroa.0.2, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i218 ], [ %.sroa.0.2, %bb.cn ] ; 3 uses
  %.sroa.15.4 = phi ptr [ %.sroa.15.3.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231.thread ], [ %.sroa.15.2, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i218 ], [ %.sroa.15.2, %bb.cn ] ; 2 uses
  %.sroa.23.5 = phi ptr [ %.sroa.23.4.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231.thread ], [ %.sroa.23.2, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i218 ], [ %.sroa.23.2, %bb.cn ] ; 3 uses
  %i.qg = load ptr, ptr %1, align 8, !tbaa !15
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = invoke noundef i32 %i.qi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.i)
          to label %bb.da unwind label %.loopexit322

bb.da:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit221
  %.not97 = icmp eq i32 %i.qj, 1
  br i1 %.not97, label %bb.cj, label %bb.db, !llvm.loop !62

bb.db:                                            ; preds = %bb.da, %bb.ck
  %.sroa.0261.4 = phi ptr [ %.sroa.0261.3, %bb.da ], [ %.sroa.0261.1, %bb.ck ] ; 6 uses
  %.sroa.15269.3 = phi ptr [ %.sroa.15269.2, %bb.da ], [ %.sroa.15269.1, %bb.ck ]
  %.sroa.23273.4 = phi ptr [ %.sroa.23273.3, %bb.da ], [ %.sroa.23273.1, %bb.ck ] ; 2 uses
  %.sroa.0.6 = phi ptr [ %.sroa.0.5, %bb.da ], [ %.sroa.0.2, %bb.ck ] ; 6 uses
  %.sroa.15.5 = phi ptr [ %.sroa.15.4, %bb.da ], [ %.sroa.15.2, %bb.ck ]
  %.sroa.23.6 = phi ptr [ %.sroa.23.5, %bb.da ], [ %.sroa.23.2, %bb.ck ] ; 2 uses
  %i.qk = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.ql = load i32, ptr %i.e, align 4, !tbaa !42
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [112 x i8], ptr %i.qk, i64 %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8 ; 2 uses
  br i1 %i.of, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.qp = ptrtoint ptr %.sroa.15269.3 to i64
  %i.qq = ptrtoint ptr %.sroa.0261.4 to i64
  %i.qr = sub i64 %i.qp, %i.qq                    ; 2 uses
  %i.qs = lshr exact i64 %i.qr, 2
  %i.qt = trunc i64 %i.qs to i32
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.qo, i32 noundef %i.qt, i64 noundef 4, ptr noundef null)
          to label %bb.dd unwind label %.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  %i.qu = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.qv = load i32, ptr %i.e, align 4, !tbaa !42
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [112 x i8], ptr %i.qu, i64 %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qz, ptr align 4 %.sroa.0261.4, i64 %i.qr, i1 false)
  br label %.critedge131

bb.de:                                            ; preds = %bb.db
  %i.ra = ptrtoint ptr %.sroa.15.5 to i64
  %i.rb = ptrtoint ptr %.sroa.0.6 to i64
  %i.rc = sub i64 %i.ra, %i.rb                    ; 2 uses
  %i.rd = lshr exact i64 %i.rc, 2
  %i.re = trunc i64 %i.rd to i32
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.qo, i32 noundef %i.re, i64 noundef 4, ptr noundef null)
          to label %bb.df unwind label %.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  %i.rf = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.rg = load i32, ptr %i.e, align 4, !tbaa !42
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds [112 x i8], ptr %i.rf, i64 %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rk, ptr align 4 %.sroa.0.6, i64 %i.rc, i1 false)
  br label %.critedge131

.critedge131:                                     ; preds = %bb.df, %bb.dd
  %i.rl = phi i32 [ 5, %bb.df ], [ 6, %bb.dd ]
  %i.rm = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.rn = load i32, ptr %i.e, align 4, !tbaa !42
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [112 x i8], ptr %i.rm, i64 %i.ro
  store i32 %i.rl, ptr %i.rp, align 8, !tbaa !28
  %.not.i.i.i232 = icmp eq ptr %.sroa.0.6, null
  br i1 %.not.i.i.i232, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %.critedge131
  %i.rq = ptrtoint ptr %.sroa.23.6 to i64
  %i.rr = ptrtoint ptr %.sroa.0.6 to i64
  %i.rs = sub i64 %i.rq, %i.rr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.6, i64 noundef %i.rs) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge131, %bb.dg
  %.not.i.i.i233 = icmp eq ptr %.sroa.0261.4, null
  br i1 %.not.i.i.i233, label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt2, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.rt = ptrtoint ptr %.sroa.23273.4 to i64
  %i.ru = ptrtoint ptr %.sroa.0261.4 to i64
  %i.rv = sub i64 %i.rt, %i.ru
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0261.4, i64 noundef %i.rv) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt2

bb.di:                                            ; preds = %bb.cs
  %i.rw = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite94 = call i64 @fwrite(ptr nonnull @.str.14, i64 28, i64 1, ptr %i.rw) #29 ; 0 uses
  %i.rx = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc96 = call i32 @fputc(i32 10, ptr %i.rx)   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  %.not.i.i.i234 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i234, label %_ZNSt6vectorIiSaIiEED2Ev.exit235, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ry = ptrtoint ptr %.sroa.23.2 to i64
  %i.rz = ptrtoint ptr %.sroa.0.2 to i64
  %i.sa = sub i64 %i.ry, %i.rz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.sa) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit235

_ZNSt6vectorIiSaIiEED2Ev.exit235:                 ; preds = %bb.di, %bb.dj
  %.not.i.i.i236 = icmp eq ptr %.sroa.0261.1, null
  br i1 %.not.i.i.i236, label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit235
  %i.sb = ptrtoint ptr %.sroa.23273.1 to i64
  %i.sc = ptrtoint ptr %.sroa.0261.1 to i64
  %i.sd = sub i64 %i.sb, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0261.1, i64 noundef %i.sd) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1

bb.dl:                                            ; preds = %.loopexit328, %.loopexit.split-lp329, %.loopexit322, %.loopexit.split-lp, %bb.cz
  %.sroa.0261.6 = phi ptr [ %.sroa.0261.1, %bb.cz ], [ %.sroa.0261.4, %.loopexit.split-lp ], [ %.sroa.0261.2.ph, %.loopexit322 ], [ %.sroa.0261.1, %.loopexit328 ], [ %.sroa.0261.1, %.loopexit.split-lp329 ] ; 3 uses
  %.sroa.23273.6 = phi ptr [ %.sroa.23273.1, %bb.cz ], [ %.sroa.23273.4, %.loopexit.split-lp ], [ %.sroa.23273.2.ph, %.loopexit322 ], [ %.sroa.15269.1, %.loopexit328 ], [ %.sroa.15269.1, %.loopexit.split-lp329 ]
  %.sroa.0.8 = phi ptr [ %.sroa.0.2, %bb.cz ], [ %.sroa.0.6, %.loopexit.split-lp ], [ %.sroa.0.3.ph, %.loopexit322 ], [ %.sroa.0.2, %.loopexit328 ], [ %.sroa.0.2, %.loopexit.split-lp329 ] ; 3 uses
  %.sroa.23.8 = phi ptr [ %.sroa.15.2, %bb.cz ], [ %.sroa.23.6, %.loopexit.split-lp ], [ %.sroa.23.3.ph, %.loopexit322 ], [ %.sroa.23.2, %.loopexit328 ], [ %.sroa.23.2, %.loopexit.split-lp329 ]
  %.pn = phi { ptr, i32 } [ %lpad.phi327, %bb.cz ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit322 ], [ %lpad.loopexit330, %.loopexit328 ], [ %lpad.loopexit.split-lp331, %.loopexit.split-lp329 ] ; 2 uses
  %.not.i.i.i238 = icmp eq ptr %.sroa.0.8, null
  br i1 %.not.i.i.i238, label %_ZNSt6vectorIiSaIiEED2Ev.exit239, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.se = ptrtoint ptr %.sroa.23.8 to i64
  %i.sf = ptrtoint ptr %.sroa.0.8 to i64
  %i.sg = sub i64 %i.se, %i.sf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.8, i64 noundef %i.sg) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit239

_ZNSt6vectorIiSaIiEED2Ev.exit239:                 ; preds = %bb.dl, %bb.dm
  %.not.i.i.i240 = icmp eq ptr %.sroa.0261.6, null
  br i1 %.not.i.i.i240, label %_ZNSt6vectorIfSaIfEED2Ev.exit241, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit239
  %i.sh = ptrtoint ptr %.sroa.23273.6 to i64
  %i.si = ptrtoint ptr %.sroa.0261.6 to i64
  %i.sj = sub i64 %i.sh, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0261.6, i64 noundef %i.sj) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit241

bb.do:                                            ; preds = %bb.cg
  br i1 %i.of, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.sk = call fast fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL13vstr_to_floatEPKc(ptr noundef %i.h)
  %i.sl = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.sm = load i32, ptr %i.e, align 4, !tbaa !42
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [112 x i8], ptr %i.sl, i64 %i.sn
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  store float %i.sk, ptr %i.sp, align 4, !tbaa !29
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  %i.sq = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.sr = load i32, ptr %i.e, align 4, !tbaa !42
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [112 x i8], ptr %i.sq, i64 %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  %i.sv = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.su) #24
  %.not86 = icmp eq i32 %i.sv, 1
  br i1 %.not86, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sw = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite = call i64 @fwrite(ptr nonnull @.str.14, i64 28, i64 1, ptr %i.sw) #29 ; 0 uses
  %i.sx = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc = call i32 @fputc(i32 10, ptr %i.sx)     ; 0 uses
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  %i.sy = phi i32 [ 2, %bb.dq ], [ 3, %bb.dp ]
  %i.sz = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.ta = load i32, ptr %i.e, align 4, !tbaa !42
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [112 x i8], ptr %i.sz, i64 %i.tb
  store i32 %i.sy, ptr %i.tc, align 8, !tbaa !28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt2

_ZNSt6vectorIfSaIfEED2Ev.exit.jt2:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ds, %bb.dh, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %.backedge

_ZNSt6vectorIfSaIfEED2Ev.exit.jt1:                ; preds = %bb.dk, %_ZNSt6vectorIiSaIiEED2Ev.exit235, %_ZNSt6vectorIiSaIiEED2Ev.exit235.thread, %bb.dr, %bb.ce, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %.loopexit333

.backedge:                                        ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.jt2, %.loopexit.jt2
  %i.td = load ptr, ptr %1, align 8, !tbaa !15
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = load ptr, ptr %i.te, align 8
  %i.tg = call noundef i32 %i.tf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.e)
  %i.th = icmp eq i32 %i.tg, 1
  br i1 %i.th, label %bb.h, label %.loopexit333, !llvm.loop !63

_ZNSt6vectorIfSaIfEED2Ev.exit241:                 ; preds = %bb.dn, %_ZNSt6vectorIiSaIiEED2Ev.exit239, %bb.cf
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %bb.cf ], [ %.pn, %bb.dn ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit239 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  resume { ptr, i32 } %.pn104.pn.pn

.loopexit333:                                     ; preds = %.backedge, %.loopexit.jt1, %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1, %_ZN4ncnn9ParamDict5clearEv.exit, %.thread320
  %.21 = phi i32 [ -1, %.thread320 ], [ 0, %_ZN4ncnn9ParamDict5clearEv.exit ], [ -1, %.loopexit.jt1 ], [ -1, %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1 ], [ 0, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  ret i32 %.21
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @_ZN4ncnnL13vstr_is_floatEPKc(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !29      ; 2 uses
  switch i8 %i.a, label %bb.af [
    i8 0, label %.loopexit14
    i8 46, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.af
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29    ; 2 uses
  switch i8 %i.c, label %bb.c [
    i8 0, label %.loopexit14
    i8 46, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = sext i8 %i.c to i32
  %i.e = tail call i32 @tolower(i32 noundef %i.d) #30
  %i.f = icmp eq i32 %i.e, 101
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29    ; 2 uses
  switch i8 %i.h, label %bb.e [
    i8 0, label %.loopexit14
    i8 46, label %.loopexit
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = sext i8 %i.h to i32
  %i.j = tail call i32 @tolower(i32 noundef %i.i) #30
  %i.k = icmp eq i32 %i.j, 101
  br i1 %i.k, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL13vstr_is_floatEPKc:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.bf, label %bb.y [
    i8 0, label %.loopexit14
    i8 46, label %.loopexit
  ]

bb.y:                                             ; preds = %bb.x
  %i.bg = sext i8 %i.bf to i32
  %i.bh = tail call i32 @tolower(i32 noundef %i.bg) #30
  %i.bi = icmp eq i32 %i.bh, 101
  br i1 %i.bi, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.bk, label %bb.aa [
    i8 0, label %.loopexit14
    i8 46, label %.loopexit
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bl = sext i8 %i.bk to i32
  %i.bm = tail call i32 @tolower(i32 noundef %i.bl) #30
  %i.bn = icmp eq i32 %i.bm, 101
  br i1 %i.bn, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.bp, label %bb.ac [
    i8 0, label %.loopexit14
    i8 46, label %.loopexit
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bq = sext i8 %i.bp to i32
  %i.br = tail call i32 @tolower(i32 noundef %i.bq) #30
  %i.bs = icmp eq i32 %i.br, 101
  br i1 %i.bs, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.bu, label %bb.ae [
    i8 0, label %.loopexit14
    i8 46, label %.loopexit
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bv = sext i8 %i.bu to i32
  %i.bw = tail call i32 @tolower(i32 noundef %i.bv) #30
  %i.bx = icmp eq i32 %i.bw, 101
  br i1 %i.bx, label %.loopexit, label %.loopexit14

bb.af:                                            ; preds = %bb.a
  %i.by = sext i8 %i.a to i32
  %i.bz = tail call i32 @tolower(i32 noundef %i.by) #30
  %i.ca = icmp eq i32 %i.bz, 101
  br i1 %i.ca, label %.loopexit, label %bb.b

.loopexit14:                                      ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.af, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %.loopexit14
  %i.cb = phi i1 [ false, %.loopexit14 ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.af ], [ true, %bb.a ]
  ret i1 %i.cb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL13vstr_to_floatEPKc(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !29      ; 3 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %bb.b
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.b, align 1, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i8 [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.049 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.d = sext i8 %i.c to i32
  %isdigittmp65 = add nsw i32 %i.d, -48           ; 2 uses
  %isdigit66 = icmp ult i32 %isdigittmp65, 10
  br i1 %isdigit66, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %isdigittmp69 = phi i32 [ %isdigittmp, %.lr.ph ], [ %isdigittmp65, %bb.c ]
  %.04868 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.c ]
  %.15067 = phi ptr [ %i.g, %.lr.ph ], [ %.049, %bb.c ]
  %i.e = mul i32 %.04868, 10
  %i.f = add i32 %isdigittmp69, %i.e              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.15067, i64 1 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29    ; 2 uses
  %i.i = sext i8 %i.h to i32
  %isdigittmp = add nsw i32 %i.i, -48             ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !2

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = uitofp fast i32 %i.f to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.150.lcssa = phi ptr [ %.049, %bb.c ], [ %i.g, %._crit_edge.loopexit ] ; 2 uses
  %.048.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %i.j, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa = phi i8 [ %i.c, %bb.c ], [ %i.h, %._crit_edge.loopexit ] ; 2 uses
  %i.k = icmp eq i8 %.lcssa, 46
  br i1 %i.k, label %.preheader64, label %._crit_edge80

.preheader64:                                     ; preds = %._crit_edge
  %.25172 = getelementptr inbounds nuw i8, ptr %.150.lcssa, i64 1 ; 3 uses
  %i.l = load i8, ptr %.25172, align 1, !tbaa !29 ; 2 uses
  %i.m = sext i8 %i.l to i32
  %isdigittmp5773 = add nsw i32 %i.m, -48         ; 2 uses
  %isdigit5874 = icmp ult i32 %isdigittmp5773, 10
  br i1 %isdigit5874, label %.lr.ph79, label %._crit_edge80

.lr.ph79:                                         ; preds = %.preheader64, %.lr.ph79
  %isdigittmp5778 = phi i32 [ %isdigittmp57, %.lr.ph79 ], [ %isdigittmp5773, %.preheader64 ]
  %.25177 = phi ptr [ %.251, %.lr.ph79 ], [ %.25172, %.preheader64 ]
  %.04676 = phi i32 [ %i.o, %.lr.ph79 ], [ 0, %.preheader64 ]
  %.04775 = phi i32 [ %i.p, %.lr.ph79 ], [ 1, %.preheader64 ]
  %i.n = mul i32 %.04676, 10
  %i.o = add i32 %isdigittmp5778, %i.n            ; 2 uses
  %i.p = mul i32 %.04775, 10                      ; 2 uses
  %.251 = getelementptr inbounds nuw i8, ptr %.25177, i64 1 ; 3 uses
  %i.q = load i8, ptr %.251, align 1, !tbaa !29   ; 2 uses
  %i.r = sext i8 %i.q to i32
  %isdigittmp57 = add nsw i32 %i.r, -48           ; 2 uses
  %isdigit58 = icmp ult i32 %isdigittmp57, 10
  br i1 %isdigit58, label %.lr.ph79, label %._crit_edge80.loopexit, !llvm.loop !3

._crit_edge80.loopexit:                           ; preds = %.lr.ph79
  %i.s = uitofp fast i32 %i.o to double
  %i.t = uitofp fast i32 %i.p to double
  %i.u = fdiv fast double %i.s, %i.t
  %i.v = fadd fast double %i.u, %.048.lcssa
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %.preheader64, %._crit_edge80.loopexit, %._crit_edge
  %i.w = phi i8 [ %.lcssa, %._crit_edge ], [ %i.l, %.preheader64 ], [ %i.q, %._crit_edge80.loopexit ]
  %.052 = phi nsz double [ %.048.lcssa, %._crit_edge ], [ %.048.lcssa, %.preheader64 ], [ %i.v, %._crit_edge80.loopexit ] ; 3 uses
  %.3 = phi ptr [ %.150.lcssa, %._crit_edge ], [ %.25172, %.preheader64 ], [ %.251, %._crit_edge80.loopexit ] ; 2 uses
  switch i8 %i.w, label %bb.g [
    i8 101, label %bb.d
    i8 69, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge80, %._crit_edge80
  %i.x = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !29    ; 3 uses
  %.not59 = icmp eq i8 %i.y, 45
  switch i8 %i.y, label %bb.f [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %.pre113 = load i8, ptr %i.z, align 1, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = phi i8 [ %.pre113, %bb.e ], [ %i.y, %bb.d ]
  %.4 = phi ptr [ %i.z, %bb.e ], [ %i.x, %bb.d ]
  %i.ab = sext i8 %i.aa to i32
  %isdigittmp6084 = add nsw i32 %i.ab, -48        ; 2 uses
  %isdigit6185 = icmp ult i32 %isdigittmp6084, 10
  br i1 %isdigit6185, label %.lr.ph90, label %._crit_edge101

.preheader63:                                     ; preds = %.lr.ph90
  %i.ac = icmp ugt i32 %i.am, 7
  br i1 %i.ac, label %.lr.ph94.preheader, label %.preheader

.lr.ph94.preheader:                               ; preds = %.preheader63
  %i.ad = add i32 %isdigittmp6088, %i.al
  %i.ae = add i32 %i.ad, -8                       ; 2 uses
  %i.af = lshr i32 %i.ae, 3
  %i.ag = add nuw nsw i32 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ae, 24
  br i1 %min.iters.check, label %.lr.ph94.preheader157, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph94.preheader
  %n.vec = and i32 %i.ag, 1073741820              ; 3 uses
  %i.ah = shl i32 %n.vec, 3
  %i.ai = sub i32 %i.am, %i.ah                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <2 x double> [ splat (double 1.000000e+00), %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = fmul fast <2 x double> %reduced.phi, splat (double 1.000000e+16) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.aj = icmp eq i32 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %i.ak = tail call fast double @llvm.vector.reduce.fmul.v2f64(double 1.000000e+00, <2 x double> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ag, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph94.preheader157

.lr.ph94.preheader157:                            ; preds = %.lr.ph94.preheader, %middle.block
  %.093.ph = phi double [ 1.000000e+00, %.lr.ph94.preheader ], [ %i.ak, %middle.block ]
  %.14592.ph = phi i32 [ %i.am, %.lr.ph94.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph94

.lr.ph90:                                         ; preds = %bb.f, %.lr.ph90
  %isdigittmp6088 = phi i32 [ %isdigittmp60, %.lr.ph90 ], [ %isdigittmp6084, %bb.f ] ; 2 uses
  %.04487 = phi i32 [ %i.am, %.lr.ph90 ], [ 0, %bb.f ]
  %.586 = phi ptr [ %i.an, %.lr.ph90 ], [ %.4, %bb.f ]
  %i.al = mul i32 %.04487, 10                     ; 2 uses
  %i.am = add i32 %isdigittmp6088, %i.al          ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.586, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29
  %i.ap = sext i8 %i.ao to i32
  %isdigittmp60 = add nsw i32 %i.ap, -48          ; 2 uses
  %isdigit61 = icmp ult i32 %isdigittmp60, 10
  br i1 %isdigit61, label %.lr.ph90, label %.preheader63, !llvm.loop !4

.preheader:                                       ; preds = %.lr.ph94, %middle.block, %.preheader63
  %.145.lcssa = phi i32 [ %i.am, %.preheader63 ], [ %i.ai, %middle.block ], [ %i.ax, %.lr.ph94 ] ; 6 uses
  %.0.lcssa = phi double [ 1.000000e+00, %.preheader63 ], [ %i.ak, %middle.block ], [ %i.aw, %.lr.ph94 ] ; 3 uses
  %.not6297 = icmp eq i32 %.145.lcssa, 0
  br i1 %.not6297, label %._crit_edge101, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.preheader
  %min.iters.check140 = icmp ult i32 %.145.lcssa, 4
  br i1 %min.iters.check140, label %.lr.ph100.preheader153, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph100.preheader
  %n.vec142 = and i32 %.145.lcssa, -4             ; 2 uses
  %i.aq = and i32 %.145.lcssa, 3
  %i.ar = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.0.lcssa, i64 0
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i32 [ 0, %vector.ph141 ], [ %index.next147, %vector.body143 ]
  %vec.phi145 = phi <2 x double> [ %i.ar, %vector.ph141 ], [ %i.as, %vector.body143 ]
  %vec.phi146 = phi <2 x double> [ splat (double 1.000000e+00), %vector.ph141 ], [ %i.at, %vector.body143 ]
  %i.as = fmul fast <2 x double> %vec.phi145, splat (double 1.000000e+01) ; 2 uses
  %i.at = fmul fast <2 x double> %vec.phi146, splat (double 1.000000e+01) ; 2 uses
  %index.next147 = add nuw i32 %index144, 4       ; 2 uses
  %i.au = icmp eq i32 %index.next147, %n.vec142
  br i1 %i.au, label %middle.block148, label %vector.body143, !llvm.loop !72

middle.block148:                                  ; preds = %vector.body143
  %bin.rdx149 = fmul fast <2 x double> %i.at, %i.as
  %i.av = tail call fast double @llvm.vector.reduce.fmul.v2f64(double 1.000000e+00, <2 x double> %bin.rdx149) ; 2 uses
  %cmp.n150 = icmp eq i32 %.145.lcssa, %n.vec142
  br i1 %cmp.n150, label %._crit_edge101, label %.lr.ph100.preheader153

.lr.ph100.preheader153:                           ; preds = %.lr.ph100.preheader, %middle.block148
  %.199.ph = phi double [ %.0.lcssa, %.lr.ph100.preheader ], [ %i.av, %middle.block148 ]
  %.298.ph = phi i32 [ %.145.lcssa, %.lr.ph100.preheader ], [ %i.aq, %middle.block148 ]
  br label %.lr.ph100

.lr.ph94:                                         ; preds = %.lr.ph94.preheader157, %.lr.ph94
  %.093 = phi double [ %i.aw, %.lr.ph94 ], [ %.093.ph, %.lr.ph94.preheader157 ]
  %.14592 = phi i32 [ %i.ax, %.lr.ph94 ], [ %.14592.ph, %.lr.ph94.preheader157 ]
  %i.aw = fmul fast double %.093, 1.000000e+08    ; 2 uses
  %i.ax = add i32 %.14592, -8                     ; 3 uses
  %i.ay = icmp ugt i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph94, label %.preheader, !llvm.loop !73

.lr.ph100:                                        ; preds = %.lr.ph100.preheader153, %.lr.ph100
  %.199 = phi double [ %i.az, %.lr.ph100 ], [ %.199.ph, %.lr.ph100.preheader153 ]
  %.298 = phi i32 [ %i.ba, %.lr.ph100 ], [ %.298.ph, %.lr.ph100.preheader153 ]
  %i.az = fmul fast double %.199, 1.000000e+01    ; 2 uses
  %i.ba = add nsw i32 %.298, -1                   ; 2 uses
  %.not62 = icmp eq i32 %i.ba, 0
  br i1 %.not62, label %._crit_edge101, label %.lr.ph100, !llvm.loop !74

._crit_edge101:                                   ; preds = %.lr.ph100, %middle.block148, %bb.f, %.preheader
  %.1.lcssa = phi double [ %.0.lcssa, %.preheader ], [ 1.000000e+00, %bb.f ], [ %i.av, %middle.block148 ], [ %i.az, %.lr.ph100 ] ; 2 uses
  %i.bb = fmul fast double %.1.lcssa, %.052
  %i.bc = fdiv fast double %.052, %.1.lcssa
  %i.bd = select fast i1 %.not59, double %i.bc, double %i.bb
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge80, %._crit_edge101
  %.153 = phi nsz double [ %i.bd, %._crit_edge101 ], [ %.052, %._crit_edge80 ]
  %.not = icmp eq i8 %i.a, 45
  %i.be = fptrunc fast double %.153 to float      ; 2 uses
  %i.bf = fneg fast float %i.be
  %i.bg = select fast i1 %.not, float %i.bf, float %i.be
  ret float %i.bg
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN4ncnn9ParamDict14load_param_binERKNS_10DataReaderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit.i.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %_ZN4ncnn3Mat7releaseEv.exit.i.i ] ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %indvars.iv.i ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %_ZN4ncnn3Mat7releaseEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.p, null
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q), !inline_history !33
  br label %_ZN4ncnn3Mat7releaseEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %.not.i18.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i18.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.q) #24
  br label %_ZN4ncnn3Mat7releaseEv.exit.i.i

_ZN4ncnn3Mat7releaseEv.exit.i.i:                  ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.j, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, i8 0, i64 28, i1 false)
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store i64 0, ptr %i.z, align 8, !tbaa !35
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !36
  store i8 0, ptr %i.aa, align 1, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %_ZN4ncnn9ParamDict5clearEv.exit, label %bb.b, !llvm.loop !0

_ZN4ncnn9ParamDict5clearEv.exit:                  ; preds = %_ZN4ncnn3Mat7releaseEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !42
  %i.ab = load ptr, ptr %1, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 2 uses
  %.not = icmp eq i64 %i.ae, 4
  br i1 %.not, label %.preheader, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn9ParamDict5clearEv.exit
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.18, i64 noundef %i.ae) #28 ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc73 = call i32 @fputc(i32 10, ptr %i.ah)   ; 0 uses
  br label %.critedge77

.preheader:                                       ; preds = %_ZN4ncnn9ParamDict5clearEv.exit, %bb.x
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !42  ; 10 uses
  %.not58 = icmp eq i32 %i.ai, -233
  br i1 %.not58, label %.critedge77, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.aj = icmp slt i32 %i.ai, -23399
  br i1 %i.aj, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp slt i32 %i.ai, -23299
  br i1 %i.ak, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %bb.j
  %i.al = sub nuw nsw i32 -23300, %i.ai           ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !42
  %i.am = icmp slt i32 %i.ai, -23331
  br i1 %i.am, label %bb.k, label %bb.s

thread-pre-split.thread:                          ; preds = %bb.j
  %i.an = icmp sgt i32 %i.ai, 31
  br i1 %i.an, label %bb.k, label %.thread132

.thread:                                          ; preds = %bb.i
  %i.ao = sub nuw nsw i32 -23400, %i.ai           ; 2 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !42
  %i.ap = icmp samesign ult i32 %i.ai, -23431
  br i1 %i.ap, label %bb.k, label %.thread89

bb.k:                                             ; preds = %thread-pre-split.thread, %.thread, %thread-pre-split
  %i.aq = phi i32 [ %i.ao, %.thread ], [ %i.al, %thread-pre-split ], [ %i.ai, %thread-pre-split.thread ]
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.as = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.1, i32 noundef %i.aq, i32 noundef 32) #28 ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc72 = call i32 @fputc(i32 10, ptr %i.at)   ; 0 uses
  br label %.critedge77

.thread89:                                        ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !42
  %i.au = load ptr, ptr %1, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 2 uses
  %.not64 = icmp eq i64 %i.ax, 4
  br i1 %.not64, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread89
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.az = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str.19, i64 noundef %i.ax) #28 ; 0 uses
  br label %.critedge

bb.m:                                             ; preds = %.thread89
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !42  ; 4 uses
  %i.bb = icmp sgt i32 %i.ba, 255
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !42
  %i.be = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.12, i32 noundef %i.bd) #28 ; 0 uses
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bf = add nsw i32 %i.ba, 3
  %i.bg = sdiv i32 %i.bf, 4
  %i.bh = shl nsw i32 %i.bg, 2
  %i.bi = sext i32 %i.bh to i64                   ; 5 uses
  %i.bj = icmp slt i32 %i.ba, -6
  br i1 %i.bj, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #31
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.o
  %i.bk = or disjoint i64 %i.bi, 1                ; 4 uses
  %i.bl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #26 ; 9 uses
  store i8 0, ptr %i.bl, align 1, !tbaa !29
  %i.bm = icmp slt i32 %i.ba, 1
  br i1 %i.bm, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bn, i8 0, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.p, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bo = load ptr, ptr %1, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bl, i64 noundef %i.bi)
          to label %bb.q unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit ; 2 uses

bb.q:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %.not65 = icmp eq i64 %i.br, %i.bi
  br i1 %.not65, label %bb.r, label %_ZNSt6vectorIcSaIcEED2Ev.exit82

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.r, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bk) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %i.bs

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi
  store i8 0, ptr %i.bt, align 1, !tbaa !29
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !42
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [112 x i8], ptr %i.bu, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 88
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !35
  %i.cb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #24
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 noundef 0, i64 noundef %i.ca, ptr noundef nonnull %i.bl, i64 noundef %i.cb)
          to label %_ZNSt6vectorIcSaIcEED2Ev.exit82.thread unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit ; 0 uses

_ZNSt6vectorIcSaIcEED2Ev.exit82.thread:           ; preds = %bb.r
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !42
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [112 x i8], ptr %i.cd, i64 %i.cf
  store i32 7, ptr %i.cg, align 8, !tbaa !28
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bk) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.x

_ZNSt6vectorIcSaIcEED2Ev.exit82:                  ; preds = %bb.q
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.ci = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ch, ptr noundef nonnull @.str.20, i64 noundef %i.br) #28 ; 0 uses
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc67 = call i32 @fputc(i32 10, ptr %i.cj)   ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bk) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.critedge77

bb.s:                                             ; preds = %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !42
  %i.ck = load ptr, ptr %1, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef i64 %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 4) ; 2 uses
  %.not60 = icmp eq i64 %i.cn, 4
  br i1 %.not60, label %bb.t, label %.critedge75

.critedge75:                                      ; preds = %bb.s
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.cp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.19, i64 noundef %i.cn) #28 ; 0 uses
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc63 = call i32 @fputc(i32 10, ptr %i.cq)   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.critedge77

bb.t:                                             ; preds = %bb.s
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !42
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [112 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !42
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.cv, i32 noundef %i.cw, i64 noundef 4, ptr noundef null)
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !42
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [112 x i8], ptr %i.cx, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !32
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !42
  %i.de = sext i32 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 2
  %i.dg = load ptr, ptr %1, align 8, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call noundef i64 %i.di(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.dc, i64 noundef %i.df) ; 2 uses
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !42
  %i.dl = sext i32 %i.dk to i64
  %i.dm = shl nsw i64 %i.dl, 2
  %.not61 = icmp eq i64 %i.dj, %i.dm
  br i1 %.not61, label %.thread90, label %bb.u

.thread90:                                        ; preds = %bb.t
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.do = load i32, ptr %i.a, align 4, !tbaa !42
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [112 x i8], ptr %i.dn, i64 %i.dp
  store i32 4, ptr %i.dq, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.21, i64 noundef %i.dj) #28 ; 0 uses
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc62 = call i32 @fputc(i32 10, ptr %i.dt)   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.critedge77

.thread132:                                       ; preds = %thread-pre-split.thread
  %i.du = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.dv = sext i32 %i.ai to i64
  %i.dw = getelementptr inbounds [112 x i8], ptr %i.du, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load ptr, ptr %1, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef i64 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.dx, i64 noundef 4) ; 2 uses
  %.not59 = icmp eq i64 %i.eb, 4
  br i1 %.not59, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread132
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.ed = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ec, ptr noundef nonnull @.str.22, i64 noundef %i.eb) #28 ; 0 uses
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc = call i32 @fputc(i32 10, ptr %i.ee)     ; 0 uses
  br label %.critedge77

bb.w:                                             ; preds = %.thread132
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !42
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [112 x i8], ptr %i.ef, i64 %i.eh
  store i32 1, ptr %i.ei, align 8, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %.thread90, %_ZNSt6vectorIcSaIcEED2Ev.exit82.thread, %bb.w
  %i.ej = load ptr, ptr %1, align 8, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef i64 %i.el(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 2 uses
  %.not70 = icmp eq i64 %i.em, 4
  br i1 %.not70, label %.preheader, label %bb.y, !llvm.loop !75

bb.y:                                             ; preds = %bb.x
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.eo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.en, ptr noundef nonnull @.str.23, i64 noundef %i.em) #28 ; 0 uses
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc71 = call i32 @fputc(i32 10, ptr %i.ep)   ; 0 uses
  br label %.critedge77

.critedge:                                        ; preds = %bb.n, %bb.l
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc68 = call i32 @fputc(i32 10, ptr %i.eq)   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.critedge77

.critedge77:                                      ; preds = %.preheader, %bb.u, %_ZNSt6vectorIcSaIcEED2Ev.exit82, %bb.k, %bb.y, %.critedge75, %bb.v, %.critedge, %bb.h
  %.7 = phi i32 [ -1, %bb.h ], [ -1, %bb.k ], [ -1, %.critedge ], [ -1, %bb.v ], [ -1, %bb.u ], [ -1, %_ZNSt6vectorIcSaIcEED2Ev.exit82 ], [ -1, %.critedge75 ], [ -1, %bb.y ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmul.v2f64(double, <2 x double>) #23

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { cold nounwind }
attributes #29 = { cold }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !37}
!1 = distinct !{null, null}
!2 = distinct !{!2, !37}
!3 = distinct !{!3, !37}
!4 = distinct !{!4, !37}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"vtable pointer", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 _ZTSN4ncnn16ParamDictPrivateE", !16, i64 0}
!18 = !{!"_ZTSN4ncnn9ParamDictE", !17, i64 8}
!19 = !{!18, !17, i64 8}
!20 = !{!"p1 int", !16, i64 0}
!21 = !{!"long", !10, i64 0}
!22 = !{!"p1 _ZTSN4ncnn9AllocatorE", !16, i64 0}
!23 = !{!"_ZTSN4ncnn3MatE", !16, i64 0, !20, i64 8, !21, i64 16, !11, i64 24, !22, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !21, i64 64}
!24 = !{!"p1 omnipotent char", !16, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !21, i64 8, !10, i64 16}
!27 = !{!"_ZTSN4ncnn16ParamDictPrivateUt_E", !11, i64 0, !10, i64 4, !23, i64 8, !26, i64 80}
!28 = !{!27, !11, i64 0}
!29 = !{!10, !10, i64 0}
!30 = !{!23, !20, i64 8}
!31 = !{!23, !22, i64 32}
!32 = !{!23, !16, i64 0}
!33 = !{ptr @_ZN4ncnn9ParamDict5clearEv}
!34 = !{!23, !21, i64 64}
!35 = !{!26, !21, i64 8}
!36 = !{!26, !24, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!25, !24, i64 0}
!39 = !{!16, !16, i64 0}
!40 = !{!23, !21, i64 16}
!41 = !{!23, !11, i64 24}
!42 = !{!11, !11, i64 0}
!43 = !{!23, !11, i64 56}
!44 = !{!21, !21, i64 0}
!45 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = distinct !{!51, !37}
!52 = distinct !{!52, !37}
!53 = distinct !{!53, !37, !47, !48}
!54 = distinct !{!54, !64}
!55 = distinct !{!55, !37, !48, !47}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!59 = distinct !{!59, !58, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!60 = distinct !{!60, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!61 = distinct !{!61, !60, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!62 = distinct !{!62, !37}
!63 = distinct !{!63, !37}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!"float", !10, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!59}
!68 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!69 = !{!61}
!70 = !{!27, !16, i64 8}
!71 = distinct !{!71, !37, !47, !48}
!72 = distinct !{!72, !37, !47, !48}
!73 = distinct !{!73, !37, !48, !47}
!74 = distinct !{!74, !37, !48, !47}
!75 = distinct !{!75, !37}
end_hunk_1
