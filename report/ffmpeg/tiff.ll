inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 51
begin_hunk_0_@decode_frame:bb.a
  %epil.iter3734.next = add i64 %epil.iter3734, 1 ; 2 uses
  %epil.iter3734.cmp.not = icmp eq i64 %epil.iter3734.next, %xtraiter3733
  br i1 %epil.iter3734.cmp.not, label %horizontal_fill.exit363.i, label %.lr.ph555.i.epil, !llvm.loop !192

horizontal_fill.exit363.i:                        ; preds = %horizontal_fill.exit363.i.loopexit3478.unr-lcssa, %.lr.ph555.i.epil, %.epil.preheader3739, %horizontal_fill.exit363.i.loopexit3477.unr-lcssa, %.lr.ph561.i, %.lr.ph563.i, %.lr.ph565.i, %middle.block3337, %.thread473.i, %bb.pm, %.preheader496.i, %.preheader497.i, %.preheader499.i, %.preheader502.i
  br i1 %spec.select.i, label %bb.po, label %bb.pr

bb.po:                                            ; preds = %horizontal_fill.exit363.i
  %i.cft = load i32, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.cfu = load i32, ptr %i.at, align 4, !tbaa !59 ; 2 uses
  %i.cfv = udiv i32 %i.cft, %i.cfu
  %i.cfw = icmp ugt i32 %i.cfv, 8                 ; 4 uses
  %i.cfx = select i1 %i.cfw, i32 %i.byu, i32 %.2308.i
  %i.cfy = select i1 %i.cfw, i32 4, i32 3
  %i.cfz = shl i32 %i.cfx, %i.cfy
  %i.cga = udiv i32 %i.cfz, %i.cft
  %i.cgb = mul i32 %i.cga, %i.cfu                 ; 4 uses
  %i.cgc = zext i1 %i.cfw to i32
  %i.cgd = shl i32 %i.cgb, %i.cgc
  %.not338.i = icmp sgt i32 %i.cgd, %i.byv
  br i1 %.not338.i, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1840, ptr noundef nonnull @.str.1831, i32 noundef 921) #16
  call void @abort() #17
  unreachable

bb.pq:                                            ; preds = %bb.po
  %i.cge = add nsw i32 %.2301577.i, %.121602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cgf = load i32, ptr %i.ay, align 8, !tbaa !64
  %.not.i.i = icmp eq i32 %i.cgf, 0
  %i.cgg = load i32, ptr %i.ax, align 4, !tbaa !63
  %i.cgh = uitofp nsz i32 %i.cgg to float         ; 5 uses
  br i1 %.not.i.i, label %.preheader492.i, label %.preheader494.i

.preheader494.i:                                  ; preds = %bb.pq
  %i.cgi = load i8, ptr %i.cu, align 8, !tbaa !80
  %i.cgj = zext i8 %i.cgi to i64
  %i.cgk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgj
  %i.cgl = load float, ptr %i.cgk, align 4, !tbaa !74
  %i.cgm = load i8, ptr %i.cv, align 1, !tbaa !80
  %i.cgn = zext i8 %i.cgm to i64
  %i.cgo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgn
  %i.cgp = load float, ptr %i.cgo, align 4, !tbaa !74
  %i.cgq = insertelement <2 x float> poison, float %i.cgl, i64 0
  %i.cgr = insertelement <2 x float> %i.cgq, float %i.cgp, i64 1
  %i.cgs = fmul nsz <2 x float> %i.cgr, splat (float 6.553500e+04)
  %i.cgt = load <2 x float>, ptr %i.be, align 4, !tbaa !74
  %i.cgu = insertelement <2 x float> poison, float %i.cgh, i64 0
  %i.cgv = shufflevector <2 x float> %i.cgu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgw = fsub nsz <2 x float> %i.cgv, %i.cgt
  %i.cgx = fdiv nsz <2 x float> %i.cgs, %i.cgw
  %i.cgy = load i8, ptr %i.cw, align 2, !tbaa !80
  %i.cgz = zext i8 %i.cgy to i64
  %i.cha = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgz
  %i.chb = load float, ptr %i.cha, align 4, !tbaa !74
  %i.chc = fmul nsz float %i.chb, 6.553500e+04
  %i.chd = load float, ptr %i.axp, align 4, !tbaa !74
  %i.che = fsub nsz float %i.cgh, %i.chd
  %i.chf = fdiv nsz float %i.chc, %i.che
  %i.chg = load i8, ptr %i.cx, align 1, !tbaa !80
  %i.chh = zext i8 %i.chg to i64
  %i.chi = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.chh
  br label %.loopexit493.i

.preheader492.i:                                  ; preds = %bb.pq
  %i.chj = load <2 x float>, ptr %i.bi, align 4, !tbaa !74
  %i.chk = fmul nsz <2 x float> %i.chj, splat (float 6.553500e+04)
  %i.chl = load <2 x float>, ptr %i.be, align 4, !tbaa !74
  %i.chm = insertelement <2 x float> poison, float %i.cgh, i64 0
  %i.chn = shufflevector <2 x float> %i.chm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cho = fsub nsz <2 x float> %i.chn, %i.chl
  %i.chp = fdiv nsz <2 x float> %i.chk, %i.cho
  %i.chq = load float, ptr %i.axt, align 4, !tbaa !74
  %i.chr = fmul nsz float %i.chq, 6.553500e+04
  %i.chs = load float, ptr %i.axp, align 4, !tbaa !74
  %i.cht = fsub nsz float %i.cgh, %i.chs
  %i.chu = fdiv nsz float %i.chr, %i.cht
  br label %.loopexit493.i

.loopexit493.i:                                   ; preds = %.preheader492.i, %.preheader494.i
  %.sink2841.in = phi ptr [ %i.axu, %.preheader492.i ], [ %i.chi, %.preheader494.i ]
  %.sink = phi float [ %i.chu, %.preheader492.i ], [ %i.chf, %.preheader494.i ]
  %i.chv = phi <2 x float> [ %i.chp, %.preheader492.i ], [ %i.cgx, %.preheader494.i ]
  %.sink2841 = load float, ptr %.sink2841.in, align 4, !tbaa !74
  %i.chw = fmul nsz float %.sink2841, 6.553500e+04
  %i.chx = load float, ptr %i.axr, align 8, !tbaa !74
  %i.chy = fsub nsz float %i.cgh, %i.chx
  %i.chz = fdiv nsz float %i.chw, %i.chy
  store <2 x float> %i.chv, ptr %i.a, align 16, !tbaa !74
  store float %.sink, ptr %i.axq, align 8, !tbaa !74
  store float %i.chz, ptr %i.axs, align 4, !tbaa !74
  %i.cia = icmp sgt i32 %i.cgb, 0                 ; 2 uses
  %i.cib = shl i32 %i.cge, 1
  %i.cic = and i32 %i.cib, 2                      ; 2 uses
  br i1 %i.cfw, label %.preheader489.i, label %.preheader490.i

.preheader490.i:                                  ; preds = %.loopexit493.i
  br i1 %i.cia, label %.preheader476.i, label %dng_blit.exit.i

.preheader489.i:                                  ; preds = %.loopexit493.i
  br i1 %i.cia, label %.preheader.i, label %dng_blit.exit.i

.preheader.i:                                     ; preds = %.preheader489.i, %.preheader.i
  %.095.i574.i = phi ptr [ %i.cid, %.preheader.i ], [ %.4580.i, %.preheader489.i ] ; 3 uses
  %.2.i572.i = phi i32 [ %i.ciw, %.preheader.i ], [ 0, %.preheader489.i ] ; 2 uses
  %i.cid = getelementptr i8, ptr %.095.i574.i, i64 2
  %i.cie = load i16, ptr %.095.i574.i, align 2, !tbaa !69
  %i.cif = and i32 %.2.i572.i, 1
  %i.cig = or disjoint i32 %i.cif, %i.cic
  %i.cih = zext nneg i32 %i.cig to i64            ; 2 uses
  %i.cii = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cih
  %i.cij = load float, ptr %i.cii, align 4, !tbaa !74
  %i.cik = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cih
  %i.cil = load float, ptr %i.cik, align 4, !tbaa !74
  %i.cim = zext i16 %i.cie to i64
  %i.cin = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cim
  %i.cio = load i16, ptr %i.cin, align 2, !tbaa !69
  %i.cip = uitofp nsz i16 %i.cio to float
  %i.ciq = fsub nsz float %i.cip, %i.cij
  %i.cir = fmul nsz float %i.cil, %i.ciq
  %i.cis = call i64 @llvm.lrint.i64.f32(float %i.cir) ; 2 uses
  %i.cit = trunc i64 %i.cis to i32                ; 2 uses
  %.not.i347.i = icmp ult i32 %i.cit, 65536
  %isnotneg.i348.i = icmp sgt i32 %i.cit, -1
  %i.ciu = sext i1 %isnotneg.i348.i to i16
  %i.civ = trunc i64 %i.cis to i16
  %.0.i349.i = select i1 %.not.i347.i, i16 %i.civ, i16 %i.ciu
  store i16 %.0.i349.i, ptr %.095.i574.i, align 2, !tbaa !69
  %i.ciw = add nuw nsw i32 %.2.i572.i, 1          ; 2 uses
  %i.cix = icmp slt i32 %i.ciw, %i.cgb
  br i1 %i.cix, label %.preheader.i, label %dng_blit.exit.i, !llvm.loop !194

.preheader476.i:                                  ; preds = %.preheader490.i, %.preheader476.i
  %.0.i570.i = phi ptr [ %i.ciy, %.preheader476.i ], [ %.4580.i, %.preheader490.i ] ; 3 uses
  %.3.i568.i = phi i32 [ %i.cjt, %.preheader476.i ], [ 0, %.preheader490.i ] ; 2 uses
  %i.ciy = getelementptr i8, ptr %.0.i570.i, i64 1
  %i.ciz = load i8, ptr %.0.i570.i, align 1, !tbaa !80
  %i.cja = and i32 %.3.i568.i, 1
  %i.cjb = or disjoint i32 %i.cja, %i.cic
  %i.cjc = zext nneg i32 %i.cjb to i64            ; 2 uses
  %i.cjd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cjc
  %i.cje = load float, ptr %i.cjd, align 4, !tbaa !74
  %i.cjf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cjc
  %i.cjg = load float, ptr %i.cjf, align 4, !tbaa !74
  %i.cjh = zext i8 %i.ciz to i64
  %i.cji = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cjh
  %i.cjj = load i16, ptr %i.cji, align 2, !tbaa !69
  %i.cjk = uitofp nsz i16 %i.cjj to float
  %i.cjl = fsub nsz float %i.cjk, %i.cje
  %i.cjm = fmul nsz float %i.cjg, %i.cjl
  %i.cjn = call i64 @llvm.lrint.i64.f32(float %i.cjm) ; 2 uses
  %i.cjo = trunc i64 %i.cjn to i32                ; 2 uses
  %.not.i345.i = icmp ult i32 %i.cjo, 65536
  %isnotneg.i.i = icmp sgt i32 %i.cjo, -1
  %i.cjp = sext i1 %isnotneg.i.i to i16
  %i.cjq = trunc i64 %i.cjn to i16
  %.0.i346.i = select i1 %.not.i345.i, i16 %i.cjq, i16 %i.cjp
  %i.cjr = lshr i16 %.0.i346.i, 8
  %i.cjs = trunc nuw i16 %i.cjr to i8
  store i8 %i.cjs, ptr %.0.i570.i, align 1, !tbaa !80
  %i.cjt = add nuw nsw i32 %.3.i568.i, 1          ; 2 uses
  %i.cju = icmp slt i32 %i.cjt, %i.cgb
  br i1 %i.cju, label %.preheader476.i, label %dng_blit.exit.i, !llvm.loop !195

dng_blit.exit.i:                                  ; preds = %.preheader476.i, %.preheader.i, %.preheader489.i, %.preheader490.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.pr

bb.pr:                                            ; preds = %dng_blit.exit.i, %horizontal_fill.exit363.i
  %i.cjv = getelementptr inbounds i8, ptr %.1294578.i, i64 %i.byq
  br label %.loopexit505.i

.lr.ph551.i:                                      ; preds = %.preheader506.i, %horizontal_fill.exit.i
  %.2295550.i = phi ptr [ %.4297.i, %horizontal_fill.exit.i ], [ %.1294578.i, %.preheader506.i ] ; 10 uses
  %.0304549.i = phi i32 [ %.1305.i, %horizontal_fill.exit.i ], [ 0, %.preheader506.i ] ; 11 uses
  %i.cjw = ptrtoint ptr %.2295550.i to i64
  %i.cjx = sub i64 %i.byp, %i.cjw
  %i.cjy = icmp slt i64 %i.cjx, 2
  br i1 %i.cjy, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %.lr.ph551.i
  %i.cjz = load ptr, ptr %i.bo, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cjz, i32 noundef 16, ptr noundef nonnull @.str.1841) #16
  br label %tiff_unpack_strip.exit.thread

bb.pt:                                            ; preds = %.lr.ph551.i
  %i.cka = load i32, ptr %i.aw, align 4, !tbaa !62
  %.not334.i = icmp eq i32 %i.cka, 0
  br i1 %.not334.i, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.ckb = load i8, ptr %.2295550.i, align 1, !tbaa !80
  %i.ckc = zext i8 %i.ckb to i64
  %i.ckd = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.ckc
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  %.in.in.i = phi ptr [ %i.ckd, %bb.pu ], [ %.2295550.i, %bb.pt ]
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !80 ; 8 uses
  %i.cke = sext i8 %.in.i to i32                  ; 2 uses
  %.3296.i = getelementptr inbounds nuw i8, ptr %.2295550.i, i64 1 ; 8 uses
  %i.ckf = icmp sgt i8 %.in.i, -1
  br i1 %i.ckf, label %bb.pw, label %bb.qc

bb.pw:                                            ; preds = %bb.pv
  %i.ckg = add nuw nsw i32 %i.cke, 1              ; 3 uses
  %i.ckh = add nsw i32 %i.ckg, %.0304549.i        ; 2 uses
  %i.cki = icmp sgt i32 %i.ckh, %.2308.i
  br i1 %i.cki, label %._crit_edge674.i, label %bb.px

._crit_edge674.i:                                 ; preds = %bb.pw
  %.pre675.i = load ptr, ptr %i.bo, align 8, !tbaa !41
  br label %split.i

bb.px:                                            ; preds = %bb.pw
  %i.ckj = ptrtoint ptr %.3296.i to i64
  %i.ckk = sub i64 %i.byp, %i.ckj
  %i.ckl = zext nneg i32 %i.ckg to i64            ; 3 uses
  %i.ckm = icmp slt i64 %i.ckk, %i.ckl
  %.pre676.i = load ptr, ptr %i.bo, align 8, !tbaa !41 ; 2 uses
  br i1 %i.ckm, label %split.i, label %bb.py

split.i:                                          ; preds = %bb.px, %._crit_edge674.i
  %i.ckn = phi ptr [ %.pre675.i, %._crit_edge674.i ], [ %.pre676.i, %bb.px ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ckn, i32 noundef 16, ptr noundef nonnull @.str.1842) #16
  br label %tiff_unpack_strip.exit.thread

bb.py:                                            ; preds = %bb.px
  %i.cko = load i32, ptr %i.as, align 8, !tbaa !58
  %i.ckp = getelementptr inbounds nuw i8, ptr %.pre676.i, i64 136
  %i.ckq = load i32, ptr %i.ckp, align 8, !tbaa !138
  %i.ckr = icmp eq i32 %i.ckq, 11
  %i.cks = select i1 %i.ckr, i32 %i.cko, i32 0    ; 5 uses
  switch i32 %i.cks, label %bb.qb [
    i32 1, label %.lr.ph548.preheader.i
    i32 2, label %.lr.ph546.preheader.i
    i32 4, label %.lr.ph544.preheader.i
    i32 10, label %bb.pz
    i32 12, label %bb.pz
    i32 14, label %bb.pz
  ]

.lr.ph544.preheader.i:                            ; preds = %bb.py
  %narrow718.i = add nuw i8 %.in.i, 1
  %i.ckt = zext i8 %narrow718.i to i64            ; 6 uses
  %i.cku = sext i32 %.0304549.i to i64            ; 4 uses
  %narrow = add nuw i8 %.in.i, 1
  %9 = zext i8 %narrow to i64                     ; 2 uses
  %min.iters.check3350 = icmp ult i8 %.in.i, 7
  br i1 %min.iters.check3350, label %.lr.ph544.i.preheader, label %vector.memcheck3340

vector.memcheck3340:                              ; preds = %.lr.ph544.preheader.i
  %i.ckv = shl nsw i64 %i.cku, 1
  %scevgep3342 = getelementptr i8, ptr %i.bzf, i64 %i.ckv
  %i.ckw = add nsw i64 %i.cku, %i.ckt
  %i.ckx = shl nsw i64 %i.ckw, 1
  %scevgep3343 = getelementptr i8, ptr %.4580.i, i64 %i.ckx
  %scevgep3344 = getelementptr i8, ptr %.2295550.i, i64 1 ; 2 uses
  %scevgep3345 = getelementptr i8, ptr %scevgep3344, i64 %i.ckt
  %bound03346 = icmp ult ptr %scevgep3342, %scevgep3345
  %bound13347 = icmp ult ptr %scevgep3344, %scevgep3343
  %found.conflict3348 = and i1 %bound03346, %bound13347
  br i1 %found.conflict3348, label %.lr.ph544.i.preheader, label %vector.ph3351

vector.ph3351:                                    ; preds = %vector.memcheck3340
  %n.vec3352 = and i64 %9, 248                    ; 3 uses
  %10 = sub nsw i64 %i.ckt, %n.vec3352
  %invariant.op3969 = add i64 -1, %i.cku
  br label %vector.body3353

vector.body3353:                                  ; preds = %vector.body3353, %vector.ph3351
  %index3354 = phi i64 [ 0, %vector.ph3351 ], [ %index.next3362, %vector.body3353 ] ; 2 uses
  %i.cky = sub i64 %i.ckt, %index3354             ; 2 uses
  %i.ckz = getelementptr i8, ptr %.2295550.i, i64 %i.cky
  %i.cla = getelementptr i8, ptr %i.ckz, i64 -7
  %wide.load3355 = load <8 x i8>, ptr %i.cla, align 1, !tbaa !80, !alias.scope !196 ; 2 uses
  %i.clb = and <8 x i8> %wide.load3355, splat (i8 15)
  %.reass3970 = add i64 %i.cky, %invariant.op3969
  %i.clc = shl nsw i64 %.reass3970, 1
  %i.cld = getelementptr i8, ptr %.4580.i, i64 %i.clc
  %i.cle = lshr <8 x i8> %wide.load3355, splat (i8 4)
  %i.clf = getelementptr i8, ptr %i.cld, i64 -14
  %interleaved.vec3361 = shufflevector <8 x i8> %i.cle, <8 x i8> %i.clb, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3361, ptr %i.clf, align 1, !tbaa !80, !alias.scope !199, !noalias !196
  %index.next3362 = add nuw i64 %index3354, 8     ; 2 uses
  %i.clg = icmp eq i64 %index.next3362, %n.vec3352
  br i1 %i.clg, label %middle.block3363, label %vector.body3353, !llvm.loop !201

middle.block3363:                                 ; preds = %vector.body3353
  %cmp.n3364 = icmp eq i64 %n.vec3352, %9
  br i1 %cmp.n3364, label %horizontal_fill.exit357.i, label %.lr.ph544.i.preheader

.lr.ph544.i.preheader:                            ; preds = %vector.memcheck3340, %.lr.ph544.preheader.i, %middle.block3363
  %indvars.iv633.i.ph = phi i64 [ %i.ckt, %vector.memcheck3340 ], [ %i.ckt, %.lr.ph544.preheader.i ], [ %10, %middle.block3363 ]
  br label %.lr.ph544.i

.lr.ph546.preheader.i:                            ; preds = %bb.py
  %narrow719.i = add nuw i8 %.in.i, 1
  %i.clh = zext i8 %narrow719.i to i64
  %i.cli = sext i32 %.0304549.i to i64
  br label %.lr.ph546.i

.lr.ph548.preheader.i:                            ; preds = %bb.py
  %narrow720.i = add nuw i8 %.in.i, 1
  %i.clj = zext i8 %narrow720.i to i64
  %i.clk = sext i32 %.0304549.i to i64
  br label %.lr.ph548.i

.lr.ph548.i:                                      ; preds = %.lr.ph548.i, %.lr.ph548.preheader.i
  %indvars.iv639.i = phi i64 [ %i.clj, %.lr.ph548.preheader.i ], [ %indvars.iv.next640.i, %.lr.ph548.i ] ; 3 uses
  %indvars.iv.next640.i = add nsw i64 %indvars.iv639.i, -1 ; 2 uses
  %i.cll = getelementptr i8, ptr %.2295550.i, i64 %indvars.iv639.i ; 8 uses
  %i.clm = load i8, ptr %i.cll, align 1, !tbaa !80
  %i.cln = and i8 %i.clm, 1
  %i.clo = add nsw i64 %indvars.iv.next640.i, %i.clk
  %i.clp = shl nsw i64 %i.clo, 3
  %i.clq = getelementptr i8, ptr %.4580.i, i64 %i.clp ; 8 uses
  %i.clr = getelementptr i8, ptr %i.clq, i64 7
  store i8 %i.cln, ptr %i.clr, align 1, !tbaa !80
  %i.cls = load i8, ptr %i.cll, align 1, !tbaa !80
  %i.clt = lshr i8 %i.cls, 1
  %i.clu = and i8 %i.clt, 1
  %i.clv = getelementptr i8, ptr %i.clq, i64 6
  store i8 %i.clu, ptr %i.clv, align 1, !tbaa !80
  %i.clw = load i8, ptr %i.cll, align 1, !tbaa !80
  %i.clx = lshr i8 %i.clw, 2
  %i.cly = and i8 %i.clx, 1
  %i.clz = getelementptr i8, ptr %i.clq, i64 5
  store i8 %i.cly, ptr %i.clz, align 1, !tbaa !80
  %i.cma = load i8, ptr %i.cll, align 1, !tbaa !80
  %i.cmb = lshr i8 %i.cma, 3
  %i.cmc = and i8 %i.cmb, 1
  %i.cmd = getelementptr i8, ptr %i.clq, i64 4
  store i8 %i.cmc, ptr %i.cmd, align 1, !tbaa !80
  %i.cme = load i8, ptr %i.cll, align 1, !tbaa !80
  %i.cmf = lshr i8 %i.cme, 4
  %i.cmg = and i8 %i.cmf, 1
  %i.cmh = getelementptr i8, ptr %i.clq, i64 3
  store i8 %i.cmg, ptr %i.cmh, align 1, !tbaa !80
  %i.cmi = load i8, ptr %i.cll, align 1, !tbaa !80
  %i.cmj = lshr i8 %i.cmi, 5
  %i.cmk = and i8 %i.cmj, 1
  %i.cml = getelementptr i8, ptr %i.clq, i64 2
  store i8 %i.cmk, ptr %i.cml, align 1, !tbaa !80
  %i.cmm = load i8, ptr %i.cll, align 1, !tbaa !80
  %i.cmn = lshr i8 %i.cmm, 6
  %i.cmo = and i8 %i.cmn, 1
  %i.cmp = getelementptr i8, ptr %i.clq, i64 1
  store i8 %i.cmo, ptr %i.cmp, align 1, !tbaa !80
  %i.cmq = load i8, ptr %i.cll, align 1, !tbaa !80
  %i.cmr = lshr i8 %i.cmq, 7
  store i8 %i.cmr, ptr %i.clq, align 1, !tbaa !80
  %i.cms = icmp samesign ugt i64 %indvars.iv639.i, 1
  br i1 %i.cms, label %.lr.ph548.i, label %horizontal_fill.exit357.i, !llvm.loop !159

.lr.ph546.i:                                      ; preds = %.lr.ph546.i, %.lr.ph546.preheader.i
  %indvars.iv636.i = phi i64 [ %i.clh, %.lr.ph546.preheader.i ], [ %indvars.iv.next637.i, %.lr.ph546.i ] ; 3 uses
  %indvars.iv.next637.i = add nsw i64 %indvars.iv636.i, -1 ; 2 uses
  %i.cmt = getelementptr i8, ptr %.2295550.i, i64 %indvars.iv636.i ; 4 uses
  %i.cmu = load i8, ptr %i.cmt, align 1, !tbaa !80
  %i.cmv = and i8 %i.cmu, 3
  %i.cmw = add nsw i64 %indvars.iv.next637.i, %i.cli
  %i.cmx = shl nsw i64 %i.cmw, 2
  %i.cmy = getelementptr i8, ptr %.4580.i, i64 %i.cmx ; 4 uses
  %i.cmz = getelementptr i8, ptr %i.cmy, i64 3
  store i8 %i.cmv, ptr %i.cmz, align 1, !tbaa !80
  %i.cna = load i8, ptr %i.cmt, align 1, !tbaa !80
  %i.cnb = lshr i8 %i.cna, 2
  %i.cnc = and i8 %i.cnb, 3
  %i.cnd = getelementptr i8, ptr %i.cmy, i64 2
  store i8 %i.cnc, ptr %i.cnd, align 1, !tbaa !80
  %i.cne = load i8, ptr %i.cmt, align 1, !tbaa !80
  %i.cnf = lshr i8 %i.cne, 4
  %i.cng = and i8 %i.cnf, 3
  %i.cnh = getelementptr i8, ptr %i.cmy, i64 1
  store i8 %i.cng, ptr %i.cnh, align 1, !tbaa !80
  %i.cni = load i8, ptr %i.cmt, align 1, !tbaa !80
  %i.cnj = lshr i8 %i.cni, 6
  store i8 %i.cnj, ptr %i.cmy, align 1, !tbaa !80
  %i.cnk = icmp samesign ugt i64 %indvars.iv636.i, 1
  br i1 %i.cnk, label %.lr.ph546.i, label %horizontal_fill.exit357.i, !llvm.loop !160

.lr.ph544.i:                                      ; preds = %.lr.ph544.i.preheader, %.lr.ph544.i
  %indvars.iv633.i = phi i64 [ %indvars.iv.next634.i, %.lr.ph544.i ], [ %indvars.iv633.i.ph, %.lr.ph544.i.preheader ] ; 3 uses
  %indvars.iv.next634.i = add nsw i64 %indvars.iv633.i, -1 ; 2 uses
  %i.cnl = getelementptr i8, ptr %.2295550.i, i64 %indvars.iv633.i ; 2 uses
  %i.cnm = load i8, ptr %i.cnl, align 1, !tbaa !80
  %i.cnn = and i8 %i.cnm, 15
  %i.cno = add nsw i64 %indvars.iv.next634.i, %i.cku
  %i.cnp = shl nsw i64 %i.cno, 1
  %i.cnq = getelementptr i8, ptr %.4580.i, i64 %i.cnp ; 2 uses
  %i.cnr = getelementptr i8, ptr %i.cnq, i64 1
  store i8 %i.cnn, ptr %i.cnr, align 1, !tbaa !80
  %i.cns = load i8, ptr %i.cnl, align 1, !tbaa !80
  %i.cnt = lshr i8 %i.cns, 4
  store i8 %i.cnt, ptr %i.cnq, align 1, !tbaa !80
  %i.cnu = icmp samesign ugt i64 %indvars.iv633.i, 1
  br i1 %i.cnu, label %.lr.ph544.i, label %horizontal_fill.exit357.i, !llvm.loop !202

bb.pz:                                            ; preds = %bb.py, %bb.py, %bb.py
  %i.cnv = shl nuw nsw i32 %i.ckg, 3
  %i.cnw = add nuw nsw i32 %i.cnv, 8              ; 2 uses
  %i.cnx = load i32, ptr %i.dp, align 8, !tbaa !29 ; 4 uses
  %i.cny = icmp sgt i32 %i.cnx, 0
  br i1 %i.cny, label %.lr.ph542.i, label %horizontal_fill.exit357.i

.lr.ph542.i:                                      ; preds = %bb.pz
  %i.cnz = sub nuw nsw i32 16, %i.cks
  %i.coa = load i32, ptr %i.ap, align 4, !tbaa !55
  %i.cob = add i32 %i.coa, -1
  %spec.select.i352.i = icmp ult i32 %i.cob, 2
  %i.coc = sub nuw nsw i32 32, %i.cks             ; 3 uses
  %i.cod = select i1 %spec.select.i352.i, i32 0, i32 %i.cnz ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.cnx to i64 ; 2 uses
  %xtraiter3723 = and i64 %wide.trip.count.i, 1
  %i.coe = icmp eq i32 %i.cnx, 1
  br i1 %i.coe, label %.epil.preheader3722, label %.lr.ph542.i.new

.lr.ph542.i.new:                                  ; preds = %.lr.ph542.i
  %unroll_iter3726 = and i64 %wide.trip.count.i, 2147483646
  br label %bb.qa

bb.qa:                                            ; preds = %bb.qa, %.lr.ph542.i.new
  %indvars.iv630.i = phi i64 [ 0, %.lr.ph542.i.new ], [ %indvars.iv.next631.i.1, %bb.qa ] ; 3 uses
  %.sroa.4453.0540.i = phi i32 [ 0, %.lr.ph542.i.new ], [ %i.cpb, %bb.qa ] ; 3 uses
  %niter3727 = phi i64 [ 0, %.lr.ph542.i.new ], [ %niter3727.next.1, %bb.qa ]
  %i.cof = lshr i32 %.sroa.4453.0540.i, 3
  %i.cog = zext nneg i32 %i.cof to i64
  %i.coh = getelementptr inbounds nuw i8, ptr %.3296.i, i64 %i.cog
  %i.coi = load i32, ptr %i.coh, align 1, !tbaa !80
  %i.coj = call i32 @llvm.bswap.i32(i32 %i.coi)
  %i.cok = and i32 %.sroa.4453.0540.i, 7
  %i.col = shl i32 %i.coj, %i.cok
  %i.com = lshr i32 %i.col, %i.coc
  %i.con = add i32 %.sroa.4453.0540.i, %i.cks
  %i.coo = call i32 @llvm.umin.i32(i32 %i.cnw, i32 %i.con) ; 3 uses
  %i.cop = shl nuw nsw i32 %i.com, %i.cod
  %i.coq = trunc i32 %i.cop to i16
  %i.cor = getelementptr inbounds nuw [2 x i8], ptr %.4580.i, i64 %indvars.iv630.i
  store i16 %i.coq, ptr %i.cor, align 2, !tbaa !69
  %i.cos = lshr i32 %i.coo, 3
  %i.cot = zext nneg i32 %i.cos to i64
  %i.cou = getelementptr inbounds nuw i8, ptr %.3296.i, i64 %i.cot
  %i.cov = load i32, ptr %i.cou, align 1, !tbaa !80
  %i.cow = call i32 @llvm.bswap.i32(i32 %i.cov)
  %i.cox = and i32 %i.coo, 7
  %i.coy = shl i32 %i.cow, %i.cox
  %i.coz = lshr i32 %i.coy, %i.coc
  %i.cpa = add i32 %i.coo, %i.cks
  %i.cpb = call i32 @llvm.umin.i32(i32 %i.cnw, i32 %i.cpa) ; 2 uses
  %i.cpc = shl nuw nsw i32 %i.coz, %i.cod
  %i.cpd = trunc i32 %i.cpc to i16
  %i.cpe = getelementptr inbounds nuw [2 x i8], ptr %.4580.i, i64 %indvars.iv630.i
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.cpe, i64 2
  store i16 %i.cpd, ptr %i.cpf, align 2, !tbaa !69
  %indvars.iv.next631.i.1 = add nuw nsw i64 %indvars.iv630.i, 2 ; 2 uses
  %niter3727.next.1 = add i64 %niter3727, 2       ; 2 uses
  %niter3727.ncmp.1 = icmp eq i64 %niter3727.next.1, %unroll_iter3726
  br i1 %niter3727.ncmp.1, label %horizontal_fill.exit357.i.loopexit3470.unr-lcssa, label %bb.qa, !llvm.loop !181

bb.qb:                                            ; preds = %bb.py
  %i.cpg = sext i32 %.0304549.i to i64
  %i.cph = getelementptr inbounds i8, ptr %.4580.i, i64 %i.cpg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cph, ptr noundef nonnull align 1 dereferenceable(1) %.3296.i, i64 %i.ckl, i1 false)
  br label %horizontal_fill.exit357.i

horizontal_fill.exit357.i.loopexit3470.unr-lcssa: ; preds = %bb.qa
  %lcmp.mod3724.not = icmp eq i64 %xtraiter3723, 0
  br i1 %lcmp.mod3724.not, label %horizontal_fill.exit357.i, label %.epil.preheader3722

.epil.preheader3722:                              ; preds = %horizontal_fill.exit357.i.loopexit3470.unr-lcssa, %.lr.ph542.i
  %indvars.iv630.i.epil.init = phi i64 [ 0, %.lr.ph542.i ], [ %indvars.iv.next631.i.1, %horizontal_fill.exit357.i.loopexit3470.unr-lcssa ]
  %.sroa.4453.0540.i.epil.init = phi i32 [ 0, %.lr.ph542.i ], [ %i.cpb, %horizontal_fill.exit357.i.loopexit3470.unr-lcssa ] ; 2 uses
  %lcmp.mod3725 = trunc i32 %i.cnx to i1
  call void @llvm.assume(i1 %lcmp.mod3725)
  %i.cpi = lshr i32 %.sroa.4453.0540.i.epil.init, 3
  %i.cpj = zext nneg i32 %i.cpi to i64
  %i.cpk = getelementptr inbounds nuw i8, ptr %.3296.i, i64 %i.cpj
  %i.cpl = load i32, ptr %i.cpk, align 1, !tbaa !80
  %i.cpm = call i32 @llvm.bswap.i32(i32 %i.cpl)
  %i.cpn = and i32 %.sroa.4453.0540.i.epil.init, 7
  %i.cpo = shl i32 %i.cpm, %i.cpn
  %i.cpp = lshr i32 %i.cpo, %i.coc
  %i.cpq = shl nuw nsw i32 %i.cpp, %i.cod
  %i.cpr = trunc i32 %i.cpq to i16
  %i.cps = getelementptr inbounds nuw [2 x i8], ptr %.4580.i, i64 %indvars.iv630.i.epil.init
  store i16 %i.cpr, ptr %i.cps, align 2, !tbaa !69
  br label %horizontal_fill.exit357.i

horizontal_fill.exit357.i:                        ; preds = %.epil.preheader3722, %horizontal_fill.exit357.i.loopexit3470.unr-lcssa, %.lr.ph544.i, %.lr.ph546.i, %.lr.ph548.i, %middle.block3363, %bb.qb, %bb.pz
  %i.cpt = getelementptr inbounds nuw i8, ptr %.3296.i, i64 %i.ckl
  br label %horizontal_fill.exit.i

bb.qc:                                            ; preds = %bb.pv
end_hunk_0
