Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nanovg?download=true
inline.NumInlined: 893
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 56
begin_hunk_0_@stbtt_Rasterize:bb.a
.lr.ph467.i.i.i:                                  ; preds = %bb.cl
  %i.wh = fmul float %i.wf, 5.000000e-01          ; 3 uses
  %i.wi = add nuw nsw i64 %i.vw, 1                ; 2 uses
  %i.wj = add nsw i32 %.pre-phi474.i.i.i, -2
  %i.wk = sub nsw i32 %.pre-phi.i.i.i, %.pre-phi474.i.i.i
  %i.wl = and i32 %i.wk, 1
  %lcmp.mod.not.not = icmp eq i32 %i.wl, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i
  %i.wm = fadd float %i.wh, %i.vs
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.wi ; 2 uses
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !81
  %i.wp = fadd float %i.wm, %i.wo
  store float %i.wp, ptr %i.wn, align 4, !tbaa !81
  %i.wq = fadd float %i.wf, %i.vs                 ; 2 uses
  %indvars.iv.next472.i.i.i.prol = add nuw nsw i64 %i.vw, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i
  %indvars.iv471.i.i.i.unr = phi i64 [ %i.wi, %.lr.ph467.i.i.i ], [ %indvars.iv.next472.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.unr = phi float [ %i.vs, %.lr.ph467.i.i.i ], [ %i.wq, %.prol.loopexit.unr-lcssa ]
  %.lcssa183.unr = phi float [ poison, %.lr.ph467.i.i.i ], [ %i.wq, %.prol.loopexit.unr-lcssa ]
  %i.wr = icmp eq i32 %i.wj, %.pre-phi.i.i.i
  br i1 %i.wr, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new

.lr.ph467.i.i.i.new:                              ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.1, %.lr.ph467.i.i.i.new ], [ %indvars.iv471.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i = phi float [ %i.xc, %.lr.ph467.i.i.i.new ], [ %.0294466.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.ws = fadd float %i.wh, %.0294466.i.i.i
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i ; 2 uses
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !81
  %i.wv = fadd float %i.ws, %i.wu
  store float %i.wv, ptr %i.wt, align 4, !tbaa !81
  %i.ww = fadd float %i.wf, %.0294466.i.i.i       ; 2 uses
  %i.wx = fadd float %i.wh, %i.ww
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 4 ; 2 uses
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !81
  %i.xb = fadd float %i.wx, %i.xa
  store float %i.xb, ptr %i.wz, align 4, !tbaa !81
  %i.xc = fadd float %i.wf, %i.ww                 ; 2 uses
  %indvars.iv.next472.i.i.i.1 = add nuw nsw i64 %indvars.iv471.i.i.i, 2 ; 2 uses
  %i.xd = trunc nuw i64 %indvars.iv.next472.i.i.i.1 to i32
  %i.xe = icmp sgt i32 %.pre-phi474.i.i.i, %i.xd
  br i1 %i.xe, label %.lr.ph467.i.i.i.new, label %._crit_edge.i.i.i, !llvm.loop !342

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new, %bb.cl
  %.0294.lcssa.i.i.i = phi float [ %i.vs, %bb.cl ], [ %.lcssa183.unr, %.prol.loopexit ], [ %i.xc, %.lr.ph467.i.i.i.new ]
  %i.xf = fsub float %.1300.i.i.i, %.0295.i.i.i
  %i.xg = fadd float %i.vl, 1.000000e+00          ; 2 uses
  %i.xh = fsub nnan float %i.xg, %i.vl
  %i.xi = fsub float %i.xg, %.1304.i.i.i
  %i.xj = fadd float %i.xh, %i.xi
  %i.xk = fmul float %i.xj, 5.000000e-01
  %i.xl = fmul float %i.xk, %i.xf
  %i.xm = tail call float @llvm.fmuladd.f32(float %i.vq, float %i.xl, float %.0294.lcssa.i.i.i)
  %i.xn = zext nneg i32 %.pre-phi474.i.i.i to i64 ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.xn ; 2 uses
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !81
  %i.xq = fadd float %i.xm, %i.xp
  store float %i.xq, ptr %i.xo, align 4, !tbaa !81
  %i.xr = fsub float %.1300.i.i.i, %.1302.i.i.i
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.xn ; 2 uses
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !81
  %i.xu = tail call float @llvm.fmuladd.f32(float %i.vq, float %i.xr, float %i.xt)
  store float %i.xu, ptr %i.xs, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cm:                                            ; preds = %bb.cg, %bb.cf
  br i1 %i.of, label %.lr.ph.i.i94.i, label %stbtt__handle_clipped_edge.exit351.i.i.i

.lr.ph.i.i94.i:                                   ; preds = %bb.cm
  %i.xv = fsub float %i.tp, %i.om
  %i.xw = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20 ; 30 uses
  %i.xx = insertelement <2 x float> poison, float %i.om, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xz = insertelement <2 x float> poison, float %i.ok, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cn

bb.cn:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %.lr.ph.i.i94.i
  %indvars.iv.i.i95.i = phi i64 [ 0, %.lr.ph.i.i94.i ], [ %indvars.iv.next.i.i96.i, %stbtt__handle_clipped_edge.exit379.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i = add nuw nsw i64 %indvars.iv.i.i95.i, 1 ; 3 uses
  %i.yb = trunc nuw nsw i64 %indvars.iv.i.i95.i to i32
  %i.yc = uitofp nneg i32 %i.yb to float          ; 90 uses
  %i.yd = trunc nuw nsw i64 %indvars.iv.next.i.i96.i to i32
  %i.ye = uitofp nneg i32 %i.yd to float          ; 60 uses
  %i.yf = insertelement <2 x float> poison, float %i.yc, i64 0
  %i.yg = insertelement <2 x float> %i.yf, float %i.ye, i64 1
  %i.yh = fsub <2 x float> %i.yg, %i.xy           ; 7 uses
  %i.yi = fdiv <2 x float> %i.yh, %i.ya           ; 2 uses
  %i.yj = extractelement <2 x float> %i.yi, i64 0
  %i.yk = fadd float %i.yj, %i.lq                 ; 52 uses
  %i.yl = extractelement <2 x float> %i.yi, i64 1
  %i.ym = fadd float %i.yl, %i.lq                 ; 52 uses
  %i.yn = fcmp olt float %i.om, %i.yc             ; 2 uses
  %i.yo = fcmp ogt float %i.tp, %i.ye             ; 2 uses
  %or.cond339.i.i.i = select i1 %i.yn, i1 %i.yo, i1 false
  br i1 %or.cond339.i.i.i, label %bb.co, label %bb.dt

bb.co:                                            ; preds = %bb.cn
  %i.yp = fcmp oeq float %i.yk, %i.lq
  br i1 %i.yp, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.yq = load float, ptr %i.tx, align 4, !tbaa !353 ; 4 uses
  %i.yr = fcmp olt float %i.yq, %i.lq
  br i1 %i.yr, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ys = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.yt = fcmp olt float %i.yk, %i.ys
  br i1 %i.yt, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yu = fcmp ogt float %i.ys, %i.lq
  br i1 %i.yu, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.yv = fsub float %i.ys, %i.lq
  %i.yw = extractelement <2 x float> %i.yh, i64 0
  %i.yx = fmul float %i.yw, %i.yv
  %i.yy = fsub float %i.yk, %i.lq
  %i.yz = fdiv float %i.yx, %i.yy
  %i.za = fadd float %i.om, %i.yz
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.055.i359.i.i.i = phi float [ %i.za, %bb.cs ], [ %i.om, %bb.cr ] ; 4 uses
  %.054.i360.i.i.i = phi float [ %i.ys, %bb.cs ], [ %i.lq, %bb.cr ] ; 3 uses
  %i.zb = fcmp ogt float %i.yk, %i.yq
  br i1 %i.zb, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.zc = fsub float %i.yc, %.055.i359.i.i.i
  %i.zd = fsub float %i.yq, %i.yk
  %i.ze = fmul float %i.zd, %i.zc
  %i.zf = fsub float %i.yk, %.054.i360.i.i.i
  %i.zg = fdiv float %i.ze, %i.zf
  %i.zh = fadd float %i.zg, %i.yc
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.053.i361.i.i.i = phi float [ %i.zh, %bb.cu ], [ %i.yc, %bb.ct ] ; 3 uses
  %.0.i362.i.i.i = phi float [ %i.yq, %bb.cu ], [ %i.yk, %bb.ct ] ; 2 uses
  %i.zi = fcmp ugt float %.055.i359.i.i.i, %i.yc
  %i.zj = fcmp ugt float %.053.i361.i.i.i, %i.yc
  %or.cond.i363.i.i.i = select i1 %i.zi, i1 true, i1 %i.zj
  br i1 %or.cond.i363.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zk = load float, ptr %i.xw, align 4, !tbaa !355
  %i.zl = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !81
  %i.zo = tail call float @llvm.fmuladd.f32(float %i.zk, float %i.zl, float %i.zn)
  store float %i.zo, ptr %i.zm, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.zp = fcmp ult float %.055.i359.i.i.i, %i.ye
  %i.zq = fcmp ult float %.053.i361.i.i.i, %i.ye
  %or.cond62.i364.i.i.i = select i1 %i.zp, i1 true, i1 %i.zq
  br i1 %or.cond62.i364.i.i.i, label %bb.cy, label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.zr = load float, ptr %i.xw, align 4, !tbaa !355
  %i.zs = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.zt = fmul float %i.zs, %i.zr
  %i.zu = fsub float %.055.i359.i.i.i, %i.yc
  %i.zv = fsub float %.053.i361.i.i.i, %i.yc
  %i.zw = fadd float %i.zu, %i.zv
  %i.zx = fmul float %i.zw, 5.000000e-01
  %i.zy = fsub float 1.000000e+00, %i.zx
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !81
  %i.aab = tail call float @llvm.fmuladd.f32(float %i.zt, float %i.zy, float %i.aaa)
  store float %i.aab, ptr %i.zz, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i:         ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cq, %bb.cp, %bb.co
  %i.aac = fcmp oeq float %i.yk, %i.ym
  br i1 %i.aac, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.aad = load float, ptr %i.tx, align 4, !tbaa !353 ; 4 uses
  %i.aae = fcmp ogt float %i.yk, %i.aad
  br i1 %i.aae, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aaf = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.aag = fcmp olt float %i.ym, %i.aaf
  br i1 %i.aag, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aah = fcmp olt float %i.yk, %i.aaf
  br i1 %i.aah, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.aai = fsub nnan ninf float %i.ye, %i.yc
  %i.aaj = fsub float %i.aaf, %i.yk
  %i.aak = fmul float %i.aai, %i.aaj
  %i.aal = fsub float %i.ym, %i.yk
  %i.aam = fdiv float %i.aak, %i.aal
  %i.aan = fadd float %i.aam, %i.yc
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.055.i366.i.i.i = phi float [ %i.aan, %bb.dc ], [ %i.yc, %bb.db ] ; 4 uses
  %.054.i367.i.i.i = phi float [ %i.aaf, %bb.dc ], [ %i.yk, %bb.db ] ; 3 uses
  %i.aao = fcmp ogt float %i.ym, %i.aad
  br i1 %i.aao, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aap = fsub float %i.ye, %.055.i366.i.i.i
  %i.aaq = fsub float %i.aad, %i.ym
  %i.aar = fmul float %i.aaq, %i.aap
  %i.aas = fsub float %i.ym, %.054.i367.i.i.i
  %i.aat = fdiv float %i.aar, %i.aas
  %i.aau = fadd float %i.aat, %i.ye
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.053.i368.i.i.i = phi float [ %i.aau, %bb.de ], [ %i.ye, %bb.dd ] ; 3 uses
  %.0.i369.i.i.i = phi float [ %i.aad, %bb.de ], [ %i.ym, %bb.dd ] ; 2 uses
  %i.aav = fcmp ugt float %.055.i366.i.i.i, %i.yc
  %i.aaw = fcmp ugt float %.053.i368.i.i.i, %i.yc
  %or.cond.i370.i.i.i = select i1 %i.aav, i1 true, i1 %i.aaw
  br i1 %or.cond.i370.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aax = load float, ptr %i.xw, align 4, !tbaa !355
  %i.aay = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !81
  %i.abb = tail call float @llvm.fmuladd.f32(float %i.aax, float %i.aay, float %i.aba)
  store float %i.abb, ptr %i.aaz, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.abc = fcmp ult float %.055.i366.i.i.i, %i.ye
  %i.abd = fcmp ult float %.053.i368.i.i.i, %i.ye
  %or.cond62.i371.i.i.i = select i1 %i.abc, i1 true, i1 %i.abd
  br i1 %or.cond62.i371.i.i.i, label %bb.di, label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.di:                                            ; preds = %bb.dh
  %i.abe = load float, ptr %i.xw, align 4, !tbaa !355
  %i.abf = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.abg = fmul float %i.abf, %i.abe
  %i.abh = fsub float %.055.i366.i.i.i, %i.yc
  %i.abi = fsub float %.053.i368.i.i.i, %i.yc
  %i.abj = fadd float %i.abh, %i.abi
  %i.abk = fmul float %i.abj, 5.000000e-01
  %i.abl = fsub float 1.000000e+00, %i.abk
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !81
  %i.abo = tail call float @llvm.fmuladd.f32(float %i.abg, float %i.abl, float %i.abn)
  store float %i.abo, ptr %i.abm, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

stbtt__handle_clipped_edge.exit372.i.i.i:         ; preds = %bb.di, %bb.dh, %bb.dg, %bb.da, %bb.cz, %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.abp = fcmp oeq float %i.ym, %i.lr
  br i1 %i.abp, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %stbtt__handle_clipped_edge.exit372.i.i.i
  %i.abq = load float, ptr %i.tx, align 4, !tbaa !353 ; 4 uses
  %i.abr = fcmp ogt float %i.ym, %i.abq
  br i1 %i.abr, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.abs = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.abt = fcmp olt float %i.lr, %i.abs
  br i1 %i.abt, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.abu = fcmp olt float %i.ym, %i.abs
  br i1 %i.abu, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.abv = fsub float %i.tp, %i.ye
  %i.abw = fsub float %i.abs, %i.ym
  %i.abx = fmul float %i.abv, %i.abw
  %i.aby = fsub float %i.lr, %i.ym
  %i.abz = fdiv float %i.abx, %i.aby
  %i.aca = fadd float %i.abz, %i.ye
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.055.i373.i.i.i = phi float [ %i.aca, %bb.dm ], [ %i.ye, %bb.dl ] ; 4 uses
  %.054.i374.i.i.i = phi float [ %i.abs, %bb.dm ], [ %i.ym, %bb.dl ] ; 3 uses
  %i.acb = fcmp ogt float %i.lr, %i.abq
  br i1 %i.acb, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.acc = fsub float %i.tp, %.055.i373.i.i.i
  %i.acd = fsub float %i.abq, %i.lr
  %i.ace = fmul float %i.acd, %i.acc
  %i.acf = fsub float %i.lr, %.054.i374.i.i.i
  %i.acg = fdiv float %i.ace, %i.acf
  %i.ach = fadd float %i.tp, %i.acg
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.053.i375.i.i.i = phi float [ %i.ach, %bb.do ], [ %i.tp, %bb.dn ] ; 3 uses
  %.0.i376.i.i.i = phi float [ %i.abq, %bb.do ], [ %i.lr, %bb.dn ] ; 2 uses
  %i.aci = fcmp ugt float %.055.i373.i.i.i, %i.yc
  %i.acj = fcmp ugt float %.053.i375.i.i.i, %i.yc
  %or.cond.i377.i.i.i = select i1 %i.aci, i1 true, i1 %i.acj
  br i1 %or.cond.i377.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ack = load float, ptr %i.xw, align 4, !tbaa !355
  %i.acl = fsub float %.0.i376.i.i.i, %.054.i374.i.i.i
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !81
  %i.aco = tail call float @llvm.fmuladd.f32(float %i.ack, float %i.acl, float %i.acn)
  store float %i.aco, ptr %i.acm, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.acp = fcmp ult float %.055.i373.i.i.i, %i.ye
  %i.acq = fcmp ult float %.053.i375.i.i.i, %i.ye
  %or.cond62.i378.i.i.i = select i1 %i.acp, i1 true, i1 %i.acq
  br i1 %or.cond62.i378.i.i.i, label %bb.ds, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ds:                                            ; preds = %bb.dr
  %i.acr = load float, ptr %i.xw, align 4, !tbaa !355
  %i.acs = fsub float %.0.i376.i.i.i, %.054.i374.i.i.i
  %i.act = fmul float %i.acs, %i.acr
  %i.acu = fsub float %.055.i373.i.i.i, %i.yc
  %i.acv = fsub float %.053.i375.i.i.i, %i.yc
  %i.acw = fadd float %i.acu, %i.acv
  %i.acx = fmul float %i.acw, 5.000000e-01
  %i.acy = fsub float 1.000000e+00, %i.acx
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !81
  %i.adb = tail call float @llvm.fmuladd.f32(float %i.act, float %i.acy, float %i.ada)
  store float %i.adb, ptr %i.acz, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.dt:                                            ; preds = %bb.cn
  %i.adc = fcmp olt float %i.tp, %i.yc            ; 2 uses
  %i.add = fcmp ogt float %i.om, %i.ye            ; 2 uses
  %or.cond340.i.i.i = select i1 %i.adc, i1 %i.add, i1 false
  br i1 %or.cond340.i.i.i, label %bb.du, label %bb.ez

bb.du:                                            ; preds = %bb.dt
  %i.ade = fcmp oeq float %i.ym, %i.lq
  br i1 %i.ade, label %stbtt__handle_clipped_edge.exit386.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.adf = load float, ptr %i.tx, align 4, !tbaa !353 ; 4 uses
  %i.adg = fcmp olt float %i.adf, %i.lq
  br i1 %i.adg, label %stbtt__handle_clipped_edge.exit386.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.adh = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.adi = fcmp olt float %i.ym, %i.adh
  br i1 %i.adi, label %stbtt__handle_clipped_edge.exit386.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.adj = fcmp ogt float %i.adh, %i.lq
  br i1 %i.adj, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.adk = fsub float %i.adh, %i.lq
  %i.adl = extractelement <2 x float> %i.yh, i64 1
  %i.adm = fmul float %i.adl, %i.adk
  %i.adn = fsub float %i.ym, %i.lq
  %i.ado = fdiv float %i.adm, %i.adn
  %i.adp = fadd float %i.om, %i.ado
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.055.i380.i.i.i = phi float [ %i.adp, %bb.dy ], [ %i.om, %bb.dx ] ; 4 uses
  %.054.i381.i.i.i = phi float [ %i.adh, %bb.dy ], [ %i.lq, %bb.dx ] ; 3 uses
  %i.adq = fcmp ogt float %i.ym, %i.adf
  br i1 %i.adq, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.adr = fsub float %i.ye, %.055.i380.i.i.i
  %i.ads = fsub float %i.adf, %i.ym
  %i.adt = fmul float %i.ads, %i.adr
  %i.adu = fsub float %i.ym, %.054.i381.i.i.i
  %i.adv = fdiv float %i.adt, %i.adu
  %i.adw = fadd float %i.adv, %i.ye
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.053.i382.i.i.i = phi float [ %i.adw, %bb.ea ], [ %i.ye, %bb.dz ] ; 3 uses
  %.0.i383.i.i.i = phi float [ %i.adf, %bb.ea ], [ %i.ym, %bb.dz ] ; 2 uses
  %i.adx = fcmp ugt float %.055.i380.i.i.i, %i.yc
  %i.ady = fcmp ugt float %.053.i382.i.i.i, %i.yc
  %or.cond.i384.i.i.i = select i1 %i.adx, i1 true, i1 %i.ady
  br i1 %or.cond.i384.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.adz = load float, ptr %i.xw, align 4, !tbaa !355
  %i.aea = fsub float %.0.i383.i.i.i, %.054.i381.i.i.i
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !81
  %i.aed = tail call float @llvm.fmuladd.f32(float %i.adz, float %i.aea, float %i.aec)
  store float %i.aed, ptr %i.aeb, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit386.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.aee = fcmp ult float %.055.i380.i.i.i, %i.ye
  %i.aef = fcmp ult float %.053.i382.i.i.i, %i.ye
  %or.cond62.i385.i.i.i = select i1 %i.aee, i1 true, i1 %i.aef
  br i1 %or.cond62.i385.i.i.i, label %bb.ee, label %stbtt__handle_clipped_edge.exit386.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.aeg = load float, ptr %i.xw, align 4, !tbaa !355
  %i.aeh = fsub float %.0.i383.i.i.i, %.054.i381.i.i.i
  %i.aei = fmul float %i.aeh, %i.aeg
  %i.aej = fsub float %.055.i380.i.i.i, %i.yc
  %i.aek = fsub float %.053.i382.i.i.i, %i.yc
  %i.ael = fadd float %i.aej, %i.aek
  %i.aem = fmul float %i.ael, 5.000000e-01
  %i.aen = fsub float 1.000000e+00, %i.aem
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aep = load float, ptr %i.aeo, align 4, !tbaa !81
  %i.aeq = tail call float @llvm.fmuladd.f32(float %i.aei, float %i.aen, float %i.aep)
  store float %i.aeq, ptr %i.aeo, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit386.i.i.i

stbtt__handle_clipped_edge.exit386.i.i.i:         ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.dw, %bb.dv, %bb.du
  %i.aer = fcmp oeq float %i.ym, %i.yk
  br i1 %i.aer, label %stbtt__handle_clipped_edge.exit393.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %stbtt__handle_clipped_edge.exit386.i.i.i
  %i.aes = load float, ptr %i.tx, align 4, !tbaa !353 ; 4 uses
  %i.aet = fcmp ogt float %i.ym, %i.aes
  br i1 %i.aet, label %stbtt__handle_clipped_edge.exit393.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aeu = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.aev = fcmp olt float %i.yk, %i.aeu
  br i1 %i.aev, label %stbtt__handle_clipped_edge.exit393.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aew = fcmp olt float %i.ym, %i.aeu
  br i1 %i.aew, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.aex = fsub nnan ninf float %i.yc, %i.ye
  %i.aey = fsub float %i.aeu, %i.ym
  %i.aez = fmul float %i.aex, %i.aey
  %i.afa = fsub float %i.yk, %i.ym
  %i.afb = fdiv float %i.aez, %i.afa
  %i.afc = fadd float %i.afb, %i.ye
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.055.i387.i.i.i = phi float [ %i.afc, %bb.ei ], [ %i.ye, %bb.eh ] ; 4 uses
  %.054.i388.i.i.i = phi float [ %i.aeu, %bb.ei ], [ %i.ym, %bb.eh ] ; 3 uses
  %i.afd = fcmp ogt float %i.yk, %i.aes
  br i1 %i.afd, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.afe = fsub float %i.yc, %.055.i387.i.i.i
  %i.aff = fsub float %i.aes, %i.yk
  %i.afg = fmul float %i.aff, %i.afe
  %i.afh = fsub float %i.yk, %.054.i388.i.i.i
  %i.afi = fdiv float %i.afg, %i.afh
  %i.afj = fadd float %i.afi, %i.yc
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.053.i389.i.i.i = phi float [ %i.afj, %bb.ek ], [ %i.yc, %bb.ej ] ; 3 uses
  %.0.i390.i.i.i = phi float [ %i.aes, %bb.ek ], [ %i.yk, %bb.ej ] ; 2 uses
  %i.afk = fcmp ugt float %.055.i387.i.i.i, %i.yc
  %i.afl = fcmp ugt float %.053.i389.i.i.i, %i.yc
  %or.cond.i391.i.i.i = select i1 %i.afk, i1 true, i1 %i.afl
  br i1 %or.cond.i391.i.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.afm = load float, ptr %i.xw, align 4, !tbaa !355
  %i.afn = fsub float %.0.i390.i.i.i, %.054.i388.i.i.i
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !81
  %i.afq = tail call float @llvm.fmuladd.f32(float %i.afm, float %i.afn, float %i.afp)
  store float %i.afq, ptr %i.afo, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit393.i.i.i

bb.en:                                            ; preds = %bb.el
  %i.afr = fcmp ult float %.055.i387.i.i.i, %i.ye
  %i.afs = fcmp ult float %.053.i389.i.i.i, %i.ye
  %or.cond62.i392.i.i.i = select i1 %i.afr, i1 true, i1 %i.afs
  br i1 %or.cond62.i392.i.i.i, label %bb.eo, label %stbtt__handle_clipped_edge.exit393.i.i.i

bb.eo:                                            ; preds = %bb.en
  %i.aft = load float, ptr %i.xw, align 4, !tbaa !355
  %i.afu = fsub float %.0.i390.i.i.i, %.054.i388.i.i.i
  %i.afv = fmul float %i.afu, %i.aft
  %i.afw = fsub float %.055.i387.i.i.i, %i.yc
  %i.afx = fsub float %.053.i389.i.i.i, %i.yc
  %i.afy = fadd float %i.afw, %i.afx
  %i.afz = fmul float %i.afy, 5.000000e-01
  %i.aga = fsub float 1.000000e+00, %i.afz
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !81
  %i.agd = tail call float @llvm.fmuladd.f32(float %i.afv, float %i.aga, float %i.agc)
  store float %i.agd, ptr %i.agb, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit393.i.i.i

stbtt__handle_clipped_edge.exit393.i.i.i:         ; preds = %bb.eo, %bb.en, %bb.em, %bb.eg, %bb.ef, %stbtt__handle_clipped_edge.exit386.i.i.i
  %i.age = fcmp oeq float %i.yk, %i.lr
  br i1 %i.age, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %stbtt__handle_clipped_edge.exit393.i.i.i
  %i.agf = load float, ptr %i.tx, align 4, !tbaa !353 ; 4 uses
  %i.agg = fcmp ogt float %i.yk, %i.agf
  br i1 %i.agg, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.agh = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.agi = fcmp olt float %i.lr, %i.agh
  br i1 %i.agi, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.agj = fcmp olt float %i.yk, %i.agh
  br i1 %i.agj, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.agk = fsub float %i.tp, %i.yc
  %i.agl = fsub float %i.agh, %i.yk
  %i.agm = fmul float %i.agk, %i.agl
  %i.agn = fsub float %i.lr, %i.yk
  %i.ago = fdiv float %i.agm, %i.agn
  %i.agp = fadd float %i.ago, %i.yc
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.055.i394.i.i.i = phi float [ %i.agp, %bb.es ], [ %i.yc, %bb.er ] ; 4 uses
  %.054.i395.i.i.i = phi float [ %i.agh, %bb.es ], [ %i.yk, %bb.er ] ; 3 uses
  %i.agq = fcmp ogt float %i.lr, %i.agf
  br i1 %i.agq, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.agr = fsub float %i.tp, %.055.i394.i.i.i
  %i.ags = fsub float %i.agf, %i.lr
  %i.agt = fmul float %i.ags, %i.agr
  %i.agu = fsub float %i.lr, %.054.i395.i.i.i
  %i.agv = fdiv float %i.agt, %i.agu
  %i.agw = fadd float %i.tp, %i.agv
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.053.i396.i.i.i = phi float [ %i.agw, %bb.eu ], [ %i.tp, %bb.et ] ; 3 uses
  %.0.i397.i.i.i = phi float [ %i.agf, %bb.eu ], [ %i.lr, %bb.et ] ; 2 uses
  %i.agx = fcmp ugt float %.055.i394.i.i.i, %i.yc
  %i.agy = fcmp ugt float %.053.i396.i.i.i, %i.yc
  %or.cond.i398.i.i.i = select i1 %i.agx, i1 true, i1 %i.agy
  br i1 %or.cond.i398.i.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.agz = load float, ptr %i.xw, align 4, !tbaa !355
  %i.aha = fsub float %.0.i397.i.i.i, %.054.i395.i.i.i
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !81
  %i.ahd = tail call float @llvm.fmuladd.f32(float %i.agz, float %i.aha, float %i.ahc)
  store float %i.ahd, ptr %i.ahb, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ex:                                            ; preds = %bb.ev
  %i.ahe = fcmp ult float %.055.i394.i.i.i, %i.ye
  %i.ahf = fcmp ult float %.053.i396.i.i.i, %i.ye
  %or.cond62.i399.i.i.i = select i1 %i.ahe, i1 true, i1 %i.ahf
  br i1 %or.cond62.i399.i.i.i, label %bb.ey, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ey:                                            ; preds = %bb.ex
  %i.ahg = load float, ptr %i.xw, align 4, !tbaa !355
  %i.ahh = fsub float %.0.i397.i.i.i, %.054.i395.i.i.i
  %i.ahi = fmul float %i.ahh, %i.ahg
  %i.ahj = fsub float %.055.i394.i.i.i, %i.yc
  %i.ahk = fsub float %.053.i396.i.i.i, %i.yc
  %i.ahl = fadd float %i.ahj, %i.ahk
  %i.ahm = fmul float %i.ahl, 5.000000e-01
  %i.ahn = fsub float 1.000000e+00, %i.ahm
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !81
  %i.ahq = tail call float @llvm.fmuladd.f32(float %i.ahi, float %i.ahn, float %i.ahp)
  store float %i.ahq, ptr %i.aho, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ez:                                            ; preds = %bb.dt
  %i.ahr = fcmp ogt float %i.tp, %i.yc
  %or.cond341.i.i.i = and i1 %i.yn, %i.ahr
  br i1 %or.cond341.i.i.i, label %bb.fa, label %bb.fv

bb.fa:                                            ; preds = %bb.ez
  %i.ahs = fcmp oeq float %i.yk, %i.lq
  br i1 %i.ahs, label %stbtt__handle_clipped_edge.exit407.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aht = load float, ptr %i.tx, align 4, !tbaa !353 ; 4 uses
  %i.ahu = fcmp olt float %i.aht, %i.lq
  br i1 %i.ahu, label %stbtt__handle_clipped_edge.exit407.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ahv = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.ahw = fcmp olt float %i.yk, %i.ahv
  br i1 %i.ahw, label %stbtt__handle_clipped_edge.exit407.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ahx = fcmp ogt float %i.ahv, %i.lq
  br i1 %i.ahx, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ahy = fsub float %i.ahv, %i.lq
  %i.ahz = extractelement <2 x float> %i.yh, i64 0
  %i.aia = fmul float %i.ahz, %i.ahy
  %i.aib = fsub float %i.yk, %i.lq
  %i.aic = fdiv float %i.aia, %i.aib
  %i.aid = fadd float %i.om, %i.aic
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.055.i401.i.i.i = phi float [ %i.aid, %bb.fe ], [ %i.om, %bb.fd ] ; 4 uses
  %.054.i402.i.i.i = phi float [ %i.ahv, %bb.fe ], [ %i.lq, %bb.fd ] ; 3 uses
  %i.aie = fcmp ogt float %i.yk, %i.aht
  br i1 %i.aie, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aif = fsub float %i.yc, %.055.i401.i.i.i
  %i.aig = fsub float %i.aht, %i.yk
  %i.aih = fmul float %i.aig, %i.aif
  %i.aii = fsub float %i.yk, %.054.i402.i.i.i
  %i.aij = fdiv float %i.aih, %i.aii
  %i.aik = fadd float %i.aij, %i.yc
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.053.i403.i.i.i = phi float [ %i.aik, %bb.fg ], [ %i.yc, %bb.ff ] ; 3 uses
  %.0.i404.i.i.i = phi float [ %i.aht, %bb.fg ], [ %i.yk, %bb.ff ] ; 2 uses
  %i.ail = fcmp ugt float %.055.i401.i.i.i, %i.yc
  %i.aim = fcmp ugt float %.053.i403.i.i.i, %i.yc
  %or.cond.i405.i.i.i = select i1 %i.ail, i1 true, i1 %i.aim
  br i1 %or.cond.i405.i.i.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ain = load float, ptr %i.xw, align 4, !tbaa !355
  %i.aio = fsub float %.0.i404.i.i.i, %.054.i402.i.i.i
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !81
end_hunk_0
begin_hunk_1_@stbtt_GetGlyphSDF:bb.a
.lr.ph.i:                                         ; preds = %bb.z
  %i.ex = fmul float %i.et, 0.000000e+00
  %i.ey = fmul float %.0150.i, 0.000000e+00
  %i.ez = fadd float %i.et, %i.ey
  %i.fa = fsub float %i.ex, %.0150.i
  br label %bb.aa

bb.aa:                                            ; preds = %.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 2 uses
  %.0197.i = phi i32 [ 0, %.lr.ph.i ], [ %.9.i.fr, %.thread.i ] ; 11 uses
  %i.fb = getelementptr inbounds nuw [14 x i8], ptr %i.cc, i64 %indvars.iv.i ; 11 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fd = load i8, ptr %i.fc, align 2, !tbaa !59
  switch i8 %i.fd, label %.thread.i [
    i8 2, label %bb.ab
    i8 3, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fe = getelementptr i8, ptr %i.fb, i64 -14
  %i.ff = load <2 x i16>, ptr %i.fe, align 2, !tbaa !64 ; 3 uses
  %i.fg = extractelement <2 x i16> %i.ff, i64 1   ; 4 uses
  %i.fh = extractelement <2 x i16> %i.ff, i64 0
  %i.fi = sext i16 %i.fh to i32                   ; 2 uses
  %i.fj = sext i16 %i.fg to i32
  %i.fk = load i16, ptr %i.fb, align 2, !tbaa !60
  %i.fl = sext i16 %i.fk to i32                   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !61 ; 4 uses
  %i.fo = sext i16 %i.fn to i32
  %i.fp = icmp slt i16 %i.fg, %i.fn
  %i.fq = call i16 @llvm.smin.i16(i16 %i.fg, i16 %i.fn)
  %i.fr = sitofp i16 %i.fq to float
  %i.fs = fcmp ogt float %.0150.i, %i.fr
  br i1 %i.fs, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.ft = call i16 @llvm.smax.i16(i16 %i.fg, i16 %i.fn)
  %i.fu = sitofp i16 %i.ft to float
  %i.fv = fcmp olt float %.0150.i, %i.fu
  br i1 %i.fv, label %bb.ad, label %.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.fw = call i32 @llvm.smin.i32(i32 %i.fi, i32 %i.fl)
  %i.fx = sitofp i32 %i.fw to float
  %i.fy = fcmp ogt float %i.et, %i.fx
  br i1 %i.fy, label %bb.ae, label %.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.fz = sitofp <2 x i16> %i.ff to <2 x float>   ; 2 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 1
  %i.gb = fsub float %.0150.i, %i.ga
  %i.gc = sub nsw i32 %i.fo, %i.fj
  %i.gd = sitofp i32 %i.gc to float
  %i.ge = fdiv float %i.gb, %i.gd
  %i.gf = sub nsw i32 %i.fl, %i.fi
  %i.gg = sitofp i32 %i.gf to float
  %i.gh = extractelement <2 x float> %i.fz, i64 0
  %i.gi = call float @llvm.fmuladd.f32(float %i.ge, float %i.gg, float %i.gh)
  %i.gj = fcmp olt float %i.gi, %i.et
  %i.gk = select i1 %i.fp, i32 1, i32 -1
  %i.gl = select i1 %i.gj, i32 %i.gk, i32 0
  %.1.i = add nsw i32 %i.gl, %.0197.i
  br label %.thread.i

bb.af:                                            ; preds = %bb.aa
  %i.gm = getelementptr i8, ptr %i.fb, i64 -14    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.fb, i64 -12
  %i.go = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !62 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fb, i64 6
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !63 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.gt = load i16, ptr %i.gn, align 2, !tbaa !61 ; 6 uses
  %i.gu = load i16, ptr %i.gm, align 2, !tbaa !60 ; 2 uses
  %i.gv = sext i16 %i.gt to i32
  %i.gw = load i16, ptr %i.gs, align 2, !tbaa !61 ; 6 uses
  %i.gx = load i16, ptr %i.fb, align 2, !tbaa !60 ; 2 uses
  %i.gy = call i16 @llvm.smin.i16(i16 %i.gp, i16 %i.gx)
  %..i = call i16 @llvm.smin.i16(i16 %i.gy, i16 %i.gu)
  %i.gz = call i16 @llvm.smin.i16(i16 %i.gr, i16 %i.gw)
  %i.ha = call i16 @llvm.smin.i16(i16 %i.gt, i16 %i.gz)
  %i.hb = call i16 @llvm.smax.i16(i16 %i.gr, i16 %i.gw)
  %i.hc = call i16 @llvm.smax.i16(i16 %i.gt, i16 %i.hb)
  %i.hd = sitofp i16 %i.ha to float
  %i.he = fcmp ogt float %.0150.i, %i.hd
  %i.hf = sitofp i16 %i.hc to float
  %i.hg = fcmp olt float %.0150.i, %i.hf
  %or.cond162.i = and i1 %i.he, %i.hg
  %i.hh = sitofp i16 %..i to float
  %i.hi = fcmp ogt float %i.et, %i.hh
  %or.cond164.i = select i1 %or.cond162.i, i1 %i.hi, i1 false
  br i1 %or.cond164.i, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.hj = load <2 x i16>, ptr %i.fb, align 2, !tbaa !64 ; 2 uses
  %i.hk = load <2 x i16>, ptr %i.gm, align 2, !tbaa !64 ; 2 uses
  %i.hl = shufflevector <2 x i16> %i.hj, <2 x i16> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.hm = sitofp <2 x i16> %i.hl to <2 x float>   ; 3 uses
  %i.hn = shufflevector <2 x i16> %i.hj, <2 x i16> %i.hk, <2 x i32> <i32 1, i32 3>
  %i.ho = sitofp <2 x i16> %i.hn to <2 x float>   ; 3 uses
  %i.hp = sitofp i16 %i.gp to float               ; 4 uses
  %i.hq = sitofp i16 %i.gr to float               ; 4 uses
  %i.hr = extractelement <2 x float> %i.hm, i64 1 ; 3 uses
  %i.hs = fcmp une float %i.hr, %i.hp
  %i.ht = extractelement <2 x float> %i.ho, i64 1 ; 3 uses
  %i.hu = fcmp une float %i.ht, %i.hq
  %narrow.i.not.i = or i1 %i.hs, %i.hu
  br i1 %narrow.i.not.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hv = extractelement <2 x float> %i.hm, i64 0 ; 2 uses
  %i.hw = fcmp une float %i.hv, %i.hp
  %i.hx = extractelement <2 x float> %i.ho, i64 0 ; 2 uses
  %i.hy = fcmp une float %i.hx, %i.hq
  %narrow.i182.not.i = or i1 %i.hw, %i.hy
  br i1 %narrow.i182.not.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hz = sext i16 %i.gu to i32                   ; 2 uses
  %i.ia = sext i16 %i.gx to i32                   ; 2 uses
  %i.ib = sext i16 %i.gw to i32
  %i.ic = icmp slt i16 %i.gt, %i.gw
  %i.id = call i16 @llvm.smin.i16(i16 %i.gt, i16 %i.gw)
  %i.ie = sitofp i16 %i.id to float
  %i.if = fcmp ogt float %.0150.i, %i.ie
  br i1 %i.if, label %bb.aj, label %.thread.i

bb.aj:                                            ; preds = %bb.ai
  %i.ig = call i16 @llvm.smax.i16(i16 %i.gt, i16 %i.gw)
  %i.ih = sitofp i16 %i.ig to float
  %i.ii = fcmp olt float %.0150.i, %i.ih
  br i1 %i.ii, label %bb.ak, label %.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.ij = call i32 @llvm.smin.i32(i32 %i.hz, i32 %i.ia)
  %i.ik = sitofp i32 %i.ij to float
  %i.il = fcmp ogt float %i.et, %i.ik
  br i1 %i.il, label %bb.al, label %.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.im = fsub float %.0150.i, %i.ht
  %i.in = sub nsw i32 %i.ib, %i.gv
  %i.io = sitofp i32 %i.in to float
  %i.ip = fdiv float %i.im, %i.io
  %i.iq = sub nsw i32 %i.ia, %i.hz
  %i.ir = sitofp i32 %i.iq to float
  %i.is = call float @llvm.fmuladd.f32(float %i.ip, float %i.ir, float %i.hr)
  %i.it = fcmp olt float %i.is, %i.et
  %i.iu = select i1 %i.ic, i32 1, i32 -1
  %i.iv = select i1 %i.it, i32 %i.iu, i32 0
  %.4.i = add nsw i32 %i.iv, %.0197.i
  br label %.thread.i

bb.am:                                            ; preds = %bb.ah
  %i.iw = fneg float %i.hr
  %i.ix = call float @llvm.copysign.f32(float 0.000000e+00, float %i.iw)
  %i.iy = fadd float %i.ix, %i.ht                 ; 3 uses
  %i.iz = fneg float %i.hp
  %i.ja = call float @llvm.copysign.f32(float 0.000000e+00, float %i.iz)
  %i.jb = fadd float %i.ja, %i.hq                 ; 2 uses
  %i.jc = fneg float %i.hv
  %i.jd = call float @llvm.copysign.f32(float 0.000000e+00, float %i.jc)
  %i.je = fadd float %i.jd, %i.hx
  %i.jf = call float @llvm.fmuladd.f32(float %i.jb, float -2.000000e+00, float %i.iy)
  %i.jg = fadd float %i.jf, %i.je                 ; 5 uses
  %i.jh = fsub float %i.jb, %i.iy                 ; 7 uses
  %i.ji = fadd float %i.fa, %i.iy                 ; 2 uses
  %i.jj = fcmp une float %i.jg, 0.000000e+00
  br i1 %i.jj, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.jk = fneg float %i.ji
  %i.jl = fmul float %i.jg, %i.jk
  %i.jm = call float @llvm.fmuladd.f32(float %i.jh, float %i.jh, float %i.jl) ; 2 uses
  %i.jn = fcmp ogt float %i.jm, 0.000000e+00
  br i1 %i.jn, label %bb.ao, label %stbtt__ray_intersect_bezier.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.jo = fdiv float -1.000000e+00, %i.jg         ; 2 uses
  %sqrtf.i.i = call float @sqrtf(float noundef %i.jm) #40 ; 3 uses
  %i.jp = fadd float %i.jh, %sqrtf.i.i
  %i.jq = fmul float %i.jo, %i.jp                 ; 4 uses
  %i.jr = fsub float %i.jh, %sqrtf.i.i
  %i.js = fmul float %i.jo, %i.jr                 ; 5 uses
  %i.jt = fcmp oge float %i.jq, 0.000000e+00
  %i.ju = fcmp ole float %i.jq, 1.000000e+00
  %or.cond.not.not.not.i.i = and i1 %i.jt, %i.ju  ; 3 uses
  %i.jv = fcmp ule float %sqrtf.i.i, 0.000000e+00
  %i.jw = fcmp ult float %i.js, 0.000000e+00
  %or.cond117.i.i = or i1 %i.jv, %i.jw
  %i.jx = fcmp ugt float %i.js, 1.000000e+00
  %or.cond118.i.i = or i1 %i.jx, %or.cond117.i.i
  br i1 %or.cond118.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.0107.i.i = select i1 %or.cond.not.not.not.i.i, float %i.jq, float %i.js
  br label %.thread21.i.i

bb.aq:                                            ; preds = %bb.am
  %i.jy = fmul nnan float %i.jh, -2.000000e+00
  %i.jz = fdiv float %i.ji, %i.jy                 ; 3 uses
  %i.ka = fcmp ult float %i.jz, 0.000000e+00
  %i.kb = fcmp ugt float %i.jz, 1.000000e+00
  %or.cond119.i.i = or i1 %i.ka, %i.kb
  br i1 %or.cond119.i.i, label %stbtt__ray_intersect_bezier.exit.i, label %.thread21.i.i

bb.ar:                                            ; preds = %bb.ao
  br i1 %or.cond.not.not.not.i.i, label %.thread21.i.i, label %stbtt__ray_intersect_bezier.exit.i

.thread21.i.i:                                    ; preds = %bb.ar, %bb.aq, %bb.ap
  %.327.i.i = phi i1 [ false, %bb.ar ], [ %or.cond.not.not.not.i.i, %bb.ap ], [ false, %bb.aq ]
  %.110626.i.i = phi float [ %i.js, %bb.ar ], [ %i.js, %bb.ap ], [ 0.000000e+00, %bb.aq ] ; 5 uses
  %.311025.i.i = phi float [ %i.jq, %bb.ar ], [ %.0107.i.i, %bb.ap ], [ %i.jz, %bb.aq ] ; 5 uses
  %i.kc = call <2 x float> @llvm.copysign.v2f32(<2 x float> zeroinitializer, <2 x float> %i.ho)
  %i.kd = call float @llvm.copysign.f32(float 0.000000e+00, float %i.hq)
  %i.ke = fadd float %i.kd, %i.hp
  %i.kf = fadd <2 x float> %i.kc, %i.hm           ; 2 uses
  %i.kg = extractelement <2 x float> %i.kf, i64 1 ; 3 uses
  %i.kh = fsub float %i.ke, %i.kg                 ; 2 uses
  %i.ki = extractelement <2 x float> %i.kf, i64 0
  %i.kj = fsub float %i.ki, %i.kg                 ; 2 uses
  %i.kk = fsub float %i.kg, %i.ez                 ; 2 uses
  %i.kl = call float @llvm.fmuladd.f32(float %.311025.i.i, float -2.000000e+00, float 2.000000e+00)
  %i.km = fmul float %.311025.i.i, %i.kl
  %i.kn = call float @llvm.fmuladd.f32(float %i.km, float %i.kh, float %i.kk)
  %i.ko = fmul float %.311025.i.i, %.311025.i.i
  %i.kp = call float @llvm.fmuladd.f32(float %i.ko, float %i.kj, float %i.kn) ; 2 uses
  %i.kq = call float @llvm.fmuladd.f32(float %i.jg, float %.311025.i.i, float %i.jh) ; 2 uses
  br i1 %.327.i.i, label %bb.as, label %stbtt__ray_intersect_bezier.exit.i

bb.as:                                            ; preds = %.thread21.i.i
  %i.kr = call float @llvm.fmuladd.f32(float %.110626.i.i, float -2.000000e+00, float 2.000000e+00)
  %i.ks = fmul float %.110626.i.i, %i.kr
  %i.kt = call float @llvm.fmuladd.f32(float %i.ks, float %i.kh, float %i.kk)
  %i.ku = fmul float %.110626.i.i, %.110626.i.i
  %i.kv = call float @llvm.fmuladd.f32(float %i.ku, float %i.kj, float %i.kt)
  %i.kw = call float @llvm.fmuladd.f32(float %i.jg, float %.110626.i.i, float %i.jh)
  %i.kx = fcmp olt float %i.kv, 0.000000e+00
  %i.ky = fcmp olt float %i.kw, 0.000000e+00
  %i.kz = select i1 %i.ky, i32 -1, i32 1
  %i.la = select i1 %i.kx, i32 %i.kz, i32 0
  br label %stbtt__ray_intersect_bezier.exit.i

stbtt__ray_intersect_bezier.exit.i:               ; preds = %bb.as, %.thread21.i.i, %bb.ar, %bb.aq, %bb.an
  %.sroa.4.0.i = phi float [ %i.kq, %bb.as ], [ %i.kq, %.thread21.i.i ], [ undef, %bb.ar ], [ undef, %bb.an ], [ undef, %bb.aq ]
  %.sroa.0.0.i = phi float [ %i.kp, %bb.as ], [ %i.kp, %.thread21.i.i ], [ undef, %bb.ar ], [ undef, %bb.an ], [ undef, %bb.aq ]
  %i.lb = phi i1 [ true, %bb.as ], [ true, %.thread21.i.i ], [ false, %bb.ar ], [ false, %bb.an ], [ false, %bb.aq ]
  %or.cond7.i = phi i32 [ %i.la, %bb.as ], [ 0, %.thread21.i.i ], [ 0, %bb.ar ], [ 0, %bb.an ], [ 0, %bb.aq ]
  %i.lc = fcmp olt float %.sroa.0.0.i, 0.000000e+00
  %or.cond.i = select i1 %i.lb, i1 %i.lc, i1 false
  %i.ld = fcmp olt float %.sroa.4.0.i, 0.000000e+00
  %i.le = select i1 %i.ld, i32 -1, i32 1
  %i.lf = select i1 %or.cond.i, i32 %i.le, i32 0
  %.5.i = add i32 %or.cond7.i, %.0197.i
  %.6.i = add i32 %.5.i, %i.lf
  br label %.thread.i

.thread.i:                                        ; preds = %stbtt__ray_intersect_bezier.exit.i, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.9.i = phi i32 [ %.0197.i, %bb.aa ], [ %.6.i, %stbtt__ray_intersect_bezier.exit.i ], [ %.0197.i, %bb.af ], [ %.4.i, %bb.al ], [ %.0197.i, %bb.ak ], [ %.0197.i, %bb.aj ], [ %.0197.i, %bb.ai ], [ %.0197.i, %bb.ab ], [ %.0197.i, %bb.ac ], [ %.0197.i, %bb.ad ], [ %.1.i, %bb.ae ]
  %.9.i.fr = freeze i32 %.9.i                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__compute_crossings_x.exit, label %bb.aa, !llvm.loop !398

stbtt__compute_crossings_x.exit:                  ; preds = %.thread.i
  %i.lg = icmp eq i32 %.9.i.fr, 0
  br label %.lr.ph525

.lr.ph525:                                        ; preds = %stbtt__compute_crossings_x.exit, %.thread
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.thread ], [ 0, %stbtt__compute_crossings_x.exit ] ; 4 uses
  %.0432524 = phi float [ %.9, %.thread ], [ 9.999990e+05, %stbtt__compute_crossings_x.exit ] ; 10 uses
  %i.lh = getelementptr inbounds nuw [14 x i8], ptr %i.cc, i64 %indvars.iv532 ; 5 uses
  %i.li = load <2 x i16>, ptr %i.lh, align 2, !tbaa !64
  %i.lj = sitofp <2 x i16> %i.li to <2 x float>
  %i.lk = fmul <2 x float> %i.cg, %i.lj           ; 10 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  %i.lm = load i8, ptr %i.ll, align 2, !tbaa !59
  switch i8 %i.lm, label %.thread [
    i8 2, label %bb.at
    i8 3, label %bb.aw
  ]

bb.at:                                            ; preds = %.lr.ph525
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.0.i487, i64 %indvars.iv532
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !81 ; 2 uses
  %i.lp = fcmp une float %i.lo, 0.000000e+00
  br i1 %i.lp, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.lq = getelementptr i8, ptr %i.lh, i64 -14
  %i.lr = load <2 x i16>, ptr %i.lq, align 2, !tbaa !64
  %i.ls = sitofp <2 x i16> %i.lr to <2 x float>   ; 2 uses
  %i.lt = extractelement <2 x float> %i.ls, i64 0
  %i.lu = fmul float %1, %i.lt
  %i.lv = extractelement <2 x float> %i.ls, i64 1
  %i.lw = fmul float %i.lv, %i.ao
  %i.lx = fmul float %.0432524, %.0432524
  %i.ly = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lz = insertelement <2 x float> %i.ly, float %i.lw, i64 1
  %i.ma = insertelement <2 x float> %i.lk, float %i.ei, i64 0
  %i.mb = fsub <2 x float> %i.lz, %i.ma           ; 5 uses
  %i.mc = insertelement <2 x float> %i.lk, float %i.lu, i64 1
  %i.md = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.me = insertelement <2 x float> %i.md, float %i.es, i64 0
  %i.mf = fsub <2 x float> %i.mc, %i.me           ; 5 uses
  %i.mg = fneg <2 x float> %i.mf
  %i.mh = shufflevector <2 x float> %i.mb, <2 x float> %i.mg, <2 x i32> <i32 0, i32 2>
  %i.mi = fmul <2 x float> %i.mb, %i.mh
  %i.mj = shufflevector <2 x float> %i.mf, <2 x float> %i.mb, <2 x i32> <i32 0, i32 2>
  %i.mk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.mj, <2 x float> %i.mi) ; 2 uses
  %i.ml = extractelement <2 x float> %i.mk, i64 0 ; 2 uses
  %i.mm = fcmp olt float %i.ml, %i.lx
  %sqrt515 = call float @llvm.sqrt.f32(float %i.ml)
  %.1433 = select i1 %i.mm, float %sqrt515, float %.0432524 ; 3 uses
  %i.mn = extractelement <2 x float> %i.mk, i64 1
  %i.mo = call float @llvm.fabs.f32(float %i.mn)
  %i.mp = fmul float %i.lo, %i.mo                 ; 2 uses
  %i.mq = fcmp olt float %i.mp, %.1433
  br i1 %i.mq, label %bb.av, label %.thread

bb.av:                                            ; preds = %bb.au
  %i.mr = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ms = fmul <2 x float> %i.mr, %i.mb
  %i.mt = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> %i.mf, <2 x float> %i.ms) ; 2 uses
  %i.mv = extractelement <2 x float> %i.mu, i64 0
  %i.mw = fneg float %i.mv
  %i.mx = extractelement <2 x float> %i.mu, i64 1
  %i.my = fdiv float %i.mw, %i.mx                 ; 2 uses
  %i.mz = fcmp oge float %i.my, 0.000000e+00
  %i.na = fcmp ole float %i.my, 1.000000e+00
  %or.cond = and i1 %i.mz, %i.na
  %.2434 = select i1 %or.cond, float %i.mp, float %.1433
  br label %.thread

bb.aw:                                            ; preds = %.lr.ph525
  %i.nb = getelementptr i8, ptr %i.lh, i64 -14
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.nd = load <2 x i16>, ptr %i.nb, align 2, !tbaa !64
  %i.ne = sitofp <2 x i16> %i.nd to <2 x float>
  %i.nf = fmul <2 x float> %i.cg, %i.ne           ; 4 uses
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.nh = load <2 x i16>, ptr %i.nc, align 2, !tbaa !64
  %i.ni = sitofp <2 x i16> %i.nh to <2 x float>
  %i.nj = fmul <2 x float> %i.cg, %i.ni           ; 6 uses
  %i.nk = fcmp olt <2 x float> %i.lk, %i.nj
  %i.nl = shufflevector <2 x i1> %i.nk, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.nm = shufflevector <2 x float> %i.nj, <2 x float> %i.lk, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.nn = shufflevector <2 x float> %i.lk, <2 x float> %i.nj, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.no = select <4 x i1> %i.nl, <4 x float> %i.nm, <4 x float> %i.nn ; 3 uses
  %i.np = fcmp olt <4 x float> %i.no, %i.ng
  %i.nq = shufflevector <4 x float> %i.ng, <4 x float> %i.no, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.nr = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ns = shufflevector <4 x float> %i.no, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.nt = select <4 x i1> %i.np, <4 x float> %i.nq, <4 x float> %i.ns ; 2 uses
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.nv = insertelement <2 x float> poison, float %.0432524, i64 0
  %i.nw = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nx = fsub <2 x float> %i.nu, %i.nw           ; 2 uses
  %i.ny = extractelement <2 x float> %i.nx, i64 1
  %i.nz = fcmp ogt float %i.es, %i.ny
  %i.oa = extractelement <2 x float> %i.nx, i64 0
  %i.ob = fcmp ogt float %i.ei, %i.oa
  %i.oc = shufflevector <4 x float> %i.nt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.od = fadd <2 x float> %i.nw, %i.oc           ; 2 uses
  %i.oe = extractelement <2 x float> %i.od, i64 1
  %i.of = fcmp olt float %i.es, %i.oe
  %or.cond481 = select i1 %i.nz, i1 %i.of, i1 false
  %or.cond483 = select i1 %or.cond481, i1 %i.ob, i1 false
  %i.og = extractelement <2 x float> %i.od, i64 0
  %i.oh = fcmp olt float %i.ei, %i.og
  %or.cond485 = select i1 %or.cond483, i1 %i.oh, i1 false
  br i1 %or.cond485, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  %i.oi = extractelement <2 x float> %i.lk, i64 0 ; 5 uses
  %i.oj = extractelement <2 x float> %i.nj, i64 0 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.nj, %i.lk ; 2 uses
  %i.ok = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.ol = extractelement <2 x float> %i.lk, i64 1 ; 6 uses
  %i.om = extractelement <2 x float> %i.nj, i64 1 ; 5 uses
  %i.on = fsub float %i.om, %i.ol                 ; 7 uses
  %i.oo = call float @llvm.fmuladd.f32(float %i.oj, float -2.000000e+00, float %i.oi)
  %i.op = extractelement <2 x float> %i.nf, i64 0 ; 4 uses
  %i.oq = fadd float %i.op, %i.oo                 ; 3 uses
  %i.or = call float @llvm.fmuladd.f32(float %i.om, float -2.000000e+00, float %i.ol)
  %i.os = extractelement <2 x float> %i.nf, i64 1 ; 4 uses
  %i.ot = fadd float %i.os, %i.or                 ; 3 uses
  %i.ou = fsub float %i.oi, %i.es                 ; 6 uses
  %i.ov = fsub float %i.ol, %i.ei                 ; 6 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.0.i487, i64 %indvars.iv532
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !81 ; 4 uses
  %i.oy = fcmp oeq float %i.ox, 0.000000e+00
  %i.oz = fmul float %i.on, %i.ot
  %i.pa = call float @llvm.fmuladd.f32(float %i.ok, float %i.oq, float %i.oz)
  %i.pb = fmul float %i.pa, 3.000000e+00          ; 4 uses
  br i1 %i.oy, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.pc = fmul float %i.on, %i.on
  %i.pd = call float @llvm.fmuladd.f32(float %i.ok, float %i.ok, float %i.pc)
  %i.pe = fmul float %i.ov, %i.ot
  %i.pf = call float @llvm.fmuladd.f32(float %i.ou, float %i.oq, float %i.pe)
  %i.pg = call float @llvm.fmuladd.f32(float %i.pd, float 2.000000e+00, float %i.pf) ; 6 uses
  %i.ph = fmul float %i.ov, %i.on
  %i.pi = call float @llvm.fmuladd.f32(float %i.ou, float %i.ok, float %i.ph) ; 2 uses
  %i.pj = call float @llvm.fabs.f32(float %i.pb)
  %i.pk = fcmp olt float %i.pj, f0x35800000
  br i1 %i.pk, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.pl = call float @llvm.fabs.f32(float %i.pg)
  %i.pm = fcmp ult float %i.pl, f0x35800000
  br i1 %i.pm, label %stbtt__solve_cubic.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pn = fneg float %i.pi
  %i.po = fdiv float %i.pn, %i.pg
  br label %stbtt__solve_cubic.exit

bb.bb:                                            ; preds = %bb.ay
  %i.pp = fmul float %i.pb, 4.000000e+00
  %i.pq = fneg float %i.pi
  %i.pr = fmul float %i.pp, %i.pq
  %i.ps = call float @llvm.fmuladd.f32(float %i.pg, float %i.pg, float %i.pr) ; 2 uses
  %i.pt = fcmp olt float %i.ps, 0.000000e+00
  br i1 %i.pt, label %stbtt__solve_cubic.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %sqrtf = call float @sqrtf(float noundef %i.ps) #40 ; 2 uses
  %i.pu = fneg float %i.pg
  %i.pv = fmul float %i.pb, 2.000000e+00
  %i.pw = fsub float %i.pu, %sqrtf
  %i.px = fsub float %sqrtf, %i.pg
  %i.py = insertelement <2 x float> poison, float %i.pv, i64 0
  %i.pz = shufflevector <2 x float> %i.py, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qa = insertelement <2 x float> poison, float %i.pw, i64 0
  %i.qb = insertelement <2 x float> %i.qa, float %i.px, i64 1
  %i.qc = fdiv <2 x float> %i.qb, %i.pz           ; 2 uses
  %i.qd = extractelement <2 x float> %i.qc, i64 0
  %i.qe = extractelement <2 x float> %i.qc, i64 1
  br label %stbtt__solve_cubic.exit

bb.bd:                                            ; preds = %bb.ax
  %i.qf = fmul float %i.pb, %i.ox                 ; 5 uses
  %i.qg = fmul float %i.on, %i.on
  %i.qh = call float @llvm.fmuladd.f32(float %i.ok, float %i.ok, float %i.qg)
  %i.qi = fmul float %i.ov, %i.ot
  %i.qj = call float @llvm.fmuladd.f32(float %i.ou, float %i.oq, float %i.qi)
  %i.qk = call float @llvm.fmuladd.f32(float %i.qh, float 2.000000e+00, float %i.qj)
  %i.ql = fmul float %i.qk, %i.ox                 ; 2 uses
  %i.qm = fdiv float %i.qf, -3.000000e+00         ; 4 uses
  %i.qn = fmul float %i.qf, %i.qf
  %i.qo = fdiv float %i.qn, 3.000000e+00
  %i.qp = fsub float %i.ql, %i.qo                 ; 4 uses
  %i.qq = fmul float %i.qf, 2.000000e+00
  %i.qr = insertelement <2 x float> poison, float %i.ov, i64 0
  %i.qs = insertelement <2 x float> %i.qr, float %i.ql, i64 1
  %i.qt = insertelement <2 x float> <float poison, float -9.000000e+00>, float %i.on, i64 0
  %i.qu = fmul <2 x float> %i.qs, %i.qt
  %i.qv = insertelement <2 x float> poison, float %i.ou, i64 0
  %i.qw = insertelement <2 x float> %i.qv, float %i.qq, i64 1
  %i.qx = insertelement <2 x float> %foldExtExtBinop, float %i.qf, i64 1 ; 2 uses
  %i.qy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qw, <2 x float> %i.qx, <2 x float> %i.qu)
  %i.qz = insertelement <2 x float> %i.qx, float %i.ox, i64 0
  %i.ra = fmul <2 x float> %i.qy, %i.qz           ; 2 uses
  %i.rb = extractelement <2 x float> %i.ra, i64 1
  %i.rc = fdiv float %i.rb, 2.700000e+01
  %i.rd = extractelement <2 x float> %i.ra, i64 0
  %i.re = fadd float %i.rd, %i.rc                 ; 5 uses
  %i.rf = fmul float %i.qp, %i.qp
  %i.rg = fmul float %i.qp, %i.rf                 ; 2 uses
  %i.rh = fmul float %i.rg, 4.000000e+00
  %i.ri = fdiv float %i.rh, 2.700000e+01
  %i.rj = call float @llvm.fmuladd.f32(float %i.re, float %i.re, float %i.ri) ; 2 uses
  %i.rk = fcmp ult float %i.rj, 0.000000e+00
  br i1 %i.rk, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %sqrtf47.i = call float @sqrtf(float noundef %i.rj) #40 ; 2 uses
  %i.rl = fneg float %i.re
  %i.rm = fsub float %sqrtf47.i, %i.re
  %i.rn = fmul float %i.rm, 5.000000e-01          ; 3 uses
  %i.ro = fsub float %i.rl, %sqrtf47.i
  %i.rp = fmul float %i.ro, 5.000000e-01          ; 3 uses
  %i.rq = fcmp olt float %i.rn, 0.000000e+00
  br i1 %i.rq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.rr = fneg float %i.rn
  %i.rs = fpext float %i.rr to double
  %i.rt = call double @pow(double noundef %i.rs, double noundef f0x3FD5555560000000) #40
  %i.ru = fptrunc double %i.rt to float
  %i.rv = fneg float %i.ru
  br label %stbtt__cuberoot.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.rw = fpext float %i.rn to double
  %i.rx = call double @pow(double noundef %i.rw, double noundef f0x3FD5555560000000) #40
  %i.ry = fptrunc double %i.rx to float
  br label %stbtt__cuberoot.exit.i

stbtt__cuberoot.exit.i:                           ; preds = %bb.bg, %bb.bf
  %.0.i.i = phi float [ %i.rv, %bb.bf ], [ %i.ry, %bb.bg ]
  %i.rz = fcmp olt float %i.rp, 0.000000e+00
  br i1 %i.rz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %stbtt__cuberoot.exit.i
  %i.sa = fneg float %i.rp
  %i.sb = fpext float %i.sa to double
  %i.sc = call double @pow(double noundef %i.sb, double noundef f0x3FD5555560000000) #40
  %i.sd = fptrunc double %i.sc to float
  %i.se = fneg float %i.sd
  br label %stbtt__cuberoot.exit49.i

bb.bi:                                            ; preds = %stbtt__cuberoot.exit.i
  %i.sf = fpext float %i.rp to double
  %i.sg = call double @pow(double noundef %i.sf, double noundef f0x3FD5555560000000) #40
  %i.sh = fptrunc double %i.sg to float
  br label %stbtt__cuberoot.exit49.i

stbtt__cuberoot.exit49.i:                         ; preds = %bb.bi, %bb.bh
  %.0.i48.i = phi float [ %i.se, %bb.bh ], [ %i.sh, %bb.bi ]
  %i.si = fadd float %i.qm, %.0.i.i
  %i.sj = fadd float %i.si, %.0.i48.i
  br label %stbtt__solve_cubic.exit

bb.bj:                                            ; preds = %bb.bd
  %i.sk = fdiv float %i.qp, -3.000000e+00
  %sqrtf.i = call float @sqrtf(float noundef %i.sk) #40 ; 2 uses
  %i.sl = fdiv float -2.700000e+01, %i.rg
  %i.sm = fpext float %i.sl to double
  %i.sn = call double @sqrt(double noundef %i.sm) #40
  %i.so = fneg double %i.sn
  %i.sp = fpext float %i.re to double
  %i.sq = fmul double %i.sp, %i.so
  %i.sr = fmul double %i.sq, 5.000000e-01
  %i.ss = call double @acos(double noundef %i.sr) #40
  %i.st = fptrunc double %i.ss to float
  %i.su = fdiv float %i.st, 3.000000e+00
  %i.sv = fpext float %i.su to double             ; 2 uses
  %i.sw = call double @cos(double noundef %i.sv) #40
  %i.sx = fptrunc double %i.sw to float           ; 3 uses
  %i.sy = fadd double %i.sv, f0xBFF921FAFC8B007A
  %i.sz = call double @cos(double noundef %i.sy) #40
  %i.ta = fptrunc double %i.sz to float
  %i.tb = fmul float %i.ta, f0x3FDDB3D7           ; 2 uses
  %i.tc = fmul float %sqrtf.i, 2.000000e+00
  %i.td = call float @llvm.fmuladd.f32(float %i.tc, float %i.sx, float %i.qm)
  %i.te = fadd float %i.tb, %i.sx
  %i.tf = fneg float %sqrtf.i                     ; 2 uses
  %i.tg = call float @llvm.fmuladd.f32(float %i.tf, float %i.te, float %i.qm)
  %i.th = fsub float %i.sx, %i.tb
  %i.ti = call float @llvm.fmuladd.f32(float %i.tf, float %i.th, float %i.qm)
  br label %stbtt__solve_cubic.exit

stbtt__solve_cubic.exit:                          ; preds = %bb.bj, %stbtt__cuberoot.exit49.i, %bb.ba, %bb.az, %bb.bb, %bb.bc
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.az ], [ %i.po, %bb.ba ], [ 0.000000e+00, %bb.bb ], [ %i.qd, %bb.bc ], [ %i.td, %bb.bj ], [ %i.sj, %stbtt__cuberoot.exit49.i ] ; 6 uses
  %.sroa.8.0 = phi float [ 0.000000e+00, %bb.az ], [ 0.000000e+00, %bb.ba ], [ 0.000000e+00, %bb.bb ], [ %i.qe, %bb.bc ], [ %i.tg, %bb.bj ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i ] ; 6 uses
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.az ], [ 0.000000e+00, %bb.ba ], [ 0.000000e+00, %bb.bb ], [ 0.000000e+00, %bb.bc ], [ %i.ti, %bb.bj ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i ] ; 6 uses
  %i.tj = phi i1 [ false, %bb.az ], [ true, %bb.ba ], [ false, %bb.bb ], [ true, %bb.bc ], [ true, %bb.bj ], [ true, %stbtt__cuberoot.exit49.i ]
  %i.tk = phi i1 [ false, %bb.az ], [ false, %bb.ba ], [ false, %bb.bb ], [ true, %bb.bc ], [ true, %bb.bj ], [ false, %stbtt__cuberoot.exit49.i ]
  %i.tl = phi i1 [ false, %bb.az ], [ false, %bb.ba ], [ false, %bb.bb ], [ false, %bb.bc ], [ true, %bb.bj ], [ false, %stbtt__cuberoot.exit49.i ]
  %i.tm = fmul float %i.ov, %i.ov
  %i.tn = call float @llvm.fmuladd.f32(float %i.ou, float %i.ou, float %i.tm) ; 2 uses
  %i.to = fmul float %.0432524, %.0432524
  %i.tp = fcmp olt float %i.tn, %i.to
  %sqrt516 = call float @llvm.sqrt.f32(float %i.tn)
  %.4 = select i1 %i.tp, float %sqrt516, float %.0432524 ; 4 uses
  %i.tq = fcmp oge float %.sroa.0.0, 0.000000e+00
  %i.tr = fcmp ole float %.sroa.0.0, 1.000000e+00
  %i.ts = and i1 %i.tq, %i.tr
  %or.cond7 = select i1 %i.tj, i1 %i.ts, i1 false
  br i1 %or.cond7, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %stbtt__solve_cubic.exit
  %i.tt = fsub float 1.000000e+00, %.sroa.0.0     ; 3 uses
  %i.tu = fmul nnan float %i.tt, %i.tt            ; 2 uses
  %i.tv = fmul nnan float %.sroa.0.0, 2.000000e+00
  %i.tw = fmul float %i.tv, %i.tt                 ; 2 uses
  %i.tx = fmul float %i.oj, %i.tw
  %i.ty = call float @llvm.fmuladd.f32(float %i.tu, float %i.oi, float %i.tx)
  %i.tz = fmul nnan float %.sroa.0.0, %.sroa.0.0  ; 2 uses
  %i.ua = call float @llvm.fmuladd.f32(float %i.tz, float %i.op, float %i.ty)
  %i.ub = fmul float %i.om, %i.tw
  %i.uc = call float @llvm.fmuladd.f32(float %i.tu, float %i.ol, float %i.ub)
  %i.ud = call float @llvm.fmuladd.f32(float %i.tz, float %i.os, float %i.uc)
  %i.ue = fsub float %i.ua, %i.es                 ; 2 uses
  %i.uf = fsub float %i.ud, %i.ei                 ; 2 uses
  %i.ug = fmul float %i.uf, %i.uf
  %i.uh = call float @llvm.fmuladd.f32(float %i.ue, float %i.ue, float %i.ug) ; 2 uses
  %i.ui = fmul float %.4, %.4
  %i.uj = fcmp olt float %i.uh, %i.ui
  br i1 %i.uj, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %sqrt517 = call float @llvm.sqrt.f32(float %i.uh)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %stbtt__solve_cubic.exit
  %.5 = phi float [ %sqrt517, %bb.bl ], [ %.4, %bb.bk ], [ %.4, %stbtt__solve_cubic.exit ] ; 4 uses
  %i.uk = fcmp oge float %.sroa.8.0, 0.000000e+00
  %i.ul = fcmp ole float %.sroa.8.0, 1.000000e+00
  %i.um = and i1 %i.uk, %i.ul
  %or.cond13 = select i1 %i.tk, i1 %i.um, i1 false
  br i1 %or.cond13, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.un = fsub float 1.000000e+00, %.sroa.8.0     ; 3 uses
  %i.uo = fmul nnan float %i.un, %i.un            ; 2 uses
  %i.up = fmul nnan float %.sroa.8.0, 2.000000e+00
  %i.uq = fmul float %i.up, %i.un                 ; 2 uses
  %i.ur = fmul float %i.oj, %i.uq
  %i.us = call float @llvm.fmuladd.f32(float %i.uo, float %i.oi, float %i.ur)
  %i.ut = fmul nnan float %.sroa.8.0, %.sroa.8.0  ; 2 uses
  %i.uu = call float @llvm.fmuladd.f32(float %i.ut, float %i.op, float %i.us)
  %i.uv = fmul float %i.om, %i.uq
  %i.uw = call float @llvm.fmuladd.f32(float %i.uo, float %i.ol, float %i.uv)
  %i.ux = call float @llvm.fmuladd.f32(float %i.ut, float %i.os, float %i.uw)
  %i.uy = fsub float %i.uu, %i.es                 ; 2 uses
  %i.uz = fsub float %i.ux, %i.ei                 ; 2 uses
  %i.va = fmul float %i.uz, %i.uz
  %i.vb = call float @llvm.fmuladd.f32(float %i.uy, float %i.uy, float %i.va) ; 2 uses
  %i.vc = fmul float %.5, %.5
  %i.vd = fcmp olt float %i.vb, %i.vc
  br i1 %i.vd, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %sqrt518 = call float @llvm.sqrt.f32(float %i.vb)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.bm
  %.6 = phi float [ %sqrt518, %bb.bo ], [ %.5, %bb.bn ], [ %.5, %bb.bm ] ; 4 uses
  %i.ve = fcmp oge float %.sroa.11.0, 0.000000e+00
  %i.vf = fcmp ole float %.sroa.11.0, 1.000000e+00
  %i.vg = and i1 %i.ve, %i.vf
  %or.cond19 = select i1 %i.tl, i1 %i.vg, i1 false
  br i1 %or.cond19, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %bb.bp
  %i.vh = fsub float 1.000000e+00, %.sroa.11.0    ; 3 uses
  %i.vi = fmul nnan float %i.vh, %i.vh            ; 2 uses
  %i.vj = fmul nnan float %.sroa.11.0, 2.000000e+00
  %i.vk = fmul float %i.vj, %i.vh                 ; 2 uses
  %i.vl = fmul float %i.oj, %i.vk
  %i.vm = call float @llvm.fmuladd.f32(float %i.vi, float %i.oi, float %i.vl)
  %i.vn = fmul nnan float %.sroa.11.0, %.sroa.11.0 ; 2 uses
  %i.vo = call float @llvm.fmuladd.f32(float %i.vn, float %i.op, float %i.vm)
  %i.vp = fmul float %i.om, %i.vk
  %i.vq = call float @llvm.fmuladd.f32(float %i.vi, float %i.ol, float %i.vp)
  %i.vr = call float @llvm.fmuladd.f32(float %i.vn, float %i.os, float %i.vq)
  %i.vs = fsub float %i.vo, %i.es                 ; 2 uses
  %i.vt = fsub float %i.vr, %i.ei                 ; 2 uses
  %i.vu = fmul float %i.vt, %i.vt
  %i.vv = call float @llvm.fmuladd.f32(float %i.vs, float %i.vs, float %i.vu) ; 2 uses
  %i.vw = fmul float %.6, %.6
  %i.vx = fcmp olt float %i.vv, %i.vw
  br i1 %i.vx, label %bb.br, label %.thread

bb.br:                                            ; preds = %bb.bq
  %sqrt519 = call float @llvm.sqrt.f32(float %i.vv)
  br label %.thread

.thread:                                          ; preds = %.lr.ph525, %bb.at, %bb.bp, %bb.br, %bb.bq, %bb.aw, %bb.au, %bb.av
  %.9 = phi float [ %.0432524, %.lr.ph525 ], [ %.1433, %bb.au ], [ %.2434, %bb.av ], [ %.6, %bb.bp ], [ %.0432524, %bb.aw ], [ %sqrt519, %bb.br ], [ %.6, %bb.bq ], [ %.0432524, %bb.at ] ; 3 uses
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1 ; 2 uses
  %exitcond536.not = icmp eq i64 %indvars.iv.next533, %wide.trip.count.i
  br i1 %exitcond536.not, label %._crit_edge, label %.lr.ph525, !llvm.loop !399

._crit_edge:                                      ; preds = %.thread
  br i1 %i.lg, label %bb.bs, label %._crit_edge.thread

bb.bs:                                            ; preds = %._crit_edge
  %i.vy = fneg float %.9
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.z, %._crit_edge, %bb.bs
  %i.vz = phi float [ %.9, %._crit_edge ], [ %i.vy, %bb.bs ], [ -9.999990e+05, %bb.z ]
  %i.wa = call float @llvm.fmuladd.f32(float %5, float %i.vz, float %i.cd) ; 3 uses
  %i.wb = fcmp olt float %i.wa, 0.000000e+00
  br i1 %i.wb, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.thread
  %i.wc = fcmp ogt float %i.wa, 2.550000e+02
  %spec.store.select = select i1 %i.wc, float 2.550000e+02, float %i.wa
  %i.wd = fptoui float %spec.store.select to i8
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge.thread, %bb.bt
  %.0435 = phi i8 [ %i.wd, %bb.bt ], [ 0, %._crit_edge.thread ]
  %i.we = add i32 %i.ep, %i.eq
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds i8, ptr %.0.i, i64 %i.wf
  store i8 %.0435, ptr %i.wg, align 1, !tbaa !38
  %indvars.iv.next538 = add nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.wh = icmp slt i64 %indvars.iv.next538, %i.cf
  br i1 %i.wh, label %bb.w, label %._crit_edge528, !llvm.loop !400

._crit_edge528:                                   ; preds = %bb.bu
  %i.wi = add nsw i32 %.0439529, 1                ; 2 uses
  %i.wj = icmp slt i32 %i.wi, %i.al
  br i1 %i.wj, label %.preheader, label %._crit_edge530.split, !llvm.loop !401

._crit_edge530.split:                             ; preds = %._crit_edge528, %.preheader.lr.ph, %.preheader520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  br label %bb.bv

bb.bv:                                            ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread, %stbtt_GetGlyphBitmapBoxSubpixel.exit, %bb.a, %._crit_edge530.split
  %.0 = phi ptr [ %.0.i, %._crit_edge530.split ], [ null, %bb.a ], [ null, %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread ], [ null, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @stbtt_GetCodepointSDF(ptr nofree noundef readonly captures(none) %0, float noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %2)
  %i.b = tail call ptr @stbtt_GetGlyphSDF(ptr noundef %0, float noundef %1, i32 noundef %i.a, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @stbtt_FreeSDF(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @stbtt_GetFontNameString(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !38
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val25.i = load i8, ptr %i.h, align 1, !tbaa !38
  %i.i = zext i8 %.val.i to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = zext i8 %.val25.i to i32
  %i.l = or disjoint i32 %i.j, %i.k               ; 2 uses
  %i.m = add i32 %i.d, 12
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %stbtt__find_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.n = shl nuw nsw i32 %indvars.iv.tr.i, 4
  %i.o = add i32 %i.m, %i.n
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 5 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38
  %i.s = icmp eq i8 %i.r, 110
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !38
  %i.v = icmp eq i8 %i.u, 97
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !38
  %i.y = icmp eq i8 %i.x, 109
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !38
  %i.ab = icmp eq i8 %i.aa, 101
  br i1 %i.ab, label %stbtt__find_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__find_table.exit.thread, label %bb.b, !llvm.loop !0

stbtt__find_table.exit:                           ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = load i32, ptr %i.ac, align 1            ; 2 uses
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 3 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %stbtt__find_table.exit.thread, label %bb.g

bb.g:                                             ; preds = %stbtt__find_table.exit
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.val51 = load i8, ptr %i.ah, align 1, !tbaa !38
  %i.ai = getelementptr i8, ptr %i.ag, i64 3
  %.val52 = load i8, ptr %i.ai, align 1, !tbaa !38
  %i.aj = zext i8 %.val51 to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = zext i8 %.val52 to i32
  %i.am = or disjoint i32 %i.ak, %i.al            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.val49 = load i8, ptr %i.an, align 1, !tbaa !38
  %i.ao = getelementptr i8, ptr %i.ag, i64 5
  %.val50 = load i8, ptr %i.ao, align 1, !tbaa !38
  %i.ap = zext i8 %.val49 to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = zext i8 %.val50 to i32
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = add i32 %i.as, %i.ae
  %.not62 = icmp eq i32 %i.am, 0
  br i1 %.not62, label %stbtt__find_table.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.au = add i32 %i.ae, 6
  %wide.trip.count = zext nneg i32 %i.am to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.av = trunc i64 %indvars.iv to i32
  %i.aw = mul i32 %i.av, 12
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ay ; 12 uses
  %.val47 = load i8, ptr %i.az, align 1, !tbaa !38
  %i.ba = getelementptr i8, ptr %i.az, i64 1
  %.val48 = load i8, ptr %i.ba, align 1, !tbaa !38
  %i.bb = zext i8 %.val47 to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = zext i8 %.val48 to i32
  %i.be = or disjoint i32 %i.bc, %i.bd
  %i.bf = icmp eq i32 %2, %i.be
  br i1 %i.bf, label %bb.i, label %bb.m
end_hunk_1
begin_hunk_2_@nvgEndFrame:bb.a
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !450

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.aq = sext i32 %.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.aq, %._crit_edge.loopexit ]
  %i.ar = load i32, ptr %i.j, align 8, !tbaa !70
  %i.as = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.0.lcssa
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !70
  store i32 %i.m, ptr %i.j, align 8, !tbaa !70
  store i32 0, ptr %i.h, align 8, !tbaa !238
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nvgImageSize(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243
  %i.c = load ptr, ptr %0, align 8, !tbaa !235
  %i.d = tail call i32 %i.b(ptr noundef %i.c, i32 noundef %1, ptr noundef %2, ptr noundef %3) #40 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { <2 x float>, <2 x float> } @nvgRGB(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #26 {
bb.a:
  %i.a = uitofp i8 %0 to float
  %i.b = fdiv float %i.a, 2.550000e+02
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.b, i64 0
  %i.c = insertelement <2 x i8> poison, i8 %1, i64 0
  %i.d = insertelement <2 x i8> %i.c, i8 %2, i64 1
  %i.e = uitofp <2 x i8> %i.d to <2 x float>
  %i.f = fdiv <2 x float> %i.e, splat (float 2.550000e+02) ; 2 uses
  %i.g = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %i.h = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.f, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.g, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.h, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #7 {
bb.a:
  %i.a = insertelement <4 x i8> poison, i8 %0, i64 0
  %i.b = insertelement <4 x i8> %i.a, i8 %1, i64 1
  %i.c = insertelement <4 x i8> %i.b, i8 %2, i64 2
  %i.d = insertelement <4 x i8> %i.c, i8 %3, i64 3
  %i.e = uitofp <4 x i8> %i.d to <4 x float>
  %i.f = fdiv <4 x float> %i.e, splat (float 2.550000e+02) ; 2 uses
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.h = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.g, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.h, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { <2 x float>, <2 x float> } @nvgRGBf(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #26 {
bb.a:
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %0, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %1, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %2, i64 0
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { <2 x float>, <2 x float> } @nvgRGBAf(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #7 {
bb.a:
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %0, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %1, i64 1
  %.sroa.3.8.vec.insert = insertelement <2 x float> poison, float %2, i64 0
  %.sroa.3.12.vec.insert = insertelement <2 x float> %.sroa.3.8.vec.insert, float %3, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { <2 x float>, <2 x float> } @nvgTransRGBA(<2 x float> %0, <2 x float> %1, i8 noundef zeroext %2) local_unnamed_addr #26 {
bb.a:
  %i.a = uitofp i8 %2 to float
  %i.b = fdiv float %i.a, 2.550000e+02
  %.sroa.2.12.vec.insert = insertelement <2 x float> %1, float %i.b, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { <2 x float>, <2 x float> } @nvgTransRGBAf(<2 x float> %0, <2 x float> %1, float noundef %2) local_unnamed_addr #26 {
bb.a:
  %.sroa.2.12.vec.insert = insertelement <2 x float> %1, float %2, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { <2 x float>, <2 x float> } @nvgLerpRGBA(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4) local_unnamed_addr #26 {
bb.a:
  %i.a = fcmp olt float %4, 0.000000e+00
  %i.b = fcmp ogt float %4, 1.000000e+00
  %i.c = select i1 %i.b, float 1.000000e+00, float %4
  %i.d = select i1 %i.a, float 0.000000e+00, float %i.c ; 2 uses
  %i.e = fsub float 1.000000e+00, %i.d
  %i.f = insertelement <4 x float> poison, float %i.d, i64 0
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer
  %i.h = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.i = fmul <4 x float> %i.g, %i.h
  %i.j = shufflevector <2 x float> %0, <2 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.k = insertelement <4 x float> poison, float %i.e, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %i.l, <4 x float> %i.i) ; 2 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.o = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.n, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.o, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local { <2 x float>, <2 x float> } @nvgHSL(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #27 {
bb.a:
  %i.a = tail call { <2 x float>, <2 x float> } @nvgHSLA(float noundef %0, float noundef %1, float noundef %2, i8 noundef zeroext -1)
  ret { <2 x float>, <2 x float> } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local { <2 x float>, <2 x float> } @nvgHSLA(float noundef %0, float noundef %1, float noundef %2, i8 noundef zeroext %3) local_unnamed_addr #28 {
bb.a:
  %i.a = tail call float @fmodf(float noundef %0, float noundef 1.000000e+00) #40 ; 3 uses
  %i.b = fcmp olt float %i.a, 0.000000e+00
  %i.c = fadd float %i.a, 1.000000e+00
  %.0 = select i1 %i.b, float %i.c, float %i.a    ; 5 uses
  %i.d = fcmp olt float %1, 0.000000e+00
  %i.e = fcmp ogt float %1, 1.000000e+00
  %i.f = select i1 %i.e, float 1.000000e+00, float %1
  %i.g = select i1 %i.d, float 0.000000e+00, float %i.f ; 3 uses
  %i.h = fcmp olt float %2, 0.000000e+00
  %i.i = fcmp ogt float %2, 1.000000e+00
  %i.j = select i1 %i.i, float 1.000000e+00, float %2
  %i.k = select i1 %i.h, float 0.000000e+00, float %i.j ; 5 uses
  %i.l = fcmp ugt float %i.k, 5.000000e-01
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = fadd float %i.g, 1.000000e+00
  %i.n = fmul float %i.k, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = fadd float %i.g, %i.k
  %i.p = fneg float %i.k
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.g, float %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi float [ %i.n, %bb.b ], [ %i.q, %bb.c ] ; 10 uses
  %i.s = fneg float %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.k, float 2.000000e+00, float %i.s) ; 15 uses
  %i.u = fadd float %.0, f0x3EAAAAAB              ; 3 uses
  %i.v = fcmp olt float %i.u, 0.000000e+00
  %i.w = fadd float %i.u, 1.000000e+00
  %.018.i = select i1 %i.v, float %i.w, float %i.u ; 3 uses
  %i.x = fcmp ogt float %.018.i, 1.000000e+00
  %i.y = fadd float %.018.i, -1.000000e+00
  %.1.i = select i1 %i.x, float %i.y, float %.018.i ; 5 uses
  %i.z = fcmp olt float %.1.i, f0x3E2AAAAB
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = fsub float %i.r, %i.t
  %i.ab = fmul float %.1.i, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 6.000000e+00, float %i.t)
  br label %nvg__hue.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = fcmp olt float %.1.i, 5.000000e-01
  br i1 %i.ad, label %nvg__hue.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = fcmp olt float %.1.i, f0x3F2AAAAB
  br i1 %i.ae, label %bb.h, label %nvg__hue.exit

bb.h:                                             ; preds = %bb.g
  %i.af = fsub float %i.r, %i.t
  %i.ag = fsub nnan ninf float f0x3F2AAAAB, %.1.i
  %i.ah = fmul float %i.ag, %i.af
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 6.000000e+00, float %i.t)
  br label %nvg__hue.exit

nvg__hue.exit:                                    ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi float [ %i.ac, %bb.e ], [ %i.r, %bb.f ], [ %i.ai, %bb.h ], [ %i.t, %bb.g ] ; 3 uses
  %i.aj = fcmp olt float %.0, 0.000000e+00
  %i.ak = fadd float %.0, 1.000000e+00
  %.018.i28 = select i1 %i.aj, float %i.ak, float %.0 ; 3 uses
  %i.al = fcmp ogt float %.018.i28, 1.000000e+00
  %i.am = fadd float %.018.i28, -1.000000e+00
  %.1.i29 = select i1 %i.al, float %i.am, float %.018.i28 ; 5 uses
  %i.an = fcmp olt float %.1.i29, f0x3E2AAAAB
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %nvg__hue.exit
  %i.ao = fsub float %i.r, %i.t
  %i.ap = fmul float %.1.i29, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 6.000000e+00, float %i.t)
  br label %nvg__hue.exit31

bb.j:                                             ; preds = %nvg__hue.exit
  %i.ar = fcmp olt float %.1.i29, 5.000000e-01
  br i1 %i.ar, label %nvg__hue.exit31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = fcmp olt float %.1.i29, f0x3F2AAAAB
  br i1 %i.as, label %bb.l, label %nvg__hue.exit31

bb.l:                                             ; preds = %bb.k
  %i.at = fsub float %i.r, %i.t
  %i.au = fsub nnan ninf float f0x3F2AAAAB, %.1.i29
  %i.av = fmul float %i.au, %i.at
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float 6.000000e+00, float %i.t)
  br label %nvg__hue.exit31

nvg__hue.exit31:                                  ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i30 = phi float [ %i.aq, %bb.i ], [ %i.r, %bb.j ], [ %i.aw, %bb.l ], [ %i.t, %bb.k ] ; 3 uses
  %i.ax = fadd float %.0, f0xBEAAAAAB             ; 3 uses
  %i.ay = fcmp olt float %i.ax, 0.000000e+00
  %i.az = fadd float %i.ax, 1.000000e+00
  %.018.i32 = select i1 %i.ay, float %i.az, float %i.ax ; 3 uses
  %i.ba = fcmp ogt float %.018.i32, 1.000000e+00
  %i.bb = fadd float %.018.i32, -1.000000e+00
  %.1.i33 = select i1 %i.ba, float %i.bb, float %.018.i32 ; 5 uses
  %i.bc = fcmp olt float %.1.i33, f0x3E2AAAAB
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %nvg__hue.exit31
  %i.bd = fsub float %i.r, %i.t
  %i.be = fmul float %.1.i33, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float 6.000000e+00, float %i.t)
  br label %nvg__hue.exit35

bb.n:                                             ; preds = %nvg__hue.exit31
  %i.bg = fcmp olt float %.1.i33, 5.000000e-01
  br i1 %i.bg, label %nvg__hue.exit35, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = fcmp olt float %.1.i33, f0x3F2AAAAB
  br i1 %i.bh, label %bb.p, label %nvg__hue.exit35

bb.p:                                             ; preds = %bb.o
  %i.bi = fsub float %i.r, %i.t
  %i.bj = fsub nnan ninf float f0x3F2AAAAB, %.1.i33
  %i.bk = fmul float %i.bj, %i.bi
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float 6.000000e+00, float %i.t)
  br label %nvg__hue.exit35

nvg__hue.exit35:                                  ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i34 = phi float [ %i.bf, %bb.m ], [ %i.r, %bb.n ], [ %i.bl, %bb.p ], [ %i.t, %bb.o ] ; 3 uses
  %i.bm = fcmp olt float %.0.i, 0.000000e+00
  %i.bn = fcmp ogt float %.0.i, 1.000000e+00
  %i.bo = select i1 %i.bn, float 1.000000e+00, float %.0.i
  %i.bp = select i1 %i.bm, float 0.000000e+00, float %i.bo
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bq = fcmp olt float %.0.i30, 0.000000e+00
  %i.br = fcmp ogt float %.0.i30, 1.000000e+00
  %i.bs = select i1 %i.br, float 1.000000e+00, float %.0.i30
  %i.bt = select i1 %i.bq, float 0.000000e+00, float %i.bs
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.bt, i64 1
  %i.bu = fcmp olt float %.0.i34, 0.000000e+00
  %i.bv = fcmp ogt float %.0.i34, 1.000000e+00
  %i.bw = select i1 %i.bv, float 1.000000e+00, float %.0.i34
  %i.bx = select i1 %i.bu, float 0.000000e+00, float %i.bw
  %.sroa.3.8.vec.insert = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.by = uitofp i8 %3 to float
  %i.bz = fdiv float %i.by, 2.550000e+02
  %.sroa.3.12.vec.insert = insertelement <2 x float> %.sroa.3.8.vec.insert, float %i.bz, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @nvgTransformIdentity(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #11 {
bb.a:
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !81
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> zeroinitializer, ptr %i.a, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @nvgTransformTranslate(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, float noundef %1, float noundef %2) local_unnamed_addr #11 {
bb.a:
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !81
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %1, ptr %i.a, align 4, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %2, ptr %i.b, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @nvgTransformScale(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, float noundef %1, float noundef %2) local_unnamed_addr #11 {
bb.a:
  store float %1, ptr %0, align 4, !tbaa !81
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> zeroinitializer, ptr %i.a, align 4, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %2, ptr %i.b, align 4, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> zeroinitializer, ptr %i.c, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @nvgTransformRotate(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, float noundef %1) local_unnamed_addr #29 {
bb.a:
  %i.a = tail call float @cosf(float noundef %1) #40 ; 2 uses
  %i.b = tail call float @sinf(float noundef %1) #40 ; 2 uses
  store float %i.a, ptr %0, align 4, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.b, ptr %i.c, align 4, !tbaa !81
  %i.d = fneg float %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.d, ptr %i.e, align 4, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.a, ptr %i.f, align 4, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @nvgTransformSkewX(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, float noundef %1) local_unnamed_addr #29 {
bb.a:
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !81
  %i.a = tail call float @tanf(float noundef %1) #40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.a, ptr %i.b, align 4, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.c, align 4, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @nvgTransformSkewY(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, float noundef %1) local_unnamed_addr #29 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4, !tbaa !81
  %i.a = tail call float @tanf(float noundef %1) #40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.a, ptr %i.b, align 4, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.c, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgTransformMultiply(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !81   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !81 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !81 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !81 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !81
  %i.o = fmul float %i.c, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %i.a, float %i.l, float %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load float, ptr %1, align 4, !tbaa !81   ; 3 uses
  %i.s = load float, ptr %i.d, align 4, !tbaa !81 ; 3 uses
  %i.t = fmul float %i.c, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %i.a, float %i.r, float %i.t)
  %i.v = fmul float %i.s, %i.h
  %i.w = tail call float @llvm.fmuladd.f32(float %i.f, float %i.r, float %i.v)
  %i.x = load <2 x float>, ptr %i.i, align 4, !tbaa !81 ; 2 uses
  %i.y = load float, ptr %i.j, align 4, !tbaa !81
  store float %i.p, ptr %i.b, align 4, !tbaa !81
  %i.z = load float, ptr %i.k, align 4, !tbaa !81
  %i.aa = load float, ptr %i.m, align 4, !tbaa !81
  %i.ab = fmul float %i.h, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.f, float %i.z, float %i.ab)
  store float %i.ac, ptr %i.g, align 4, !tbaa !81
  %i.ad = load float, ptr %i.k, align 4, !tbaa !81
  %i.ae = load float, ptr %i.m, align 4, !tbaa !81
  %i.af = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.ae, i64 1
  %i.ai = fmul <2 x float> %i.af, %i.ah
  %i.aj = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = insertelement <2 x float> poison, float %i.r, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.ad, i64 1
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.al, <2 x float> %i.ai)
  %i.an = load float, ptr %i.q, align 4, !tbaa !81
  %i.ao = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.an, i64 1
  %i.aq = fadd <2 x float> %i.ap, %i.am
  store float %i.u, ptr %0, align 4, !tbaa !81
  store float %i.w, ptr %i.e, align 4, !tbaa !81
  store <2 x float> %i.aq, ptr %i.i, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgTransformPremultiply(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load <2 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 2 uses
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !81 ; 2 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.f = load <2 x float>, ptr %0, align 4, !tbaa !81 ; 2 uses
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.h = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x float> %i.h, %i.d
  %i.j = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.f, <2 x float> %i.i)
  %i.l = load <2 x float>, ptr %i.b, align 4, !tbaa !81
  %i.m = fadd <2 x float> %i.l, %i.k
  %i.n = load <4 x float>, ptr %1, align 4        ; 2 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.p = fmul <4 x float> %i.o, %i.e
  %i.q = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.r = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.g, <4 x float> %i.p)
  store <4 x float> %i.r, ptr %0, align 4
  store <2 x float> %i.m, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @nvgTransformInverse(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !81
  %i.b = fpext float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !81
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !81
  %i.h = fpext <2 x float> %i.g to <2 x double>   ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fneg double %i.i
end_hunk_2
