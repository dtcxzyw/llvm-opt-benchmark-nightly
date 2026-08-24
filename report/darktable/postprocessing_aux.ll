Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw18recover_highlightsEv:bb.a
  %i.jm = mul nuw nsw i64 %i.jl, %i.dm
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv339
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !11 ; 2 uses
  %i.jq = fcmp reassoc nsz arcp contract afn ogt float %i.jp, 0.000000e+00 ; 2 uses
  %i.jr = fmul reassoc nnan nsz arcp contract afn float %i.jp, 2.000000e+00
  %i.js = fadd reassoc nsz arcp contract afn float %i.jr, %.4184.4432
  %i.jt = add nuw nsw i32 %.4.4433, 2
  %.4184.5 = select nsz i1 %i.jq, float %i.js, float %.4184.4432 ; 3 uses
  %.4.5 = select i1 %i.jq, i32 %i.jt, i32 %.4.4433 ; 3 uses
  br i1 %i.if, label %bb.aa, label %.preheader.7

bb.aa:                                            ; preds = %.preheader.6
  %i.ju = mul nuw nsw i64 %i.jl, %i.dm
  %i.jv = zext nneg i32 %i.ie to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ju
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jv
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !11 ; 2 uses
  %i.jz = fcmp reassoc nsz arcp contract afn ogt float %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.ab, label %.preheader.7

bb.ab:                                            ; preds = %bb.aa
  %i.ka = fadd reassoc nsz arcp contract afn float %i.jy, %.4184.5
  %i.kb = add nuw nsw i32 %.4.5, 1
  br label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.4, %.preheader.4.thread, %bb.ab, %bb.aa, %.preheader.6
  %i.kc = phi i64 [ %i.jk, %bb.ab ], [ %i.jk, %bb.aa ], [ %i.jk, %.preheader.6 ], [ %.ph, %.preheader.4.thread ], [ %i.iy, %.preheader.4 ] ; 2 uses
  %.4184.6 = phi nsz float [ %i.ka, %bb.ab ], [ %.4184.5, %bb.aa ], [ %.4184.5, %.preheader.6 ], [ %.4184.3.ph, %.preheader.4.thread ], [ %.4184.3, %.preheader.4 ] ; 3 uses
  %.4.6 = phi i32 [ %i.kb, %bb.ab ], [ %.4.5, %bb.aa ], [ %.4.5, %.preheader.6 ], [ %.4.3.ph, %.preheader.4.thread ], [ %.4.3, %.preheader.4 ] ; 3 uses
  br i1 %i.if, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.preheader.7
  %i.kd = zext nneg i32 %i.ie to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !11 ; 2 uses
  %i.kg = fcmp reassoc nsz arcp contract afn ogt float %i.kf, 0.000000e+00
  br i1 %i.kg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kh = fmul reassoc nnan nsz arcp contract afn float %i.kf, 2.000000e+00
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %.4184.6
  %i.kj = add nuw nsw i32 %.4.6, 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.preheader.7
  %.4184.7 = phi nsz float [ %i.ki, %bb.ad ], [ %.4184.6, %bb.ac ], [ %.4184.6, %.preheader.7 ]
  %.4.7 = phi i32 [ %i.kj, %bb.ad ], [ %.4.6, %bb.ac ], [ %.4.6, %.preheader.7 ] ; 2 uses
  %i.kk = icmp samesign ugt i32 %.4.7, 3
  br i1 %i.kk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.kl = fadd reassoc nsz arcp contract afn float %.4184.7, %exp2
  %i.km = fneg reassoc nsz arcp contract afn float %i.kl
  %i.kn = uitofp nneg i32 %.4.7 to float
  %i.ko = fadd reassoc nsz arcp contract afn float %exp2, %i.kn
  %i.kp = fdiv reassoc nsz arcp contract afn float %i.km, %i.ko
  store float %i.kp, ptr %gep449, align 4, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge381, %bb.ae, %bb.af
  %indvars.iv.next340.pre-phi = phi i64 [ %.pre382, %._crit_edge381 ], [ %i.kc, %bb.ae ], [ %i.kc, %bb.af ] ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next340.pre-phi, %i.dm
  br i1 %exitcond343.not, label %._crit_edge253, label %bb.v, !llvm.loop !268

._crit_edge253:                                   ; preds = %bb.ag
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %i.cz
  br i1 %exitcond348.not, label %.preheader203, label %.preheader201, !llvm.loop !269

.lr.ph257:                                        ; preds = %.lr.ph257.preheader534, %bb.ai
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %bb.ai ], [ %indvars.iv349.ph, %.lr.ph257.preheader534 ] ; 2 uses
  %.0170255 = phi i32 [ %.1171, %bb.ai ], [ %.0170255.ph, %.lr.ph257.preheader534 ]
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv349 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !11 ; 2 uses
  %i.ks = fcmp reassoc nsz arcp contract afn olt float %i.kr, 0.000000e+00
  br i1 %i.ks, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph257
  %i.kt = fneg reassoc nsz arcp contract afn float %i.kr
  store float %i.kt, ptr %i.kq, align 4, !tbaa !11
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph257, %bb.ah
  %.1171 = phi i32 [ 1, %bb.ah ], [ %.0170255, %.lr.ph257 ] ; 2 uses
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next350, %i.dh
  br i1 %exitcond353.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !270

._crit_edge258:                                   ; preds = %bb.ai, %middle.block506
  %.1171.lcssa = phi i32 [ %i.hj, %middle.block506 ], [ %.1171, %bb.ai ]
  %i.ku = icmp eq i32 %.1171.lcssa, 0
  br i1 %i.ku, label %._crit_edge258._crit_edge, label %bb.u, !llvm.loop !266

._crit_edge258._crit_edge:                        ; preds = %._crit_edge258
  br label %._crit_edge461, !llvm.loop !266

._crit_edge461:                                   ; preds = %bb.u, %._crit_edge258._crit_edge, %._crit_edge247.split
  br i1 %i.dl, label %iter.check486, label %.preheader206

iter.check486:                                    ; preds = %._crit_edge461
  br i1 %min.iters.check471, label %.lr.ph262.preheader, label %vector.main.loop.iter.check472

vector.main.loop.iter.check472:                   ; preds = %iter.check486
  br i1 %min.iters.check473, label %vec.epilog.ph490, label %vector.body476

vector.body476:                                   ; preds = %vector.main.loop.iter.check472, %vector.body476
  %index477 = phi i64 [ %index.next482, %vector.body476 ], [ 0, %vector.main.loop.iter.check472 ] ; 2 uses
  %i.kv = getelementptr [4 x i8], ptr %i.dc, i64 %index477 ; 5 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 32     ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kv, i64 64     ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kv, i64 96     ; 2 uses
  %wide.load478 = load <8 x float>, ptr %i.kv, align 4, !tbaa !11
  %wide.load479 = load <8 x float>, ptr %i.kw, align 4, !tbaa !11
  %wide.load480 = load <8 x float>, ptr %i.kx, align 4, !tbaa !11
  %wide.load481 = load <8 x float>, ptr %i.ky, align 4, !tbaa !11
  %i.kz = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load478, zeroinitializer
  %i.la = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load479, zeroinitializer
  %i.lb = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load480, zeroinitializer
  %i.lc = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load481, zeroinitializer
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kv, <8 x i1> %i.kz), !tbaa !11
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kw, <8 x i1> %i.la), !tbaa !11
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kx, <8 x i1> %i.lb), !tbaa !11
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.ky, <8 x i1> %i.lc), !tbaa !11
  %index.next482 = add nuw i64 %index477, 32      ; 2 uses
  %i.ld = icmp eq i64 %index.next482, %n.vec475
  br i1 %i.ld, label %middle.block483, label %vector.body476, !llvm.loop !271

middle.block483:                                  ; preds = %vector.body476
  br i1 %cmp.n484, label %.preheader206, label %vec.epilog.iter.check488

vec.epilog.iter.check488:                         ; preds = %middle.block483
  br i1 %min.epilog.iters.check489, label %.lr.ph262.preheader, label %vec.epilog.ph490, !prof !117

vec.epilog.ph490:                                 ; preds = %vector.main.loop.iter.check472, %vec.epilog.iter.check488
  %vec.epilog.resume.val485 = phi i64 [ %n.vec475, %vec.epilog.iter.check488 ], [ 0, %vector.main.loop.iter.check472 ]
  br label %vec.epilog.vector.body492

vec.epilog.vector.body492:                        ; preds = %vec.epilog.vector.body492, %vec.epilog.ph490
  %index493 = phi i64 [ %vec.epilog.resume.val485, %vec.epilog.ph490 ], [ %index.next495, %vec.epilog.vector.body492 ] ; 2 uses
  %i.le = getelementptr [4 x i8], ptr %i.dc, i64 %index493 ; 2 uses
  %wide.load494 = load <4 x float>, ptr %i.le, align 4, !tbaa !11
  %i.lf = fcmp reassoc nsz arcp contract afn oeq <4 x float> %wide.load494, zeroinitializer
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> splat (float 1.000000e+00), ptr align 4 %i.le, <4 x i1> %i.lf), !tbaa !11
  %index.next495 = add nuw i64 %index493, 4       ; 2 uses
  %i.lg = icmp eq i64 %index.next495, %n.vec491
  br i1 %i.lg, label %vec.epilog.middle.block496, label %vec.epilog.vector.body492, !llvm.loop !272

vec.epilog.middle.block496:                       ; preds = %vec.epilog.vector.body492
  br i1 %cmp.n497, label %.preheader206, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %iter.check486, %vec.epilog.iter.check488, %vec.epilog.middle.block496
  %indvars.iv354.ph = phi i64 [ 0, %iter.check486 ], [ %n.vec475, %vec.epilog.iter.check488 ], [ %n.vec491, %vec.epilog.middle.block496 ]
  br label %.lr.ph262

.preheader206:                                    ; preds = %.preheader203, %bb.ak, %middle.block483, %vec.epilog.middle.block496, %._crit_edge461
  br i1 %.not285, label %.loopexit, label %.preheader202.lr.ph

.preheader202.lr.ph:                              ; preds = %.preheader206
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  br i1 %.not286, label %.loopexit, label %.preheader202.preheader

.preheader202.preheader:                          ; preds = %.preheader202.lr.ph
  %.pre372.pre = load i16, ptr %i.cq, align 4, !tbaa !210
  br label %.preheader202

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.ak
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.ak ], [ %indvars.iv354.ph, %.lr.ph262.preheader ] ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv354 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !11
  %i.lk = fcmp reassoc nsz arcp contract afn oeq float %i.lj, 0.000000e+00
  br i1 %i.lk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph262
  store float 1.000000e+00, ptr %i.li, align 4, !tbaa !11
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph262, %bb.aj
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %i.dh
  br i1 %exitcond358.not, label %.preheader206, label %.lr.ph262, !llvm.loop !273

.preheader202:                                    ; preds = %.preheader202.preheader, %._crit_edge273
  %.pre372 = phi i16 [ %.pre372.pre, %.preheader202.preheader ], [ %.pre372374, %._crit_edge273 ] ; 3 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader202.preheader ], [ %indvars.iv.next365, %._crit_edge273 ] ; 3 uses
  %indvars366 = trunc i64 %indvars.iv364 to i32   ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.ll = add nuw nsw i32 %indvars366, 1          ; 2 uses
  %i.lm = mul nuw nsw i64 %indvars.iv364, %i.dm
  %invariant.gep454 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.lm
  br label %bb.al

bb.al:                                            ; preds = %.preheader202, %._crit_edge270
  %.pre372379 = phi i16 [ %.pre372, %.preheader202 ], [ %.pre372374, %._crit_edge270 ] ; 2 uses
  %i.ln = phi i16 [ %.pre372, %.preheader202 ], [ %i.no, %._crit_edge270 ] ; 2 uses
  %i.lo = phi i16 [ %.pre372, %.preheader202 ], [ %i.np, %._crit_edge270 ] ; 3 uses
  %indvars.iv359 = phi i64 [ 0, %.preheader202 ], [ %indvars.iv.next360, %._crit_edge270 ] ; 3 uses
  %indvars361 = trunc i64 %indvars.iv359 to i32   ; 2 uses
  %i.lp = zext nneg i16 %i.lo to i32
  %i.lq = lshr i32 4, %i.lp                       ; 3 uses
  %i.lr = mul i32 %i.lq, %indvars366              ; 2 uses
  %i.ls = mul i32 %i.lq, %i.ll
  %i.lt = icmp ult i32 %i.lr, %i.ls
  br i1 %i.lt, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.al
  %i.lu = add nuw nsw i32 %indvars361, 1          ; 2 uses
  %gep455 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep454, i64 %indvars.iv359
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph269, %._crit_edge266
  %.pre372378 = phi i16 [ %.pre372379, %.lr.ph269 ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.lv = phi i16 [ %i.ln, %.lr.ph269 ], [ %i.ni, %._crit_edge266 ] ; 2 uses
  %i.lw = phi i16 [ %i.lo, %.lr.ph269 ], [ %i.ni, %._crit_edge266 ] ; 2 uses
  %i.lx = phi i32 [ %i.lq, %.lr.ph269 ], [ %i.nl, %._crit_edge266 ]
  %.1161267 = phi i32 [ %i.lr, %.lr.ph269 ], [ %i.nj, %._crit_edge266 ] ; 2 uses
  %i.ly = mul i32 %i.lx, %indvars361              ; 2 uses
  %i.lz = zext nneg i16 %i.lw to i32
  %i.ma = lshr i32 4, %i.lz
  %i.mb = mul i32 %i.ma, %i.lu
  %i.mc = icmp ult i32 %i.ly, %i.mb
  br i1 %i.mc, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %bb.am
  %i.md = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.me = load i32, ptr %i.lh, align 4, !tbaa !111
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph265, %bb.aq
  %.pre372377 = phi i16 [ %.pre372378, %.lr.ph265 ], [ %.pre372376, %bb.aq ] ; 2 uses
  %i.mf = phi i16 [ %i.lv, %.lr.ph265 ], [ %i.nb, %bb.aq ] ; 2 uses
  %i.mg = phi i16 [ %i.lw, %.lr.ph265 ], [ %i.nc, %bb.aq ] ; 2 uses
  %.1159263 = phi i32 [ %i.ly, %.lr.ph265 ], [ %i.nd, %bb.aq ] ; 2 uses
  %i.mh = load i16, ptr %i.cv, align 2, !tbaa !207
  %i.mi = zext i16 %i.mh to i32
  %i.mj = mul i32 %.1161267, %i.mi
  %i.mk = add i32 %i.mj, %.1159263
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %indvars.iv369 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !115
  %i.mp = zext i16 %i.mo to i32                   ; 2 uses
  %i.mq = sdiv i32 %i.mp, %i.me
  %i.mr = icmp sgt i32 %i.mq, 1
  br i1 %i.mr, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %.0156.lcssa
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !115
  %i.mu = uitofp i16 %i.mt to float
  %i.mv = load float, ptr %gep455, align 4, !tbaa !11
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %i.mu
  %i.mx = fptosi float %i.mw to i32               ; 2 uses
  %i.my = icmp slt i32 %i.mp, %i.mx
  br i1 %i.my, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mz = tail call i32 @llvm.umin.i32(i32 %i.mx, i32 65535)
  %i.na = trunc nuw i32 %i.mz to i16
  store i16 %i.na, ptr %i.mn, align 2, !tbaa !115
  %.pre373 = load i16, ptr %i.cq, align 4, !tbaa !210 ; 3 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ap, %bb.ao
  %.pre372376 = phi i16 [ %.pre372377, %bb.an ], [ %.pre373, %bb.ap ], [ %.pre372377, %bb.ao ] ; 2 uses
  %i.nb = phi i16 [ %i.mf, %bb.an ], [ %.pre373, %bb.ap ], [ %i.mf, %bb.ao ] ; 2 uses
  %i.nc = phi i16 [ %i.mg, %bb.an ], [ %.pre373, %bb.ap ], [ %i.mg, %bb.ao ] ; 2 uses
  %i.nd = add nuw nsw i32 %.1159263, 1            ; 2 uses
  %i.ne = zext nneg i16 %i.nc to i32
  %i.nf = lshr i32 4, %i.ne
  %i.ng = mul i32 %i.nf, %i.lu
  %i.nh = icmp samesign ult i32 %i.nd, %i.ng
  br i1 %i.nh, label %bb.an, label %._crit_edge266, !llvm.loop !274

._crit_edge266:                                   ; preds = %bb.aq, %bb.am
  %.pre372375 = phi i16 [ %.pre372378, %bb.am ], [ %.pre372376, %bb.aq ] ; 2 uses
  %i.ni = phi i16 [ %i.lv, %bb.am ], [ %i.nb, %bb.aq ] ; 5 uses
  %i.nj = add nuw nsw i32 %.1161267, 1            ; 2 uses
  %i.nk = zext nneg i16 %i.ni to i32
  %i.nl = lshr i32 4, %i.nk                       ; 2 uses
  %i.nm = mul i32 %i.nl, %i.ll
  %i.nn = icmp samesign ult i32 %i.nj, %i.nm
  br i1 %i.nn, label %bb.am, label %._crit_edge270, !llvm.loop !275

._crit_edge270:                                   ; preds = %._crit_edge266, %bb.al
  %.pre372374 = phi i16 [ %.pre372379, %bb.al ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.no = phi i16 [ %i.ln, %bb.al ], [ %i.ni, %._crit_edge266 ]
  %i.np = phi i16 [ %i.lo, %bb.al ], [ %i.ni, %._crit_edge266 ]
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %i.dm
  br i1 %exitcond363.not, label %._crit_edge273, label %bb.al, !llvm.loop !276

._crit_edge273:                                   ; preds = %._crit_edge270
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %i.cz
  br i1 %exitcond368.not, label %.loopexit, label %.preheader202, !llvm.loop !277

.loopexit:                                        ; preds = %._crit_edge273, %.preheader206, %.preheader202.lr.ph, %bb.e
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.nq = load i32, ptr %i.f, align 4, !tbaa !112 ; 2 uses
  %i.nr = zext i32 %i.nq to i64
  %i.ns = icmp samesign ult i64 %indvars.iv.next370, %i.nr
  br i1 %i.ns, label %bb.e, label %._crit_edge279, !llvm.loop !278

._crit_edge279:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.dc)
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph213, %._crit_edge279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ldexp.f32.i32(float, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v29i16.p0(<29 x i16>, ptr captures(none), <29 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v8i32(<8 x i32>, <8 x i1>, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = !{!19}
!19 = distinct !{!19, !15}
!20 = !{!17, !14}
!21 = distinct !{!21, !22, !23, !24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 8, i32 24}
!26 = distinct !{!26, !22, !23, !24}
!27 = distinct !{!27, !22, !23, !24}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !22, !23, !24}
!30 = distinct !{!30, !22, !23}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = !{!37}
!37 = distinct !{!37, !33}
!38 = !{!39}
!39 = distinct !{!39, !33}
!40 = !{!37, !35, !32}
!41 = distinct !{!41, !22, !23, !24}
!42 = distinct !{!42, !22, !23, !24}
!43 = distinct !{!43, !22, !23}
!44 = distinct !{!44, !22, !23}
!45 = !{!46, !51, i64 30}
!46 = !{!"_ZTS6LibRaw", !47, i64 8, !93, i64 381584, !94, i64 381592, !9, i64 384344, !104, i64 433496, !104, i64 433504, !9, i64 433512, !105, i64 768232, !106, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !49, i64 768448, !49, i64 768456, !49, i64 768464, !85, i64 768472, !49, i64 768480, !49, i64 768488, !49, i64 768496, !49, i64 768504}
!47 = !{!"_ZTS13libraw_data_t", !48, i64 0, !50, i64 8, !53, i64 192, !55, i64 632, !60, i64 1928, !76, i64 5088, !77, i64 5232, !78, i64 5536, !8, i64 5584, !8, i64 5588, !81, i64 5592, !84, i64 192680, !87, i64 193480, !89, i64 193504, !90, i64 193768, !49, i64 381568}
!48 = !{!"p1 short", !49, i64 0}
!49 = !{!"any pointer", !9, i64 0}
!50 = !{!"_ZTS20libraw_image_sizes_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !51, i64 14, !8, i64 16, !52, i64 24, !8, i64 32, !9, i64 36, !51, i64 164, !9, i64 166}
!51 = !{!"short", !9, i64 0}
!52 = !{!"double", !9, i64 0}
!53 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !54, i64 432}
!54 = !{!"p1 omnipotent char", !49, i64 0}
!55 = !{!"_ZTS17libraw_lensinfo_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !51, i64 532, !56, i64 536, !57, i64 544, !58, i64 560}
!56 = !{!"_ZTS18libraw_nikonlens_t", !12, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!57 = !{!"_ZTS16libraw_dnglens_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!58 = !{!"_ZTS24libraw_makernotes_lens_t", !59, i64 0, !9, i64 8, !51, i64 136, !51, i64 138, !59, i64 144, !51, i64 152, !51, i64 154, !9, i64 156, !51, i64 220, !9, i64 222, !9, i64 238, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !59, i64 320, !9, i64 328, !59, i64 456, !9, i64 464, !59, i64 592, !9, i64 600, !51, i64 728, !12, i64 732}
!59 = !{!"long long", !9, i64 0}
!60 = !{!"_ZTS19libraw_makernotes_t", !61, i64 0, !63, i64 168, !65, i64 464, !66, i64 848, !67, i64 1200, !68, i64 1664, !69, i64 1848, !70, i64 2092, !71, i64 2160, !72, i64 2196, !73, i64 2648, !74, i64 2720, !75, i64 2856}
!61 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !51, i64 52, !51, i64 54, !9, i64 56, !51, i64 58, !51, i64 60, !51, i64 62, !51, i64 64, !51, i64 66, !51, i64 68, !51, i64 70, !51, i64 72, !51, i64 74, !51, i64 76, !51, i64 78, !51, i64 80, !51, i64 82, !8, i64 84, !12, i64 88, !51, i64 92, !51, i64 94, !51, i64 96, !51, i64 98, !8, i64 100, !51, i64 104, !8, i64 108, !8, i64 112, !51, i64 116, !8, i64 120, !62, i64 124, !62, i64 132, !62, i64 140, !62, i64 148, !62, i64 156, !9, i64 164}
!62 = !{!"_ZTS13libraw_area_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6}
!63 = !{!"_ZTS25libraw_nikon_makernotes_t", !52, i64 0, !51, i64 8, !51, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !51, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !51, i64 170, !64, i64 172, !51, i64 180, !51, i64 182, !51, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !54, i64 256, !51, i64 264, !51, i64 266, !9, i64 268, !51, i64 270, !52, i64 272, !52, i64 280, !52, i64 288}
!64 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6}
!65 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !52, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!66 = !{!"_ZTS18libraw_fuji_info_t", !12, i64 0, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !51, i64 14, !51, i64 16, !51, i64 18, !9, i64 20, !9, i64 53, !12, i64 88, !51, i64 92, !51, i64 94, !9, i64 96, !51, i64 100, !8, i64 104, !8, i64 108, !51, i64 112, !9, i64 114, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !51, i64 128, !8, i64 132, !51, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !51, i64 168, !8, i64 172, !51, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!67 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !51, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !51, i64 82, !9, i64 84, !51, i64 88, !51, i64 90, !9, i64 92, !9, i64 352, !51, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !51, i64 416, !51, i64 418, !51, i64 420, !51, i64 422, !52, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !51, i64 456, !51, i64 458}
!68 = !{!"_ZTS18libraw_sony_info_t", !51, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !51, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !51, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !51, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !51, i64 54, !8, i64 56, !51, i64 60, !9, i64 62, !51, i64 66, !51, i64 68, !51, i64 70, !51, i64 72, !51, i64 74, !51, i64 76, !51, i64 78, !8, i64 80, !12, i64 84, !51, i64 88, !8, i64 92, !8, i64 96, !51, i64 100, !9, i64 102, !8, i64 124, !51, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !51, i64 138, !51, i64 140, !51, i64 142, !51, i64 144, !51, i64 146, !51, i64 148, !51, i64 150, !51, i64 152, !51, i64 154, !8, i64 156, !51, i64 160, !9, i64 162, !12, i64 180}
!69 = !{!"_ZTS25libraw_kodak_makernotes_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !51, i64 228, !51, i64 230, !51, i64 232, !51, i64 234, !12, i64 236, !12, i64 240}
!70 = !{!"_ZTS29libraw_panasonic_makernotes_t", !51, i64 0, !51, i64 2, !9, i64 4, !8, i64 36, !12, i64 40, !9, i64 44, !51, i64 56, !51, i64 58, !8, i64 60, !8, i64 64}
!71 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !51, i64 12, !8, i64 16, !8, i64 20, !51, i64 24, !9, i64 26, !51, i64 30, !9, i64 32, !9, i64 33, !51, i64 34}
!72 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!73 = !{!"_ZTS25libraw_ricoh_makernotes_t", !51, i64 0, !9, i64 4, !9, i64 12, !51, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !51, i64 40, !51, i64 42, !51, i64 44, !51, i64 46, !51, i64 48, !51, i64 50, !52, i64 56, !52, i64 64}
!74 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !52, i64 88, !8, i64 96, !9, i64 100}
!75 = !{!"_ZTS24libraw_metadata_common_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !51, i64 64, !9, i64 66, !12, i64 196, !9, i64 200, !8, i64 296}
!76 = !{!"_ZTS21libraw_shootinginfo_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !9, i64 14, !9, i64 78}
!77 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !12, i64 128, !12, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !12, i64 248, !12, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !12, i64 288, !12, i64 292, !8, i64 296, !8, i64 300}
!78 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !12, i64 28, !9, i64 32, !79, i64 40}
!79 = !{!"p2 omnipotent char", !80, i64 0}
!80 = !{!"any p2 pointer", !49, i64 0}
end_hunk_0
