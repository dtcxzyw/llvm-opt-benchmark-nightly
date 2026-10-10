Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/paramdict?download=true
inline.NumInlined: 305
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnn9ParamDict10load_paramERKNS_10DataReaderE:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph399, %.backedge
  %i.be = load i32, ptr %i.e, align 4, !tbaa !42  ; 5 uses
  %i.bf = icmp slt i32 %i.be, -23299
  br i1 %i.bf, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bg = sub nuw nsw i32 -23300, %i.be           ; 2 uses
  store i32 %i.bg, ptr %i.e, align 4, !tbaa !42
  %i.bh = icmp samesign ult i32 %i.be, -23331
  br i1 %i.bh, label %.thread320, label %bb.j

.thread:                                          ; preds = %bb.h
  %i.bi = icmp sgt i32 %i.be, 31
  br i1 %i.bi, label %.thread320, label %.thread284

.thread320:                                       ; preds = %bb.i, %.thread
  %i.bj = phi i32 [ %i.be, %.thread ], [ %i.bg, %bb.i ]
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.1, i32 noundef %i.bj, i32 noundef 32) #28 ; 0 uses
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc127 = call i32 @fputc(i32 10, ptr %i.bm)  ; 0 uses
  br label %.loopexit333

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 0, ptr %i.f, align 4, !tbaa !42
  %i.bn = load ptr, ptr %1, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.f)
  %.not113 = icmp eq i32 %i.bq, 1
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
  %8 = mul i32 %.04487.i, 10
  %i.do = add i32 %isdigittmp6088.i, %8
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
  %.04487.i = phi i32 [ %i.dx, %.lr.ph90.i ], [ 0, %bb.t ] ; 2 uses
  %.586.i = phi ptr [ %i.dy, %.lr.ph90.i ], [ %.4.i, %bb.t ]
  %i.dw = mul i32 %.04487.i, 10
  %i.dx = add i32 %i.dw, %isdigittmp6088.i        ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.586.i, i64 1 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !29
  %i.ea = sext i8 %i.dz to i32
  %isdigittmp60.i = add nsw i32 %i.ea, -48        ; 2 uses
  %isdigit61.i = icmp ult i32 %isdigittmp60.i, 10
  br i1 %isdigit61.i, label %.lr.ph90.i, label %.preheader63.i, !llvm.loop !4

.preheader.i:                                     ; preds = %.lr.ph94.i, %middle.block633, %.preheader63.i
  %.145.lcssa.i = phi i32 [ %i.dx, %.preheader63.i ], [ %i.dt, %middle.block633 ], [ %i.ei, %.lr.ph94.i ] ; 6 uses
  %.0.lcssa.i = phi double [ 1.000000e+00, %.preheader63.i ], [ %i.dv, %middle.block633 ], [ %i.eh, %.lr.ph94.i ] ; 3 uses
  %.not6297.i = icmp eq i32 %.145.lcssa.i, 0
  br i1 %.not6297.i, label %._crit_edge101.i, label %.lr.ph100.i.preheader

.lr.ph100.i.preheader:                            ; preds = %.preheader.i
  %min.iters.check = icmp ult i32 %.145.lcssa.i, 4
  br i1 %min.iters.check, label %.lr.ph100.i.preheader639, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph100.i.preheader
  %n.vec = and i32 %.145.lcssa.i, -4              ; 2 uses
  %i.eb = and i32 %.145.lcssa.i, 3
  %i.ec = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.0.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x double> [ %i.ec, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi623 = phi <2 x double> [ splat (double 1.000000e+00), %vector.ph ], [ %i.ee, %vector.body ]
  %i.ed = fmul fast <2 x double> %vec.phi, splat (double 1.000000e+01) ; 2 uses
  %i.ee = fmul fast <2 x double> %vec.phi623, splat (double 1.000000e+01) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ef = icmp eq i32 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fmul fast <2 x double> %i.ee, %i.ed
  %i.eg = call fast double @llvm.vector.reduce.fmul.v2f64(double 1.000000e+00, <2 x double> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %.145.lcssa.i, %n.vec
  br i1 %cmp.n, label %._crit_edge101.i, label %.lr.ph100.i.preheader639

.lr.ph100.i.preheader639:                         ; preds = %.lr.ph100.i.preheader, %middle.block
  %.199.i.ph = phi double [ %.0.lcssa.i, %.lr.ph100.i.preheader ], [ %i.eg, %middle.block ]
  %.298.i.ph = phi i32 [ %.145.lcssa.i, %.lr.ph100.i.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph100.i

.lr.ph94.i:                                       ; preds = %.lr.ph94.i.preheader640, %.lr.ph94.i
  %.093.i = phi double [ %i.eh, %.lr.ph94.i ], [ %.093.i.ph, %.lr.ph94.i.preheader640 ]
  %.14592.i = phi i32 [ %i.ei, %.lr.ph94.i ], [ %.14592.i.ph, %.lr.ph94.i.preheader640 ]
  %i.eh = fmul fast double %.093.i, 1.000000e+08  ; 2 uses
  %i.ei = add i32 %.14592.i, -8                   ; 3 uses
  %i.ej = icmp ugt i32 %i.ei, 7
  br i1 %i.ej, label %.lr.ph94.i, label %.preheader.i, !llvm.loop !55

.lr.ph100.i:                                      ; preds = %.lr.ph100.i.preheader639, %.lr.ph100.i
  %.199.i = phi double [ %i.ek, %.lr.ph100.i ], [ %.199.i.ph, %.lr.ph100.i.preheader639 ]
  %.298.i = phi i32 [ %i.el, %.lr.ph100.i ], [ %.298.i.ph, %.lr.ph100.i.preheader639 ]
  %i.ek = fmul fast double %.199.i, 1.000000e+01  ; 2 uses
  %i.el = add nsw i32 %.298.i, -1                 ; 2 uses
  %.not62.i = icmp eq i32 %i.el, 0
  br i1 %.not62.i, label %._crit_edge101.i, label %.lr.ph100.i, !llvm.loop !56

._crit_edge101.i:                                 ; preds = %.lr.ph100.i, %middle.block, %.preheader.i, %bb.t
  %.1.lcssa.i = phi double [ %.0.lcssa.i, %.preheader.i ], [ 1.000000e+00, %bb.t ], [ %i.eg, %middle.block ], [ %i.ek, %.lr.ph100.i ] ; 2 uses
  %i.em = fmul fast double %.1.lcssa.i, %.052.i
  %i.en = fdiv fast double %.052.i, %.1.lcssa.i
  %i.eo = select fast i1 %.not59.i, double %i.en, double %i.em
  br label %_ZN4ncnnL13vstr_to_floatEPKc.exit

_ZN4ncnnL13vstr_to_floatEPKc.exit:                ; preds = %._crit_edge80.i, %._crit_edge101.i
  %.153.i = phi nsz double [ %i.eo, %._crit_edge101.i ], [ %.052.i, %._crit_edge80.i ]
  %.not.i = icmp eq i8 %i.cm, 45
  %i.ep = fptrunc fast double %.153.i to float    ; 2 uses
  %i.eq = fneg fast float %i.ep
  %i.er = select fast i1 %.not.i, float %i.eq, float %i.ep
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  store float %i.er, ptr %i.es, align 4, !tbaa !65
  br label %.critedge

bb.u:                                             ; preds = %bb.n
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  %i.eu = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.3, ptr noundef %i.et) #24
  %.not115 = icmp eq i32 %i.eu, 1
  br i1 %.not115, label %..critedge_crit_edge, label %bb.v

..critedge_crit_edge:                             ; preds = %bb.u
  %.pre444 = load ptr, ptr %i.m, align 8, !tbaa !19
  %.pre445 = load i32, ptr %i.e, align 4, !tbaa !42
  %.pre446 = sext i32 %.pre445 to i64
  br label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite116 = call i64 @fwrite(ptr nonnull @.str.7, i64 36, i64 1, ptr %i.ev) #29 ; 0 uses
  br label %.critedge129

.critedge:                                        ; preds = %..critedge_crit_edge, %_ZN4ncnnL13vstr_to_floatEPKc.exit
  %.pre-phi = phi i64 [ %.pre446, %..critedge_crit_edge ], [ %i.ci, %_ZN4ncnnL13vstr_to_floatEPKc.exit ]
  %i.ew = phi ptr [ %.pre444, %..critedge_crit_edge ], [ %i.cg, %_ZN4ncnnL13vstr_to_floatEPKc.exit ]
  %i.ex = phi i32 [ 5, %..critedge_crit_edge ], [ 6, %_ZN4ncnnL13vstr_to_floatEPKc.exit ]
  %i.ey = getelementptr inbounds [112 x i8], ptr %i.ew, i64 %.pre-phi
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ez = load i32, ptr %i.f, align 4, !tbaa !42
  %i.fa = sext i32 %i.ez to i64
  %.not122 = icmp slt i64 %indvars.iv.next, %i.fa
  br i1 %.not122, label %.lr.ph, label %.loopexit.jt2, !llvm.loop !57

.critedge129:                                     ; preds = %bb.v, %bb.m
  %i.fb = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc118 = call i32 @fputc(i32 10, ptr %i.fb)  ; 0 uses
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
  %i.fc = load ptr, ptr %1, align 8, !tbaa !15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call noundef i32 %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.h)
  %.not = icmp eq i32 %i.ff, 1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread284
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite110 = call i64 @fwrite(ptr nonnull @.str.9, i64 27, i64 1, ptr %i.fg) #29 ; 0 uses
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !46
  %fputc112 = call i32 @fputc(i32 10, ptr %i.fh)  ; 0 uses
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1

bb.x:                                             ; preds = %.thread284
  %.val = load i8, ptr %i.h, align 16, !tbaa !29  ; 2 uses
  %i.fi = sext i8 %.val to i32
  %i.fj = call i32 @isalpha(i32 noundef %i.fi) #30
  %.not.i132 = icmp ne i32 %i.fj, 0
  %i.fk = icmp eq i8 %.val, 34                    ; 2 uses
  %spec.select.i = or i1 %i.fk, %.not.i132
  br i1 %spec.select.i, label %bb.y, label %bb.cg

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i8 0, ptr %i.ap, align 1, !tbaa !29
  br i1 %i.fk, label %.preheader.preheader, label %bb.z

.preheader.preheader:                             ; preds = %bb.y
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.h)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 %strlen
  %i.fm = getelementptr i8, ptr %i.fl, i64 -1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !29
  %.not100 = icmp eq i8 %i.fn, 34
  br i1 %.not100, label %.thread285.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader.preheader
  %.str.10.sink = phi ptr [ @.str.10, %.preheader.preheader ], [ @.str.11, %bb.y ]
  %i.fo = load ptr, ptr %1, align 8, !tbaa !15
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = call noundef i32 %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.10.sink, ptr noundef nonnull %i.j)
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.aa, label %.thread285

bb.aa:                                            ; preds = %bb.z
  %i.ft = load i8, ptr %i.ap, align 1, !tbaa !29
  %.not101 = icmp eq i8 %i.ft, 0
  br i1 %.not101, label %bb.ab, label %bb.ce

bb.ab:                                            ; preds = %bb.aa
  %i.fu = load i8, ptr %i.h, align 16, !tbaa !29
  %i.fv = icmp eq i8 %i.fu, 34
  br i1 %i.fv, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.av, ptr %3, align 8, !tbaa !38
  %i.fw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 %i.fw, ptr %i.d, align 8, !tbaa !44
  %i.fx = icmp ugt i64 %i.fw, 15
  br i1 %i.fx, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ac
  %i.fy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.ap    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.fy, ptr %3, align 8, !tbaa !36
  %i.fz = load i64, ptr %i.d, align 8, !tbaa !44
  store i64 %i.fz, ptr %i.av, align 8, !tbaa !29
  br label %._crit_edge.i.i

end_hunk_0
begin_hunk_1_@_ZN4ncnnL13vstr_is_floatEPKc:bb.a
  %i.ax = tail call i32 @tolower(i32 noundef %i.aw) #30
  %i.ay = icmp eq i32 %i.ax, 101
  br i1 %i.ay, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.ba, label %bb.w [
    i8 0, label %.loopexit14
    i8 46, label %.loopexit
  ]

bb.w:                                             ; preds = %bb.v
  %i.bb = sext i8 %i.ba to i32
  %i.bc = tail call i32 @tolower(i32 noundef %i.bb) #30
  %i.bd = icmp eq i32 %i.bc, 101
  br i1 %i.bd, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
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
  %1 = mul i32 %.04487, 10
  %i.ad = add i32 %isdigittmp6088, %1
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
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !70

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
  %.04487 = phi i32 [ %i.am, %.lr.ph90 ], [ 0, %bb.f ] ; 2 uses
  %.586 = phi ptr [ %i.an, %.lr.ph90 ], [ %.4, %bb.f ]
  %i.al = mul i32 %.04487, 10
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
  br i1 %i.au, label %middle.block148, label %vector.body143, !llvm.loop !71

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
  br i1 %i.ay, label %.lr.ph94, label %.preheader, !llvm.loop !72

.lr.ph100:                                        ; preds = %.lr.ph100.preheader153, %.lr.ph100
  %.199 = phi double [ %i.az, %.lr.ph100 ], [ %.199.ph, %.lr.ph100.preheader153 ]
  %.298 = phi i32 [ %i.ba, %.lr.ph100 ], [ %.298.ph, %.lr.ph100.preheader153 ]
  %i.az = fmul fast double %.199, 1.000000e+01    ; 2 uses
  %i.ba = add nsw i32 %.298, -1                   ; 2 uses
  %.not62 = icmp eq i32 %i.ba, 0
  br i1 %.not62, label %._crit_edge101, label %.lr.ph100, !llvm.loop !73

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
end_hunk_1
