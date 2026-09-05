Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dsbgst_:bb.a
  %i.bth = add i32 %i.btg, %i.bte                 ; 3 uses
  store i32 %i.bth, ptr %i.c, align 4, !tbaa !151
  %i.bti = load i32, ptr %2, align 4, !tbaa !151  ; 6 uses
  %.not2659.not3205 = icmp sgt i32 %i.bti, %i.bth
  br i1 %.not2659.not3205, label %.lr.ph3208, label %.loopexit2884

.lr.ph3208:                                       ; preds = %bb.di
  %i.btj = add i32 %i.btd, %i.ay                  ; 8 uses
  %i.btk = sext i32 %i.bti to i64                 ; 11 uses
  %i.btl = sext i32 %i.bth to i64                 ; 3 uses
  %i.btm = sub nsw i64 %i.btk, %i.btl             ; 3 uses
  %min.iters.check = icmp ult i64 %i.btm, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3208
  %i.btn = xor i64 %i.btl, -1
  %i.bto = add nsw i64 %i.btn, %i.btk             ; 2 uses
  %i.btp = shl i32 %i.bti, 1
  %i.btq = xor i32 %i.btj, -1
  %i.btr = add i32 %i.btp, %i.btq                 ; 2 uses
  %i.bts = trunc i64 %i.bto to i32                ; 2 uses
  %i.btt = sub i32 %i.btr, %i.bts
  %i.btu = icmp sgt i32 %i.btt, %i.btr
  %i.btv = xor i32 %i.btj, -1
  %i.btw = add i32 %i.bti, %i.btv                 ; 2 uses
  %i.btx = sub i32 %i.btw, %i.bts
  %i.bty = icmp sgt i32 %i.btx, %i.btw
  %i.btz = icmp ugt i64 %i.bto, 4294967295
  %i.bua = or i1 %i.bty, %i.btz
  %i.bub = or i1 %i.btu, %i.bua
  br i1 %i.bub, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.buc = shl nsw i64 %i.btk, 3                  ; 3 uses
  %i.bud = add nsw i64 %i.buc, -1
  %diff.check = icmp ult i64 %i.bud, 31
  %i.bue = shl i32 %i.bti, 1
  %i.buf = xor i32 %i.btj, -1
  %i.bug = add i32 %i.bue, %i.buf
  %i.buh = sext i32 %i.bug to i64
  %i.bui = add nsw i64 %i.bd, %i.buh
  %i.buj = shl nsw i64 %i.bui, 3                  ; 2 uses
  %i.buk = shl nsw i64 %i.btk, 4                  ; 2 uses
  %i.bul = sub nsw i64 %i.buj, %i.buk
  %diff.check4224 = icmp ult i64 %i.bul, 24
  %conflict.rdx = or i1 %diff.check, %diff.check4224
  %i.bum = xor i32 %i.btj, -1
  %i.bun = add i32 %i.bti, %i.bum
  %i.buo = sext i32 %i.bun to i64
  %i.bup = add nsw i64 %i.bd, %i.buo
  %i.buq = shl nsw i64 %i.bup, 3                  ; 2 uses
  %i.bur = sub nsw i64 %i.buk, %i.buq
  %i.bus = add nsw i64 %i.bur, -9
  %diff.check4225 = icmp ult i64 %i.bus, 31
  %conflict.rdx4226 = or i1 %conflict.rdx, %diff.check4225
  %i.but = sub nsw i64 %i.buj, %i.buc
  %diff.check4227 = icmp ult i64 %i.but, 24
  %conflict.rdx4228 = or i1 %conflict.rdx4226, %diff.check4227
  %i.buu = sub nsw i64 %i.buq, %i.buc
  %diff.check4229 = icmp ult i64 %i.buu, 24
  %conflict.rdx4230 = or i1 %conflict.rdx4228, %diff.check4229
  br i1 %conflict.rdx4230, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.btm, -4                     ; 3 uses
  %i.buv = sub nsw i64 %i.btk, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.buw = xor i64 %index, -1
  %i.bux = add i64 %i.buw, %i.btk                 ; 3 uses
  %i.buy = add nsw i64 %i.bux, %i.btk             ; 2 uses
  %i.buz = trunc nsw i64 %i.buy to i32
  %i.bva = sub i32 %i.buz, %i.btj
  %i.bvb = sext i32 %i.bva to i64
  %i.bvc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvb
  %i.bvd = getelementptr inbounds i8, ptr %i.bvc, i64 -24
  %wide.load = load <4 x double>, ptr %i.bvd, align 8, !tbaa !153
  %i.bve = sub nsw i64 %i.buy, %i.bd
  %i.bvf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bve
  %i.bvg = getelementptr inbounds i8, ptr %i.bvf, i64 -24
  store <4 x double> %wide.load, ptr %i.bvg, align 8, !tbaa !153
  %i.bvh = trunc nsw i64 %i.bux to i32
  %i.bvi = sub i32 %i.bvh, %i.btj
  %i.bvj = sext i32 %i.bvi to i64
  %i.bvk = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvj
  %i.bvl = getelementptr inbounds i8, ptr %i.bvk, i64 -24
  %wide.load4231 = load <4 x double>, ptr %i.bvl, align 8, !tbaa !153
  %i.bvm = sub nsw i64 %i.bux, %i.bd
  %i.bvn = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvm
  %i.bvo = getelementptr inbounds i8, ptr %i.bvn, i64 -24
  store <4 x double> %wide.load4231, ptr %i.bvo, align 8, !tbaa !153
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bvp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvp, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.btm, %n.vec
  br i1 %cmp.n, label %.loopexit2884, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3208, %middle.block
  %indvars.iv3658.ph = phi i64 [ %i.btk, %vector.memcheck ], [ %i.btk, %vector.scevcheck ], [ %i.btk, %.lr.ph3208 ], [ %i.buv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv3658 = phi i64 [ %indvars.iv.next3659, %scalar.ph ], [ %indvars.iv3658.ph, %scalar.ph.preheader ]
  %indvars.iv.next3659 = add nsw i64 %indvars.iv3658, -1 ; 5 uses
  %i.bvq = add nsw i64 %indvars.iv.next3659, %i.btk ; 2 uses
  %i.bvr = trunc nsw i64 %i.bvq to i32
  %i.bvs = sub i32 %i.bvr, %i.btj
  %i.bvt = sext i32 %i.bvs to i64
  %i.bvu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvt
  %i.bvv = load double, ptr %i.bvu, align 8, !tbaa !153
  %i.bvw = sub nsw i64 %i.bvq, %i.bd
  %i.bvx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvw
  store double %i.bvv, ptr %i.bvx, align 8, !tbaa !153
  %i.bvy = trunc nsw i64 %indvars.iv.next3659 to i32
  %i.bvz = sub i32 %i.bvy, %i.btj
  %i.bwa = sext i32 %i.bvz to i64
  %i.bwb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bwa
  %i.bwc = load double, ptr %i.bwb, align 8, !tbaa !153
  %i.bwd = sub nsw i64 %indvars.iv.next3659, %i.bd
  %i.bwe = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bwd
  store double %i.bwc, ptr %i.bwe, align 8, !tbaa !153
  %.not2659.not = icmp sgt i64 %indvars.iv.next3659, %i.btl
  br i1 %.not2659.not, label %scalar.ph, label %.loopexit2884, !llvm.loop !77

.loopexit2884.sink.split:                         ; preds = %bb.cp, %._crit_edge3174, %bb.at, %._crit_edge3090
  %.ph4094.sink = phi i32 [ %i.aci, %bb.at ], [ %.pre3864, %._crit_edge3090 ], [ %.pre3889, %._crit_edge3174 ], [ %i.bjg, %bb.cp ] ; 2 uses
  %.sink4185 = phi ptr [ %i.b, %bb.at ], [ %i.b, %._crit_edge3090 ], [ %i.c, %._crit_edge3174 ], [ %i.c, %bb.cp ]
  %.025322916.ph = phi i32 [ %.025322917, %bb.at ], [ %.025322917, %._crit_edge3090 ], [ %.025322918, %._crit_edge3174 ], [ %.025322918, %bb.cp ]
  %.125392782.ph = phi i32 [ %.1253927812790, %bb.at ], [ %.1253927812790, %._crit_edge3090 ], [ %.1253927832803, %._crit_edge3174 ], [ %.1253927832803, %bb.cp ]
  %.125432779.ph = phi i32 [ %.1254327782792, %bb.at ], [ %.1254327782792, %._crit_edge3090 ], [ %.1254327802805, %._crit_edge3174 ], [ %.1254327802805, %bb.cp ]
  %.125482776.ph = phi i32 [ %.1254827752794, %bb.at ], [ %.1254827752794, %._crit_edge3090 ], [ %.1254827772807, %._crit_edge3174 ], [ %.1254827772807, %bb.cp ]
  %.126062773.ph = phi i32 [ %.1260627722796, %bb.at ], [ %.1260627722796, %._crit_edge3090 ], [ %.1260627742809, %._crit_edge3174 ], [ %.1260627742809, %bb.cp ]
  %i.bwf = add nsw i32 %.ph4094.sink, -1
  store i32 %i.bwf, ptr %.sink4185, align 4, !tbaa !151
  br label %.loopexit2884

.loopexit2884:                                    ; preds = %scalar.ph4243, %scalar.ph, %middle.block4252, %middle.block, %.loopexit2884.sink.split, %._crit_edge3195, %._crit_edge3113, %bb.bm, %bb.di, %._crit_edge3204, %._crit_edge3122
  %i.bwg = phi i32 [ %.pre3898, %._crit_edge3204 ], [ %.pre3898, %bb.di ], [ %.pre3874, %._crit_edge3122 ], [ %.pre3874, %bb.bm ], [ %.pre3870, %._crit_edge3113 ], [ %.pre3894, %._crit_edge3195 ], [ %.ph4094.sink, %.loopexit2884.sink.split ], [ %.pre3898, %middle.block ], [ %.pre3874, %middle.block4252 ], [ %.pre3898, %scalar.ph ], [ %.pre3874, %scalar.ph4243 ]
  %.025322916 = phi i32 [ %.025322918, %._crit_edge3204 ], [ %.025322918, %bb.di ], [ %.025322917, %._crit_edge3122 ], [ %.025322917, %bb.bm ], [ %.025322917, %._crit_edge3113 ], [ %.025322918, %._crit_edge3195 ], [ %.025322916.ph, %.loopexit2884.sink.split ], [ %.025322918, %middle.block ], [ %.025322917, %middle.block4252 ], [ %.025322918, %scalar.ph ], [ %.025322917, %scalar.ph4243 ]
  %.125392782 = phi i32 [ %.1253927832803, %._crit_edge3204 ], [ %.1253927832803, %bb.di ], [ %.1253927812790, %._crit_edge3122 ], [ %.1253927812790, %bb.bm ], [ %.1253927812790, %._crit_edge3113 ], [ %.1253927832803, %._crit_edge3195 ], [ %.125392782.ph, %.loopexit2884.sink.split ], [ %.1253927832803, %middle.block ], [ %.1253927812790, %middle.block4252 ], [ %.1253927832803, %scalar.ph ], [ %.1253927812790, %scalar.ph4243 ]
  %.125432779 = phi i32 [ %.1254327802805, %._crit_edge3204 ], [ %.1254327802805, %bb.di ], [ %.1254327782792, %._crit_edge3122 ], [ %.1254327782792, %bb.bm ], [ %.1254327782792, %._crit_edge3113 ], [ %.1254327802805, %._crit_edge3195 ], [ %.125432779.ph, %.loopexit2884.sink.split ], [ %.1254327802805, %middle.block ], [ %.1254327782792, %middle.block4252 ], [ %.1254327802805, %scalar.ph ], [ %.1254327782792, %scalar.ph4243 ]
  %.125482776 = phi i32 [ %.1254827772807, %._crit_edge3204 ], [ %.1254827772807, %bb.di ], [ %.1254827752794, %._crit_edge3122 ], [ %.1254827752794, %bb.bm ], [ %.1254827752794, %._crit_edge3113 ], [ %.1254827772807, %._crit_edge3195 ], [ %.125482776.ph, %.loopexit2884.sink.split ], [ %.1254827772807, %middle.block ], [ %.1254827752794, %middle.block4252 ], [ %.1254827772807, %scalar.ph ], [ %.1254827752794, %scalar.ph4243 ]
  %.126062773 = phi i32 [ %.1260627742809, %._crit_edge3204 ], [ %.1260627742809, %bb.di ], [ %.1260627722796, %._crit_edge3122 ], [ %.1260627722796, %bb.bm ], [ %.1260627722796, %._crit_edge3113 ], [ %.1260627742809, %._crit_edge3195 ], [ %.126062773.ph, %.loopexit2884.sink.split ], [ %.1260627742809, %middle.block ], [ %.1260627722796, %middle.block4252 ], [ %.1260627742809, %scalar.ph ], [ %.1260627722796, %scalar.ph4243 ]
  %.pre3792.pre = load i32, ptr %2, align 4, !tbaa !151
  br label %.outer2886

.loopexit2888:                                    ; preds = %._crit_edge, %.lr.ph.split
  %.22549 = phi i32 [ %i.ay, %.lr.ph.split ], [ %.02547.lcssa, %._crit_edge ] ; 2 uses
  %.22544 = phi i32 [ %i.bv, %.lr.ph.split ], [ %.02542.lcssa, %._crit_edge ] ; 2 uses
  %.22540 = phi i32 [ %i.by, %.lr.ph.split ], [ %.02538.lcssa, %._crit_edge ] ; 2 uses
  %.32608.us3515 = add i32 %i.n, -1               ; 2 uses
  br i1 %.not2641, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %.loopexit2888
  %i.bwh = sext i32 %i.ac to i64                  ; 2 uses
  %invariant.gep4141.a = getelementptr [8 x i8], ptr %i.s, i64 %i.bwh
  %invariant.gep4139 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwh ; 3 uses
  %.326083506 = add i32 %i.n, -1
  %.326083507 = add i32 %i.n, -1
  %invariant.op4782.a = sub i32 1, %i.ay
  %invariant.op4783 = sub i32 2, %i.ay
  %invariant.op4784 = sub i32 1, %i.ay
  br label %.outer

.outer.us.preheader:                              ; preds = %.loopexit2888
  %.32608.us3512 = add i32 %i.n, -1
  %i.bwi = add i32 %i.n, -1
  %scevgep4515 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4519.a = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4521 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4575 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4577 = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4580 = getelementptr i8, ptr %7, i64 %i.bg
  %scevgep4582 = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4584 = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4586 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4588 = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4590 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bwj = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4592 = getelementptr i8, ptr %i.bwj, i64 16
  %invariant.op4803 = sub i32 1, %i.ay
  %invariant.op4804.a = sub i32 2, %i.ay
  %invariant.op4805 = sub i32 1, %i.ay
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.pre3824 = phi i32 [ %.pre3791, %.outer.us.preheader ], [ %.pre3824.be, %.outer.us.backedge ] ; 6 uses
  %i.bwk = phi i32 [ %i.bq, %.outer.us.preheader ], [ %.be, %.outer.us.backedge ] ; 2 uses
  %.22607.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.32608.us, %.outer.us.backedge ] ; 4 uses
  %.32550.ph.us = phi i32 [ %.22549, %.outer.us.preheader ], [ %.42551.us, %.outer.us.backedge ]
  %.32545.ph.us = phi i32 [ %.22544, %.outer.us.preheader ], [ %.42546.us, %.outer.us.backedge ]
  %.32541.ph.us = phi i32 [ %.22540, %.outer.us.preheader ], [ %.4.us, %.outer.us.backedge ]
  %.12533.ph.us = phi i32 [ 1, %.outer.us.preheader ], [ %.125332894.us, %.outer.us.backedge ]
  %.not26983209.us = icmp eq i32 %.12533.ph.us, 0
  br i1 %.not26983209.us, label %bb.dj, label %.lr.ph3212.us

.lr.ph3212.us:                                    ; preds = %.outer.us
  %13 = add nuw nsw i32 %.22607.ph.us, 1          ; 4 uses
  %14 = sub nsw i32 %i.ay, %13
  %15 = call i32 @llvm.smin.i32(i32 %i.bwk, i32 %14) ; 3 uses
  store i32 %15, ptr %i.l, align 4, !tbaa !151
  %16 = sub nsw i32 %13, %.pre3824
  %17 = call i32 @llvm.smax.i32(i32 %16, i32 1)   ; 2 uses
  %18 = add nsw i32 %15, %13
  %19 = load i32, ptr %i.j, align 4, !tbaa !151
  %20 = sub i32 %18, %19                          ; 2 uses
  %.not2700.us = icmp slt i32 %.22607.ph.us, %i.ay
  br i1 %.not2700.us, label %.lr.ph3212.split.us.us, label %.lr.ph3212.split.us3500

.lr.ph3212.split.us3500:                          ; preds = %.lr.ph3212.us
  %21 = icmp eq i32 %.pre3824, 0
  br i1 %21, label %.loopexit2877, label %.lr.ph3212.split.split.us

.lr.ph3212.split.us.us:                           ; preds = %.lr.ph3212.us
  store i32 1, ptr %i.c, align 4, !tbaa !151
  %22 = add nuw nsw i32 %.22607.ph.us, 2
  br label %bb.dk

bb.dj:                                            ; preds = %.lr.ph3212.split.split.us, %.outer.us
  %.32550.lcssa.us = phi i32 [ %i.ba, %.lr.ph3212.split.split.us ], [ %.32550.ph.us, %.outer.us ]
  %.32545.lcssa.us = phi i32 [ %17, %.lr.ph3212.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %20, %.lr.ph3212.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bwl = sub nsw i32 %.22607.ph.us, %.pre3824   ; 2 uses
  %i.bwm = icmp slt i32 %i.bwl, 2
  br i1 %i.bwm, label %.loopexit2877, label %._crit_edge3825

._crit_edge3825:                                  ; preds = %bb.dj
  %.pre3826 = load i32, ptr %i.l, align 4, !tbaa !151
  br label %bb.dk

bb.dk:                                            ; preds = %._crit_edge3825, %.lr.ph3212.split.us.us
  %23 = phi i32 [ %.pre3826, %._crit_edge3825 ], [ %15, %.lr.ph3212.split.us.us ] ; 6 uses
  %.125332894.us = phi i32 [ 0, %._crit_edge3825 ], [ 1, %.lr.ph3212.split.us.us ]
  %.not26982891.us = phi i1 [ true, %._crit_edge3825 ], [ false, %.lr.ph3212.split.us.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bwl, %._crit_edge3825 ], [ %13, %.lr.ph3212.split.us.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %._crit_edge3825 ], [ %22, %.lr.ph3212.split.us.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %._crit_edge3825 ], [ %17, %.lr.ph3212.split.us.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %._crit_edge3825 ], [ %20, %.lr.ph3212.split.us.us ] ; 2 uses
  %i.bwn = sub nsw i32 %i.ay, %23
  %i.bwo = icmp slt i32 %.32608.us, %i.bwn
  br i1 %i.bwo, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bwp = load i32, ptr %2, align 4, !tbaa !151
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %storemerge.us = phi i32 [ %i.bwp, %bb.dl ], [ %i.ay, %bb.dk ]
  store i32 %storemerge.us, ptr %i.i, align 4, !tbaa !151
  br i1 %.not26982891.us, label %bb.dw, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bwq = mul nsw i32 %.32608.us, %i.q           ; 8 uses
  %i.bwr = sext i32 %i.bwq to i64
  %i.bws = getelementptr [8 x i8], ptr %i.s, i64 %i.bwr ; 2 uses
  %i.bwt = getelementptr i8, ptr %i.bws, i64 8
  %i.bwu = load double, ptr %i.bwt, align 8, !tbaa !153 ; 13 uses
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !151
  %.not27023369.us = icmp sgt i32 %.42546.us, %.32608.us ; 2 uses
  br i1 %.not27023369.us, label %._crit_edge3373.us, label %.lr.ph3372.us

.lr.ph3372.us.new:                                ; preds = %.prol.loopexit4726, %.lr.ph3372.us.new
  %indvars.iv3724 = phi i64 [ %indvars.iv.next3725.3, %.lr.ph3372.us.new ], [ %indvars.iv3724.unr, %.prol.loopexit4726 ] ; 6 uses
  %i.bwv = mul nsw i64 %indvars.iv3724, %i.bb
  %i.bww = trunc nsw i64 %indvars.iv3724 to i32
  %i.bwx = sub i32 %i.czf, %i.bww
  %i.bwy = sext i32 %i.bwx to i64
  %i.bwz = getelementptr [8 x i8], ptr %i.p, i64 %i.bwv
  %i.bxa = getelementptr [8 x i8], ptr %i.bwz, i64 %i.bwy ; 2 uses
  %i.bxb = load double, ptr %i.bxa, align 8, !tbaa !153
  %i.bxc = fdiv double %i.bxb, %i.bwu
  store double %i.bxc, ptr %i.bxa, align 8, !tbaa !153
  %indvars.iv.next3725 = add nsw i64 %indvars.iv3724, 1 ; 2 uses
  %i.bxd = mul nsw i64 %indvars.iv.next3725, %i.bb
  %i.bxe = trunc nsw i64 %indvars.iv.next3725 to i32
  %i.bxf = sub i32 %i.czf, %i.bxe
  %i.bxg = sext i32 %i.bxf to i64
  %i.bxh = getelementptr [8 x i8], ptr %i.p, i64 %i.bxd
  %i.bxi = getelementptr [8 x i8], ptr %i.bxh, i64 %i.bxg ; 2 uses
  %i.bxj = load double, ptr %i.bxi, align 8, !tbaa !153
  %i.bxk = fdiv double %i.bxj, %i.bwu
  store double %i.bxk, ptr %i.bxi, align 8, !tbaa !153
  %indvars.iv.next3725.1 = add nsw i64 %indvars.iv3724, 2 ; 2 uses
  %i.bxl = mul nsw i64 %indvars.iv.next3725.1, %i.bb
  %i.bxm = trunc nsw i64 %indvars.iv.next3725.1 to i32
  %i.bxn = sub i32 %i.czf, %i.bxm
  %i.bxo = sext i32 %i.bxn to i64
  %i.bxp = getelementptr [8 x i8], ptr %i.p, i64 %i.bxl
  %i.bxq = getelementptr [8 x i8], ptr %i.bxp, i64 %i.bxo ; 2 uses
  %i.bxr = load double, ptr %i.bxq, align 8, !tbaa !153
  %i.bxs = fdiv double %i.bxr, %i.bwu
  store double %i.bxs, ptr %i.bxq, align 8, !tbaa !153
  %indvars.iv.next3725.2 = add nsw i64 %indvars.iv3724, 3 ; 2 uses
  %i.bxt = mul nsw i64 %indvars.iv.next3725.2, %i.bb
  %i.bxu = trunc nsw i64 %indvars.iv.next3725.2 to i32
  %i.bxv = sub i32 %i.czf, %i.bxu
  %i.bxw = sext i32 %i.bxv to i64
  %i.bxx = getelementptr [8 x i8], ptr %i.p, i64 %i.bxt
  %i.bxy = getelementptr [8 x i8], ptr %i.bxx, i64 %i.bxw ; 2 uses
  %i.bxz = load double, ptr %i.bxy, align 8, !tbaa !153
  %i.bya = fdiv double %i.bxz, %i.bwu
  store double %i.bya, ptr %i.bxy, align 8, !tbaa !153
  %indvars.iv.next3725.3 = add nsw i64 %indvars.iv3724, 4 ; 2 uses
  %lftr.wideiv3727.3 = trunc i64 %indvars.iv.next3725.3 to i32
  %exitcond3728.not.3 = icmp eq i32 %i.czf, %lftr.wideiv3727.3
  br i1 %exitcond3728.not.3, label %._crit_edge3373.us, label %.lr.ph3372.us.new, !llvm.loop !78

._crit_edge3373.us:                               ; preds = %.prol.loopexit4726, %.lr.ph3372.us.new, %bb.dn
  %i.byb = load i32, ptr %2, align 4, !tbaa !151  ; 3 uses
  store i32 %i.byb, ptr %i.c, align 4, !tbaa !151
  %i.byc = add nsw i32 %.pre3824, %.32608.us      ; 4 uses
  store i32 %i.byc, ptr %i.a, align 4, !tbaa !151
  %i.byd = call i32 @llvm.smin.i32(i32 %i.byb, i32 %i.byc) ; 9 uses
  %.not27043374.us = icmp sgt i32 %.32608.us, %i.byd
  br i1 %.not27043374.us, label %._crit_edge3378.us, label %iter.check4652

vec.epilog.scalar.ph4653:                         ; preds = %vec.epilog.scalar.ph4653, %vec.epilog.scalar.ph4653.preheader.new
  %indvars.iv3729 = phi i64 [ %indvars.iv3729.unr, %vec.epilog.scalar.ph4653.preheader.new ], [ %indvars.iv.next3730.3, %vec.epilog.scalar.ph4653 ] ; 5 uses
  %i.bye = trunc nsw i64 %indvars.iv3729 to i32
  %i.byf = add i32 %i.czt, %i.bye
  %i.byg = sext i32 %i.byf to i64
  %i.byh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byg ; 2 uses
  %i.byi = load double, ptr %i.byh, align 8, !tbaa !153
  %i.byj = fdiv double %i.byi, %i.bwu
  store double %i.byj, ptr %i.byh, align 8, !tbaa !153
  %i.byk = trunc i64 %indvars.iv3729 to i32
  %.reass4790.a = add i32 %i.byk, %invariant.op4789
  %i.byl = sext i32 %.reass4790.a to i64
  %i.bym = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byl ; 2 uses
  %i.byn = load double, ptr %i.bym, align 8, !tbaa !153
  %i.byo = fdiv double %i.byn, %i.bwu
  store double %i.byo, ptr %i.bym, align 8, !tbaa !153
  %i.byp = trunc i64 %indvars.iv3729 to i32
  %.reass4792 = add i32 %i.byp, %invariant.op4791
  %i.byq = sext i32 %.reass4792 to i64
  %i.byr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byq ; 2 uses
  %i.bys = load double, ptr %i.byr, align 8, !tbaa !153
  %i.byt = fdiv double %i.bys, %i.bwu
  store double %i.byt, ptr %i.byr, align 8, !tbaa !153
  %i.byu = trunc i64 %indvars.iv3729 to i32
  %.reass4794 = add i32 %i.byu, %invariant.op4793
  %i.byv = sext i32 %.reass4794 to i64
  %i.byw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byv ; 2 uses
  %i.byx = load double, ptr %i.byw, align 8, !tbaa !153
  %i.byy = fdiv double %i.byx, %i.bwu
  store double %i.byy, ptr %i.byw, align 8, !tbaa !153
  %indvars.iv.next3730.3 = add nuw nsw i64 %indvars.iv3729, 4 ; 2 uses
  %lftr.wideiv3732.3 = trunc i64 %indvars.iv.next3730.3 to i32
  %exitcond3733.not.3 = icmp eq i32 %i.czv, %lftr.wideiv3732.3
  br i1 %exitcond3733.not.3, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4653, !llvm.loop !79

._crit_edge3378.us:                               ; preds = %vec.epilog.scalar.ph4653.prol.loopexit, %vec.epilog.scalar.ph4653, %middle.block4648, %vec.epilog.middle.block4664, %._crit_edge3373.us
  %i.byz = add i32 %23, %.32608.us                ; 7 uses
  %i.bza = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053392.us = icmp slt i32 %23, 1
  br i1 %.not27053392.us, label %bb.dp, label %.lr.ph3396.us

bb.do:                                            ; preds = %.lr.ph3396.us, %._crit_edge3388.us
  %indvar4572 = phi i64 [ 0, %.lr.ph3396.us ], [ %indvar.next4573, %._crit_edge3388.us ] ; 8 uses
  %indvar4512 = phi i32 [ 0, %.lr.ph3396.us ], [ %indvar.next4513, %._crit_edge3388.us ] ; 4 uses
  %indvars.iv3734 = phi i64 [ %i.ddo, %.lr.ph3396.us ], [ %indvars.iv.next3735, %._crit_edge3388.us ] ; 12 uses
  %.182575.neg3394.us.in = phi i32 [ %.32608.us, %.lr.ph3396.us ], [ %i.caj, %._crit_edge3388.us ]
  %i.bzb = add i64 %indvar4572, %i.ddo
  %i.bzc = trunc i64 %indvar4572 to i32
  %i.bzd = mul i32 %i.n, %i.bzc
  %i.bze = add i32 %i.bzd, %i.del
  %i.bzf = sext i32 %i.bze to i64
  %i.bzg = shl nsw i64 %i.bzf, 3                  ; 2 uses
  %scevgep4576 = getelementptr i8, ptr %scevgep4575, i64 %i.bzg ; 5 uses
  %smax4578 = call i64 @llvm.smax.i64(i64 %indvars.iv3734, i64 %i.ddp)
  %i.bzh = add i64 %indvar4572, %i.ddo
  %i.bzi = sub i64 %smax4578, %i.bzh
  %i.bzj = shl nsw i64 %i.bzi, 3                  ; 3 uses
  %i.bzk = getelementptr i8, ptr %scevgep4577, i64 %i.bzj
  %scevgep4579 = getelementptr i8, ptr %i.bzk, i64 %i.bzg ; 5 uses
  %i.bzl = trunc i64 %indvar4572 to i32
  %i.bzm = add i32 %i.dem, %i.bzl
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = shl nsw i64 %i.bzn, 3                  ; 3 uses
  %scevgep4581 = getelementptr i8, ptr %scevgep4580, i64 %i.bzo ; 2 uses
  %scevgep4583 = getelementptr i8, ptr %scevgep4582, i64 %i.bzo
  %i.bzp = getelementptr i8, ptr %scevgep4584, i64 %i.bzj
  %scevgep4585 = getelementptr i8, ptr %i.bzp, i64 %i.bzo
  %i.bzq = trunc i64 %indvar4572 to i32
  %i.bzr = add i32 %i.den, %i.bzq
  %i.bzs = sext i32 %i.bzr to i64
  %i.bzt = shl nsw i64 %i.bzs, 3                  ; 3 uses
  %scevgep4587 = getelementptr i8, ptr %scevgep4586, i64 %i.bzt ; 2 uses
  %scevgep4589 = getelementptr i8, ptr %scevgep4588, i64 %i.bzt
  %i.bzu = getelementptr i8, ptr %scevgep4590, i64 %i.bzj
  %scevgep4591 = getelementptr i8, ptr %i.bzu, i64 %i.bzt
  %i.bzv = mul i32 %.0255729803502, %indvar4512
  %i.bzw = add i32 %i.ddu, %i.bzv
  %i.bzx = sext i32 %i.bzw to i64                 ; 2 uses
  %i.bzy = shl nsw i64 %i.bzx, 3
  %scevgep4516 = getelementptr i8, ptr %scevgep4515, i64 %i.bzy ; 2 uses
  %i.bzz = add nsw i64 %i.ddz, %i.bzx
  %i.caa = shl nsw i64 %i.bzz, 3
  %scevgep4518 = getelementptr i8, ptr %scevgep4517, i64 %i.caa ; 2 uses
  %i.cab = add i32 %i.dea, %indvar4512
  %i.cac = sext i32 %i.cab to i64
  %i.cad = shl nsw i64 %i.cac, 3
  %scevgep4520 = getelementptr i8, ptr %scevgep4519.a, i64 %i.cad
  %i.cae = mul i32 %.0255729803502, %indvar4512
  %i.caf = add i32 %i.ddu, %i.cae                 ; 2 uses
  %i.cag = trunc i64 %indvars.iv3734 to i32
  %i.cah = mul i32 %i.n, %i.cag
  %i.cai = sub i32 %i.cah, %.182575.neg3394.us.in ; 9 uses
  %i.caj = trunc nsw i64 %indvars.iv3734 to i32   ; 3 uses
  %.reass3390.us.reass.reass = add i32 %i.caj, %invariant.op4802.a ; 2 uses
  %i.cak = add nsw i32 %.reass3390.us.reass.reass, %i.ddj ; 3 uses
  %i.cal = sext i32 %i.cak to i64
  %i.cam = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cal ; 2 uses
  %i.can = add nsw i32 %.reass3390.us.reass.reass, %i.bwq ; 3 uses
  %i.cao = sext i32 %i.can to i64
  %i.cap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cao ; 2 uses
  %i.caq = call i64 @llvm.smax.i64(i64 %indvars.iv3734, i64 %i.ddp)
  %reass.sub4667 = sub i64 %i.caq, %i.bzb
  %i.car = add i64 %reass.sub4667, 1              ; 3 uses
  %min.iters.check4614 = icmp ult i64 %i.car, 12
  br i1 %min.iters.check4614, label %scalar.ph4613.preheader, label %vector.scevcheck4570

vector.scevcheck4570:                             ; preds = %bb.do
  %i.cas = trunc i64 %indvar4572 to i32
  %i.cat = mul i32 %i.n, %i.cas
  %i.cau = add i32 %i.cat, %i.del                 ; 2 uses
  %smax4571 = call i64 @llvm.smax.i64(i64 %indvars.iv3734, i64 %i.ddp)
  %i.cav = add i64 %indvar4572, %i.ddo
  %i.caw = sub i64 %smax4571, %i.cav              ; 2 uses
  %i.cax = trunc i64 %i.caw to i32                ; 3 uses
  %i.cay = add i32 %i.cau, %i.cax
  %i.caz = icmp slt i32 %i.cay, %i.cau
  %i.cba = add i32 %i.can, %i.cax
  %i.cbb = icmp slt i32 %i.cba, %i.can
  %i.cbc = icmp ugt i64 %i.caw, 4294967295
  %i.cbd = or i1 %i.cbb, %i.cbc
  %i.cbe = add i32 %i.cak, %i.cax
  %i.cbf = icmp slt i32 %i.cbe, %i.cak
  %i.cbg = or i1 %i.caz, %i.cbd
  %i.cbh = or i1 %i.cbf, %i.cbg
  br i1 %i.cbh, label %scalar.ph4613.preheader, label %vector.memcheck4574

vector.memcheck4574:                              ; preds = %vector.scevcheck4570
  %bound04594 = icmp ult ptr %scevgep4576, %scevgep4583
  %bound14595 = icmp ult ptr %scevgep4581, %scevgep4579
  %found.conflict4596 = and i1 %bound04594, %bound14595
  %bound04597 = icmp ult ptr %scevgep4576, %scevgep4585
  %bound14598 = icmp ult ptr %scevgep4581, %scevgep4579
  %found.conflict4599 = and i1 %bound04597, %bound14598
  %conflict.rdx4600 = or i1 %found.conflict4596, %found.conflict4599
  %bound04601 = icmp ult ptr %scevgep4576, %scevgep4589
  %bound14602 = icmp ult ptr %scevgep4587, %scevgep4579
  %found.conflict4603 = and i1 %bound04601, %bound14602
  %conflict.rdx4604 = or i1 %conflict.rdx4600, %found.conflict4603
  %bound04605 = icmp ult ptr %scevgep4576, %scevgep4591
  %bound14606 = icmp ult ptr %scevgep4587, %scevgep4579
  %found.conflict4607 = and i1 %bound04605, %bound14606
  %conflict.rdx4608 = or i1 %conflict.rdx4604, %found.conflict4607
  %bound04609 = icmp ult ptr %scevgep4576, %scevgep4593
  %bound14610 = icmp ult ptr %i.ddm, %scevgep4579
  %found.conflict4611 = and i1 %bound04609, %bound14610
  %conflict.rdx4612 = or i1 %conflict.rdx4608, %found.conflict4611
  br i1 %conflict.rdx4612, label %scalar.ph4613.preheader, label %vector.ph4615

vector.ph4615:                                    ; preds = %vector.memcheck4574
  %n.vec4616 = and i64 %i.car, -4                 ; 3 uses
  %i.cbi = add i64 %indvars.iv3734, %n.vec4616
  %i.cbj = load double, ptr %i.cam, align 8, !tbaa !153, !alias.scope !170
  %broadcast.splatinsert4623 = insertelement <4 x double> poison, double %i.cbj, i64 0
  %broadcast.splat4624 = shufflevector <4 x double> %broadcast.splatinsert4623, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cbk = load double, ptr %i.cap, align 8, !tbaa !153, !alias.scope !171
  %broadcast.splatinsert4617 = insertelement <4 x double> poison, double %i.cbk, i64 0
  %broadcast.splat4618 = shufflevector <4 x double> %broadcast.splatinsert4617, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cbl = fneg <4 x double> %broadcast.splat4618
  %i.cbm = load double, ptr %i.ddm, align 8, !tbaa !153, !alias.scope !172
  %broadcast.splatinsert4626 = insertelement <4 x double> poison, double %i.cbm, i64 0
  %broadcast.splat4627 = shufflevector <4 x double> %broadcast.splatinsert4626, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body4619

vector.body4619:                                  ; preds = %vector.body4619, %vector.ph4615
  %index4620 = phi i64 [ 0, %vector.ph4615 ], [ %index.next4628, %vector.body4619 ] ; 2 uses
  %i.cbn = add i64 %indvars.iv3734, %index4620
  %i.cbo = trunc nsw i64 %i.cbn to i32            ; 2 uses
  %i.cbp = add i32 %i.cai, %i.cbo
  %i.cbq = sext i32 %i.cbp to i64
  %i.cbr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbq ; 2 uses
  %wide.load4621 = load <4 x double>, ptr %i.cbr, align 8, !tbaa !153, !alias.scope !173, !noalias !174
  %.reass4796 = add i32 %i.cbo, %invariant.op4795 ; 2 uses
  %i.cbs = add nsw i32 %.reass4796, %i.bwq
  %i.cbt = sext i32 %i.cbs to i64
  %i.cbu = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cbt
  %wide.load4622 = load <4 x double>, ptr %i.cbu, align 8, !tbaa !153, !alias.scope !175 ; 2 uses
  %i.cbv = fneg <4 x double> %wide.load4622
  %i.cbw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbv, <4 x double> %broadcast.splat4624, <4 x double> %wide.load4621)
  %i.cbx = add nsw i32 %.reass4796, %i.ddj
  %i.cby = sext i32 %i.cbx to i64
  %i.cbz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cby
  %wide.load4625 = load <4 x double>, ptr %i.cbz, align 8, !tbaa !153, !alias.scope !176
  %i.cca = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbl, <4 x double> %wide.load4625, <4 x double> %i.cbw)
  %i.ccb = fmul <4 x double> %wide.load4622, %broadcast.splat4627
  %i.ccc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccb, <4 x double> %broadcast.splat4618, <4 x double> %i.cca)
  store <4 x double> %i.ccc, ptr %i.cbr, align 8, !tbaa !153, !alias.scope !173, !noalias !174
  %index.next4628 = add nuw i64 %index4620, 4     ; 2 uses
  %i.ccd = icmp eq i64 %index.next4628, %n.vec4616
  br i1 %i.ccd, label %middle.block4629, label %vector.body4619, !llvm.loop !87

middle.block4629:                                 ; preds = %vector.body4619
  %cmp.n4630 = icmp eq i64 %i.car, %n.vec4616
  br i1 %cmp.n4630, label %.loopexit, label %scalar.ph4613.preheader

scalar.ph4613.preheader:                          ; preds = %vector.memcheck4574, %vector.scevcheck4570, %bb.do, %middle.block4629
  %indvars.iv3736.ph = phi i64 [ %indvars.iv3734, %vector.memcheck4574 ], [ %indvars.iv3734, %vector.scevcheck4570 ], [ %indvars.iv3734, %bb.do ], [ %i.cbi, %middle.block4629 ]
  br label %scalar.ph4613

scalar.ph4613:                                    ; preds = %scalar.ph4613.preheader, %scalar.ph4613
  %indvars.iv3736 = phi i64 [ %indvars.iv.next3737, %scalar.ph4613 ], [ %indvars.iv3736.ph, %scalar.ph4613.preheader ] ; 3 uses
  %i.cce = trunc nsw i64 %indvars.iv3736 to i32   ; 2 uses
  %i.ccf = add i32 %i.cai, %i.cce
  %i.ccg = sext i32 %i.ccf to i64
  %i.cch = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccg ; 2 uses
  %i.cci = load double, ptr %i.cch, align 8, !tbaa !153
  %.reass3380.us.reass.reass = add i32 %i.cce, %invariant.op4797 ; 2 uses
  %i.ccj = add nsw i32 %.reass3380.us.reass.reass, %i.bwq
  %i.cck = sext i32 %i.ccj to i64
  %i.ccl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cck
  %i.ccm = load double, ptr %i.ccl, align 8, !tbaa !153 ; 2 uses
  %i.ccn = load double, ptr %i.cam, align 8, !tbaa !153
  %i.cco = fneg double %i.ccm
  %i.ccp = call double @llvm.fmuladd.f64(double %i.cco, double %i.ccn, double %i.cci)
  %i.ccq = load double, ptr %i.cap, align 8, !tbaa !153 ; 2 uses
  %i.ccr = add nsw i32 %.reass3380.us.reass.reass, %i.ddj
  %i.ccs = sext i32 %i.ccr to i64
  %i.cct = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccs
  %i.ccu = load double, ptr %i.cct, align 8, !tbaa !153
  %i.ccv = fneg double %i.ccq
  %i.ccw = call double @llvm.fmuladd.f64(double %i.ccv, double %i.ccu, double %i.ccp)
  %i.ccx = load double, ptr %i.ddm, align 8, !tbaa !153
  %i.ccy = fmul double %i.ccm, %i.ccx
  %i.ccz = call double @llvm.fmuladd.f64(double %i.ccy, double %i.ccq, double %i.ccw)
  store double %i.ccz, ptr %i.cch, align 8, !tbaa !153
  %indvars.iv.next3737 = add nsw i64 %indvars.iv3736, 1
  %.not2726.us.not = icmp slt i64 %indvars.iv3736, %i.ddp
  br i1 %.not2726.us.not, label %scalar.ph4613, label %.loopexit, !llvm.loop !88

.loopexit:                                        ; preds = %scalar.ph4613, %middle.block4629
  br i1 %.not2728.not3384.us, label %iter.check4554, label %._crit_edge3388.us

vec.epilog.scalar.ph4555:                         ; preds = %vec.epilog.scalar.ph4555.prol.loopexit, %vec.epilog.scalar.ph4555
  %indvars.iv3739 = phi i64 [ %indvars.iv.next3740.3, %vec.epilog.scalar.ph4555 ], [ %indvars.iv3739.unr, %vec.epilog.scalar.ph4555.prol.loopexit ] ; 4 uses
  %i.cda = load double, ptr %i.dbj, align 8, !tbaa !153
  %i.cdb = trunc i64 %indvars.iv3739 to i32
  %i.cdc = add i32 %i.cdb, 1                      ; 2 uses
  %i.cdd = add i32 %i.ddn, %i.cdc
  %i.cde = sext i32 %i.cdd to i64
  %i.cdf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cde
end_hunk_0
begin_hunk_1_@dsbgst_:bb.a

._crit_edge3478.us:                               ; preds = %bb.fh, %bb.fe
  br i1 %.not, label %.loopexit.us, label %bb.fi

bb.fi:                                            ; preds = %._crit_edge3478.us
  store i32 %i.csd, ptr %i.d, align 4, !tbaa !151
  %i.cvl = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  store i32 %i.cvl, ptr %i.c, align 4, !tbaa !151
  %i.cvm = icmp slt i32 %i.cvl, 0
  %i.cvn = icmp slt i32 %i.csj, 1
  %i.cvo = icmp sgt i32 %i.csj, -1
  %.in27143479.us = select i1 %i.cvm, i1 %i.cvn, i1 %i.cvo
  br i1 %.in27143479.us, label %.lr.ph3482.us, label %.loopexit.us

.lr.ph3482.us:                                    ; preds = %bb.fi, %.lr.ph3482.us
  %.423480.us = phi i32 [ %i.cwj, %.lr.ph3482.us ], [ %i.csk, %bb.fi ] ; 4 uses
  %i.cvp = mul nsw i32 %.423480.us, %i.t
  %i.cvq = sext i32 %i.cvp to i64
  %i.cvr = getelementptr [8 x i8], ptr %i.v, i64 %i.cvq
  %i.cvs = getelementptr i8, ptr %i.cvr, i64 8
  %i.cvt = add nsw i32 %.423480.us, -1
  %i.cvu = mul nsw i32 %i.cvt, %i.t
  %i.cvv = sext i32 %i.cvu to i64
  %i.cvw = getelementptr [8 x i8], ptr %i.v, i64 %i.cvv
  %i.cvx = getelementptr i8, ptr %i.cvw, i64 8
  %i.cvy = load i32, ptr %2, align 4, !tbaa !151
  %i.cvz = load i32, ptr %4, align 4, !tbaa !151  ; 2 uses
  %i.cwa = add i32 %.423480.us, %i.ay             ; 2 uses
  %i.cwb = add i32 %i.cwa, %i.cvy
  %i.cwc = sub i32 %i.cwb, %i.cvz
  %i.cwd = sext i32 %i.cwc to i64
  %i.cwe = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cwd
  %i.cwf = sub i32 %i.cwa, %i.cvz
  %i.cwg = sext i32 %i.cwf to i64
  %i.cwh = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cwg
  call void @drot_(ptr noundef nonnull %i.i, ptr noundef %i.cvs, ptr noundef nonnull @c__1, ptr noundef %i.cvx, ptr noundef nonnull @c__1, ptr noundef nonnull %i.cwe, ptr noundef nonnull %i.cwh) #4
  %i.cwi = load i32, ptr %i.c, align 4, !tbaa !151 ; 2 uses
  %i.cwj = add nsw i32 %i.cwi, %.423480.us        ; 3 uses
  %i.cwk = icmp slt i32 %i.cwi, 0
  %i.cwl = load i32, ptr %i.d, align 4            ; 2 uses
  %i.cwm = icmp sge i32 %i.cwj, %i.cwl
  %i.cwn = icmp sle i32 %i.cwj, %i.cwl
  %.in2714.us = select i1 %i.cwk, i1 %i.cwm, i1 %i.cwn
  br i1 %.in2714.us, label %.lr.ph3482.us, label %.loopexit.us, !llvm.loop !104

.loopexit.us:                                     ; preds = %.lr.ph3482.us, %bb.fi, %._crit_edge3478.us
  %i.cwo = add nsw i32 %.2225793483.us, -1
  %i.cwp = icmp sgt i32 %.2225793483.us, 1
  br i1 %i.cwp, label %bb.fb, label %._crit_edge3486.us, !llvm.loop !105

._crit_edge3486.us.thread:                        ; preds = %._crit_edge3467.us, %bb.ep
  %.ph4097 = phi i32 [ %.pre3840, %._crit_edge3467.us ], [ %i.cob, %bb.ep ] ; 2 uses
  %i.cwq = add nsw i32 %.ph4097, -1
  store i32 %i.cwq, ptr %i.c, align 4, !tbaa !151
  br label %._crit_edge3495.us.thread

._crit_edge3486.us:                               ; preds = %.loopexit.us
  %.pre3847.a = load i32, ptr %4, align 4, !tbaa !151 ; 3 uses
  %i.cwr = add nsw i32 %.pre3847.a, -1            ; 2 uses
  store i32 %i.cwr, ptr %i.c, align 4, !tbaa !151
  %.not27083491.us = icmp slt i32 %.pre3847.a, 2
  br i1 %.not27083491.us, label %._crit_edge3495.us.thread, label %.lr.ph3494.us

bb.fj:                                            ; preds = %.lr.ph3494.us, %._crit_edge3490.us
  %.pre3849 = phi i32 [ %.pre3911, %.lr.ph3494.us ], [ %.pre38493912, %._crit_edge3490.us ] ; 3 uses
  %i.cws = phi i32 [ %.pre3911, %.lr.ph3494.us ], [ %i.cyc, %._crit_edge3490.us ] ; 2 uses
  %i.cwt = phi i32 [ %i.cwr, %.lr.ph3494.us ], [ %i.cyd, %._crit_edge3490.us ]
  %.2325803492.us = phi i32 [ 1, %.lr.ph3494.us ], [ %i.cye, %._crit_edge3490.us ] ; 5 uses
  store i32 1, ptr %i.d, align 4, !tbaa !151
  %i.cwu = add i32 %.reass4176.reass, %.2325803492.us ; 2 uses
  store i32 %i.cwu, ptr %i.a, align 4, !tbaa !151
  %i.cwv = call i32 @llvm.smax.i32(i32 %i.cwu, i32 1)
  %i.cww = mul nsw i32 %i.cws, %i.cwv
  %i.cwx = add i32 %i.dha, %.2325803492.us
  %i.cwy = sub i32 %i.cwx, %i.cww                 ; 2 uses
  %i.cwz = load i32, ptr %4, align 4, !tbaa !151
  %i.cxa = sub nsw i32 %i.cwz, %.2325803492.us    ; 2 uses
  %i.cxb = icmp sgt i32 %i.cxa, 0
  br i1 %i.cxb, label %.lr.ph3489.us, label %._crit_edge3490.us

bb.fk:                                            ; preds = %.lr.ph3489.us, %bb.fm
  %.pre38493914 = phi i32 [ %.pre3849, %.lr.ph3489.us ], [ %.pre38493913, %bb.fm ]
  %i.cxc = phi i32 [ %.pre3849, %.lr.ph3489.us ], [ %i.cxz, %bb.fm ] ; 5 uses
  %.233487.us = phi i32 [ %i.cxa, %.lr.ph3489.us ], [ %i.cya, %bb.fm ] ; 5 uses
  %i.cxd = add i32 %i.dgz, %.233487.us
  %i.cxe = sdiv i32 %i.cxd, %i.cxc                ; 3 uses
  store i32 %i.cxe, ptr %i.m, align 4, !tbaa !151
  %i.cxf = icmp sgt i32 %i.cxe, 0
  br i1 %i.cxf, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.cxg = add nsw i32 %i.cxe, -1
  %i.cxh = mul nsw i32 %i.cxg, %i.cxc
  %i.cxi = sub nsw i32 %i.cwy, %i.cxh             ; 3 uses
  %i.cxj = sub nsw i32 %i.cxc, %.233487.us
  %i.cxk = sub i32 %.233487.us, %i.cxc
  %i.cxl = add i32 %i.cxk, %i.cxi
  %i.cxm = mul nsw i32 %i.cxl, %i.n
  %i.cxn = add i32 %i.cxm, %i.cxj                 ; 2 uses
  %i.cxo = add i32 %i.cxn, 1
  %i.cxp = sext i32 %i.cxo to i64
  %i.cxq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cxp
  %i.cxr = sext i32 %i.cxn to i64
  %i.cxs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cxr
  %i.cxt = load i32, ptr %2, align 4, !tbaa !151
  %i.cxu = add nsw i32 %i.cxt, %i.cxi
  %i.cxv = sext i32 %i.cxu to i64
  %i.cxw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cxv
  %i.cxx = sext i32 %i.cxi to i64
  %i.cxy = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cxx
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.cxq, ptr noundef nonnull %i.f, ptr noundef %i.cxs, ptr noundef nonnull %i.f, ptr noundef nonnull %i.cxw, ptr noundef nonnull %i.cxy, ptr noundef nonnull %i.j) #4
  %.pre3848 = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.pre38493913 = phi i32 [ %.pre3848, %bb.fl ], [ %.pre38493914, %bb.fk ] ; 2 uses
  %i.cxz = phi i32 [ %.pre3848, %bb.fl ], [ %i.cxc, %bb.fk ] ; 2 uses
  %i.cya = add nsw i32 %.233487.us, -1
  %i.cyb = icmp sgt i32 %.233487.us, 1
  br i1 %i.cyb, label %bb.fk, label %._crit_edge3490.us.loopexit, !llvm.loop !106

._crit_edge3490.us.loopexit:                      ; preds = %bb.fm
  %.pre3850 = load i32, ptr %i.c, align 4, !tbaa !151
  br label %._crit_edge3490.us

._crit_edge3490.us:                               ; preds = %._crit_edge3490.us.loopexit, %bb.fj
  %.pre38493912 = phi i32 [ %.pre38493913, %._crit_edge3490.us.loopexit ], [ %.pre3849, %bb.fj ]
  %i.cyc = phi i32 [ %i.cxz, %._crit_edge3490.us.loopexit ], [ %i.cws, %bb.fj ]
  %i.cyd = phi i32 [ %.pre3850, %._crit_edge3490.us.loopexit ], [ %i.cwt, %bb.fj ] ; 2 uses
  %i.cye = add nuw nsw i32 %.2325803492.us, 1
  %.not2708.us.not = icmp slt i32 %.2325803492.us, %i.cyd
  br i1 %.not2708.us.not, label %bb.fj, label %._crit_edge3495.us, !llvm.loop !107

._crit_edge3495.us.thread:                        ; preds = %._crit_edge3486.us, %._crit_edge3486.us.thread
  %.ph4099 = phi i32 [ %.ph4097, %._crit_edge3486.us.thread ], [ %.pre3847.a, %._crit_edge3486.us ]
  %.pre3824.pre.pre4100 = load i32, ptr %3, align 4, !tbaa !151
  br label %.outer.us.backedge

._crit_edge3495.us:                               ; preds = %._crit_edge3490.us
  %.pre3851 = load i32, ptr %4, align 4, !tbaa !151 ; 7 uses
  %i.cyf = icmp sgt i32 %.pre3851, 1
  %.pre3824.pre.pre = load i32, ptr %3, align 4, !tbaa !151 ; 7 uses
  br i1 %i.cyf, label %bb.fn, label %.outer.us.backedge

bb.fn:                                            ; preds = %._crit_edge3495.us
  %i.cyg = add nuw nsw i32 %.pre3851, %.32608.us  ; 2 uses
  store i32 %i.cyg, ptr %i.d, align 4, !tbaa !151
  %i.cyh = call i32 @llvm.smin.i32(i32 %i.cyg, i32 %i.ay) ; 2 uses
  %i.cyi = shl i32 %.pre3824.pre.pre, 1           ; 2 uses
  %i.cyj = xor i32 %i.cyi, -1
  %i.cyk = add i32 %i.cyh, %i.cyj                 ; 2 uses
  store i32 %i.cyk, ptr %i.c, align 4, !tbaa !151
  %.not27103496.us = icmp slt i32 %i.cyk, 2
  br i1 %.not27103496.us, label %.outer.us.backedge, label %.lr.ph3499.us

scalar.ph4497:                                    ; preds = %scalar.ph4497.prol.loopexit, %scalar.ph4497
  %indvars.iv3779 = phi i64 [ %indvars.iv.next3780.3, %scalar.ph4497 ], [ %indvars.iv3779.unr, %scalar.ph4497.prol.loopexit ] ; 8 uses
  %i.cyl = add nsw i64 %indvars.iv3779, %i.dhc    ; 2 uses
  %gep4168 = getelementptr [8 x i8], ptr %invariant.gep4167, i64 %i.cyl
  %i.cym = load double, ptr %gep4168, align 8, !tbaa !153
  %i.cyn = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cyl
  store double %i.cym, ptr %i.cyn, align 8, !tbaa !153
  %gep4170 = getelementptr [8 x i8], ptr %invariant.gep4169, i64 %indvars.iv3779
  %i.cyo = load double, ptr %gep4170, align 8, !tbaa !153
  %i.cyp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3779
  store double %i.cyo, ptr %i.cyp, align 8, !tbaa !153
  %indvars.iv.next3780 = add nuw nsw i64 %indvars.iv3779, 1 ; 2 uses
  %i.cyq = add nsw i64 %indvars.iv.next3780, %i.dhc ; 2 uses
  %gep4168.1 = getelementptr [8 x i8], ptr %invariant.gep4167, i64 %i.cyq
  %i.cyr = load double, ptr %gep4168.1, align 8, !tbaa !153
  %i.cys = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cyq
  store double %i.cyr, ptr %i.cys, align 8, !tbaa !153
  %gep4170.1 = getelementptr [8 x i8], ptr %invariant.gep4169, i64 %indvars.iv.next3780
  %i.cyt = load double, ptr %gep4170.1, align 8, !tbaa !153
  %i.cyu = getelementptr [8 x i8], ptr %11, i64 %indvars.iv3779
  store double %i.cyt, ptr %i.cyu, align 8, !tbaa !153
  %indvars.iv.next3780.1 = add nuw nsw i64 %indvars.iv3779, 2 ; 3 uses
  %i.cyv = add nsw i64 %indvars.iv.next3780.1, %i.dhc ; 2 uses
  %gep4168.2 = getelementptr [8 x i8], ptr %invariant.gep4167, i64 %i.cyv
  %i.cyw = load double, ptr %gep4168.2, align 8, !tbaa !153
  %i.cyx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cyv
  store double %i.cyw, ptr %i.cyx, align 8, !tbaa !153
  %gep4170.2 = getelementptr [8 x i8], ptr %invariant.gep4169, i64 %indvars.iv.next3780.1
  %i.cyy = load double, ptr %gep4170.2, align 8, !tbaa !153
  %i.cyz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3780.1
  store double %i.cyy, ptr %i.cyz, align 8, !tbaa !153
  %indvars.iv.next3780.2 = add nuw nsw i64 %indvars.iv3779, 3 ; 3 uses
  %i.cza = add nsw i64 %indvars.iv.next3780.2, %i.dhc ; 2 uses
  %gep4168.3 = getelementptr [8 x i8], ptr %invariant.gep4167, i64 %i.cza
  %i.czb = load double, ptr %gep4168.3, align 8, !tbaa !153
  %i.czc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cza
  store double %i.czb, ptr %i.czc, align 8, !tbaa !153
  %gep4170.3 = getelementptr [8 x i8], ptr %invariant.gep4169, i64 %indvars.iv.next3780.2
  %i.czd = load double, ptr %gep4170.3, align 8, !tbaa !153
  %i.cze = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3780.2
  store double %i.czd, ptr %i.cze, align 8, !tbaa !153
  %indvars.iv.next3780.3 = add nuw nsw i64 %indvars.iv3779, 4 ; 2 uses
  %exitcond3783.not.3 = icmp eq i64 %indvars.iv.next3780.3, %wide.trip.count3782
  br i1 %exitcond3783.not.3, label %.outer.us.backedge, label %scalar.ph4497, !llvm.loop !108

.lr.ph3212.split.split.us:                        ; preds = %.lr.ph3212.split.us3500
  store i32 1, ptr %i.c, align 4, !tbaa !151
  br label %bb.dj

.lr.ph3372.us:                                    ; preds = %bb.dn
  %i.czf = add nuw i32 %.32608.us, 1              ; 6 uses
  %i.czg = sext i32 %.42546.us to i64             ; 2 uses
  %i.czh = add i32 %.32608.us, 1
  %i.czi = sub i32 %i.czh, %.42546.us
  %i.czj = sub i32 %.32608.us, %.42546.us
  %xtraiter4727 = and i32 %i.czi, 3               ; 2 uses
  %lcmp.mod4728.not = icmp eq i32 %xtraiter4727, 0
  br i1 %lcmp.mod4728.not, label %.prol.loopexit4726, label %.prol.preheader4725

.prol.preheader4725:                              ; preds = %.lr.ph3372.us, %.prol.preheader4725
  %indvars.iv3724.prol = phi i64 [ %indvars.iv.next3725.prol, %.prol.preheader4725 ], [ %i.czg, %.lr.ph3372.us ] ; 3 uses
  %prol.iter4729 = phi i32 [ %prol.iter4729.next, %.prol.preheader4725 ], [ 0, %.lr.ph3372.us ]
  %i.czk = mul nsw i64 %indvars.iv3724.prol, %i.bb
  %i.czl = trunc nsw i64 %indvars.iv3724.prol to i32
  %i.czm = sub i32 %i.czf, %i.czl
  %i.czn = sext i32 %i.czm to i64
  %i.czo = getelementptr [8 x i8], ptr %i.p, i64 %i.czk
  %i.czp = getelementptr [8 x i8], ptr %i.czo, i64 %i.czn ; 2 uses
  %i.czq = load double, ptr %i.czp, align 8, !tbaa !153
  %i.czr = fdiv double %i.czq, %i.bwu
  store double %i.czr, ptr %i.czp, align 8, !tbaa !153
  %indvars.iv.next3725.prol = add nsw i64 %indvars.iv3724.prol, 1 ; 2 uses
  %prol.iter4729.next = add i32 %prol.iter4729, 1 ; 2 uses
  %prol.iter4729.cmp.not = icmp eq i32 %prol.iter4729.next, %xtraiter4727
  br i1 %prol.iter4729.cmp.not, label %.prol.loopexit4726, label %.prol.preheader4725, !llvm.loop !109

.prol.loopexit4726:                               ; preds = %.prol.preheader4725, %.lr.ph3372.us
  %indvars.iv3724.unr = phi i64 [ %i.czg, %.lr.ph3372.us ], [ %indvars.iv.next3725.prol, %.prol.preheader4725 ]
  %i.czs = icmp ult i32 %i.czj, 3
  br i1 %i.czs, label %._crit_edge3373.us, label %.lr.ph3372.us.new

iter.check4652:                                   ; preds = %._crit_edge3373.us
  %reass.sub3511 = mul i32 %.32608.us, %.32608.us3512
  %i.czt = add i32 %reass.sub3511, 1              ; 7 uses
  %i.czu = zext nneg i32 %.32608.us to i64        ; 4 uses
  %i.czv = add nuw i32 %i.byd, 1
  %i.czw = sub i32 %i.byd, %.32608.us             ; 3 uses
  %i.czx = zext i32 %i.czw to i64
  %i.czy = add nuw nsw i64 %i.czx, 1              ; 5 uses
  %min.iters.check4634 = icmp ult i32 %i.czw, 3
  br i1 %min.iters.check4634, label %vec.epilog.scalar.ph4653.preheader, label %vector.scevcheck4632

vector.scevcheck4632:                             ; preds = %iter.check4652
  %i.czz = sub i32 %i.byd, %.32608.us
  %i.daa = mul i32 %i.n, %.32608.us
  %i.dab = add i32 %i.daa, 1                      ; 2 uses
  %i.dac = add i32 %i.dab, %i.czz
  %i.dad = icmp slt i32 %i.dac, %i.dab
  br i1 %i.dad, label %vec.epilog.scalar.ph4653.preheader, label %vector.main.loop.iter.check4635

vector.main.loop.iter.check4635:                  ; preds = %vector.scevcheck4632
  %min.iters.check4636 = icmp ult i32 %i.czw, 15
  br i1 %min.iters.check4636, label %vec.epilog.ph4656, label %vector.ph4637

vector.ph4637:                                    ; preds = %vector.main.loop.iter.check4635
  %i.dae = and i64 %i.czy, 12
  %n.vec4638 = and i64 %i.czy, 8589934576         ; 4 uses
  %i.daf = add nuw nsw i64 %n.vec4638, %i.czu
  %broadcast.splatinsert4639 = insertelement <4 x double> poison, double %i.bwu, i64 0
  %broadcast.splat4640 = shufflevector <4 x double> %broadcast.splatinsert4639, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4785 = add i32 %.32608.us, %i.czt
  br label %vector.body4641

vector.body4641:                                  ; preds = %vector.body4641, %vector.ph4637
  %index4642 = phi i64 [ 0, %vector.ph4637 ], [ %index.next4647, %vector.body4641 ] ; 2 uses
  %i.dag = trunc i64 %index4642 to i32
  %.reass4786 = add i32 %i.dag, %invariant.op4785
  %i.dah = sext i32 %.reass4786 to i64
  %i.dai = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dah ; 5 uses
  %i.daj = getelementptr inbounds nuw i8, ptr %i.dai, i64 32 ; 2 uses
  %i.dak = getelementptr inbounds nuw i8, ptr %i.dai, i64 64 ; 2 uses
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dai, i64 96 ; 2 uses
  %wide.load4643 = load <4 x double>, ptr %i.dai, align 8, !tbaa !153
  %wide.load4644 = load <4 x double>, ptr %i.daj, align 8, !tbaa !153
  %wide.load4645 = load <4 x double>, ptr %i.dak, align 8, !tbaa !153
  %wide.load4646 = load <4 x double>, ptr %i.dal, align 8, !tbaa !153
  %i.dam = fdiv <4 x double> %wide.load4643, %broadcast.splat4640
  %i.dan = fdiv <4 x double> %wide.load4644, %broadcast.splat4640
  %i.dao = fdiv <4 x double> %wide.load4645, %broadcast.splat4640
  %i.dap = fdiv <4 x double> %wide.load4646, %broadcast.splat4640
  store <4 x double> %i.dam, ptr %i.dai, align 8, !tbaa !153
  store <4 x double> %i.dan, ptr %i.daj, align 8, !tbaa !153
  store <4 x double> %i.dao, ptr %i.dak, align 8, !tbaa !153
  store <4 x double> %i.dap, ptr %i.dal, align 8, !tbaa !153
  %index.next4647 = add nuw i64 %index4642, 16    ; 2 uses
  %i.daq = icmp eq i64 %index.next4647, %n.vec4638
  br i1 %i.daq, label %middle.block4648, label %vector.body4641, !llvm.loop !110

middle.block4648:                                 ; preds = %vector.body4641
  %cmp.n4649 = icmp eq i64 %i.czy, %n.vec4638
  br i1 %cmp.n4649, label %._crit_edge3378.us, label %vec.epilog.iter.check4654

vec.epilog.iter.check4654:                        ; preds = %middle.block4648
  %min.epilog.iters.check4655 = icmp eq i64 %i.dae, 0
  br i1 %min.epilog.iters.check4655, label %vec.epilog.scalar.ph4653.preheader, label %vec.epilog.ph4656, !prof !158

vec.epilog.ph4656:                                ; preds = %vector.main.loop.iter.check4635, %vec.epilog.iter.check4654
  %vec.epilog.resume.val4650 = phi i64 [ %n.vec4638, %vec.epilog.iter.check4654 ], [ 0, %vector.main.loop.iter.check4635 ]
  %n.vec4657 = and i64 %i.czy, 8589934588         ; 3 uses
  %i.dar = add nuw nsw i64 %n.vec4657, %i.czu
  %broadcast.splatinsert4658 = insertelement <4 x double> poison, double %i.bwu, i64 0
  %broadcast.splat4659 = shufflevector <4 x double> %broadcast.splatinsert4658, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4787 = add i32 %.32608.us, %i.czt
  br label %vec.epilog.vector.body4660

vec.epilog.vector.body4660:                       ; preds = %vec.epilog.vector.body4660, %vec.epilog.ph4656
  %index4661 = phi i64 [ %vec.epilog.resume.val4650, %vec.epilog.ph4656 ], [ %index.next4663, %vec.epilog.vector.body4660 ] ; 2 uses
  %i.das = trunc i64 %index4661 to i32
  %.reass4788 = add i32 %i.das, %invariant.op4787
  %i.dat = sext i32 %.reass4788 to i64
  %i.dau = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dat ; 2 uses
  %wide.load4662 = load <4 x double>, ptr %i.dau, align 8, !tbaa !153
  %i.dav = fdiv <4 x double> %wide.load4662, %broadcast.splat4659
  store <4 x double> %i.dav, ptr %i.dau, align 8, !tbaa !153
  %index.next4663 = add nuw i64 %index4661, 4     ; 2 uses
  %i.daw = icmp eq i64 %index.next4663, %n.vec4657
  br i1 %i.daw, label %vec.epilog.middle.block4664, label %vec.epilog.vector.body4660, !llvm.loop !111

vec.epilog.middle.block4664:                      ; preds = %vec.epilog.vector.body4660
  %cmp.n4665 = icmp eq i64 %i.czy, %n.vec4657
  br i1 %cmp.n4665, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4653.preheader

vec.epilog.scalar.ph4653.preheader:               ; preds = %vector.scevcheck4632, %iter.check4652, %vec.epilog.iter.check4654, %vec.epilog.middle.block4664
  %indvars.iv3729.ph = phi i64 [ %i.czu, %iter.check4652 ], [ %i.czu, %vector.scevcheck4632 ], [ %i.daf, %vec.epilog.iter.check4654 ], [ %i.dar, %vec.epilog.middle.block4664 ] ; 3 uses
  %i.dax = add i32 %i.byd, 1
  %i.day = trunc i64 %indvars.iv3729.ph to i32    ; 2 uses
  %i.daz = sub i32 %i.dax, %i.day
  %i.dba = sub i32 %i.byd, %i.day
  %xtraiter4730 = and i32 %i.daz, 3               ; 2 uses
  %lcmp.mod4731.not = icmp eq i32 %xtraiter4730, 0
  br i1 %lcmp.mod4731.not, label %vec.epilog.scalar.ph4653.prol.loopexit, label %vec.epilog.scalar.ph4653.prol

vec.epilog.scalar.ph4653.prol:                    ; preds = %vec.epilog.scalar.ph4653.preheader, %vec.epilog.scalar.ph4653.prol
  %indvars.iv3729.prol = phi i64 [ %indvars.iv.next3730.prol, %vec.epilog.scalar.ph4653.prol ], [ %indvars.iv3729.ph, %vec.epilog.scalar.ph4653.preheader ] ; 2 uses
  %prol.iter4732 = phi i32 [ %prol.iter4732.next, %vec.epilog.scalar.ph4653.prol ], [ 0, %vec.epilog.scalar.ph4653.preheader ]
  %i.dbb = trunc nsw i64 %indvars.iv3729.prol to i32
  %i.dbc = add i32 %i.czt, %i.dbb
  %i.dbd = sext i32 %i.dbc to i64
  %i.dbe = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbd ; 2 uses
  %i.dbf = load double, ptr %i.dbe, align 8, !tbaa !153
  %i.dbg = fdiv double %i.dbf, %i.bwu
  store double %i.dbg, ptr %i.dbe, align 8, !tbaa !153
  %indvars.iv.next3730.prol = add nuw nsw i64 %indvars.iv3729.prol, 1 ; 2 uses
  %prol.iter4732.next = add i32 %prol.iter4732, 1 ; 2 uses
  %prol.iter4732.cmp.not = icmp eq i32 %prol.iter4732.next, %xtraiter4730
  br i1 %prol.iter4732.cmp.not, label %vec.epilog.scalar.ph4653.prol.loopexit, label %vec.epilog.scalar.ph4653.prol, !llvm.loop !112

vec.epilog.scalar.ph4653.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4653.prol, %vec.epilog.scalar.ph4653.preheader
  %indvars.iv3729.unr = phi i64 [ %indvars.iv3729.ph, %vec.epilog.scalar.ph4653.preheader ], [ %indvars.iv.next3730.prol, %vec.epilog.scalar.ph4653.prol ]
  %i.dbh = icmp ult i32 %i.dba, 3
  br i1 %i.dbh, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4653.preheader.new

vec.epilog.scalar.ph4653.preheader.new:           ; preds = %vec.epilog.scalar.ph4653.prol.loopexit
  %invariant.op4789 = add i32 1, %i.czt
  %invariant.op4791 = add i32 2, %i.czt
  %invariant.op4793 = add i32 3, %i.czt
  br label %vec.epilog.scalar.ph4653

iter.check4554:                                   ; preds = %.loopexit
  %.reass3383.reass.us = add i32 %invariant.op3398.us, %i.caj
  %i.dbi = sext i32 %.reass3383.reass.us to i64
  %i.dbj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dbi ; 8 uses
  br i1 %min.iters.check4532, label %vec.epilog.scalar.ph4555.preheader, label %vector.scevcheck4511

vector.scevcheck4511:                             ; preds = %iter.check4554
  %i.dbk = add i32 %i.caf, %i.dep
  %i.dbl = icmp slt i32 %i.dbk, %i.caf
  %i.dbm = or i1 %i.dbl, %i.det
  br i1 %i.dbm, label %vec.epilog.scalar.ph4555.preheader, label %vector.memcheck4514

vector.memcheck4514:                              ; preds = %vector.scevcheck4511
  %bound04524 = icmp ult ptr %scevgep4516, %scevgep4520
  %bound14525 = icmp ult ptr %i.dbj, %scevgep4518
  %found.conflict4526 = and i1 %bound04524, %bound14525
  %bound04527 = icmp ult ptr %scevgep4516, %scevgep4523
  %bound14528 = icmp ult ptr %scevgep4522, %scevgep4518
  %found.conflict4529 = and i1 %bound04527, %bound14528
  %conflict.rdx4530 = or i1 %found.conflict4526, %found.conflict4529
  br i1 %conflict.rdx4530, label %vec.epilog.scalar.ph4555.preheader, label %vector.main.loop.iter.check4533

vector.main.loop.iter.check4533:                  ; preds = %vector.memcheck4514
  br i1 %min.iters.check4534, label %vec.epilog.ph4558, label %vector.ph4535

vector.ph4535:                                    ; preds = %vector.main.loop.iter.check4533
  %i.dbn = load double, ptr %i.dbj, align 8, !tbaa !153, !alias.scope !177
  %.scalar4669 = fneg double %i.dbn
  %i.dbo = insertelement <4 x double> poison, double %.scalar4669, i64 0
  %i.dbp = shufflevector <4 x double> %i.dbo, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4539

vector.body4539:                                  ; preds = %vector.body4539, %vector.ph4535
  %index4540 = phi i64 [ 0, %vector.ph4535 ], [ %index.next4549, %vector.body4539 ] ; 2 uses
  %i.dbq = trunc i64 %index4540 to i32
  %.reass4799 = add i32 %i.dbq, %invariant.op4798 ; 2 uses
  %i.dbr = add i32 %i.ddn, %.reass4799
  %i.dbs = sext i32 %i.dbr to i64
  %i.dbt = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbs ; 4 uses
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbt, i64 32
  %i.dbv = getelementptr inbounds nuw i8, ptr %i.dbt, i64 64
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.dbt, i64 96
  %wide.load4541 = load <4 x double>, ptr %i.dbt, align 8, !tbaa !153, !alias.scope !178
  %wide.load4542 = load <4 x double>, ptr %i.dbu, align 8, !tbaa !153, !alias.scope !178
  %wide.load4543 = load <4 x double>, ptr %i.dbv, align 8, !tbaa !153, !alias.scope !178
  %wide.load4544 = load <4 x double>, ptr %i.dbw, align 8, !tbaa !153, !alias.scope !178
  %i.dbx = add i32 %i.cai, %.reass4799
  %i.dby = sext i32 %i.dbx to i64
  %i.dbz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dby ; 5 uses
  %i.dca = getelementptr inbounds nuw i8, ptr %i.dbz, i64 32 ; 2 uses
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.dbz, i64 64 ; 2 uses
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.dbz, i64 96 ; 2 uses
  %wide.load4545 = load <4 x double>, ptr %i.dbz, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %wide.load4546 = load <4 x double>, ptr %i.dca, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %wide.load4547 = load <4 x double>, ptr %i.dcb, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %wide.load4548 = load <4 x double>, ptr %i.dcc, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %i.dcd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbp, <4 x double> %wide.load4541, <4 x double> %wide.load4545)
  %i.dce = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbp, <4 x double> %wide.load4542, <4 x double> %wide.load4546)
  %i.dcf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbp, <4 x double> %wide.load4543, <4 x double> %wide.load4547)
  %i.dcg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbp, <4 x double> %wide.load4544, <4 x double> %wide.load4548)
  store <4 x double> %i.dcd, ptr %i.dbz, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  store <4 x double> %i.dce, ptr %i.dca, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  store <4 x double> %i.dcf, ptr %i.dcb, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  store <4 x double> %i.dcg, ptr %i.dcc, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %index.next4549 = add nuw i64 %index4540, 16    ; 2 uses
  %i.dch = icmp eq i64 %index.next4549, %n.vec4536
  br i1 %i.dch, label %middle.block4550, label %vector.body4539, !llvm.loop !117

middle.block4550:                                 ; preds = %vector.body4539
  br i1 %cmp.n4551, label %._crit_edge3388.us, label %vec.epilog.iter.check4556

vec.epilog.iter.check4556:                        ; preds = %middle.block4550
  br i1 %min.epilog.iters.check4557, label %vec.epilog.scalar.ph4555.preheader, label %vec.epilog.ph4558, !prof !158

vec.epilog.ph4558:                                ; preds = %vector.main.loop.iter.check4533, %vec.epilog.iter.check4556
  %vec.epilog.resume.val4552 = phi i64 [ %n.vec4536, %vec.epilog.iter.check4556 ], [ 0, %vector.main.loop.iter.check4533 ]
  %i.dci = load double, ptr %i.dbj, align 8, !tbaa !153, !alias.scope !177
  %.scalar4670 = fneg double %i.dci
  %i.dcj = insertelement <4 x double> poison, double %.scalar4670, i64 0
  %i.dck = shufflevector <4 x double> %i.dcj, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4562

vec.epilog.vector.body4562:                       ; preds = %vec.epilog.vector.body4562, %vec.epilog.ph4558
  %index4563 = phi i64 [ %vec.epilog.resume.val4552, %vec.epilog.ph4558 ], [ %index.next4566, %vec.epilog.vector.body4562 ] ; 2 uses
  %i.dcl = trunc i64 %index4563 to i32
  %.reass4801 = add i32 %i.dcl, %invariant.op4800 ; 2 uses
  %i.dcm = add i32 %i.ddn, %.reass4801
  %i.dcn = sext i32 %i.dcm to i64
  %i.dco = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dcn
  %wide.load4564 = load <4 x double>, ptr %i.dco, align 8, !tbaa !153, !alias.scope !178
  %i.dcp = add i32 %i.cai, %.reass4801
  %i.dcq = sext i32 %i.dcp to i64
  %i.dcr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dcq ; 2 uses
  %wide.load4565 = load <4 x double>, ptr %i.dcr, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %i.dcs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dck, <4 x double> %wide.load4564, <4 x double> %wide.load4565)
  store <4 x double> %i.dcs, ptr %i.dcr, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %index.next4566 = add nuw i64 %index4563, 4     ; 2 uses
  %i.dct = icmp eq i64 %index.next4566, %n.vec4559
  br i1 %i.dct, label %vec.epilog.middle.block4567, label %vec.epilog.vector.body4562, !llvm.loop !118

vec.epilog.middle.block4567:                      ; preds = %vec.epilog.vector.body4562
  br i1 %cmp.n4568, label %._crit_edge3388.us, label %vec.epilog.scalar.ph4555.preheader

vec.epilog.scalar.ph4555.preheader:               ; preds = %vector.memcheck4514, %vector.scevcheck4511, %iter.check4554, %vec.epilog.iter.check4556, %vec.epilog.middle.block4567
  %indvars.iv3739.ph = phi i64 [ %i.ddp, %iter.check4554 ], [ %i.ddp, %vector.scevcheck4511 ], [ %i.ddp, %vector.memcheck4514 ], [ %i.dev, %vec.epilog.iter.check4556 ], [ %i.dew, %vec.epilog.middle.block4567 ] ; 4 uses
  %i.dcu = sub i64 %wide.trip.count3742, %indvars.iv3739.ph
  %xtraiter4733 = and i64 %i.dcu, 3               ; 2 uses
  %lcmp.mod4734.not = icmp eq i64 %xtraiter4733, 0
  br i1 %lcmp.mod4734.not, label %vec.epilog.scalar.ph4555.prol.loopexit, label %vec.epilog.scalar.ph4555.prol

vec.epilog.scalar.ph4555.prol:                    ; preds = %vec.epilog.scalar.ph4555.preheader, %vec.epilog.scalar.ph4555.prol
  %indvars.iv3739.prol = phi i64 [ %indvars.iv.next3740.prol, %vec.epilog.scalar.ph4555.prol ], [ %indvars.iv3739.ph, %vec.epilog.scalar.ph4555.preheader ]
  %prol.iter4735 = phi i64 [ %prol.iter4735.next, %vec.epilog.scalar.ph4555.prol ], [ 0, %vec.epilog.scalar.ph4555.preheader ]
  %indvars.iv.next3740.prol = add nsw i64 %indvars.iv3739.prol, 1 ; 3 uses
  %i.dcv = load double, ptr %i.dbj, align 8, !tbaa !153
  %i.dcw = trunc nsw i64 %indvars.iv.next3740.prol to i32 ; 2 uses
  %i.dcx = add i32 %i.ddn, %i.dcw
  %i.dcy = sext i32 %i.dcx to i64
  %i.dcz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dcy
  %i.dda = load double, ptr %i.dcz, align 8, !tbaa !153
  %i.ddb = add i32 %i.cai, %i.dcw
  %i.ddc = sext i32 %i.ddb to i64
  %i.ddd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ddc ; 2 uses
  %i.dde = load double, ptr %i.ddd, align 8, !tbaa !153
  %i.ddf = fneg double %i.dcv
  %i.ddg = call double @llvm.fmuladd.f64(double %i.ddf, double %i.dda, double %i.dde)
  store double %i.ddg, ptr %i.ddd, align 8, !tbaa !153
  %prol.iter4735.next = add i64 %prol.iter4735, 1 ; 2 uses
  %prol.iter4735.cmp.not = icmp eq i64 %prol.iter4735.next, %xtraiter4733
  br i1 %prol.iter4735.cmp.not, label %vec.epilog.scalar.ph4555.prol.loopexit, label %vec.epilog.scalar.ph4555.prol, !llvm.loop !119

vec.epilog.scalar.ph4555.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4555.prol, %vec.epilog.scalar.ph4555.preheader
  %indvars.iv3739.unr = phi i64 [ %indvars.iv3739.ph, %vec.epilog.scalar.ph4555.preheader ], [ %indvars.iv.next3740.prol, %vec.epilog.scalar.ph4555.prol ]
  %i.ddh = sub i64 %indvars.iv3739.ph, %wide.trip.count3742
  %i.ddi = icmp ugt i64 %i.ddh, -4
  br i1 %i.ddi, label %._crit_edge3388.us, label %vec.epilog.scalar.ph4555

.lr.ph3396.us:                                    ; preds = %._crit_edge3378.us
  %i.ddj = mul i32 %.32608.us, %i.n               ; 5 uses
  %i.ddk = sext i32 %i.ddj to i64                 ; 2 uses
  %i.ddl = getelementptr [8 x i8], ptr %i.p, i64 %i.ddk
  %i.ddm = getelementptr i8, ptr %i.ddl, i64 8    ; 3 uses
  store i32 %i.byb, ptr %i.a, align 4, !tbaa !151
  store i32 %i.byc, ptr %i.b, align 4, !tbaa !151
  %.not2728.not3384.us = icmp slt i32 %i.byz, %i.byd
  %reass.sub3513 = sub i32 %i.bwq, %.32608.us
  %invariant.op3398.us = add i32 %reass.sub3513, 1
  %reass.sub3514 = mul i32 %.32608.us, %.32608.us3515
  %i.ddn = add i32 %reass.sub3514, 1              ; 7 uses
  %i.ddo = sext i32 %i.bza to i64                 ; 4 uses
  %i.ddp = sext i32 %i.byz to i64                 ; 14 uses
  %wide.trip.count3742 = sext i32 %i.byd to i64   ; 7 uses
  %i.ddq = xor i64 %i.ddp, -1
  %i.ddr = add nsw i64 %i.ddq, %wide.trip.count3742 ; 2 uses
  %i.dds = add nuw i32 %23, 1
  %i.ddt = mul i32 %i.n, %i.bza                   ; 2 uses
  %i.ddu = add i32 %i.dds, %i.ddt                 ; 2 uses
  %i.ddv = add nuw i32 %23, 2
  %i.ddw = mul i32 %i.n, %.32608.us
  %i.ddx = add i32 %i.ddv, %i.ddw                 ; 2 uses
  %i.ddy = mul nsw i64 %i.ddp, -8
  %scevgep4517 = getelementptr i8, ptr %5, i64 %i.ddy
  %i.ddz = add nsw i64 %i.o, %wide.trip.count3742
  %i.dea = add i32 %i.bwq, 2
  %i.deb = add nuw i32 %23, 2
  %i.dec = mul i32 %i.n, %.32608.us
  %i.ded = add i32 %i.deb, %i.dec
  %i.dee = sext i32 %i.ded to i64                 ; 2 uses
  %i.def = shl nsw i64 %i.dee, 3
  %scevgep4522 = getelementptr i8, ptr %scevgep4521, i64 %i.def
  %i.deg = add nsw i64 %i.o, %wide.trip.count3742
  %i.deh = add nsw i64 %i.deg, %i.dee
  %i.dei = sub nsw i64 %i.deh, %i.ddp
  %i.dej = shl nsw i64 %i.dei, 3
  %scevgep4523 = getelementptr i8, ptr %5, i64 %i.dej
  %i.dek = sub nsw i64 %wide.trip.count3742, %i.ddp ; 7 uses
  %i.del = add i32 %i.ddt, 1                      ; 2 uses
  %i.dem = add i32 %i.bwq, 2
  %i.den = add i32 %i.ddj, 2
  %i.deo = shl nsw i64 %i.ddk, 3
  %scevgep4593 = getelementptr i8, ptr %scevgep4592, i64 %i.deo
  %invariant.op4802.a = sub i32 1, %.32608.us
  %invariant.op4795 = sub i32 1, %.32608.us
  %invariant.op4797 = sub i32 1, %.32608.us
  %min.iters.check4532 = icmp ult i64 %i.dek, 4
  %i.dep = trunc i64 %i.ddr to i32                ; 2 uses
  %i.deq = add i32 %i.ddx, %i.dep
  %i.der = icmp slt i32 %i.deq, %i.ddx
  %i.des = icmp ugt i64 %i.ddr, 4294967295
  %i.det = or i1 %i.der, %i.des
  %min.iters.check4534 = icmp ult i64 %i.dek, 16
  %i.deu = and i64 %i.dek, 12
  %n.vec4536 = and i64 %i.dek, -16                ; 4 uses
  %i.dev = add nsw i64 %n.vec4536, %i.ddp
  %invariant.op4798 = add i32 %i.byz, 1
  %cmp.n4551 = icmp eq i64 %i.dek, %n.vec4536
  %min.epilog.iters.check4557 = icmp eq i64 %i.deu, 0
  %n.vec4559 = and i64 %i.dek, -4                 ; 3 uses
  %i.dew = add nsw i64 %n.vec4559, %i.ddp
  %invariant.op4800 = add i32 %i.byz, 1
  %cmp.n4568 = icmp eq i64 %i.dek, %n.vec4559
  br label %bb.do

._crit_edge3397.us:                               ; preds = %._crit_edge3388.us
  store i32 %i.byd, ptr %i.c, align 4, !tbaa !151
  br label %bb.dp

.lr.ph3402.us:                                    ; preds = %bb.dq
  %indvars3751 = trunc i64 %indvars.iv3748 to i32 ; 2 uses
  %i.dex = mul nsw i64 %indvars.iv3748, %i.bb
  %i.dey = sub i32 %i.bza, %indvars3751
  %i.dez = sext i32 %i.dey to i64
  %i.dfa = getelementptr [8 x i8], ptr %i.p, i64 %i.dex
  %i.dfb = getelementptr [8 x i8], ptr %i.dfa, i64 %i.dez
  %reass.sub3519 = mul i32 %i.bwi, %indvars3751
  %i.dfc = add i32 %reass.sub3519, 1
  %i.dfd = zext nneg i32 %i.cfb to i64
  br label %bb.dr

.lr.ph3409.us:                                    ; preds = %bb.dp
  store i32 %i.byz, ptr %i.b, align 4, !tbaa !151
  %reass.sub3518 = sub i32 %i.bwq, %.32608.us
  %i.dfe = add i32 %reass.sub3518, 1
  %i.dff = zext nneg i32 %.32608.us to i64
  %i.dfg = sext i32 %.42546.us to i64
  br label %bb.dq

._crit_edge3410.us:                               ; preds = %._crit_edge3403.us
  %i.dfh = add i32 %.32608.us, %.pre3824
  %smin3750 = call i32 @llvm.smin.i32(i32 %i.byc, i32 %i.byz)
  store i32 %i.dfh, ptr %i.a, align 4, !tbaa !151
  store i32 %smin3750, ptr %i.c, align 4, !tbaa !151
  br label %bb.ds

.lr.ph3416.us:                                    ; preds = %bb.ec
  %i.dfi = load i32, ptr %2, align 4, !tbaa !151
  %i.dfj = add i32 %i.ciy, %smax3758
  %i.dfk = sub i32 1, %i.dfj
  %i.dfl = mul i32 %i.cip, %i.dfk
  %i.dfm = add i32 %indvars.iv3754, %i.dfl
  %i.dfn = sext i32 %i.dfm to i64
  %i.dfo = sext i32 %i.cip to i64                 ; 2 uses
  %i.dfp = sext i32 %i.dfi to i64
  %i.dfq = sext i32 %.3.us to i64                 ; 2 uses
  %invariant.gep4157 = getelementptr [8 x i8], ptr %i.p, i64 %i.dfo
  %invariant.gep4159 = getelementptr [8 x i8], ptr %i.w, i64 %i.dfp
  br label %bb.ed

.lr.ph3421.us:                                    ; preds = %bb.eg
  %i.dfr = add nsw i32 %i.cjb, -1
  %i.dfs = mul nsw i32 %i.dfr, %i.n               ; 2 uses
  %i.dft = add i32 %i.dfs, 2
  %i.dfu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.pre3964.a
  %i.dfv = sext i32 %.pre3956.a to i64            ; 2 uses
  %invariant.gep4161 = getelementptr [8 x i8], ptr %i.p, i64 %i.dfv
  br label %bb.eh

.lr.ph3427.us:                                    ; preds = %bb.ei
  %i.dfw = add i32 %i.civ, -1
  %.pre3834 = load i32, ptr %i.j, align 4, !tbaa !151
  br label %bb.ej

.lr.ph3437.us:                                    ; preds = %bb.dw
  %i.dfx = mul nsw i32 %.32608.us, %i.q
  %i.dfy = add i32 %i.dfx, 1
  %i.dfz = add i32 %.32608.us, %i.ay
  %.reass4172.reass = add i32 %.42551.us, %invariant.op4803
  %i.dga = add nuw i32 %.32608.us, 1
  %i.dgb = add nsw i32 %.32608.us, -1
  %i.dgc = add nuw i32 %.32608.us, 2
  %.reass4174.reass = add i32 %.42551.us, %invariant.op4804.a
  %i.dgd = zext nneg i32 %.32608.us to i64
  br label %bb.dx

.lr.ph3446.us:                                    ; preds = %._crit_edge3442.us
  %i.dge = load i32, ptr %4, align 4, !tbaa !151
  %i.dgf = sub i32 %i.ay, %i.dge                  ; 2 uses
  %i.dgg = load i32, ptr %2, align 4, !tbaa !151
  %invariant.op3451.us = add i32 %i.dgf, %i.dgg
  %i.dgh = sext i32 %i.cqa to i64
  %i.dgi = sext i32 %i.cpu to i64
  %i.dgj = sext i32 %i.coj to i64                 ; 2 uses
  br label %bb.ew

.lr.ph3456.us:                                    ; preds = %bb.ew
  store i32 %i.coj, ptr %i.c, align 4, !tbaa !151
  store i32 %i.cpu, ptr %i.d, align 4, !tbaa !151
  %i.dgk = load i32, ptr %4, align 4, !tbaa !151
  %invariant.op3458.us = sub i32 %i.ay, %i.dgk    ; 2 uses
  %i.dgl = load i32, ptr %2, align 4, !tbaa !151
  %invariant.op3462.us = add i32 %invariant.op3458.us, %i.dgl
  %i.dgm = sext i32 %i.cqa to i64
  %i.dgn = sext i32 %i.cpu to i64                 ; 2 uses
  %i.dgo = sext i32 %i.coj to i64                 ; 2 uses
  %invariant.gep4163 = getelementptr [8 x i8], ptr %i.p, i64 %i.dgn
  br label %bb.ex

.lr.ph3466.us:                                    ; preds = %bb.ep
  %i.dgp = sub i32 %.42551.us, %i.ay
  %i.dgq = add nuw i32 %.32608.us, 1
  %i.dgr = add i32 %.32608.us, %i.ay
  br label %bb.eq

.lr.ph3471.us:                                    ; preds = %bb.fc
  %i.dgs = add nsw i32 %i.csk, -1
  %i.dgt = mul nsw i32 %i.dgs, %i.n               ; 2 uses
  %i.dgu = add i32 %i.dgt, 2
  %i.dgv = sext i32 %i.csm to i64                 ; 2 uses
  %invariant.gep4165 = getelementptr [8 x i8], ptr %i.p, i64 %i.dgv
  br label %bb.fd

.lr.ph3477.us:                                    ; preds = %bb.fe
  %i.dgw = add i32 %i.csd, -1
  %.pre3845 = load i32, ptr %i.j, align 4, !tbaa !151
  br label %bb.ff

.lr.ph3485.us:                                    ; preds = %._crit_edge3467.us
  %i.dgx = sub i32 %.42551.us, %i.ay
  %i.dgy = add nuw i32 %.32608.us, 1
  br label %bb.fb

.lr.ph3489.us:                                    ; preds = %bb.fj
  %i.dgz = add i32 %i.cwy, -1
  br label %bb.fk

.lr.ph3494.us:                                    ; preds = %._crit_edge3486.us
  %.reass4176.reass = add i32 %.42551.us, %invariant.op4805
  %i.dha = add nuw i32 %.32608.us, 1
  %.pre3911 = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  br label %bb.fj

.lr.ph3499.us:                                    ; preds = %bb.fn
  %i.dhb = load i32, ptr %2, align 4, !tbaa !151
  %i.dhc = sext i32 %i.dhb to i64                 ; 9 uses
  %i.dhd = sext i32 %.pre3824.pre.pre to i64      ; 5 uses
  %i.dhe = sub i32 %i.cyh, %i.cyi
  %wide.trip.count3782 = zext i32 %i.dhe to i64   ; 4 uses
  %invariant.gep4167 = getelementptr [8 x i8], ptr %i.w, i64 %i.dhd ; 6 uses
  %invariant.gep4169 = getelementptr [8 x i8], ptr %i.w, i64 %i.dhd ; 6 uses
  %i.dhf = add nsw i64 %wide.trip.count3782, -2   ; 3 uses
  %min.iters.check4498 = icmp ult i64 %i.dhf, 16
  br i1 %min.iters.check4498, label %scalar.ph4497.preheader, label %vector.memcheck4489

vector.memcheck4489:                              ; preds = %.lr.ph3499.us
  %i.dhg = shl nsw i64 %i.dhc, 3
  %diff.check4490 = icmp ugt i64 %i.dhg, -64
  %i.dhh = shl nsw i64 %i.dhd, 3
  %diff.check4491 = icmp ugt i64 %i.dhh, -64
  %conflict.rdx4492 = or i1 %diff.check4490, %diff.check4491
  %i.dhi = sub nsw i64 %i.dhd, %i.dhc
  %i.dhj = shl nsw i64 %i.dhi, 3
  %i.dhk = add nsw i64 %i.dhj, -1
  %diff.check4493 = icmp ult i64 %i.dhk, 63
  %conflict.rdx4494 = or i1 %conflict.rdx4492, %diff.check4493
  %i.dhl = add nsw i64 %i.dhc, %i.dhd
  %i.dhm = shl nsw i64 %i.dhl, 3
  %diff.check4495 = icmp ugt i64 %i.dhm, -64
  %conflict.rdx4496 = or i1 %conflict.rdx4494, %diff.check4495
  br i1 %conflict.rdx4496, label %scalar.ph4497.preheader, label %vector.ph4499

vector.ph4499:                                    ; preds = %vector.memcheck4489
  %n.vec4500 = and i64 %i.dhf, -8                 ; 3 uses
  %i.dhn = or disjoint i64 %n.vec4500, 2
  br label %vector.body4501

end_hunk_1
