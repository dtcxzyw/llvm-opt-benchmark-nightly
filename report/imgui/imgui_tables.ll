Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable:bb.a
  %i.he = or i32 %i.hd, %i.gz
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !299
  %i.hf = load ptr, ptr %i.ea, align 8, !tbaa !279
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fa, i64 90
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !305
  %i.hi = sext i16 %i.hh to i32                   ; 2 uses
  %i.hj = and i32 %i.hi, 31
  %i.hk = shl nuw i32 1, %i.hj
  %i.hl = ashr i32 %i.hi, 5
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !299
  %i.hp = or i32 %i.hk, %i.ho
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !299
  %i.hq = load i8, ptr %i.ft, align 1
  %i.hr = trunc i8 %i.hq to i1
  br i1 %i.hr, label %._crit_edge809, label %bb.bc

._crit_edge809:                                   ; preds = %bb.bb
  %.pre810 = load i32, ptr %i.fa, align 4, !tbaa !328
  br label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.hs = load i16, ptr %i.eo, align 8, !tbaa !216
  %i.ht = icmp eq i16 %i.hs, 0
  %.pre811 = load i32, ptr %i.fa, align 4, !tbaa !328 ; 5 uses
  br i1 %i.ht, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !349 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fa, i64 76
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !350 ; 2 uses
  %i.hy = fcmp oge float %i.hv, %i.hx
  %i.hz = select i1 %i.hy, float %i.hv, float %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fa, i64 60
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !351 ; 2 uses
  %i.ic = fsub float %i.hz, %i.ib                 ; 3 uses
  %i.id = and i32 %.pre811, 8192
  %.not.i676 = icmp eq i32 %i.id, 0
  br i1 %.not.i676, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fa, i64 84
  %i.if = load float, ptr %i.ie, align 4, !tbaa !352
  %i.ig = fsub float %i.if, %i.ib                 ; 2 uses
  %i.ih = fcmp oge float %i.ic, %i.ig
  %i.ii = select i1 %i.ih, float %i.ic, float %i.ig
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0.i = phi float [ %i.ic, %bb.bd ], [ %i.ii, %bb.be ] ; 3 uses
  %i.ij = and i32 %.pre811, 16
  %.not16.i = icmp eq i32 %i.ij, 0
  br i1 %.not16.i, label %_ZN5ImGui23TableGetColumnWidthAutoEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.il = load float, ptr %i.ik, align 4, !tbaa !338 ; 2 uses
  %i.im = fcmp ogt float %i.il, 0.000000e+00
  br i1 %i.im, label %bb.bh, label %_ZN5ImGui23TableGetColumnWidthAutoEP10ImGuiTableP16ImGuiTableColumn.exit

bb.bh:                                            ; preds = %bb.bg
  %i.in = load i32, ptr %i.do, align 4, !tbaa !217
  %.not17.i = trunc i32 %i.in to i1
  %i.io = and i32 %.pre811, 32
  %.not18.i = icmp eq i32 %i.io, 0
  %or.cond.i677 = and i1 %.not18.i, %.not17.i
  br i1 %or.cond.i677, label %_ZN5ImGui23TableGetColumnWidthAutoEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br label %_ZN5ImGui23TableGetColumnWidthAutoEP10ImGuiTableP16ImGuiTableColumn.exit

_ZN5ImGui23TableGetColumnWidthAutoEP10ImGuiTableP16ImGuiTableColumn.exit: ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %.1.i = phi float [ %i.il, %bb.bi ], [ %.0.i, %bb.bh ], [ %.0.i, %bb.bg ], [ %.0.i, %bb.bf ] ; 2 uses
  %i.ip = load float, ptr %i.eh, align 8, !tbaa !329 ; 2 uses
  %i.iq = fcmp oge float %.1.i, %i.ip
  %i.ir = select i1 %i.iq, float %.1.i, float %i.ip
  %i.is = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  store float %i.ir, ptr %i.is, align 4, !tbaa !306
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge809, %_ZN5ImGui23TableGetColumnWidthAutoEP10ImGuiTableP16ImGuiTableColumn.exit, %bb.bc
  %i.it = phi i32 [ %.pre810, %._crit_edge809 ], [ %.pre811, %_ZN5ImGui23TableGetColumnWidthAutoEP10ImGuiTableP16ImGuiTableColumn.exit ], [ %.pre811, %bb.bc ] ; 3 uses
  %i.iu = and i32 %i.it, 32
  %i.iv = icmp eq i32 %i.iu, 0                    ; 2 uses
  %spec.select = select i1 %i.iv, i8 1, i8 %.0586746 ; 2 uses
  %i.iw = and i32 %i.it, 16
  %.not662 = icmp eq i32 %i.iw, 0
  br i1 %.not662, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !338 ; 2 uses
  %i.iz = fcmp ule float %i.iy, 0.000000e+00
  %or.cond = or i1 %i.iv, %i.iz
  br i1 %or.cond, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  store float %i.iy, ptr %i.ja, align 4, !tbaa !306
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fa, i64 115
  %i.jc = load i16, ptr %i.jb, align 1
  %i.jd = and i16 %i.jc, 15
  %.not663 = icmp ne i16 %i.jd, 0
  %spec.select668 = select i1 %.not663, i1 true, i1 %.0589745 ; 2 uses
  %i.je = and i32 %i.it, 8
  %.not664 = icmp eq i32 %i.je, 0
  %i.jf = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !306 ; 3 uses
  br i1 %.not664, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jh = fadd float %.0583747, %i.jg
  %i.ji = add nsw i32 %.0594743, 1
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.jj = fcmp oge float %.0580748, %i.jg
  %i.jk = select i1 %i.jj, float %.0580748, float %i.jg
  %i.jl = add i16 %.0597742, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.ax
  %.2599 = phi i16 [ %.0597742, %bb.ax ], [ %.0597742, %bb.bn ], [ %i.jl, %bb.bo ] ; 2 uses
  %.2596 = phi i32 [ %.0594743, %bb.ax ], [ %i.ji, %bb.bn ], [ %.0594743, %bb.bo ] ; 2 uses
  %.1593 = phi i32 [ %.0592744, %bb.ax ], [ %i.ex, %bb.bn ], [ %i.ex, %bb.bo ] ; 2 uses
  %.2591 = phi i1 [ %.0589745, %bb.ax ], [ %spec.select668, %bb.bn ], [ %spec.select668, %bb.bo ] ; 2 uses
  %.2588 = phi i8 [ %.0586746, %bb.ax ], [ %spec.select, %bb.bn ], [ %spec.select, %bb.bo ] ; 2 uses
  %.2585 = phi float [ %.0583747, %bb.ax ], [ %i.jh, %bb.bn ], [ %.0583747, %bb.bo ] ; 2 uses
  %.2582 = phi float [ %.0580748, %bb.ax ], [ %.0580748, %bb.bn ], [ %i.jk, %bb.bo ] ; 2 uses
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1 ; 2 uses
  %exitcond789.not = icmp eq i64 %indvars.iv.next787, %wide.trip.count788
  br i1 %exitcond789.not, label %._crit_edge752.loopexit, label %bb.ae, !llvm.loop !543

bb.bq:                                            ; preds = %._crit_edge752
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.jn = load i16, ptr %i.jm, align 8, !tbaa !353
  %i.jo = icmp eq i16 %i.jn, 0
  %i.jp = and i32 %i.es, 134217728
  %.not621 = icmp eq i32 %i.jp, 0
  %or.cond669 = and i1 %.not621, %i.jo
  br i1 %or.cond669, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 1, ptr %i.jq, align 1, !tbaa !288
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %._crit_edge752
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store i16 %.0592.lcssa, ptr %i.jr, align 8, !tbaa !354
  br i1 %.0589.lcssa, label %bb.bt, label %.critedge

bb.bt:                                            ; preds = %bb.bs
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !220
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !219 ; 2 uses
  %.not622 = icmp eq ptr %i.jt, %i.jv
  br i1 %.not622, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 209
  store i8 0, ptr %i.jw, align 1, !tbaa !174
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.jx, align 2, !tbaa !284
  br label %.critedge

.critedge:                                        ; preds = %bb.bs, %bb.bv
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 4 uses
  store i16 -1, ptr %i.jy, align 4, !tbaa !550
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 546 ; 4 uses
  store i16 -1, ptr %i.jz, align 2, !tbaa !334
  br i1 %i.ei, label %.lr.ph763, label %._crit_edge764

.lr.ph763:                                        ; preds = %.critedge
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kb = icmp eq i32 %i.dq, 16384
  %i.kc = icmp ne i32 %i.dq, 24576
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %wide.trip.count793 = zext nneg i32 %i.e to i64
  br label %bb.bw

._crit_edge764:                                   ; preds = %bb.ct, %.critedge
  %.0576.lcssa = phi float [ 0.000000e+00, %.critedge ], [ %.2578, %bb.ct ]
  %.0573.lcssa = phi float [ 0.000000e+00, %.critedge ], [ %.2575, %bb.ct ] ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i16 %.0597.lcssa, ptr %i.ke, align 4, !tbaa !355
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float %.0573.lcssa, ptr %i.kf, align 8, !tbaa !356
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %.sroa.0707.0.copyload = load float, ptr %i.kg, align 8, !tbaa !177 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !177 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !177
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 4 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !247
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 4 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !244
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.km = load float, ptr %i.kl, align 8, !tbaa !245
  %i.kn = fadd float %i.kk, %i.km
  %i.ko = load i16, ptr %i.dt, align 2, !tbaa !343 ; 2 uses
  %i.kp = sext i16 %i.ko to i32
  %i.kq = add nsw i32 %i.kp, -1
  %i.kr = sitofp i32 %i.kq to float
  %i.ks = fmul float %i.kn, %i.kr
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.ki, float 2.000000e+00, float %i.ks) ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 589
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !231, !range !175, !noundef !176
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.cu, label %bb.cw

bb.bw:                                            ; preds = %.lr.ph763, %bb.ct
  %indvars.iv790 = phi i64 [ 0, %.lr.ph763 ], [ %indvars.iv.next791, %bb.ct ] ; 6 uses
  %.0573760 = phi float [ 0.000000e+00, %.lr.ph763 ], [ %.2575, %bb.ct ] ; 3 uses
  %.0576759 = phi float [ 0.000000e+00, %.lr.ph763 ], [ %.2578, %bb.ct ] ; 4 uses
  %i.kx = load ptr, ptr %i.du, align 8, !tbaa !280
  %i.ky = trunc nuw nsw i64 %indvars.iv790 to i32
  %i.kz = lshr i64 %indvars.iv790, 5
  %i.la = and i64 %i.kz, 134217727
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !299
  %i.ld = and i32 %i.ky, 31
  %i.le = shl nuw i32 1, %i.ld
  %i.lf = and i32 %i.lc, %i.le
  %.not645 = icmp eq i32 %i.lf, 0
  br i1 %.not645, label %bb.ct, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lg = load ptr, ptr %i.ka, align 8, !tbaa !271 ; 3 uses
  %i.lh = getelementptr inbounds nuw [120 x i8], ptr %i.lg, i64 %indvars.iv790 ; 16 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !328 ; 2 uses
  %i.lj = and i32 %i.li, 32
  %i.lk = icmp eq i32 %i.lj, 0                    ; 3 uses
  %i.ll = and i32 %i.li, 16
  %.not646 = icmp eq i32 %i.ll, 0
  br i1 %.not646, label %bb.ci, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 20
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !306 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 115
  %i.lp = load i16, ptr %i.lo, align 1            ; 3 uses
  br i1 %i.kb, label %bb.bz, label %._crit_edge812

bb.bz:                                            ; preds = %bb.by
  %i.lq = and i16 %i.lp, 15
  %i.lr = icmp eq i16 %i.lq, 0
  %or.cond3 = and i1 %i.lk, %i.lr
  br i1 %or.cond3, label %._crit_edge812, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br label %._crit_edge812

._crit_edge812:                                   ; preds = %bb.by, %bb.bz, %bb.ca
  %.0571 = phi float [ %i.ln, %bb.bz ], [ %.0580.lcssa, %bb.ca ], [ %i.ln, %bb.by ]
  %i.ls = and i16 %i.lp, 15
  %.not648 = icmp eq i16 %i.ls, 0
  br i1 %.not648, label %bb.cb, label %.sink.split

bb.cb:                                            ; preds = %._crit_edge812
  br i1 %i.lk, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 111
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !357, !range !175, !noundef !176
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %.sink.split, label %bb.cd

.sink.split:                                      ; preds = %bb.cc, %._crit_edge812
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store float %.0571, ptr %i.lw, align 4, !tbaa !332
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split, %bb.cb, %bb.cc
  %i.lx = and i16 %i.lp, 14
  %.not649 = icmp eq i16 %i.lx, 0
  br i1 %.not649, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ly = load i8, ptr %i.n, align 1, !tbaa !282, !range !175, !noundef !176
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lh, i64 113
  %i.mb = load i8, ptr %i.ma, align 1
  %i.mc = trunc i8 %i.mb to i1
  br i1 %i.mc, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.md = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 2 uses
  %i.me = load float, ptr %i.md, align 4, !tbaa !332 ; 2 uses
  %i.mf = load float, ptr %i.eh, align 8, !tbaa !329
  %i.mg = fmul float %i.mf, 4.000000e+00          ; 2 uses
  %i.mh = fcmp oge float %i.me, %i.mg
  %i.mi = select i1 %i.mh, float %i.me, float %i.mg
  store float %i.mi, ptr %i.md, align 4, !tbaa !332
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !332
  %i.ml = fadd float %.0576759, %i.mk
  br label %bb.cs

bb.ci:                                            ; preds = %bb.bx
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lh, i64 115
  %i.mn = load i16, ptr %i.mm, align 1
  %i.mo = and i16 %i.mn, 15
  %.not647 = icmp eq i16 %i.mo, 0
  br i1 %.not647, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lh, i64 28
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !336 ; 2 uses
  %i.mr = fcmp uge float %i.mq, 0.000000e+00
  %or.cond7 = and i1 %i.lk, %i.mr
  br i1 %or.cond7, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !338 ; 2 uses
  %i.mu = fcmp ogt float %i.mt, 0.000000e+00      ; 2 uses
  %brmerge = select i1 %i.mu, i1 true, i1 %i.kc
  %.mux = select i1 %i.mu, float %i.mt, float 1.000000e+00
  br i1 %brmerge, label %.sink.split861, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lh, i64 20
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !306
  %i.mx = fdiv float %i.mw, %.0583.lcssa
  %i.my = fmul float %i.mx, %.0594.lcssa
  br label %.sink.split861

.sink.split861:                                   ; preds = %bb.ck, %bb.cl
  %.sink862 = phi float [ %i.my, %bb.cl ], [ %.mux, %bb.ck ] ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lh, i64 28
  store float %.sink862, ptr %i.mz, align 4, !tbaa !336
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split861, %bb.cj
  %i.na = phi float [ %i.mq, %bb.cj ], [ %.sink862, %.sink.split861 ]
  %i.nb = fadd float %.0573760, %i.na             ; 2 uses
  %i.nc = load i16, ptr %i.jz, align 2, !tbaa !334 ; 2 uses
  %i.nd = icmp eq i16 %i.nc, -1
  br i1 %i.nd, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ne = sext i16 %i.nc to i64
  %i.nf = getelementptr inbounds [120 x i8], ptr %i.lg, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 90
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !305
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lh, i64 90
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !305
  %i.nk = icmp sgt i16 %i.nh, %i.nj
  br i1 %i.nk, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.nl = trunc i64 %indvars.iv790 to i16
  store i16 %i.nl, ptr %i.jz, align 2, !tbaa !334
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.nm = load i16, ptr %i.jy, align 4, !tbaa !550 ; 2 uses
  %i.nn = icmp eq i16 %i.nm, -1
  br i1 %i.nn, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.no = sext i16 %i.nm to i64
  %i.np = getelementptr inbounds [120 x i8], ptr %i.lg, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 90
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !305
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lh, i64 90
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !305
  %i.nu = icmp slt i16 %i.nr, %i.nt
  br i1 %i.nu, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.nv = trunc i64 %indvars.iv790 to i16
  store i16 %i.nv, ptr %i.jy, align 4, !tbaa !550
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr, %bb.ch
  %.1577 = phi float [ %i.ml, %bb.ch ], [ %.0576759, %bb.cr ], [ %.0576759, %bb.cq ]
  %.1574 = phi float [ %.0573760, %bb.ch ], [ %i.nb, %bb.cr ], [ %i.nb, %bb.cq ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.lh, i64 113 ; 2 uses
  %i.nx = load i8, ptr %i.nw, align 1
  %i.ny = and i8 %i.nx, -2
  store i8 %i.ny, ptr %i.nw, align 1
  %i.nz = load float, ptr %i.kd, align 8, !tbaa !246
  %i.oa = tail call float @llvm.fmuladd.f32(float %i.nz, float 2.000000e+00, float %.1577)
end_hunk_0
begin_hunk_1_@_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable:bb.a
bb.dd:                                            ; preds = %bb.dc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 28
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !336
  %i.qg = fdiv float %i.qf, %.0573.lcssa
  %i.qh = fmul float %i.pa, %i.qg                 ; 2 uses
  %i.qi = load float, ptr %i.eh, align 8, !tbaa !329 ; 2 uses
  %i.qj = fcmp oge float %i.qh, %i.qi
  %i.qk = select i1 %i.qj, float %i.qh, float %i.qi
  %i.ql = fadd float %i.qk, f0x3C23D70A
  %i.qm = fptosi float %i.ql to i32
  %i.qn = sitofp i32 %i.qm to float               ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  store float %i.qn, ptr %i.qo, align 4, !tbaa !332
  %i.qp = fsub float %.0568767, %i.qn
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.1569 = phi float [ %i.qp, %bb.dd ], [ %.0568767, %bb.dc ]
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qb, i64 96
  %i.qr = load i16, ptr %i.qq, align 4, !tbaa !333
  %i.qs = icmp eq i16 %i.qr, -1
  br i1 %i.qs, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.qt = load i16, ptr %i.jz, align 2, !tbaa !334
  %.not644 = icmp eq i16 %i.qt, -1
  br i1 %.not644, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qu = or i32 %i.qc, 1073741824
  store i32 %i.qu, ptr %i.qb, align 4, !tbaa !328
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !332 ; 2 uses
  %i.qx = load float, ptr %i.eh, align 8, !tbaa !329 ; 2 uses
  %i.qy = fcmp oge float %i.qw, %i.qx
  %i.qz = select i1 %i.qy, float %i.qw, float %i.qx
  %i.ra = fptosi float %i.qz to i32
  %i.rb = sitofp i32 %i.ra to float               ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  store float %i.rb, ptr %i.rc, align 4, !tbaa !331
  %i.rd = fadd float %i.pr, %i.rb                 ; 2 uses
  store float %i.rd, ptr %i.pg, align 8, !tbaa !360
  br label %bb.di

bb.di:                                            ; preds = %bb.db, %bb.dh
  %i.re = phi float [ %i.rd, %bb.dh ], [ %i.pr, %bb.db ]
  %.2570 = phi float [ %.1569, %bb.dh ], [ %.0568767, %bb.db ] ; 2 uses
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 1 ; 2 uses
  %exitcond799.not = icmp eq i64 %indvars.iv.next796, %wide.trip.count798
  br i1 %exitcond799.not, label %._crit_edge771, label %bb.db, !llvm.loop !545

.lr.ph776.split:                                  ; preds = %.lr.ph776.split.preheader, %bb.dl
  %indvars.iv800 = phi i64 [ %i.pq, %.lr.ph776.split.preheader ], [ %indvars.iv.next801, %bb.dl ] ; 5 uses
  %.3774 = phi float [ %.0568.lcssa, %.lr.ph776.split.preheader ], [ %.5, %bb.dl ] ; 3 uses
  %i.rf = trunc nuw nsw i64 %indvars.iv800 to i32
  %i.rg = lshr i64 %indvars.iv800, 5
  %i.rh = and i64 %i.rg, 134217727
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !299
  %i.rk = and i32 %i.rf, 31
  %i.rl = shl nuw i32 1, %i.rk
  %i.rm = and i32 %i.rj, %i.rl
  %.not625 = icmp eq i32 %i.rm, 0
  br i1 %.not625, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph776.split
  %i.rn = load ptr, ptr %i.pp, align 8, !tbaa !275
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.rn, i64 %indvars.iv800
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !300
  %i.rq = load ptr, ptr %i.po, align 8, !tbaa !271
  %i.rr = sext i16 %i.rp to i64
  %i.rs = getelementptr inbounds [120 x i8], ptr %i.rq, i64 %i.rr ; 3 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !328
  %i.ru = and i32 %i.rt, 8
  %.not626 = icmp eq i32 %i.ru, 0
  br i1 %.not626, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 16 ; 2 uses
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !332
  %i.rx = fadd float %i.rw, 1.000000e+00
  store float %i.rx, ptr %i.rv, align 4, !tbaa !332
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rs, i64 4 ; 2 uses
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !331
  %i.sa = fadd float %i.rz, 1.000000e+00
  store float %i.sa, ptr %i.ry, align 4, !tbaa !331
  %i.sb = fadd float %.3774, -1.000000e+00
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %.lr.ph776.split
  %.5 = phi float [ %.3774, %.lr.ph776.split ], [ %i.sb, %bb.dk ], [ %.3774, %bb.dj ] ; 2 uses
  %indvars.iv.next801 = add nsw i64 %indvars.iv800, -1
  %i.sc = fcmp oge float %.5, 1.000000e+00
  %i.sd = icmp sgt i64 %indvars.iv800, 0
  %i.se = and i1 %i.sc, %i.sd
  br i1 %i.se, label %.lr.ph776.split, label %.loopexit, !llvm.loop !546

.loopexit:                                        ; preds = %bb.dl, %._crit_edge771
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.sg = load i16, ptr %i.sf, align 8, !tbaa !216 ; 2 uses
  %i.sh = icmp eq i16 %i.sg, 0
  br i1 %i.sh, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.loopexit
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

bb.dn:                                            ; preds = %.loopexit
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !226
  %i.sl = sext i16 %i.sg to i64
  %i.sm = getelementptr [24 x i8], ptr %i.sk, i64 %i.sl
  %i.sn = getelementptr i8, ptr %i.sm, i64 -24
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit: ; preds = %bb.dm, %bb.dn
  %.0.i678 = phi ptr [ %i.si, %bb.dm ], [ %i.sn, %bb.dn ] ; 6 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.0.i678, i64 20 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !361
  %i.sq = getelementptr inbounds nuw i8, ptr %.0.i678, i64 16
  store i32 %i.sp, ptr %i.sq, align 4, !tbaa !362
  store i32 -1, ptr %i.so, align 4, !tbaa !361
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  store i16 -1, ptr %i.sr, align 4, !tbaa !297
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 522 ; 5 uses
  store i16 -1, ptr %i.ss, align 2, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.sw = load float, ptr %i.sv, align 8, !tbaa !363
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 3 uses
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !364 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.0.i678, i64 4
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !365
  %i.tb = load float, ptr %i.su, align 4, !tbaa !366
  %i.tc = load <2 x float>, ptr %i.st, align 8, !tbaa !177
  %i.td = fadd float %i.tb, %i.ta                 ; 2 uses
  %i.te = fcmp oge float %i.sy, %i.td
  %i.tf = select i1 %i.te, float %i.sy, float %i.td
  store <2 x float> %i.tc, ptr %1, align 8, !tbaa !177
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.sw, ptr %i.tg, align 8, !tbaa !228
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.tf, ptr %i.th, align 4, !tbaa !229
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 5428 ; 4 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !326
  store i32 0, ptr %i.ti, align 4, !tbaa !326
  %i.tk = call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0, i32 noundef 0) ; 2 uses
  store i32 %i.tj, ptr %i.ti, align 4, !tbaa !326
  %i.tl = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.tm = load float, ptr %i.tl, align 8, !tbaa !367 ; 4 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.to = load float, ptr %i.tn, align 8, !tbaa !259 ; 2 uses
  %i.tp = fcmp ogt float %i.to, 0.000000e+00
  br i1 %i.tp, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %i.tq = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !368 ; 3 uses
  %i.ts = load float, ptr %i.su, align 4, !tbaa !366 ; 2 uses
  %i.tt = fcmp ult float %i.tr, %i.ts
  br i1 %i.tt, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.tu = fadd float %i.to, %i.ts                 ; 2 uses
  %i.tv = fcmp ugt float %i.tr, %i.tu
  br i1 %i.tv, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.tw = fsub float %i.tu, %i.tr
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !369
  %i.tz = fmul float %i.tw, %i.ty
  %i.ua = fptosi float %i.tz to i32
  %i.ub = sitofp i32 %i.ua to float
  %i.uc = fadd float %i.tm, %i.ub
  br label %bb.dr

bb.dr:                                            ; preds = %bb.do, %bb.dp, %bb.dq, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %.0565 = phi float [ %i.uc, %bb.dq ], [ %i.tm, %bb.dp ], [ %i.tm, %bb.do ], [ %i.tm, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit ] ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 558 ; 3 uses
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !370
  %i.uf = icmp sgt i16 %i.ue, 0                   ; 2 uses
  br i1 %i.uf, label %.then, label %.cont

.then:                                            ; preds = %bb.dr
  %.then.val = load float, ptr %i.st, align 8, !tbaa !359
  br label %.cont

.cont:                                            ; preds = %bb.dr, %.then
  %i.ug = phi float [ %.then.val, %.then ], [ %.sroa.0707.0.copyload, %bb.dr ]
  %i.uh = load float, ptr %i.kh, align 4, !tbaa !247
  %i.ui = load float, ptr %i.kj, align 4, !tbaa !244
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.sroa.0.0.copyload = load float, ptr %i.uj, align 8, !tbaa !177
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !177 ; 8 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !177 ; 8 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !177
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !281
  call void @llvm.memset.p0.i64(ptr align 4 %i.ul, i8 0, i64 %i.dz, i1 false)
  br i1 %i.ei, label %.lr.ph782, label %._crit_edge783.thread

.lr.ph782:                                        ; preds = %.cont
  %i.um = fadd float %i.ug, %i.uh
  %i.un = fsub float %i.um, %i.ui
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 591 ; 2 uses
  %wide.trip.count805 = zext nneg i32 %i.e to i64
  %2 = fcmp olt float %.sroa.6.0.copyload, %.sroa.9.0.copyload
  %i.uu = insertelement <4 x float> <float poison, float f0x7F7FFFFF, float poison, float f0x7F7FFFFF>, float %.sroa.6.0.copyload, i64 0
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.uw = insertelement <4 x float> poison, float %.sroa.18.0.copyload, i64 0
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %3 = fcmp ogt <4 x float> %i.uv, %i.ux
  %4 = fcmp ogt float %.sroa.9.0.copyload, f0x7F7FFFFF
  %5 = fcmp olt float %.sroa.6.0.copyload, %.sroa.9.0.copyload
  %6 = fcmp ogt float %.sroa.9.0.copyload, f0x7F7FFFFF
  %i.uy = select <4 x i1> %3, <4 x float> %i.ux, <4 x float> %i.uv ; 4 uses
  %7 = extractelement <4 x float> %i.uy, i64 0
  %8 = select i1 %2, float %.sroa.9.0.copyload, float %7
  %9 = extractelement <4 x float> %i.uy, i64 1
  %10 = select i1 %4, float %.sroa.9.0.copyload, float %9
  %11 = extractelement <4 x float> %i.uy, i64 2
  %12 = select i1 %5, float %.sroa.9.0.copyload, float %11
  %13 = extractelement <4 x float> %i.uy, i64 3
  %14 = select i1 %6, float %.sroa.9.0.copyload, float %13
  %.sroa.0.0.vec.insert.i.i684 = insertelement <2 x float> poison, float %8, i64 1
  %.sroa.0.0.vec.insert.i8.i688 = insertelement <2 x float> poison, float %10, i64 1
  br label %bb.ds

._crit_edge783:                                   ; preds = %bb.ep
  %i.uz = icmp eq i8 %.2564, 0
  br i1 %i.uz, label %._crit_edge783.thread, label %._crit_edge783._crit_edge

._crit_edge783._crit_edge:                        ; preds = %._crit_edge783
  %.phi.trans.insert815 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre816 = load ptr, ptr %.phi.trans.insert815, align 8, !tbaa !271
  br label %bb.eq

bb.ds:                                            ; preds = %.lr.ph782, %bb.ep
  %indvars.iv803 = phi i64 [ 0, %.lr.ph782 ], [ %indvars.iv.next804, %bb.ep ] ; 6 uses
  %.0559780 = phi float [ %i.un, %.lr.ph782 ], [ %.2, %bb.ep ] ; 3 uses
  %.0560779 = phi i1 [ %i.uf, %.lr.ph782 ], [ %.1561, %bb.ep ]
  %.0562778 = phi i8 [ 0, %.lr.ph782 ], [ %.2564, %bb.ep ] ; 4 uses
  %.sroa.0.0777 = phi float [ %.sroa.0.0.copyload, %.lr.ph782 ], [ %.sroa.0.2, %bb.ep ] ; 10 uses
  %i.va = load ptr, ptr %i.uo, align 8, !tbaa !275
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %indvars.iv803
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !300 ; 3 uses
  %i.vd = sext i16 %i.vc to i32                   ; 2 uses
  %i.ve = load ptr, ptr %i.up, align 8, !tbaa !271
  %i.vf = sext i16 %i.vc to i64
  %i.vg = getelementptr inbounds [120 x i8], ptr %i.ve, i64 %i.vf ; 37 uses
  %i.vh = load i16, ptr %i.uq, align 2, !tbaa !371
  %i.vi = icmp sgt i16 %i.vh, 0
  br i1 %i.vi, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.vj = load i8, ptr %i.ur, align 8, !tbaa !225
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt
  %i.vk = phi i8 [ %i.vj, %bb.dt ], [ 1, %bb.ds ]
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 114
  store i8 %i.vk, ptr %i.vl, align 2, !tbaa !372
  br i1 %.0560779, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %i.vm = load i16, ptr %i.ud, align 2, !tbaa !370
  %i.vn = sext i16 %i.vm to i64
  %i.vo = icmp eq i64 %indvars.iv803, %i.vn
  br i1 %i.vo, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.vp = load float, ptr %i.st, align 8, !tbaa !373
  %i.vq = fsub float %.sroa.0707.0.copyload, %i.vp
  %i.vr = fadd float %.0559780, %i.vq
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %.1561 = phi i1 [ false, %bb.dw ], [ true, %bb.dv ], [ false, %bb.du ]
  %.1 = phi float [ %i.vr, %bb.dw ], [ %.0559780, %bb.dv ], [ %.0559780, %bb.du ] ; 16 uses
  %i.vs = load i32, ptr %i.vg, align 4, !tbaa !328
  %i.vt = and i32 %i.vs, -251658241
  store i32 %i.vt, ptr %i.vg, align 4, !tbaa !328
  %i.vu = load ptr, ptr %i.ea, align 8, !tbaa !279
  %i.vv = trunc nuw nsw i64 %indvars.iv803 to i32
  %i.vw = lshr i64 %indvars.iv803, 5
  %i.vx = and i64 %i.vw, 134217727
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !299
  %i.wa = and i32 %i.vv, 31
  %i.wb = shl nuw i32 1, %i.wa
  %i.wc = and i32 %i.vz, %i.wb
  %.not639 = icmp eq i32 %i.wc, 0
  br i1 %.not639, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i, label %bb.dy

_Z7ImClampRK6ImVec2S1_S1_.exit.i:                 ; preds = %bb.dx
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vg, i64 36
  %i.we = getelementptr inbounds nuw i8, ptr %i.vg, i64 44
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vg, i64 60
  store float %.1, ptr %i.wf, align 4, !tbaa !351
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vg, i64 12
  store float %.1, ptr %i.wg, align 4, !tbaa !374
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  store float %.1, ptr %i.wh, align 4, !tbaa !375
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  store float 0.000000e+00, ptr %i.wi, align 4, !tbaa !331
  %i.wj = fcmp olt float %.1, %.sroa.0.0777
  %i.wk = fcmp ogt float %.1, %.sroa.13.0.copyload
  %..i.i = select i1 %i.wk, float %.sroa.13.0.copyload, float %.1
  %i.wl = select i1 %i.wj, float %.sroa.0.0777, float %..i.i
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.wl, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %12, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.wd, align 4, !tbaa !177
  %.sroa.0.4.vec.insert.i9.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %14, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i9.i, ptr %i.we, align 4, !tbaa !177
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vg, i64 109
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.wm, align 1, !tbaa !301
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vg, i64 68
  store float 1.000000e+00, ptr %i.wn, align 4, !tbaa !376
  br label %bb.ep

bb.dy:                                            ; preds = %bb.dx
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  store float %.1, ptr %i.wo, align 4, !tbaa !375
  %i.wp = load float, ptr %i.eh, align 8, !tbaa !329 ; 3 uses
  %i.wq = load float, ptr %i.pb, align 8, !tbaa !246 ; 6 uses
  %i.wr = call float @llvm.fmuladd.f32(float %i.wq, float 2.000000e+00, float %i.wp)
  %i.ws = load float, ptr %i.kj, align 4, !tbaa !244 ; 3 uses
  %i.wt = fadd float %i.wr, %i.ws
  %i.wu = load float, ptr %i.kl, align 8, !tbaa !245 ; 5 uses
  %i.wv = fadd float %i.wt, %i.wu                 ; 2 uses
  %i.ww = load i32, ptr %i.do, align 4, !tbaa !217 ; 2 uses
  %i.wx = and i32 %i.ww, 16777216
  %.not.i679 = icmp eq i32 %i.wx, 0
  br i1 %.not.i679, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vg, i64 90
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !305 ; 2 uses
  %i.xa = load i16, ptr %i.us, align 4, !tbaa !337 ; 2 uses
  %i.xb = icmp slt i16 %i.wz, %i.xa
  br i1 %i.xb, label %bb.ea, label %_ZN5ImGui23TableCalcMaxColumnWidthEPK10ImGuiTablei.exit

bb.ea:                                            ; preds = %bb.dz
  %i.xc = sext i16 %i.xa to i32
  %i.xd = sext i16 %i.wz to i32
  %i.xe = load float, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !377
  %i.xf = sub nsw i32 %i.xc, %i.xd
  %i.xg = sitofp i32 %i.xf to float
  %i.xh = fneg float %i.xg
  %i.xi = call float @llvm.fmuladd.f32(float %i.xh, float %i.wv, float %i.xe)
  %i.xj = fsub float %i.xi, %.1
  %i.xk = load float, ptr %i.kh, align 4, !tbaa !247
  %i.xl = fsub float %i.xj, %i.xk
  %i.xm = fsub float %i.xl, %i.wq
  %i.xn = fsub float %i.xm, %i.wu
  br label %_ZN5ImGui23TableCalcMaxColumnWidthEPK10ImGuiTablei.exit

bb.eb:                                            ; preds = %bb.dy
  %i.xo = and i32 %i.ww, 262144
  %i.xp = icmp eq i32 %i.xo, 0
  br i1 %i.xp, label %bb.ec, label %_ZN5ImGui23TableCalcMaxColumnWidthEPK10ImGuiTablei.exit

bb.ec:                                            ; preds = %bb.eb
  %i.xq = load float, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !378
  %i.xr = load i16, ptr %i.dt, align 2, !tbaa !343
  %i.xs = sext i16 %i.xr to i32
  %i.xt = getelementptr inbounds nuw i8, ptr %i.vg, i64 92
  %i.xu = load i16, ptr %i.xt, align 4, !tbaa !348
  %i.xv = xor i16 %i.xu, -1
  %i.xw = sext i16 %i.xv to i32
  %i.xx = add nsw i32 %i.xw, %i.xs
  %i.xy = sitofp i32 %i.xx to float
  %i.xz = fneg float %i.xy
  %i.ya = call float @llvm.fmuladd.f32(float %i.xz, float %i.wv, float %i.xq)
  %i.yb = fsub float %i.ya, %.1
  %i.yc = fsub float %i.yb, %i.wu
  %i.yd = fneg float %i.wq
  %i.ye = call float @llvm.fmuladd.f32(float %i.yd, float 2.000000e+00, float %i.yc)
  %i.yf = load float, ptr %i.kh, align 4, !tbaa !247
  %i.yg = fsub float %i.ye, %i.yf
  br label %_ZN5ImGui23TableCalcMaxColumnWidthEPK10ImGuiTablei.exit

_ZN5ImGui23TableCalcMaxColumnWidthEPK10ImGuiTablei.exit: ; preds = %bb.dz, %bb.ea, %bb.eb, %bb.ec
  %.0.i680 = phi float [ %i.xn, %bb.ea ], [ f0x7F7FFFFF, %bb.dz ], [ %i.yg, %bb.ec ], [ f0x7F7FFFFF, %bb.eb ] ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.vg, i64 24
  store float %.0.i680, ptr %i.yh, align 4, !tbaa !330
  %i.yi = getelementptr inbounds nuw i8, ptr %i.vg, i64 4 ; 2 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !331 ; 2 uses
  %i.yk = fcmp olt float %i.yj, %.0.i680
  %i.yl = select i1 %i.yk, float %i.yj, float %.0.i680 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !332 ; 2 uses
  %i.yo = fcmp olt float %i.yn, %i.wp
  %i.yp = select i1 %i.yo, float %i.yn, float %i.wp ; 2 uses
  %i.yq = fcmp oge float %i.yl, %i.yp
  %i.yr = select i1 %i.yq, float %i.yl, float %i.yp ; 4 uses
  store float %i.yr, ptr %i.yi, align 4, !tbaa !331
  %i.ys = fadd float %.1, %i.yr
  %i.yt = fadd float %i.ws, %i.ys
  %i.yu = fadd float %i.wu, %i.yt
  %i.yv = call float @llvm.fmuladd.f32(float %i.wq, float 2.000000e+00, float %i.yu) ; 6 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.vg, i64 12
  store float %i.yv, ptr %i.yw, align 4, !tbaa !374
  %i.yx = getelementptr inbounds nuw i8, ptr %i.vg, i64 60 ; 2 uses
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !351
  %i.yz = fadd float %.1, %i.wq
  %i.za = fadd float %i.yz, %i.ws                 ; 3 uses
  store float %i.za, ptr %i.yx, align 4, !tbaa !351
  %i.zb = fsub float %i.yv, %i.wq
  %i.zc = fsub float %i.zb, %i.wu
  %i.zd = getelementptr inbounds nuw i8, ptr %i.vg, i64 64
  store float %i.zc, ptr %i.zd, align 4, !tbaa !379
  %i.ze = fmul float %i.yr, 6.500000e-01
  %i.zf = fptosi float %i.ze to i32
  %i.zg = sitofp i32 %i.zf to float
  %i.zh = getelementptr inbounds nuw i8, ptr %i.vg, i64 68
  store float %i.zg, ptr %i.zh, align 4, !tbaa !376
  %i.zi = getelementptr inbounds nuw i8, ptr %i.vg, i64 36
  %i.zj = getelementptr inbounds nuw i8, ptr %i.vg, i64 44
  %i.zk = fcmp olt float %.1, %.sroa.0.0777
  %i.zl = fcmp ogt float %.1, %.sroa.13.0.copyload
  %..i.i681 = select i1 %i.zl, float %.sroa.13.0.copyload, float %.1
  %i.zm = select i1 %i.zk, float %.sroa.0.0777, float %..i.i681 ; 3 uses
  %15 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i684, float %i.zm, i64 0
  store <2 x float> %15, ptr %i.zi, align 4, !tbaa !177
  %i.zn = fcmp olt float %i.yv, %.sroa.0.0777
  %i.zo = fcmp ogt float %i.yv, %.sroa.13.0.copyload
  %..i6.i686 = select i1 %i.zo, float %.sroa.13.0.copyload, float %i.yv
  %i.zp = select i1 %i.zn, float %.sroa.0.0777, float %..i6.i686 ; 3 uses
  %16 = insertelement <2 x float> %.sroa.0.0.vec.insert.i8.i688, float %i.zp, i64 0
  store <2 x float> %16, ptr %i.zj, align 4, !tbaa !177
  %i.zq = fcmp ogt float %i.zp, %i.zm             ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.vg, i64 109
  %i.zs = zext i1 %i.zq to i8
  store i8 %i.zs, ptr %i.zr, align 1, !tbaa !380
  %i.zt = getelementptr inbounds nuw i8, ptr %i.vg, i64 110
  store i8 1, ptr %i.zt, align 2, !tbaa !381
  br i1 %i.zq, label %bb.ed, label %.critedge671

bb.ed:                                            ; preds = %_ZN5ImGui23TableCalcMaxColumnWidthEPK10ImGuiTablei.exit
  %i.zu = load ptr, ptr %i.uk, align 8, !tbaa !281
  %i.zv = and i32 %i.vd, 31
  %i.zw = shl nuw i32 1, %i.zv
  %i.zx = ashr i32 %i.vd, 5
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.zu, i64 %i.zy ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !299
  %i.aab = or i32 %i.aaa, %i.zw
  store i32 %i.aab, ptr %i.zz, align 4, !tbaa !299
  br label %bb.ef

.critedge671:                                     ; preds = %_ZN5ImGui23TableCalcMaxColumnWidthEPK10ImGuiTablei.exit
  %i.aac = getelementptr inbounds nuw i8, ptr %i.vg, i64 115
  %i.aad = load i16, ptr %i.aac, align 1          ; 2 uses
  %i.aae = and i16 %i.aad, 15
  %.not640 = icmp eq i16 %i.aae, 0
  br i1 %.not640, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.critedge671
  %i.aaf = and i16 %i.aad, 240
  %i.aag = icmp ne i16 %i.aaf, 0
  %i.aah = zext i1 %i.aag to i8
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ed, %bb.ee, %.critedge671
  %i.aai = phi i8 [ 1, %.critedge671 ], [ 1, %bb.ed ], [ %i.aah, %bb.ee ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.vg, i64 111
  store i8 %i.aai, ptr %i.aaj, align 1, !tbaa !357
  %i.aak = getelementptr inbounds nuw i8, ptr %i.vg, i64 106
  %i.aal = load i8, ptr %i.aak, align 2, !tbaa !309, !range !175, !noundef !176
  %i.aam = trunc nuw i8 %i.aal to i1
  br i1 %i.aam, label %bb.eg, label %.thread716

bb.eg:                                            ; preds = %bb.ef
  %i.aan = load i8, ptr %i.ut, align 1, !tbaa !236, !range !175, !noundef !176 ; 2 uses
  %i.aao = trunc nuw i8 %i.aan to i1
  %spec.select724 = select i1 %i.aao, i8 %.0562778, i8 1
  br label %.thread716

.thread716:                                       ; preds = %bb.ef, %bb.eg
  %.sink = phi i8 [ %i.aan, %bb.eg ], [ 1, %bb.ef ]
  %i.aap = phi i8 [ %spec.select724, %bb.eg ], [ %.0562778, %bb.ef ]
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.vg, i64 112
  store i8 %.sink, ptr %i.aaq, align 4, !tbaa !382
  %i.aar = trunc nuw i8 %i.aai to i1
  %.1563 = select i1 %i.aar, i8 %i.aap, i8 %.0562778
  %i.aas = load i32, ptr %i.vg, align 4, !tbaa !328
  %spec.select673.v = select i1 %i.zq, i32 50331648, i32 16777216
  %spec.select673 = or i32 %i.aas, %spec.select673.v ; 3 uses
  store i32 %spec.select673, ptr %i.vg, align 4, !tbaa !328
  %i.aat = getelementptr inbounds nuw i8, ptr %i.vg, i64 98
  %i.aau = load i16, ptr %i.aat, align 2, !tbaa !339
  %.not641 = icmp eq i16 %i.aau, -1
  br i1 %.not641, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.thread716
  %i.aav = or i32 %spec.select673, 67108864       ; 2 uses
  store i32 %i.aav, ptr %i.vg, align 4, !tbaa !328
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.thread716
  %i.aaw = phi i32 [ %i.aav, %bb.eh ], [ %spec.select673, %.thread716 ]
  %i.aax = fcmp oge float %.0565, %i.zm
  %i.aay = fcmp olt float %.0565, %i.zp
  %i.aaz = and i1 %i.aay, %i.aax
  %or.cond727 = select i1 %i.tk, i1 %i.aaz, i1 false
  br i1 %or.cond727, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.aba = or i32 %i.aaw, 134217728
  store i32 %i.aba, ptr %i.vg, align 4, !tbaa !328
  store i16 %i.vc, ptr %i.ss, align 2, !tbaa !298
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.abb = load i16, ptr %i.sf, align 8, !tbaa !216
  %i.abc = icmp eq i16 %i.abb, 0
  br i1 %i.abc, label %bb.el, label %.thread718

bb.el:                                            ; preds = %bb.ek
  %i.abd = getelementptr inbounds nuw i8, ptr %i.vg, i64 72
  %i.abe = insertelement <4 x float> poison, float %i.za, i64 0
  %i.abf = shufflevector <4 x float> %i.abe, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.abf, ptr %i.abd, align 4, !tbaa !177
  %i.abg = load i8, ptr %i.ut, align 1, !tbaa !236, !range !175, !noundef !176
  %i.abh = icmp eq i8 %i.abg, 0
  br i1 %i.abh, label %bb.em, label %.thread719

.thread718:                                       ; preds = %bb.ek
  %i.abi = fsub float %i.za, %i.yy
  %i.abj = getelementptr inbounds nuw i8, ptr %i.vg, i64 72 ; 2 uses
  %i.abk = load <4 x float>, ptr %i.abj, align 4, !tbaa !177
  %i.abl = insertelement <4 x float> poison, float %i.abi, i64 0
  %i.abm = shufflevector <4 x float> %i.abl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abn = fadd <4 x float> %i.abk, %i.abm
  store <4 x float> %i.abn, ptr %i.abj, align 4, !tbaa !177
  br label %.thread719

bb.em:                                            ; preds = %bb.el
  %i.abo = getelementptr inbounds nuw i8, ptr %i.vg, i64 115 ; 2 uses
  %i.abp = load i16, ptr %i.abo, align 1          ; 2 uses
  %i.abq = lshr i16 %i.abp, 1
  %i.abr = and i16 %i.abp, -256
  %i.abs = and i16 %i.abq, 119
  %i.abt = or disjoint i16 %i.abs, %i.abr
  store i16 %i.abt, ptr %i.abo, align 1
  br label %.thread719

.thread719:                                       ; preds = %.thread718, %bb.em, %bb.el
  %i.abu = load i16, ptr %i.ud, align 2, !tbaa !370
  %i.abv = sext i16 %i.abu to i64
  %i.abw = icmp slt i64 %indvars.iv803, %i.abv
  br i1 %i.abw, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.thread719
  %i.abx = fadd float %i.yv, 1.000000e+00         ; 3 uses
  %i.aby = fcmp olt float %i.abx, %.sroa.0.0777
  %i.abz = fcmp ogt float %i.abx, %.sroa.13.0.copyload
  %i.aca = select i1 %i.abz, float %.sroa.13.0.copyload, float %i.abx
  %i.acb = select i1 %i.aby, float %.sroa.0.0777, float %i.aca
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.thread719
  %.sroa.0.1 = phi float [ %i.acb, %bb.en ], [ %.sroa.0.0777, %.thread719 ]
  %i.acc = load float, ptr %i.kj, align 4, !tbaa !244
  %i.acd = fadd float %i.yr, %i.acc
  %i.ace = load float, ptr %i.kl, align 8, !tbaa !245
  %i.acf = fadd float %i.acd, %i.ace
  %i.acg = load float, ptr %i.pb, align 8, !tbaa !246
  %i.ach = call float @llvm.fmuladd.f32(float %i.acg, float 2.000000e+00, float %i.acf)
  %i.aci = fadd float %.1, %i.ach
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %.sroa.0.2 = phi float [ %.sroa.0.0777, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ], [ %.sroa.0.1, %bb.eo ]
  %.2564 = phi i8 [ %.0562778, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ], [ %.1563, %bb.eo ] ; 2 uses
  %.2 = phi float [ %.1, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ], [ %i.aci, %bb.eo ]
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 1 ; 2 uses
  %exitcond806.not = icmp eq i64 %indvars.iv.next804, %wide.trip.count805
  br i1 %exitcond806.not, label %._crit_edge783, label %bb.ds, !llvm.loop !547

._crit_edge783.thread:                            ; preds = %.cont, %._crit_edge783
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ack = load i16, ptr %i.ec, align 2, !tbaa !549
  %i.acl = load ptr, ptr %i.acj, align 8, !tbaa !271 ; 2 uses
  %i.acm = sext i16 %i.ack to i64
  %i.acn = getelementptr inbounds [120 x i8], ptr %i.acl, i64 %i.acm ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 111
  store i8 1, ptr %i.aco, align 1, !tbaa !357
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 112
  store i8 0, ptr %i.acp, align 4, !tbaa !382
  br label %bb.eq

bb.eq:                                            ; preds = %._crit_edge783._crit_edge, %._crit_edge783.thread
  %i.acq = phi ptr [ %.pre816, %._crit_edge783._crit_edge ], [ %i.acl, %._crit_edge783.thread ]
  %i.acr = load float, ptr %i.kg, align 8, !tbaa !383 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.act = load i16, ptr %i.jr, align 8, !tbaa !354
  %i.acu = sext i16 %i.act to i64
  %i.acv = getelementptr inbounds [120 x i8], ptr %i.acq, i64 %i.acu
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 44
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !384 ; 2 uses
  %i.acy = fcmp oge float %i.acr, %i.acx
  %i.acz = select i1 %i.acy, float %i.acr, float %i.acx ; 5 uses
  br i1 %i.tk, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  %i.ada = load i16, ptr %i.ss, align 2, !tbaa !298
  %i.adb = icmp ne i16 %i.ada, -1
  %i.adc = fcmp ult float %.0565, %i.acz
  %or.cond674 = select i1 %i.adb, i1 true, i1 %i.adc
  br i1 %or.cond674, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.add = trunc i32 %i.e to i16
  store i16 %i.add, ptr %i.ss, align 2, !tbaa !298
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %bb.eq
  %.pre817.pre = load i32, ptr %i.do, align 4, !tbaa !217 ; 3 uses
  %i.ade = and i32 %.pre817.pre, 1
  %.not627 = icmp eq i32 %i.ade, 0
  %or.cond866 = select i1 %.0586.lcssa, i1 true, i1 %.not627
  br i1 %or.cond866, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.adf = and i32 %.pre817.pre, -2               ; 2 uses
  store i32 %i.adf, ptr %i.do, align 4, !tbaa !217
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
end_hunk_1
