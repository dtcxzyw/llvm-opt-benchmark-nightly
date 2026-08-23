Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render_vulkan?download=true
inline.NumInlined: 100
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@VULKAN_RunCommandQueue:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.hl = getelementptr inbounds nuw i8, ptr %.0175248, i64 24
  %i.hm = load float, ptr %i.hl, align 8
  %i.hn = fcmp une float %i.hm, %i.hd
  br i1 %i.hn, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = add i64 %.0182245, 1                    ; 2 uses
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %i.ge, i64 %.0182245 ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.ge, i64 %i.ho ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4
  %i.ht = fcmp une float %i.hq, %i.hs
  br i1 %i.ht, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hv = load float, ptr %i.hu, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.hx = load float, ptr %i.hw, align 4
  %i.hy = fcmp une float %i.hv, %i.hx
  br i1 %i.hy, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %.1180246, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hz = load ptr, ptr %i.bf, align 8
  %i.ia = load ptr, ptr %i.bg, align 8
  call fastcc void @VULKAN_SetDrawState(ptr noundef %0, ptr noundef %.0188293, ptr noundef %i.hz, ptr noundef %i.ia, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %13, i1 noundef zeroext false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ib = add i64 %i.ho, %i.gd
  %.val220 = load ptr, ptr %i.d, align 8
  %i.ic = getelementptr i8, ptr %.val220, i64 1688
  %.val220.val = load ptr, ptr %i.ic, align 8
  %i.id = load ptr, ptr @vkCmdDraw, align 8
  %i.ie = trunc i64 %i.ib to i32
  call void %i.id(ptr noundef %.val220.val, i32 noundef 1, i32 noundef 1, i32 noundef %i.ie, i32 noundef 0) #7, !inline_history !16
  %.pre = load i64, ptr %i.hh, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %i.if = phi i64 [ %.pre, %bb.av ], [ 2, %bb.as ]
  %.3 = phi i1 [ true, %bb.av ], [ %.1180246, %bb.as ]
  %i.ig = add i64 %i.if, %.0182245
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph, %bb.aw
  %.1183 = phi i64 [ %i.ig, %bb.aw ], [ %.0182245, %.lr.ph ] ; 2 uses
  %.4 = phi i1 [ %.3, %bb.aw ], [ %.1180246, %.lr.ph ]
  %.1177 = phi ptr [ %.0175248, %bb.aw ], [ %.0176247, %.lr.ph ] ; 2 uses
  %.0175.in = getelementptr inbounds nuw i8, ptr %.0175248, i64 80
  %.0175 = load ptr, ptr %.0175.in, align 8       ; 2 uses
  %.not200 = icmp eq ptr %.0175, null
  br i1 %.not200, label %.thread, label %.lr.ph, !llvm.loop !17

.thread:                                          ; preds = %bb.ax, %bb.ao, %bb.aq, %bb.ap, %.lr.ph, %bb.an
  %.0182.lcssa = phi i64 [ %i.gb, %bb.an ], [ %.0182245, %.lr.ph ], [ %.0182245, %bb.ap ], [ %.0182245, %bb.aq ], [ %.0182245, %bb.ao ], [ %.1183, %bb.ax ]
  %.0176.lcssa = phi ptr [ %.0188293, %bb.an ], [ %.0176247, %.lr.ph ], [ %.0176247, %bb.ap ], [ %.0176247, %bb.aq ], [ %.0176247, %bb.ao ], [ %.1177, %bb.ax ]
  %i.ih = load ptr, ptr %i.bf, align 8
  %i.ii = load ptr, ptr %i.bg, align 8
  call fastcc void @VULKAN_SetDrawState(ptr noundef %0, ptr noundef %.0188293, ptr noundef %i.ih, ptr noundef %i.ii, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %13, i1 noundef zeroext false)
  %.val219 = load ptr, ptr %i.d, align 8
  %i.ij = getelementptr i8, ptr %.val219, i64 1688
  %.val219.val = load ptr, ptr %i.ij, align 8
  %i.ik = load ptr, ptr @vkCmdDraw, align 8
  %i.il = trunc i64 %.0182.lcssa to i32
  %i.im = trunc i64 %i.gd to i32
  call void %i.ik(ptr noundef %.val219.val, i32 noundef %i.il, i32 noundef 1, i32 noundef %i.im, i32 noundef 0) #7, !inline_history !16
  br label %bb.cm

bb.ay:                                            ; preds = %bb.s, %bb.s
  %i.in = getelementptr inbounds nuw i8, ptr %.0188293, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %.0188293, i64 24 ; 2 uses
  %i.ip = load float, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.0188293, i64 48
  %i.ir = load ptr, ptr %i.iq, align 8            ; 11 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0188293, i64 44
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %.0188293, i64 56 ; 4 uses
  %i.iv = load i32, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %.0188293, i64 60 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %.0188293, i64 64 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.0188293, i64 16
  %i.jb = load i64, ptr %i.ja, align 8            ; 2 uses
  %i.jc = load i64, ptr %i.in, align 8
  %i.jd = lshr i64 %i.jc, 5                       ; 2 uses
  %.0171.in262 = getelementptr inbounds nuw i8, ptr %.0188293, i64 80
  %.0171263 = load ptr, ptr %.0171.in262, align 8 ; 2 uses
  %.not207264 = icmp eq ptr %.0171263, null
  br i1 %.not207264, label %.thread238, label %.lr.ph268

.lr.ph268:                                        ; preds = %bb.ay, %select.unfold
  %.0171267 = phi ptr [ %.0171, %select.unfold ], [ %.0171263, %bb.ay ] ; 10 uses
  %.0266 = phi i64 [ %.1, %select.unfold ], [ %i.jb, %bb.ay ] ; 9 uses
  %.0172265 = phi ptr [ %.1173, %select.unfold ], [ %.0188293, %bb.ay ] ; 8 uses
  %i.je = load i32, ptr %.0171267, align 8        ; 2 uses
  %.not208 = icmp eq i32 %i.je, %i.ed
  br i1 %.not208, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph268
  %i.jf = icmp eq i32 %i.je, 3
  br i1 %i.jf, label %select.unfold, label %.thread238

bb.ba:                                            ; preds = %.lr.ph268
  %i.jg = getelementptr inbounds nuw i8, ptr %.0171267, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8
  %.not209 = icmp eq ptr %i.jh, %i.ir
  br i1 %.not209, label %bb.bb, label %.thread238

bb.bb:                                            ; preds = %bb.ba
  %i.ji = getelementptr inbounds nuw i8, ptr %.0171267, i64 56
  %i.jj = load i32, ptr %i.ji, align 8
  %.not210 = icmp eq i32 %i.jj, %i.iv
  br i1 %.not210, label %bb.bc, label %.thread238

bb.bc:                                            ; preds = %bb.bb
  %i.jk = getelementptr inbounds nuw i8, ptr %.0171267, i64 60
  %i.jl = load i32, ptr %i.jk, align 4
  %.not211 = icmp eq i32 %i.jl, %i.ix
  br i1 %.not211, label %bb.bd, label %.thread238

bb.bd:                                            ; preds = %bb.bc
  %i.jm = getelementptr inbounds nuw i8, ptr %.0171267, i64 64
  %i.jn = load i32, ptr %i.jm, align 8
  %.not212 = icmp eq i32 %i.jn, %i.iz
  br i1 %.not212, label %bb.be, label %.thread238

bb.be:                                            ; preds = %bb.bd
  %i.jo = getelementptr inbounds nuw i8, ptr %.0171267, i64 44
  %i.jp = load i32, ptr %i.jo, align 4
  %.not213 = icmp eq i32 %i.jp, %i.it
  br i1 %.not213, label %bb.bf, label %.thread238

bb.bf:                                            ; preds = %bb.be
  %i.jq = getelementptr inbounds nuw i8, ptr %.0171267, i64 24
  %i.jr = load float, ptr %i.jq, align 8
  %i.js = fcmp une float %i.jr, %i.ip
  br i1 %i.js, label %.thread238, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jt = getelementptr inbounds nuw i8, ptr %.0171267, i64 16
  %i.ju = load i64, ptr %i.jt, align 8
  %i.jv = add i64 %i.ju, %.0266
  br label %select.unfold

select.unfold:                                    ; preds = %bb.az, %bb.bg
  %.1173 = phi ptr [ %.0171267, %bb.bg ], [ %.0172265, %bb.az ] ; 2 uses
  %.1 = phi i64 [ %i.jv, %bb.bg ], [ %.0266, %bb.az ] ; 2 uses
  %.0171.in = getelementptr inbounds nuw i8, ptr %.0171267, i64 80
  %.0171 = load ptr, ptr %.0171.in, align 8       ; 2 uses
  %.not207 = icmp eq ptr %.0171, null
  br i1 %.not207, label %.thread238, label %.lr.ph268, !llvm.loop !18

.thread238:                                       ; preds = %select.unfold, %bb.az, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %.0172.lcssa = phi ptr [ %.0188293, %bb.ay ], [ %.0172265, %bb.ba ], [ %.0172265, %bb.bb ], [ %.0172265, %bb.bc ], [ %.0172265, %bb.bd ], [ %.0172265, %bb.be ], [ %.0172265, %bb.bf ], [ %.0172265, %bb.az ], [ %.1173, %select.unfold ] ; 2 uses
  %.0.lcssa = phi i64 [ %i.jb, %bb.ay ], [ %.0266, %bb.ba ], [ %.0266, %bb.bb ], [ %.0266, %bb.bc ], [ %.0266, %bb.bd ], [ %.0266, %bb.be ], [ %.0266, %bb.bf ], [ %.0266, %bb.az ], [ %.1, %select.unfold ] ; 2 uses
  %i.jw = icmp eq i32 %i.ed, 10
  br i1 %i.jw, label %bb.bh, label %bb.cl

bb.bh:                                            ; preds = %.thread238
  %.not214 = icmp eq ptr %i.ir, null
  br i1 %.not214, label %bb.cj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jx = load ptr, ptr %i.d, align 8             ; 22 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ir, i64 312
  %i.jz = load ptr, ptr %i.jy, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 136
  %i.kb = load ptr, ptr %i.ka, align 8            ; 3 uses
  %.not.i226 = icmp eq ptr %i.kb, null
  br i1 %.not.i226, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 1896
  %i.kd = load ptr, ptr %i.kc, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ke = phi ptr [ %i.kd, %bb.bj ], [ %i.kb, %bb.bi ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 144
  %i.kg = load ptr, ptr %i.kf, align 8            ; 2 uses
  %.not70.i = icmp eq ptr %i.kg, null
  br i1 %.not70.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 1904
  %i.ki = load ptr, ptr %i.kh, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.kj = phi ptr [ %i.ki, %bb.bl ], [ %i.kg, %bb.bk ]
  %i.kk = icmp ne ptr %i.kb, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.bu, i8 0, i64 40, i1 false)
  %i.kl = call zeroext i1 @SDL_RenderingLinearSpace(ptr noundef nonnull %0) #7
  %i.km = uitofp i1 %i.kl to float
  store float %i.km, ptr %10, align 4
  %i.kn = load float, ptr %i.io, align 8
  store float %i.kn, ptr %i.bv, align 4
  %i.ko = load i32, ptr %i.ir, align 8            ; 2 uses
  switch i32 %i.ko, label %bb.bo [
    i32 842094169, label %.thread.i
    i32 1448433993, label %.thread.i
    i32 842094158, label %.thread.i
    i32 825382478, label %.thread.i
    i32 808530000, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm
  br label %.thread.i

bb.bo:                                            ; preds = %bb.bm
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.kq = load i32, ptr %i.kp, align 8            ; 2 uses
  %i.kr = icmp eq i32 %i.kq, 301991168
  br i1 %i.kr, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ks = and i32 %i.kq, 32736
  %or.cond56.i.i = icmp eq i32 %i.ks, 9728
  %. = select i1 %or.cond56.i.i, float 3.000000e+00, float 0.000000e+00
  br label %bb.bq

.thread.i:                                        ; preds = %bb.bn, %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %.sink.i = phi float [ 3.000000e+00, %bb.bn ], [ 1.000000e+00, %bb.bm ], [ 1.000000e+00, %bb.bm ], [ 1.000000e+00, %bb.bm ], [ 1.000000e+00, %bb.bm ]
  store float %.sink.i, ptr %i.bw, align 4
  %i.kt = load i32, ptr %i.iu, align 8
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink = phi float [ 2.000000e+00, %bb.bo ], [ %., %bb.bp ]
  store float %.sink, ptr %i.bw, align 4
  %i.ku = icmp eq i32 %i.ko, 318769153
  %i.kv = load i32, ptr %i.iu, align 8            ; 2 uses
  br i1 %i.ku, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  switch i32 %i.kv, label %._crit_edge.i.i [
    i32 0, label %bb.bs
    i32 1, label %.thread.i.i
    i32 2, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  store float 3.000000e+00, ptr %i.bu, align 4
  br label %._crit_edge.i.i

bb.bt:                                            ; preds = %bb.br
  br label %.thread.i.i

bb.bu:                                            ; preds = %bb.bq, %.thread.i
  %i.kw = phi i32 [ %i.kt, %.thread.i ], [ %i.kv, %bb.bq ]
  %i.kx = icmp eq i32 %i.kw, 2
  br i1 %i.kx, label %.thread.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store float 1.000000e+00, ptr %i.bu, align 4
  br label %._crit_edge.i.i

.thread.i.i:                                      ; preds = %bb.bu, %bb.br, %bb.bt
  %.sink318 = phi float [ 4.000000e+00, %bb.br ], [ 5.000000e+00, %bb.bt ], [ 2.000000e+00, %bb.bu ]
  store float %.sink318, ptr %i.bu, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.kz = load i32, ptr %i.ky, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.lb = sitofp i32 %i.kz to float               ; 2 uses
  store float %i.lb, ptr %i.bx, align 4
  %i.lc = load i32, ptr %i.la, align 8
  %i.ld = sitofp i32 %i.lc to float               ; 2 uses
  store float %i.ld, ptr %i.by, align 4
  %i.le = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.lf = insertelement <2 x float> %i.le, float %i.ld, i64 1
  %i.lg = fdiv <2 x float> splat (float 1.000000e+00), %i.lf
  store <2 x float> %i.lg, ptr %i.bz, align 4
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.thread.i.i, %bb.bv, %bb.bs, %bb.br
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ir, i64 28
  %i.li = load float, ptr %i.lh, align 4
  store float %i.li, ptr %i.ca, align 4
  %i.lj = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not54.i.i = icmp eq ptr %i.lj, null
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %.0.in.i.i227 = select i1 %.not54.i.i, ptr %i.cc, ptr %i.lk
  %.0.i.i228 = load float, ptr %.0.in.i.i227, align 8 ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.lm = load float, ptr %i.ll, align 8          ; 3 uses
  %i.ln = fcmp ogt float %i.lm, %.0.i.i228
  %i.lo = fcmp ogt float %.0.i.i228, 0.000000e+00
  %or.cond.i.i = and i1 %i.lo, %i.ln
  br i1 %or.cond.i.i, label %bb.bw, label %VULKAN_SetupShaderConstants.exit.i

bb.bw:                                            ; preds = %._crit_edge.i.i
  store float 2.000000e+00, ptr %i.cd, align 4
  %i.lp = fmul float %i.lm, %i.lm
  %i.lq = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.0.i.i228, i64 0
  %i.lr = insertelement <2 x float> poison, float %i.lp, i64 0
  %i.ls = insertelement <2 x float> %i.lr, float %.0.i.i228, i64 1
  %i.lt = fdiv <2 x float> %i.lq, %i.ls
  store <2 x float> %i.lt, ptr %i.ce, align 4
  br label %VULKAN_SetupShaderConstants.exit.i

VULKAN_SetupShaderConstants.exit.i:               ; preds = %bb.bw, %._crit_edge.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jz, i64 32 ; 4 uses
  %i.lv = load i32, ptr %i.lu, align 8            ; 2 uses
  %.not71.i = icmp eq i32 %i.lv, 5
  br i1 %.not71.i, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %VULKAN_SetupShaderConstants.exit.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jx, i64 1808 ; 3 uses
  %i.lx = load ptr, ptr %i.lw, align 8
  %.not72.not.i = icmp eq ptr %i.lx, null
  br i1 %.not72.not.i, label %VULKAN_RecordPipelineImageBarrier.exit84.i, label %VULKAN_RecordPipelineImageBarrier.exit.i

VULKAN_RecordPipelineImageBarrier.exit.i:         ; preds = %bb.bx
  %i.ly = load ptr, ptr @vkCmdEndRenderPass, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jx, i64 1688 ; 3 uses
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ly(ptr noundef %i.ma) #7, !inline_history !19
  store ptr null, ptr %i.lw, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 72, i1 false)
  store i32 45, ptr %9, align 8
  store i32 4512, ptr %i.cf, align 8
  store i32 32, ptr %i.cg, align 4
  %i.md = load i32, ptr %i.lu, align 8
  store i32 %i.md, ptr %i.ch, align 8
  store i32 5, ptr %i.ci, align 4
  store i32 -1, ptr %i.cj, align 8
  store i32 -1, ptr %i.ck, align 4
  store ptr %i.mc, ptr %i.cl, align 8
  store i32 1, ptr %i.cm, align 8
  store i32 1, ptr %i.cn, align 8
  store i32 1, ptr %i.co, align 8
  %i.me = load ptr, ptr @vkCmdPipelineBarrier, align 8
  %i.mf = load ptr, ptr %i.lz, align 8
  call void %i.me(ptr noundef %i.mf, i32 noundef 5248, i32 noundef 128, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %9) #7, !inline_history !20
  store i32 5, ptr %i.lu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jx, i64 10408
  %i.mh = getelementptr inbounds nuw i8, ptr %i.jx, i64 10412
  %i.mi = getelementptr inbounds nuw i8, ptr %i.jx, i64 10520
  %i.mj = load ptr, ptr %i.mi, align 8            ; 5 uses
  %.not.i80.i = icmp eq ptr %i.mj, null           ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 112
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 116
  %.025.in.i.i229 = select i1 %.not.i80.i, ptr %i.mg, ptr %i.mk
  %.0.in.i81.i = select i1 %.not.i80.i, ptr %i.mh, ptr %i.ml
  %.0.i82.i = load i32, ptr %.0.in.i81.i, align 4
  %.025.i.i230 = load i32, ptr %.025.in.i.i229, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 40
  %i.mn = getelementptr inbounds nuw i8, ptr %i.jx, i64 1792
  %.in.i.i231 = select i1 %.not.i80.i, ptr %i.mn, ptr %i.mm
  %i.mo = load ptr, ptr %.in.i.i231, align 8      ; 2 uses
  store ptr %i.mo, ptr %i.lw, align 8
  br i1 %.not.i80.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %VULKAN_RecordPipelineImageBarrier.exit.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  br label %VULKAN_BeginRenderPass.exit.i

bb.bz:                                            ; preds = %VULKAN_RecordPipelineImageBarrier.exit.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jx, i64 1784
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.jx, i64 10472
  %i.mt = load i32, ptr %i.ms, align 8
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mu
  br label %VULKAN_BeginRenderPass.exit.i

VULKAN_BeginRenderPass.exit.i:                    ; preds = %bb.bz, %bb.by
  %.in35.i.i232 = phi ptr [ %i.mp, %bb.by ], [ %i.mv, %bb.bz ]
  %i.mw = load ptr, ptr %.in35.i.i232, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  store i32 43, ptr %8, align 8
  store ptr %i.mo, ptr %i.cp, align 8
  store ptr %i.mw, ptr %i.cq, align 8
  store i32 %.025.i.i230, ptr %i.cr, align 8
  store i32 %.0.i82.i, ptr %i.cs, align 4
  %i.mx = load ptr, ptr @vkCmdBeginRenderPass, align 8
  %i.my = load ptr, ptr %i.lz, align 8
  call void %i.mx(ptr noundef %i.my, ptr noundef nonnull %8, i32 noundef 0) #7, !inline_history !21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %bb.ca

VULKAN_RecordPipelineImageBarrier.exit84.i:       ; preds = %bb.bx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.na = load ptr, ptr %i.mz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  store i32 45, ptr %7, align 8
end_hunk_0
