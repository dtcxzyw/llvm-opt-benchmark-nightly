Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 157
begin_hunk_0_@process:bb.a
  %.pre1268 = add nsw i32 %i.lni, 4
  br label %.lr.ph1049.i

.lr.ph1049.i:                                     ; preds = %.preheader1026.i..lr.ph1049.i_crit_edge, %.lr.ph1038.i
  %.pre-phi1269 = phi i32 [ %.pre1268, %.preheader1026.i..lr.ph1049.i_crit_edge ], [ %i.lnk, %.lr.ph1038.i ] ; 2 uses
  %i.lny = add nsw i32 %i.lni, 6
  %i.lnz = sext i32 %i.lny to i64                 ; 4 uses
  br label %bb.ot

.lr.ph.i566:                                      ; preds = %.lr.ph.i566.preheader, %._crit_edge.i570
  %indvar5002 = phi i64 [ %indvar.next5003, %._crit_edge.i570 ], [ 0, %.lr.ph.i566.preheader ] ; 2 uses
  %indvars.iv1222.i = phi i64 [ %indvars.iv.next1223.i, %._crit_edge.i570 ], [ 4, %.lr.ph.i566.preheader ] ; 2 uses
  %indvars.iv1214.i = phi i32 [ %indvars.iv.next1215.i, %._crit_edge.i570 ], [ %indvars.iv1212.i, %.lr.ph.i566.preheader ] ; 2 uses
  %i.loa = zext i32 %indvars.iv1214.i to i64      ; 11 uses
  %.idx.i567 = mul nuw nsw i64 %indvars.iv1222.i, 544
  %i.lob = getelementptr inbounds nuw i8, ptr %i.lkb, i64 %.idx.i567 ; 16 uses
  %i.loc = getelementptr inbounds nuw i8, ptr %i.lob, i64 16 ; 7 uses
  br i1 %i.lnn, label %iter.check5026, label %.lr.ph.split.i

iter.check5026:                                   ; preds = %.lr.ph.i566
  br i1 %min.iters.check5007, label %_calc_gamma.exit.us.i.preheader, label %vector.memcheck5008

vector.memcheck5008:                              ; preds = %iter.check5026
  %i.lod = mul nuw nsw i64 %indvar5002, 544
  %i.loe = add i64 %i.lkj, %i.lod
  %i.lof = add nsw i64 %i.awy, %i.loa
  %i.log = shl nsw i64 %i.lof, 2
  %i.loh = add i64 %i.log, %.14125
  %i.loi = sub i64 %i.loh, %i.loe
  %diff.check5009 = icmp ugt i64 %i.loi, -128
  br i1 %diff.check5009, label %_calc_gamma.exit.us.i.preheader, label %vector.main.loop.iter.check5010

vector.main.loop.iter.check5010:                  ; preds = %vector.memcheck5008
  br i1 %min.iters.check5011, label %vec.epilog.ph5030, label %vector.ph5012

vector.ph5012:                                    ; preds = %vector.main.loop.iter.check5010
  %i.loj = add nuw nsw i64 %n.vec5013, %i.loa
  %i.lok = getelementptr i8, ptr %i.loc, i64 %i.lnp
  %i.lol = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.loa ; 4 uses
  %i.lom = getelementptr inbounds nuw i8, ptr %i.lol, i64 32
  %i.lon = getelementptr inbounds nuw i8, ptr %i.lol, i64 64
  %i.loo = getelementptr inbounds nuw i8, ptr %i.lol, i64 96
  %wide.load5019 = load <8 x float>, ptr %i.lol, align 4, !tbaa !12, !alias.scope !543
  %wide.load5020 = load <8 x float>, ptr %i.lom, align 4, !tbaa !12, !alias.scope !543
  %wide.load5021 = load <8 x float>, ptr %i.lon, align 4, !tbaa !12, !alias.scope !543
  %wide.load5022 = load <8 x float>, ptr %i.loo, align 4, !tbaa !12, !alias.scope !543
  %i.lop = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5019, %broadcast.splat5015
  %i.loq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5020, %broadcast.splat5015
  %i.lor = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5021, %broadcast.splat5015
  %i.los = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5022, %broadcast.splat5015
  %i.lot = getelementptr i8, ptr %i.lob, i64 48
  %i.lou = getelementptr i8, ptr %i.lob, i64 80
  %i.lov = getelementptr i8, ptr %i.lob, i64 112
  store <8 x float> %i.lop, ptr %i.loc, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.loq, ptr %i.lot, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.lor, ptr %i.lou, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.los, ptr %i.lov, align 16, !tbaa !12, !noalias !542
  br i1 %i.lns, label %middle.block5024, label %vector.body5016.1

vector.body5016.1:                                ; preds = %vector.ph5012
  %next.gep5018.1 = getelementptr i8, ptr %i.lob, i64 144
  %i.low = getelementptr inbounds nuw [4 x i8], ptr %i.lkk, i64 %i.loa ; 4 uses
  %i.lox = getelementptr inbounds nuw i8, ptr %i.low, i64 32
  %i.loy = getelementptr inbounds nuw i8, ptr %i.low, i64 64
  %i.loz = getelementptr inbounds nuw i8, ptr %i.low, i64 96
  %wide.load5019.1 = load <8 x float>, ptr %i.low, align 4, !tbaa !12, !alias.scope !543
  %wide.load5020.1 = load <8 x float>, ptr %i.lox, align 4, !tbaa !12, !alias.scope !543
  %wide.load5021.1 = load <8 x float>, ptr %i.loy, align 4, !tbaa !12, !alias.scope !543
  %wide.load5022.1 = load <8 x float>, ptr %i.loz, align 4, !tbaa !12, !alias.scope !543
  %i.lpa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5019.1, %broadcast.splat5015
  %i.lpb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5020.1, %broadcast.splat5015
  %i.lpc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5021.1, %broadcast.splat5015
  %i.lpd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5022.1, %broadcast.splat5015
  %i.lpe = getelementptr i8, ptr %i.lob, i64 176
  %i.lpf = getelementptr i8, ptr %i.lob, i64 208
  %i.lpg = getelementptr i8, ptr %i.lob, i64 240
  store <8 x float> %i.lpa, ptr %next.gep5018.1, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.lpb, ptr %i.lpe, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.lpc, ptr %i.lpf, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.lpd, ptr %i.lpg, align 16, !tbaa !12, !noalias !542
  br i1 %i.lnt, label %middle.block5024, label %vector.body5016.2

vector.body5016.2:                                ; preds = %vector.body5016.1
  %next.gep5018.2 = getelementptr i8, ptr %i.lob, i64 272
  %i.lph = getelementptr inbounds nuw [4 x i8], ptr %i.lkl, i64 %i.loa ; 4 uses
  %i.lpi = getelementptr inbounds nuw i8, ptr %i.lph, i64 32
  %i.lpj = getelementptr inbounds nuw i8, ptr %i.lph, i64 64
  %i.lpk = getelementptr inbounds nuw i8, ptr %i.lph, i64 96
  %wide.load5019.2 = load <8 x float>, ptr %i.lph, align 4, !tbaa !12, !alias.scope !543
  %wide.load5020.2 = load <8 x float>, ptr %i.lpi, align 4, !tbaa !12, !alias.scope !543
  %wide.load5021.2 = load <8 x float>, ptr %i.lpj, align 4, !tbaa !12, !alias.scope !543
  %wide.load5022.2 = load <8 x float>, ptr %i.lpk, align 4, !tbaa !12, !alias.scope !543
  %i.lpl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5019.2, %broadcast.splat5015
  %i.lpm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5020.2, %broadcast.splat5015
  %i.lpn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5021.2, %broadcast.splat5015
  %i.lpo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5022.2, %broadcast.splat5015
  %i.lpp = getelementptr i8, ptr %i.lob, i64 304
  %i.lpq = getelementptr i8, ptr %i.lob, i64 336
  %i.lpr = getelementptr i8, ptr %i.lob, i64 368
  store <8 x float> %i.lpl, ptr %next.gep5018.2, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.lpm, ptr %i.lpp, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.lpn, ptr %i.lpq, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.lpo, ptr %i.lpr, align 16, !tbaa !12, !noalias !542
  br i1 %i.lnu, label %middle.block5024, label %vector.body5016.3

vector.body5016.3:                                ; preds = %vector.body5016.2
  %next.gep5018.3 = getelementptr i8, ptr %i.lob, i64 400
  %i.lps = getelementptr inbounds nuw [4 x i8], ptr %i.lkm, i64 %i.loa ; 4 uses
  %i.lpt = getelementptr inbounds nuw i8, ptr %i.lps, i64 32
  %i.lpu = getelementptr inbounds nuw i8, ptr %i.lps, i64 64
  %i.lpv = getelementptr inbounds nuw i8, ptr %i.lps, i64 96
  %wide.load5019.3 = load <8 x float>, ptr %i.lps, align 4, !tbaa !12, !alias.scope !543
  %wide.load5020.3 = load <8 x float>, ptr %i.lpt, align 4, !tbaa !12, !alias.scope !543
  %wide.load5021.3 = load <8 x float>, ptr %i.lpu, align 4, !tbaa !12, !alias.scope !543
  %wide.load5022.3 = load <8 x float>, ptr %i.lpv, align 4, !tbaa !12, !alias.scope !543
  %i.lpw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5019.3, %broadcast.splat5015
  %i.lpx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5020.3, %broadcast.splat5015
  %i.lpy = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5021.3, %broadcast.splat5015
  %i.lpz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5022.3, %broadcast.splat5015
  %i.lqa = getelementptr i8, ptr %i.lob, i64 432
  %i.lqb = getelementptr i8, ptr %i.lob, i64 464
  %i.lqc = getelementptr i8, ptr %i.lob, i64 496
  store <8 x float> %i.lpw, ptr %next.gep5018.3, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.lpx, ptr %i.lqa, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.lpy, ptr %i.lqb, align 16, !tbaa !12, !noalias !542
  store <8 x float> %i.lpz, ptr %i.lqc, align 16, !tbaa !12, !noalias !542
  br label %middle.block5024

middle.block5024:                                 ; preds = %vector.body5016.3, %vector.body5016.2, %vector.body5016.1, %vector.ph5012
  br i1 %cmp.n5025, label %._crit_edge.i570, label %vec.epilog.iter.check5027

vec.epilog.iter.check5027:                        ; preds = %middle.block5024
  br i1 %min.epilog.iters.check5029, label %_calc_gamma.exit.us.i.preheader, label %vec.epilog.ph5030, !prof !545

vec.epilog.ph5030:                                ; preds = %vector.main.loop.iter.check5010, %vec.epilog.iter.check5027
  %vec.epilog.resume.val5031 = phi i64 [ %n.vec5013, %vec.epilog.iter.check5027 ], [ 0, %vector.main.loop.iter.check5010 ]
  %i.lqd = add nuw nsw i64 %n.vec5032, %i.loa
  %i.lqe = getelementptr i8, ptr %i.loc, i64 %i.lnv
  %invariant.gep5336 = getelementptr [4 x i8], ptr %i.awz, i64 %i.loa
  br label %vec.epilog.vector.body5035

vec.epilog.vector.body5035:                       ; preds = %vec.epilog.vector.body5035, %vec.epilog.ph5030
  %index5036 = phi i64 [ %vec.epilog.resume.val5031, %vec.epilog.ph5030 ], [ %index.next5039, %vec.epilog.vector.body5035 ] ; 3 uses
  %i.lqf = shl i64 %index5036, 2
  %next.gep5037 = getelementptr i8, ptr %i.loc, i64 %i.lqf
  %gep5337 = getelementptr [4 x i8], ptr %invariant.gep5336, i64 %index5036
  %wide.load5038 = load <8 x float>, ptr %gep5337, align 4, !tbaa !12, !alias.scope !543
  %i.lqg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5038, %broadcast.splat5034
  store <8 x float> %i.lqg, ptr %next.gep5037, align 16, !tbaa !12, !noalias !542
  %index.next5039 = add nuw i64 %index5036, 8     ; 2 uses
  %i.lqh = icmp eq i64 %index.next5039, %n.vec5032
  br i1 %i.lqh, label %vec.epilog.middle.block5040, label %vec.epilog.vector.body5035, !llvm.loop !326

vec.epilog.middle.block5040:                      ; preds = %vec.epilog.vector.body5035
  br i1 %cmp.n5041, label %._crit_edge.i570, label %_calc_gamma.exit.us.i.preheader

_calc_gamma.exit.us.i.preheader:                  ; preds = %iter.check5026, %vector.memcheck5008, %vec.epilog.iter.check5027, %vec.epilog.middle.block5040
  %indvars.iv1219.i.ph = phi i64 [ %i.loa, %iter.check5026 ], [ %i.loa, %vector.memcheck5008 ], [ %i.loj, %vec.epilog.iter.check5027 ], [ %i.lqd, %vec.epilog.middle.block5040 ]
  %.09161034.us.i.ph = phi ptr [ %i.loc, %iter.check5026 ], [ %i.loc, %vector.memcheck5008 ], [ %i.lok, %vec.epilog.iter.check5027 ], [ %i.lqe, %vec.epilog.middle.block5040 ]
  %.09201032.us.i.ph = phi i32 [ 4, %iter.check5026 ], [ 4, %vector.memcheck5008 ], [ %i.lnr, %vec.epilog.iter.check5027 ], [ %i.lnx, %vec.epilog.middle.block5040 ]
  br label %_calc_gamma.exit.us.i

_calc_gamma.exit.us.i:                            ; preds = %_calc_gamma.exit.us.i.preheader, %_calc_gamma.exit.us.i
  %indvars.iv1219.i = phi i64 [ %indvars.iv.next1220.i, %_calc_gamma.exit.us.i ], [ %indvars.iv1219.i.ph, %_calc_gamma.exit.us.i.preheader ] ; 2 uses
  %.09161034.us.i = phi ptr [ %i.lqm, %_calc_gamma.exit.us.i ], [ %.09161034.us.i.ph, %_calc_gamma.exit.us.i.preheader ] ; 2 uses
  %.09201032.us.i = phi i32 [ %i.lql, %_calc_gamma.exit.us.i ], [ %.09201032.us.i.ph, %_calc_gamma.exit.us.i.preheader ]
  %i.lqi = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %indvars.iv1219.i
  %i.lqj = load float, ptr %i.lqi, align 4, !tbaa !12, !alias.scope !543
  %i.lqk = fmul reassoc nsz arcp contract afn float %i.lqj, %i.anw
  store float %i.lqk, ptr %.09161034.us.i, align 4, !tbaa !12, !noalias !542
  %i.lql = add nuw nsw i32 %.09201032.us.i, 1     ; 2 uses
  %i.lqm = getelementptr inbounds nuw i8, ptr %.09161034.us.i, i64 4
  %indvars.iv.next1220.i = add nuw nsw i64 %indvars.iv1219.i, 1
  %i.lqn = icmp slt i32 %i.lql, %i.lnk
  br i1 %i.lqn, label %_calc_gamma.exit.us.i, label %._crit_edge.i570, !llvm.loop !327

._crit_edge.i570:                                 ; preds = %_calc_gamma.exit.i, %_calc_gamma.exit.us.i, %middle.block5024, %vec.epilog.middle.block5040
  %indvars.iv.next1223.i = add nuw nsw i64 %indvars.iv1222.i, 1 ; 2 uses
  %indvars.iv.next1215.i = add i32 %indvars.iv1214.i, %i.bo
  %exitcond.not = icmp eq i64 %indvars.iv.next1223.i, %smax1153
  %indvar.next5003 = add i64 %indvar5002, 1
  br i1 %exitcond.not, label %.preheader1026.i, label %.lr.ph.i566

.lr.ph.split.i:                                   ; preds = %.lr.ph.i566, %_calc_gamma.exit.i
  %indvars.iv1216.i = phi i64 [ %indvars.iv.next1217.i, %_calc_gamma.exit.i ], [ %i.loa, %.lr.ph.i566 ] ; 2 uses
  %.09161034.i = phi ptr [ %i.lre, %_calc_gamma.exit.i ], [ %i.loc, %.lr.ph.i566 ] ; 2 uses
  %.09201032.i = phi i32 [ %i.lrd, %_calc_gamma.exit.i ], [ 4, %.lr.ph.i566 ]
  %i.lqo = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %indvars.iv1216.i
  %i.lqp = load float, ptr %i.lqo, align 4, !tbaa !12, !alias.scope !543
  %.reass.i568 = fmul reassoc nsz arcp contract afn float %invariant.op.i553, %i.lqp ; 4 uses
  %i.lqq = fcmp reassoc nsz arcp contract afn olt float %.reass.i568, 0.000000e+00
  br i1 %i.lqq, label %_calc_gamma.exit.i, label %bb.or

bb.or:                                            ; preds = %.lr.ph.split.i
  %i.lqr = fcmp reassoc nsz arcp contract afn ogt float %.reass.i568, f0x477FFEFD
  br i1 %i.lqr, label %_calc_gamma.exit.i, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.lqs = fptosi float %.reass.i568 to i32       ; 2 uses
  %i.lqt = sitofp reassoc nsz arcp contract afn i32 %i.lqs to float
  %i.lqu = fsub reassoc nsz arcp contract afn float %.reass.i568, %i.lqt
  %i.lqv = zext nneg i32 %i.lqs to i64
  %i.lqw = getelementptr inbounds nuw [4 x i8], ptr %i.lnm, i64 %i.lqv ; 2 uses
  %i.lqx = load float, ptr %i.lqw, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %i.lqy = getelementptr inbounds nuw i8, ptr %i.lqw, i64 4
  %i.lqz = load float, ptr %i.lqy, align 4, !tbaa !12, !noalias !542
  %i.lra = fsub reassoc nsz arcp contract afn float %i.lqz, %i.lqx
  %i.lrb = fmul reassoc nsz arcp contract afn float %i.lra, %i.lqu
  %i.lrc = fadd reassoc nsz arcp contract afn float %i.lrb, %i.lqx
  br label %_calc_gamma.exit.i

_calc_gamma.exit.i:                               ; preds = %bb.os, %bb.or, %.lr.ph.split.i
  %.1.i.i569 = phi nsz float [ 1.000000e+00, %bb.or ], [ %i.lrc, %bb.os ], [ 0.000000e+00, %.lr.ph.split.i ]
  store float %.1.i.i569, ptr %.09161034.i, align 4, !tbaa !12, !noalias !542
  %i.lrd = add nuw nsw i32 %.09201032.i, 1        ; 2 uses
  %i.lre = getelementptr inbounds nuw i8, ptr %.09161034.i, i64 4
  %indvars.iv.next1217.i = add nuw nsw i64 %indvars.iv1216.i, 1
  %i.lrf = icmp slt i32 %i.lrd, %i.lnk
  br i1 %i.lrf, label %.lr.ph.split.i, label %._crit_edge.i570

.preheader1025.i:                                 ; preds = %._crit_edge1047.i
  br i1 %i.lla, label %.preheader1019.lr.ph.i, label %._crit_edge1060.i

.preheader1019.lr.ph.i:                           ; preds = %.preheader1025.i
  %i.lrg = icmp sgt i32 %i.lnh, 0
  br i1 %i.lrg, label %.preheader1019.i.preheader, label %.lr.ph1059.i

.preheader1019.i.preheader:                       ; preds = %.preheader1019.lr.ph.i
  %i.lrh = add nsw i64 %i.lnd, -3                 ; 3 uses
  %min.iters.check4897 = icmp ult i64 %i.lrh, 8
  %n.vec4899 = and i64 %i.lrh, -8                 ; 3 uses
  %i.lri = or disjoint i64 %n.vec4899, 4
  %cmp.n4922 = icmp eq i64 %i.lrh, %n.vec4899
  br label %.preheader1019.i

bb.ot:                                            ; preds = %._crit_edge1047.i, %.lr.ph1049.i
  %indvars.iv1231.i = phi i64 [ 2, %.lr.ph1049.i ], [ %indvars.iv.next1232.i, %._crit_edge1047.i ] ; 5 uses
  %indvars.iv1231.tr.i = trunc nuw i64 %indvars.iv1231.i to i32
  %i.lrj = shl i32 %indvars.iv1231.tr.i, 2
  %i.lrk = and i32 %i.lrj, 28                     ; 2 uses
  %i.lrl = lshr i32 %.fr1070, %i.lrk              ; 2 uses
  %i.lrm = and i32 %i.lrl, 1                      ; 2 uses
  %i.lrn = icmp slt i32 %i.lrm, %.pre-phi1269
  br i1 %i.lrn, label %.lr.ph1041.i, label %._crit_edge1042.i

.lr.ph1041.i:                                     ; preds = %bb.ot
  %i.lro = mul nuw nsw i64 %indvars.iv1231.i, 136 ; 3 uses
  %i.lrp = getelementptr inbounds nuw [4 x i8], ptr %i.lkb, i64 %i.lro ; 2 uses
  %i.lrq = getelementptr inbounds nuw [4 x i8], ptr %i.ljv, i64 %i.lro ; 2 uses
  %i.lrr = getelementptr inbounds nuw [4 x i8], ptr %i.ljx, i64 %i.lro ; 2 uses
  %i.lrs = or disjoint i32 %i.lrm, 2
  %i.lrt = zext nneg i32 %i.lrs to i64            ; 4 uses
  %i.lru = and i32 %i.lrl, 1
  %i.lrv = zext nneg i32 %i.lru to i64            ; 2 uses
  %i.lrw = or disjoint i64 %i.lrv, 4
  %i.lrx = call i64 @llvm.smax.i64(i64 %i.lnz, i64 %i.lrw)
  %i.lry = add nsw i64 %i.lrx, -3
  %i.lrz = sub i64 %i.lry, %i.lrv                 ; 2 uses
  %min.iters.check4957 = icmp ult i64 %i.lrz, 16
  br i1 %min.iters.check4957, label %scalar.ph4956.preheader, label %vector.ph4958

scalar.ph4956.preheader:                          ; preds = %vector.body4963, %.lr.ph1041.i
  %indvars.iv1225.i.ph = phi i64 [ %i.lrt, %.lr.ph1041.i ], [ %i.lsg, %vector.body4963 ]
  br label %scalar.ph4956

vector.ph4958:                                    ; preds = %.lr.ph1041.i
  %i.lsa = lshr i64 %i.lrz, 1
  %i.lsb = add nuw nsw i64 %i.lsa, 1              ; 2 uses
  %i.lsc = and i64 %i.lsb, 7                      ; 2 uses
  %i.lsd = icmp eq i64 %i.lsc, 0
  %i.lse = select i1 %i.lsd, i64 8, i64 %i.lsc
  %n.vec4959 = sub nsw i64 %i.lsb, %i.lse         ; 2 uses
  %i.lsf = shl i64 %n.vec4959, 1
  %i.lsg = add i64 %i.lsf, %i.lrt
  %broadcast.splatinsert4960 = insertelement <8 x i64> poison, i64 %i.lrt, i64 0
  %broadcast.splat4961 = shufflevector <8 x i64> %broadcast.splatinsert4960, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4962 = add nuw nsw <8 x i64> %broadcast.splat4961, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep5338 = getelementptr [4 x i8], ptr %i.lrp, i64 %i.lrt
  br label %vector.body4963

vector.body4963:                                  ; preds = %vector.body4963, %vector.ph4958
  %index4964 = phi i64 [ 0, %vector.ph4958 ], [ %index.next4994, %vector.body4963 ] ; 2 uses
  %vec.ind4965 = phi <8 x i64> [ %induction4962, %vector.ph4958 ], [ %vec.ind.next4995, %vector.body4963 ] ; 3 uses
  %.idx = shl nuw i64 %index4964, 3
  %gep5339 = getelementptr i8, ptr %invariant.gep5338, i64 %.idx ; 9 uses
  %i.lsh = getelementptr inbounds i8, ptr %gep5339, i64 -548
  %wide.vec4966 = load <16 x float>, ptr %i.lsh, align 4, !tbaa !12, !noalias !542
  %strided.vec4967 = shufflevector <16 x float> %wide.vec4966, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lsi = getelementptr inbounds i8, ptr %gep5339, i64 -544
  %wide.vec4968 = load <16 x float>, ptr %i.lsi, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %strided.vec4969 = shufflevector <16 x float> %wide.vec4968, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4970 = shufflevector <16 x float> %wide.vec4968, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.lsj = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4970, %strided.vec4967
  %i.lsk = getelementptr inbounds nuw i8, ptr %gep5339, i64 540
  %wide.vec4971 = load <16 x float>, ptr %i.lsk, align 4, !tbaa !12, !noalias !542
  %strided.vec4972 = shufflevector <16 x float> %wide.vec4971, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lsl = fadd reassoc nsz arcp contract afn <8 x float> %i.lsj, %strided.vec4972
  %i.lsm = getelementptr inbounds nuw i8, ptr %gep5339, i64 544
  %wide.vec4973 = load <16 x float>, ptr %i.lsm, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %strided.vec4974 = shufflevector <16 x float> %wide.vec4973, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec4975 = shufflevector <16 x float> %wide.vec4973, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.lsn = fadd reassoc nsz arcp contract afn <8 x float> %i.lsl, %strided.vec4975
  %i.lso = fmul reassoc nsz arcp contract afn <8 x float> %i.lsn, splat (float 6.250000e-02)
  %wide.vec4976 = load <16 x float>, ptr %gep5339, align 4, !tbaa !12, !noalias !542
  %strided.vec4977 = shufflevector <16 x float> %wide.vec4976, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 7 uses
  %i.lsp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4977, splat (float 2.500000e-01)
  %i.lsq = fadd reassoc nsz arcp contract afn <8 x float> %i.lso, %i.lsp ; 2 uses
  %wide.gep4978 = getelementptr inbounds nuw [4 x i8], ptr %i.lrq, <8 x i64> %vec.ind4965
  %i.lsr = getelementptr inbounds i8, ptr %gep5339, i64 -8
  %wide.vec4979 = load <16 x float>, ptr %i.lsr, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %strided.vec4980 = shufflevector <16 x float> %wide.vec4979, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4981 = shufflevector <16 x float> %wide.vec4979, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.lss = getelementptr inbounds nuw i8, ptr %gep5339, i64 4
  %wide.vec4982 = load <16 x float>, ptr %i.lss, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %strided.vec4983 = shufflevector <16 x float> %wide.vec4982, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec4984 = shufflevector <16 x float> %wide.vec4982, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.lst = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4984, %strided.vec4980
  %i.lsu = fmul reassoc nsz arcp contract afn <8 x float> %i.lst, splat (float 2.500000e-01)
  %i.lsv = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4981, %strided.vec4977
  %i.lsw = fadd reassoc nsz arcp contract afn <8 x float> %i.lsv, %strided.vec4983
  %i.lsx = fmul reassoc nsz arcp contract afn <8 x float> %i.lsw, splat (float 5.000000e-01)
  %i.lsy = fsub reassoc nsz arcp contract afn <8 x float> %i.lsx, %i.lsu ; 6 uses
  %i.lsz = fmul reassoc nsz arcp contract afn <8 x float> %i.lsy, splat (float 5.000000e-01)
  %i.lta = fadd reassoc nsz arcp contract afn <8 x float> %i.lsz, %i.lsq
  %i.ltb = fmul reassoc nsz arcp contract afn <8 x float> %i.lta, splat (float 1.750000e+00)
  %i.ltc = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec4977, %i.ltb
  %i.ltd = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.lsy, zeroinitializer
  %i.lte = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.lsy, splat (float 1.000000e+00)
  %i.ltf = select reassoc nsz arcp contract afn <8 x i1> %i.lte, <8 x float> %i.lsy, <8 x float> splat (float 1.000000e+00)
  %i.ltg = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.lsy, <8 x float> %strided.vec4981)
  %i.lth = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lsy, <8 x float> %strided.vec4981)
  %i.lti = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec4983, <8 x float> %i.lth)
  %i.ltj = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ltg, <8 x float> %i.lti)
  %predphi4985 = select reassoc nsz arcp contract afn <8 x i1> %i.ltd, <8 x float> zeroinitializer, <8 x float> %i.ltf
  %predphi4986 = select reassoc nsz arcp contract afn <8 x i1> %i.ltc, <8 x float> %predphi4985, <8 x float> %i.ltj
  %i.ltk = fsub reassoc nsz arcp contract afn <8 x float> %predphi4986, %strided.vec4977
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ltk, <8 x ptr> align 4 %wide.gep4978, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !542
  %wide.gep4987 = getelementptr inbounds nuw [4 x i8], ptr %i.lrr, <8 x i64> %vec.ind4965
  %i.ltl = getelementptr inbounds i8, ptr %gep5339, i64 -1088
  %wide.vec4988 = load <16 x float>, ptr %i.ltl, align 4, !tbaa !12, !noalias !542
  %strided.vec4989 = shufflevector <16 x float> %wide.vec4988, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ltm = getelementptr inbounds nuw i8, ptr %gep5339, i64 1088
  %wide.vec4990 = load <16 x float>, ptr %i.ltm, align 4, !tbaa !12, !noalias !542
  %strided.vec4991 = shufflevector <16 x float> %wide.vec4990, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ltn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4991, %strided.vec4989
  %i.lto = fmul reassoc nsz arcp contract afn <8 x float> %i.ltn, splat (float 2.500000e-01)
  %i.ltp = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4969, %strided.vec4977
  %i.ltq = fadd reassoc nsz arcp contract afn <8 x float> %i.ltp, %strided.vec4974
  %i.ltr = fmul reassoc nsz arcp contract afn <8 x float> %i.ltq, splat (float 5.000000e-01)
  %i.lts = fsub reassoc nsz arcp contract afn <8 x float> %i.ltr, %i.lto ; 6 uses
  %i.ltt = fmul reassoc nsz arcp contract afn <8 x float> %i.lts, splat (float 5.000000e-01)
  %i.ltu = fadd reassoc nsz arcp contract afn <8 x float> %i.ltt, %i.lsq
  %i.ltv = fmul reassoc nsz arcp contract afn <8 x float> %i.ltu, splat (float 1.750000e+00)
  %i.ltw = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec4977, %i.ltv
  %i.ltx = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.lts, zeroinitializer
  %i.lty = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.lts, splat (float 1.000000e+00)
  %i.ltz = select reassoc nsz arcp contract afn <8 x i1> %i.lty, <8 x float> %i.lts, <8 x float> splat (float 1.000000e+00)
  %i.lua = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.lts, <8 x float> %strided.vec4969)
  %i.lub = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lts, <8 x float> %strided.vec4969)
  %i.luc = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec4974, <8 x float> %i.lub)
  %i.lud = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lua, <8 x float> %i.luc)
  %predphi4992 = select reassoc nsz arcp contract afn <8 x i1> %i.ltx, <8 x float> zeroinitializer, <8 x float> %i.ltz
  %predphi4993 = select reassoc nsz arcp contract afn <8 x i1> %i.ltw, <8 x float> %predphi4992, <8 x float> %i.lud
  %i.lue = fsub reassoc nsz arcp contract afn <8 x float> %predphi4993, %strided.vec4977
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.lue, <8 x ptr> align 4 %wide.gep4987, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !542
  %index.next4994 = add nuw i64 %index4964, 8     ; 2 uses
  %vec.ind.next4995 = add nuw nsw <8 x i64> %vec.ind4965, splat (i64 16)
  %i.luf = icmp eq i64 %index.next4994, %n.vec4959
  br i1 %i.luf, label %scalar.ph4956.preheader, label %vector.body4963, !llvm.loop !328

._crit_edge1042.i:                                ; preds = %bb.pb, %bb.ot
  %i.lug = or disjoint i32 %i.lrk, 2
  %i.luh = lshr i32 %.fr1070, %i.lug              ; 2 uses
  %i.lui = and i32 %i.luh, 1                      ; 2 uses
  %i.luj = icmp slt i32 %i.lui, %.pre-phi1269
  br i1 %i.luj, label %.lr.ph1046.i, label %._crit_edge1047.i

.lr.ph1046.i:                                     ; preds = %._crit_edge1042.i
  %i.luk = mul nuw nsw i64 %indvars.iv1231.i, 136 ; 3 uses
  %i.lul = getelementptr inbounds nuw [4 x i8], ptr %i.lkb, i64 %i.luk ; 2 uses
  %i.lum = getelementptr inbounds nuw [4 x i8], ptr %i.ljv, i64 %i.luk ; 2 uses
  %i.lun = getelementptr inbounds nuw [4 x i8], ptr %i.ljx, i64 %i.luk ; 2 uses
  %i.luo = or disjoint i32 %i.lui, 2
  %i.lup = zext nneg i32 %i.luo to i64            ; 4 uses
  %i.luq = and i32 %i.luh, 1
  %i.lur = zext nneg i32 %i.luq to i64            ; 2 uses
  %i.lus = or disjoint i64 %i.lur, 4
  %i.lut = call i64 @llvm.smax.i64(i64 %i.lnz, i64 %i.lus)
  %i.luu = add nsw i64 %i.lut, -3
  %i.luv = sub i64 %i.luu, %i.lur                 ; 2 uses
  %min.iters.check4925 = icmp ult i64 %i.luv, 16
  br i1 %min.iters.check4925, label %scalar.ph4924.preheader, label %vector.ph4926

scalar.ph4924.preheader:                          ; preds = %vector.body4931, %.lr.ph1046.i
  %indvars.iv1228.i.ph = phi i64 [ %i.lup, %.lr.ph1046.i ], [ %i.lvc, %vector.body4931 ]
  br label %scalar.ph4924

vector.ph4926:                                    ; preds = %.lr.ph1046.i
  %i.luw = lshr i64 %i.luv, 1
  %i.lux = add nuw nsw i64 %i.luw, 1              ; 2 uses
  %i.luy = and i64 %i.lux, 7                      ; 2 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.ovf = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4280, %strided.vec4282
  %i.ovg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ovf)
  %i.ovh = getelementptr inbounds nuw i8, ptr %i.ovb, i64 4
  %wide.vec4283 = load <8 x float>, ptr %i.ovh, align 4, !tbaa !12, !alias.scope !573, !noalias !542
  %strided.vec4284 = shufflevector <8 x float> %wide.vec4283, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ovi = getelementptr inbounds i8, ptr %i.ovb, i64 -4
  %wide.vec4285 = load <8 x float>, ptr %i.ovi, align 4, !tbaa !12, !alias.scope !573, !noalias !542 ; 2 uses
  %strided.vec4286 = shufflevector <8 x float> %wide.vec4285, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec4287 = shufflevector <8 x float> %wide.vec4285, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ovj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4284, %strided.vec4286
  %i.ovk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ovj)
  %i.ovl = fadd reassoc nsz arcp contract afn <4 x float> %i.ovk, splat (float 1.000000e+00) ; 2 uses
  %i.ovm = fadd reassoc nsz arcp contract afn <4 x float> %i.ovl, %i.ovg
  %i.ovn = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ovm ; 2 uses
  %i.ovo = getelementptr inbounds nuw i8, ptr %i.ovd, i64 8
  %wide.vec4288 = load <8 x float>, ptr %i.ovo, align 4, !tbaa !12, !alias.scope !572, !noalias !542
  %strided.vec4289 = shufflevector <8 x float> %wide.vec4288, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ovp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4289, %strided.vec4282
  %i.ovq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ovp)
  %i.ovr = fadd reassoc nsz arcp contract afn <4 x float> %i.ovl, %i.ovq
  %i.ovs = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ovr ; 2 uses
  %i.ovt = getelementptr inbounds i8, ptr %i.ovd, i64 -1088
  %wide.vec4290 = load <8 x float>, ptr %i.ovt, align 4, !tbaa !12, !alias.scope !572, !noalias !542
  %strided.vec4291 = shufflevector <8 x float> %wide.vec4290, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ovu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4291, %strided.vec4282
  %i.ovv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ovu)
  %i.ovw = getelementptr inbounds nuw i8, ptr %i.ovb, i64 544
  %wide.vec4292 = load <8 x float>, ptr %i.ovw, align 4, !tbaa !12, !alias.scope !573, !noalias !542
  %strided.vec4293 = shufflevector <8 x float> %wide.vec4292, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ovx = getelementptr inbounds i8, ptr %i.ovb, i64 -544
  %wide.vec4294 = load <8 x float>, ptr %i.ovx, align 4, !tbaa !12, !alias.scope !573, !noalias !542
  %strided.vec4295 = shufflevector <8 x float> %wide.vec4294, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ovy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4293, %strided.vec4295
  %i.ovz = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ovy)
  %i.owa = fadd reassoc nsz arcp contract afn <4 x float> %i.ovz, splat (float 1.000000e+00) ; 2 uses
  %i.owb = fadd reassoc nsz arcp contract afn <4 x float> %i.owa, %i.ovv
  %i.owc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.owb ; 2 uses
  %i.owd = getelementptr inbounds nuw i8, ptr %i.ovd, i64 1088
  %wide.vec4296 = load <8 x float>, ptr %i.owd, align 4, !tbaa !12, !alias.scope !572, !noalias !542
  %strided.vec4297 = shufflevector <8 x float> %wide.vec4296, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.owe = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4297, %strided.vec4282
  %i.owf = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.owe)
  %i.owg = fadd reassoc nsz arcp contract afn <4 x float> %i.owa, %i.owf
  %i.owh = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.owg ; 2 uses
  %i.owi = getelementptr inbounds i8, ptr %i.ovc, i64 -4
  %wide.vec4298 = load <8 x float>, ptr %i.owi, align 4, !tbaa !12, !alias.scope !574, !noalias !542
  %strided.vec4299 = shufflevector <8 x float> %wide.vec4298, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.owj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4286, %strided.vec4299
  %i.owk = fmul reassoc nsz arcp contract afn <4 x float> %i.owj, %i.ovn
  %i.owl = getelementptr inbounds nuw i8, ptr %i.ovc, i64 4
  %wide.vec4300 = load <8 x float>, ptr %i.owl, align 4, !tbaa !12, !alias.scope !574, !noalias !542
  %strided.vec4301 = shufflevector <8 x float> %wide.vec4300, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.owm = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4284, %strided.vec4301
  %i.own = fmul reassoc nsz arcp contract afn <4 x float> %i.owm, %i.ovs
  %i.owo = fadd reassoc nsz arcp contract afn <4 x float> %i.own, %i.owk
  %i.owp = getelementptr inbounds i8, ptr %i.ovc, i64 -544
  %wide.vec4302 = load <8 x float>, ptr %i.owp, align 4, !tbaa !12, !alias.scope !574, !noalias !542
  %strided.vec4303 = shufflevector <8 x float> %wide.vec4302, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.owq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4295, %strided.vec4303
  %i.owr = fmul reassoc nsz arcp contract afn <4 x float> %i.owq, %i.owc
  %i.ows = fadd reassoc nsz arcp contract afn <4 x float> %i.owo, %i.owr
  %i.owt = getelementptr inbounds nuw i8, ptr %i.ovc, i64 544
  %wide.vec4304 = load <8 x float>, ptr %i.owt, align 4, !tbaa !12, !alias.scope !574, !noalias !542
  %strided.vec4305 = shufflevector <8 x float> %wide.vec4304, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.owu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4293, %strided.vec4305
  %i.owv = fmul reassoc nsz arcp contract afn <4 x float> %i.owu, %i.owh
  %i.oww = fadd reassoc nsz arcp contract afn <4 x float> %i.ows, %i.owv
  %i.owx = fadd reassoc nsz arcp contract afn <4 x float> %i.ovs, %i.ovn
  %i.owy = fadd reassoc nsz arcp contract afn <4 x float> %i.owx, %i.owc
  %i.owz = fadd reassoc nsz arcp contract afn <4 x float> %i.owy, %i.owh
  %i.oxa = fdiv reassoc nsz arcp contract afn <4 x float> %i.oww, %i.owz
  %i.oxb = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec4287, %i.oxa
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.oxb, <4 x ptr> align 4 %wide.gep4278, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !574, !noalias !575
  %index.next4306 = add nuw i64 %index4276, 4     ; 2 uses
  %vec.ind.next4307 = add nuw nsw <4 x i64> %vec.ind4277, splat (i64 8)
  %i.oxc = icmp eq i64 %index.next4306, %n.vec4271
  br i1 %i.oxc, label %scalar.ph4260.preheader, label %vector.body4275, !llvm.loop !378

._crit_edge1162.i:                                ; preds = %scalar.ph4260, %.lr.ph1164.i
  %indvars.iv.next1305.i = add nuw nsw i64 %indvars.iv1304.i, 1 ; 2 uses
  %exitcond1162.not = icmp eq i64 %indvars.iv.next1305.i, %i.lma
  %indvar.next4259 = add i64 %indvar4258, 1
  br i1 %exitcond1162.not, label %._crit_edge1165.i.loopexit, label %.lr.ph1164.i

scalar.ph4260:                                    ; preds = %scalar.ph4260.preheader, %scalar.ph4260
  %indvars.iv1301.i = phi i64 [ %indvars.iv.next1302.i, %scalar.ph4260 ], [ %indvars.iv1301.i.ph, %scalar.ph4260.preheader ] ; 4 uses
  %i.oxd = getelementptr inbounds nuw [4 x i8], ptr %i.osz, i64 %indvars.iv1301.i ; 5 uses
  %i.oxe = getelementptr inbounds nuw [4 x i8], ptr %i.otd, i64 %indvars.iv1301.i ; 5 uses
  %i.oxf = getelementptr inbounds nuw [4 x i8], ptr %i.oth, i64 %indvars.iv1301.i ; 5 uses
  %i.oxg = load float, ptr %i.oxd, align 4, !tbaa !12, !noalias !542
  %i.oxh = load float, ptr %i.oxf, align 4, !tbaa !12, !noalias !542
  %i.oxi = getelementptr inbounds nuw i8, ptr %i.oxd, i64 4
  %i.oxj = load float, ptr %i.oxi, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %i.oxk = getelementptr inbounds i8, ptr %i.oxd, i64 -4
  %i.oxl = load float, ptr %i.oxk, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %i.oxm = fsub reassoc nsz arcp contract afn float %i.oxj, %i.oxl
  %i.oxn = getelementptr inbounds nuw i8, ptr %i.oxd, i64 544
  %i.oxo = load float, ptr %i.oxn, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %i.oxp = getelementptr inbounds i8, ptr %i.oxd, i64 -544
  %i.oxq = load float, ptr %i.oxp, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %i.oxr = fsub reassoc nsz arcp contract afn float %i.oxo, %i.oxq
  %i.oxs = insertelement <2 x float> poison, float %i.oxm, i64 0
  %i.oxt = insertelement <2 x float> %i.oxs, float %i.oxr, i64 1
  %i.oxu = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.oxt)
  %i.oxv = shufflevector <2 x float> %i.oxu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.oxw = fadd reassoc nsz arcp contract afn <4 x float> %i.oxv, splat (float 1.000000e+00)
  %i.oxx = getelementptr inbounds i8, ptr %i.oxf, i64 -8
  %i.oxy = getelementptr inbounds nuw i8, ptr %i.oxf, i64 8
  %i.oxz = getelementptr inbounds i8, ptr %i.oxf, i64 -1088
  %i.oya = getelementptr inbounds nuw i8, ptr %i.oxf, i64 1088
  %i.oyb = load float, ptr %i.oxx, align 4, !tbaa !12, !noalias !542
  %i.oyc = load float, ptr %i.oxy, align 4, !tbaa !12, !noalias !542
  %i.oyd = load float, ptr %i.oxz, align 4, !tbaa !12, !noalias !542
  %i.oye = load float, ptr %i.oya, align 4, !tbaa !12, !noalias !542
  %i.oyf = insertelement <4 x float> poison, float %i.oyc, i64 0
  %i.oyg = insertelement <4 x float> %i.oyf, float %i.oyb, i64 1
  %i.oyh = insertelement <4 x float> %i.oyg, float %i.oyd, i64 2
  %i.oyi = insertelement <4 x float> %i.oyh, float %i.oye, i64 3
  %i.oyj = insertelement <4 x float> poison, float %i.oxh, i64 0
  %i.oyk = shufflevector <4 x float> %i.oyj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oyl = fsub reassoc nsz arcp contract afn <4 x float> %i.oyi, %i.oyk
  %i.oym = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyl)
  %i.oyn = fadd reassoc nsz arcp contract afn <4 x float> %i.oxw, %i.oym
  %i.oyo = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oyn ; 2 uses
  %i.oyp = getelementptr inbounds i8, ptr %i.oxe, i64 -4
  %i.oyq = load float, ptr %i.oyp, align 4, !tbaa !12, !noalias !542
  %i.oyr = fsub reassoc nsz arcp contract afn float %i.oxl, %i.oyq
  %i.oys = getelementptr inbounds nuw i8, ptr %i.oxe, i64 4
  %i.oyt = load float, ptr %i.oys, align 4, !tbaa !12, !noalias !542
  %i.oyu = fsub reassoc nsz arcp contract afn float %i.oxj, %i.oyt
  %i.oyv = getelementptr inbounds i8, ptr %i.oxe, i64 -544
  %i.oyw = load float, ptr %i.oyv, align 4, !tbaa !12, !noalias !542
  %i.oyx = fsub reassoc nsz arcp contract afn float %i.oxq, %i.oyw
  %i.oyy = getelementptr inbounds nuw i8, ptr %i.oxe, i64 544
  %i.oyz = load float, ptr %i.oyy, align 4, !tbaa !12, !noalias !542
  %i.oza = fsub reassoc nsz arcp contract afn float %i.oxo, %i.oyz
  %i.ozb = insertelement <4 x float> poison, float %i.oyu, i64 0
  %i.ozc = insertelement <4 x float> %i.ozb, float %i.oyr, i64 1
  %i.ozd = insertelement <4 x float> %i.ozc, float %i.oyx, i64 2
  %i.oze = insertelement <4 x float> %i.ozd, float %i.oza, i64 3
  %i.ozf = fmul reassoc nsz arcp contract afn <4 x float> %i.oze, %i.oyo
  %i.ozg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ozf)
  %i.ozh = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.oyo)
  %i.ozi = fdiv reassoc nsz arcp contract afn float %i.ozg, %i.ozh
  %i.ozj = fsub reassoc nsz arcp contract afn float %i.oxg, %i.ozi
  store float %i.ozj, ptr %i.oxe, align 4, !tbaa !12, !noalias !542
  %indvars.iv.next1302.i = add nuw nsw i64 %indvars.iv1301.i, 2 ; 2 uses
  %i.ozk = icmp slt i64 %indvars.iv.next1302.i, %i.oar
  br i1 %i.ozk, label %scalar.ph4260, label %._crit_edge1162.i, !llvm.loop !379

._crit_edge1183.split.i:                          ; preds = %._crit_edge1176.i, %.lr.ph1182.i, %._crit_edge1168.i
  %i.ozl = add nuw nsw i32 %.08871185.i, 1
  %indvars.iv.next1213.i = add i32 %indvars.iv1212.i, 112
  %exitcond1316.not.i = icmp eq i32 %.08871185.i, %smax.i554
  %indvars.iv.next1119 = add nuw i32 %indvars.iv1118, 112
  %indvars.iv.next1122 = add i32 %indvars.iv1121, -112
  br i1 %exitcond1316.not.i, label %._crit_edge1187.i, label %bb.oq

.lr.ph1175.i:                                     ; preds = %.lr.ph1175.i.preheader, %._crit_edge1176.i
  %indvars.iv1311.i = phi i64 [ %indvars.iv.next1312.i, %._crit_edge1176.i ], [ %i.llv, %.lr.ph1175.i.preheader ] ; 2 uses
  %indvars.iv1307.i = phi i32 [ %indvars.iv.next1308.i, %._crit_edge1176.i ], [ %narrow.i, %.lr.ph1175.i.preheader ] ; 2 uses
  %i.ozm = trunc i64 %indvars.iv1311.i to i32
  %i.ozn = mul i32 %i.bo, %i.ozm
  %i.ozo = add i32 %i.ozn, %i.obq
  %i.ozp = shl nsw i32 %i.ozo, 2
  %i.ozq = zext nneg i32 %i.ozp to i64
  %i.ozr = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.ozq ; 6 uses
  %i.ozs = mul i32 %indvars.iv1307.i, 136
  %i.ozt = add i32 %.reass1178.i, %i.ozs
  %i.ozu = sext i32 %i.ozt to i64                 ; 3 uses
  %i.ozv = getelementptr inbounds [4 x i8], ptr %i.ljv, i64 %i.ozu ; 6 uses
  %i.ozw = getelementptr inbounds [4 x i8], ptr %i.ljx, i64 %i.ozu ; 6 uses
  %i.ozx = getelementptr inbounds [4 x i8], ptr %i.ljy, i64 %i.ozu ; 6 uses
  br i1 %i.obu, label %_calc_gamma.exit979.us.i.preheader, label %.lr.ph1175.split.i.preheader

.lr.ph1175.split.i.preheader:                     ; preds = %.lr.ph1175.i
  br i1 %min.iters.check4176, label %.lr.ph1175.split.i.preheader5234, label %vector.ph4200

vector.ph4200:                                    ; preds = %.lr.ph1175.split.i.preheader
  %i.ozy = getelementptr i8, ptr %i.ozx, i64 %i.ocd
  %i.ozz = getelementptr i8, ptr %i.ozw, i64 %i.ocd
  %i.paa = getelementptr i8, ptr %i.ozv, i64 %i.ocd
  %i.pab = getelementptr i8, ptr %i.ozr, i64 %i.oce
  br label %vector.body4204

vector.body4204:                                  ; preds = %vector.body4204, %vector.ph4200
  %index4205 = phi i64 [ 0, %vector.ph4200 ], [ %index.next4232, %vector.body4204 ] ; 3 uses
  %i.pac = shl i64 %index4205, 2                  ; 3 uses
  %next.gep4206 = getelementptr i8, ptr %i.ozx, i64 %i.pac
  %next.gep4207 = getelementptr i8, ptr %i.ozw, i64 %i.pac
  %next.gep4208 = getelementptr i8, ptr %i.ozv, i64 %i.pac
  %i.pad = shl i64 %index4205, 4
  %next.gep4209 = getelementptr i8, ptr %i.ozr, i64 %i.pad
  %wide.load4210 = load <8 x float>, ptr %next.gep4208, align 4, !tbaa !12, !noalias !542
  %i.pae = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4210, splat (float 6.553500e+04) ; 4 uses
  %i.paf = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.pae, zeroinitializer ; 2 uses
  %i.pag = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.pae, splat (float f0x477FFEFD)
  %i.pah = and <8 x i1> %i.paf, %i.pag            ; 3 uses
  %i.pai = fptosi <8 x float> %i.pae to <8 x i32> ; 2 uses
  %i.paj = sitofp reassoc nsz arcp contract afn <8 x i32> %i.pai to <8 x float>
  %i.pak = fsub reassoc nsz arcp contract afn <8 x float> %i.pae, %i.paj
  %i.pal = zext nneg <8 x i32> %i.pai to <8 x i64>
  %wide.gep4211 = getelementptr inbounds nuw [4 x i8], ptr %i.obt, <8 x i64> %i.pal ; 2 uses
  %wide.masked.gather4212 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4211, <8 x i1> %i.pah, <8 x float> poison), !tbaa !12, !noalias !542 ; 2 uses
  %wide.gep4213 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep4211, i64 4
  %wide.masked.gather4214 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4213, <8 x i1> %i.pah, <8 x float> poison), !tbaa !12, !noalias !542
  %i.pam = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather4214, %wide.masked.gather4212
  %i.pan = fmul reassoc nsz arcp contract afn <8 x float> %i.pam, %i.pak
  %i.pao = fadd reassoc nsz arcp contract afn <8 x float> %i.pan, %wide.masked.gather4212
  %predphi4215 = select <8 x i1> %i.pah, <8 x float> %i.pao, <8 x float> splat (float 1.000000e+00)
  %predphi4216 = select <8 x i1> %i.paf, <8 x float> %predphi4215, <8 x float> zeroinitializer
  %i.pap = fmul reassoc nsz arcp contract afn <8 x float> %predphi4216, %broadcast.splat4203
  %wide.load4217 = load <8 x float>, ptr %next.gep4207, align 4, !tbaa !12, !noalias !542
  %i.paq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4217, splat (float 6.553500e+04) ; 4 uses
  %i.par = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.paq, zeroinitializer ; 2 uses
  %i.pas = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.paq, splat (float f0x477FFEFD)
  %i.pat = and <8 x i1> %i.par, %i.pas            ; 3 uses
  %i.pau = fptosi <8 x float> %i.paq to <8 x i32> ; 2 uses
  %i.pav = sitofp reassoc nsz arcp contract afn <8 x i32> %i.pau to <8 x float>
  %i.paw = fsub reassoc nsz arcp contract afn <8 x float> %i.paq, %i.pav
  %i.pax = zext nneg <8 x i32> %i.pau to <8 x i64>
  %wide.gep4218 = getelementptr inbounds nuw [4 x i8], ptr %i.obt, <8 x i64> %i.pax ; 2 uses
  %wide.masked.gather4219 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4218, <8 x i1> %i.pat, <8 x float> poison), !tbaa !12, !noalias !542 ; 2 uses
  %wide.gep4220 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep4218, i64 4
  %wide.masked.gather4221 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4220, <8 x i1> %i.pat, <8 x float> poison), !tbaa !12, !noalias !542
  %i.pay = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather4221, %wide.masked.gather4219
  %i.paz = fmul reassoc nsz arcp contract afn <8 x float> %i.pay, %i.paw
  %i.pba = fadd reassoc nsz arcp contract afn <8 x float> %i.paz, %wide.masked.gather4219
  %predphi4222 = select <8 x i1> %i.pat, <8 x float> %i.pba, <8 x float> splat (float 1.000000e+00)
  %predphi4223 = select <8 x i1> %i.par, <8 x float> %predphi4222, <8 x float> zeroinitializer
  %i.pbb = fmul reassoc nsz arcp contract afn <8 x float> %predphi4223, %broadcast.splat4203
  %wide.load4224 = load <8 x float>, ptr %next.gep4206, align 4, !tbaa !12, !noalias !542
  %i.pbc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4224, splat (float 6.553500e+04) ; 4 uses
  %i.pbd = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.pbc, zeroinitializer ; 2 uses
  %i.pbe = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.pbc, splat (float f0x477FFEFD)
  %i.pbf = and <8 x i1> %i.pbd, %i.pbe            ; 3 uses
  %i.pbg = fptosi <8 x float> %i.pbc to <8 x i32> ; 2 uses
  %i.pbh = sitofp reassoc nsz arcp contract afn <8 x i32> %i.pbg to <8 x float>
  %i.pbi = fsub reassoc nsz arcp contract afn <8 x float> %i.pbc, %i.pbh
  %i.pbj = zext nneg <8 x i32> %i.pbg to <8 x i64>
  %wide.gep4225 = getelementptr inbounds nuw [4 x i8], ptr %i.obt, <8 x i64> %i.pbj ; 2 uses
  %wide.masked.gather4226 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4225, <8 x i1> %i.pbf, <8 x float> poison), !tbaa !12, !noalias !542 ; 2 uses
  %wide.gep4227 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep4225, i64 4
  %wide.masked.gather4228 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4227, <8 x i1> %i.pbf, <8 x float> poison), !tbaa !12, !noalias !542
  %i.pbk = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather4228, %wide.masked.gather4226
  %i.pbl = fmul reassoc nsz arcp contract afn <8 x float> %i.pbk, %i.pbi
  %i.pbm = fadd reassoc nsz arcp contract afn <8 x float> %i.pbl, %wide.masked.gather4226
  %predphi4229 = select nsz <8 x i1> %i.pbf, <8 x float> %i.pbm, <8 x float> splat (float 1.000000e+00)
  %predphi4230 = select nsz <8 x i1> %i.pbd, <8 x float> %predphi4229, <8 x float> zeroinitializer
  %i.pbn = fmul reassoc nsz arcp contract afn <8 x float> %predphi4230, %broadcast.splat4203
  %i.pbo = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pbn, <8 x float> zeroinitializer)
  %i.pbp = shufflevector <8 x float> %i.pap, <8 x float> %i.pbb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pbq = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pbp, <16 x float> zeroinitializer)
  %i.pbr = shufflevector <8 x float> %i.pbo, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec4231 = shufflevector <16 x float> %i.pbq, <16 x float> %i.pbr, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec4231, ptr %next.gep4209, align 4, !tbaa !12, !alias.scope !542
  %index.next4232 = add nuw i64 %index4205, 8     ; 2 uses
  %i.pbs = icmp eq i64 %index.next4232, %n.vec4201
  br i1 %i.pbs, label %middle.block4233, label %vector.body4204, !llvm.loop !380

middle.block4233:                                 ; preds = %vector.body4204
  br i1 %cmp.n4234, label %._crit_edge1176.i, label %.lr.ph1175.split.i.preheader5234

.lr.ph1175.split.i.preheader5234:                 ; preds = %.lr.ph1175.split.i.preheader, %middle.block4233
  %.01173.i.ph = phi i32 [ %i.obq, %.lr.ph1175.split.i.preheader ], [ %i.occ, %middle.block4233 ]
  %.08731172.i.ph = phi ptr [ %i.ozx, %.lr.ph1175.split.i.preheader ], [ %i.ozy, %middle.block4233 ]
  %.08741171.i.ph = phi ptr [ %i.ozw, %.lr.ph1175.split.i.preheader ], [ %i.ozz, %middle.block4233 ]
  %.08751170.i.ph = phi ptr [ %i.ozv, %.lr.ph1175.split.i.preheader ], [ %i.paa, %middle.block4233 ]
  %.08761169.i.ph = phi ptr [ %i.ozr, %.lr.ph1175.split.i.preheader ], [ %i.pab, %middle.block4233 ]
  br label %.lr.ph1175.split.i

_calc_gamma.exit979.us.i.preheader:               ; preds = %.lr.ph1175.i
  br i1 %min.iters.check4176, label %_calc_gamma.exit979.us.i.preheader5233, label %vector.ph4177

vector.ph4177:                                    ; preds = %_calc_gamma.exit979.us.i.preheader
  %i.pbt = getelementptr i8, ptr %i.ozx, i64 %i.och
  %i.pbu = getelementptr i8, ptr %i.ozw, i64 %i.och
  %i.pbv = getelementptr i8, ptr %i.ozv, i64 %i.och
  %i.pbw = getelementptr i8, ptr %i.ozr, i64 %i.oci
  br label %vector.body4181

vector.body4181:                                  ; preds = %vector.body4181, %vector.ph4177
  %index4182 = phi i64 [ 0, %vector.ph4177 ], [ %index.next4190, %vector.body4181 ] ; 3 uses
  %i.pbx = shl i64 %index4182, 2                  ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ozx, i64 %i.pbx
  %next.gep4183 = getelementptr i8, ptr %i.ozw, i64 %i.pbx
  %next.gep4184 = getelementptr i8, ptr %i.ozv, i64 %i.pbx
  %i.pby = shl i64 %index4182, 4
  %next.gep4185 = getelementptr i8, ptr %i.ozr, i64 %i.pby
  %wide.load4186 = load <8 x float>, ptr %next.gep4184, align 4, !tbaa !12, !noalias !542
  %wide.load4187 = load <8 x float>, ptr %next.gep4183, align 4, !tbaa !12, !noalias !542
  %wide.load4188 = load <8 x float>, ptr %next.gep, align 4, !tbaa !12, !noalias !542
  %i.pbz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4188, %broadcast.splat4180
  %i.pca = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pbz, <8 x float> zeroinitializer)
  %i.pcb = shufflevector <8 x float> %wide.load4186, <8 x float> %wide.load4187, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pcc = fmul reassoc nsz arcp contract afn <16 x float> %i.pcb, %i.avl
  %i.pcd = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pcc, <16 x float> zeroinitializer)
  %i.pce = shufflevector <8 x float> %i.pca, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec4189 = shufflevector <16 x float> %i.pcd, <16 x float> %i.pce, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec4189, ptr %next.gep4185, align 4, !tbaa !12, !alias.scope !542
  %index.next4190 = add nuw i64 %index4182, 8     ; 2 uses
  %i.pcf = icmp eq i64 %index.next4190, %n.vec4178
  br i1 %i.pcf, label %middle.block4191, label %vector.body4181, !llvm.loop !381

middle.block4191:                                 ; preds = %vector.body4181
  br i1 %cmp.n4192, label %._crit_edge1176.i, label %_calc_gamma.exit979.us.i.preheader5233

_calc_gamma.exit979.us.i.preheader5233:           ; preds = %_calc_gamma.exit979.us.i.preheader, %middle.block4191
  %.01173.us.i.ph = phi i32 [ %i.obq, %_calc_gamma.exit979.us.i.preheader ], [ %i.ocg, %middle.block4191 ]
  %.08731172.us.i.ph = phi ptr [ %i.ozx, %_calc_gamma.exit979.us.i.preheader ], [ %i.pbt, %middle.block4191 ]
  %.08741171.us.i.ph = phi ptr [ %i.ozw, %_calc_gamma.exit979.us.i.preheader ], [ %i.pbu, %middle.block4191 ]
  %.08751170.us.i.ph = phi ptr [ %i.ozv, %_calc_gamma.exit979.us.i.preheader ], [ %i.pbv, %middle.block4191 ]
  %.08761169.us.i.ph = phi ptr [ %i.ozr, %_calc_gamma.exit979.us.i.preheader ], [ %i.pbw, %middle.block4191 ]
  br label %_calc_gamma.exit979.us.i

_calc_gamma.exit979.us.i:                         ; preds = %_calc_gamma.exit979.us.i.preheader5233, %_calc_gamma.exit979.us.i
  %.01173.us.i = phi i32 [ %i.pcr, %_calc_gamma.exit979.us.i ], [ %.01173.us.i.ph, %_calc_gamma.exit979.us.i.preheader5233 ]
  %.08731172.us.i = phi ptr [ %i.pcv, %_calc_gamma.exit979.us.i ], [ %.08731172.us.i.ph, %_calc_gamma.exit979.us.i.preheader5233 ] ; 2 uses
  %.08741171.us.i = phi ptr [ %i.pcu, %_calc_gamma.exit979.us.i ], [ %.08741171.us.i.ph, %_calc_gamma.exit979.us.i.preheader5233 ] ; 2 uses
  %.08751170.us.i = phi ptr [ %i.pct, %_calc_gamma.exit979.us.i ], [ %.08751170.us.i.ph, %_calc_gamma.exit979.us.i.preheader5233 ] ; 2 uses
  %.08761169.us.i = phi ptr [ %i.pcs, %_calc_gamma.exit979.us.i ], [ %.08761169.us.i.ph, %_calc_gamma.exit979.us.i.preheader5233 ] ; 4 uses
  %i.pcg = load float, ptr %.08751170.us.i, align 4, !tbaa !12, !noalias !542
  %i.pch = load float, ptr %.08741171.us.i, align 4, !tbaa !12, !noalias !542
  %i.pci = insertelement <2 x float> poison, float %i.pcg, i64 0
  %i.pcj = insertelement <2 x float> %i.pci, float %i.pch, i64 1
  %i.pck = fmul reassoc nsz arcp contract afn <2 x float> %i.pcj, %i.avn
  %i.pcl = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pck, <2 x float> zeroinitializer)
  store <2 x float> %i.pcl, ptr %.08761169.us.i, align 4, !tbaa !12, !alias.scope !542
  %i.pcm = load float, ptr %.08731172.us.i, align 4, !tbaa !12, !noalias !542
  %i.pcn = fmul reassoc nsz arcp contract afn float %i.pcm, %i.eh
  %i.pco = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pcn, float 0.000000e+00)
  %i.pcp = getelementptr inbounds nuw i8, ptr %.08761169.us.i, i64 8
  store float %i.pco, ptr %i.pcp, align 4, !tbaa !12, !alias.scope !542
  %i.pcq = getelementptr inbounds nuw i8, ptr %.08761169.us.i, i64 12
  store float 0.000000e+00, ptr %i.pcq, align 4, !tbaa !12, !alias.scope !542
  %i.pcr = add nuw nsw i32 %.01173.us.i, 1        ; 2 uses
  %i.pcs = getelementptr inbounds nuw i8, ptr %.08761169.us.i, i64 16
  %i.pct = getelementptr inbounds nuw i8, ptr %.08751170.us.i, i64 4
  %i.pcu = getelementptr inbounds nuw i8, ptr %.08741171.us.i, i64 4
  %i.pcv = getelementptr inbounds nuw i8, ptr %.08731172.us.i, i64 4
  %i.pcw = icmp slt i32 %i.pcr, %i.obr
  br i1 %i.pcw, label %_calc_gamma.exit979.us.i, label %._crit_edge1176.i, !llvm.loop !382

._crit_edge1176.i:                                ; preds = %_calc_gamma.exit981.i, %_calc_gamma.exit979.us.i, %middle.block4233, %middle.block4191
  %indvars.iv.next1312.i = add nuw nsw i64 %indvars.iv1311.i, 1 ; 2 uses
  %indvars.iv.next1308.i = add i32 %indvars.iv1307.i, 1
  %i.pcx = trunc nuw i64 %indvars.iv.next1312.i to i32
  %i.pcy = icmp sgt i32 %i.llq, %i.pcx
  br i1 %i.pcy, label %.lr.ph1175.i, label %._crit_edge1183.split.i

.lr.ph1175.split.i:                               ; preds = %.lr.ph1175.split.i.preheader5234, %_calc_gamma.exit981.i
  %.01173.i = phi i32 [ %i.pfb, %_calc_gamma.exit981.i ], [ %.01173.i.ph, %.lr.ph1175.split.i.preheader5234 ]
  %.08731172.i = phi ptr [ %i.pff, %_calc_gamma.exit981.i ], [ %.08731172.i.ph, %.lr.ph1175.split.i.preheader5234 ] ; 2 uses
  %.08741171.i = phi ptr [ %i.pfe, %_calc_gamma.exit981.i ], [ %.08741171.i.ph, %.lr.ph1175.split.i.preheader5234 ] ; 2 uses
  %.08751170.i = phi ptr [ %i.pfd, %_calc_gamma.exit981.i ], [ %.08751170.i.ph, %.lr.ph1175.split.i.preheader5234 ] ; 2 uses
  %.08761169.i = phi ptr [ %i.pfc, %_calc_gamma.exit981.i ], [ %.08761169.i.ph, %.lr.ph1175.split.i.preheader5234 ] ; 5 uses
  %i.pcz = load float, ptr %.08751170.i, align 4, !tbaa !12, !noalias !542
  %i.pda = fmul reassoc nsz arcp contract afn float %i.pcz, 6.553500e+04 ; 4 uses
  %i.pdb = fcmp reassoc nsz arcp contract afn olt float %i.pda, 0.000000e+00
  br i1 %i.pdb, label %bb.pt, label %bb.pr

bb.pr:                                            ; preds = %.lr.ph1175.split.i
  %i.pdc = fcmp reassoc nsz arcp contract afn ogt float %i.pda, f0x477FFEFD
  br i1 %i.pdc, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.pdd = fptosi float %i.pda to i32             ; 2 uses
  %i.pde = sitofp reassoc nsz arcp contract afn i32 %i.pdd to float
  %i.pdf = fsub reassoc nsz arcp contract afn float %i.pda, %i.pde
  %i.pdg = zext nneg i32 %i.pdd to i64
  %i.pdh = getelementptr inbounds nuw [4 x i8], ptr %i.obt, i64 %i.pdg ; 2 uses
  %i.pdi = load float, ptr %i.pdh, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %i.pdj = getelementptr inbounds nuw i8, ptr %i.pdh, i64 4
  %i.pdk = load float, ptr %i.pdj, align 4, !tbaa !12, !noalias !542
  %i.pdl = fsub reassoc nsz arcp contract afn float %i.pdk, %i.pdi
  %i.pdm = fmul reassoc nsz arcp contract afn float %i.pdl, %i.pdf
  %i.pdn = fadd reassoc nsz arcp contract afn float %i.pdm, %i.pdi
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr, %.lr.ph1175.split.i
  %.1.i976.ph.i = phi float [ 1.000000e+00, %bb.pr ], [ 0.000000e+00, %.lr.ph1175.split.i ], [ %i.pdn, %bb.ps ]
  %i.pdo = fmul reassoc nsz arcp contract afn float %.1.i976.ph.i, %i.eh
  %i.pdp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pdo, float 0.000000e+00)
  store float %i.pdp, ptr %.08761169.i, align 4, !tbaa !12, !alias.scope !542
  %i.pdq = load float, ptr %.08741171.i, align 4, !tbaa !12, !noalias !542
  %i.pdr = fmul reassoc nsz arcp contract afn float %i.pdq, 6.553500e+04 ; 4 uses
  %i.pds = fcmp reassoc nsz arcp contract afn olt float %i.pdr, 0.000000e+00
  br i1 %i.pds, label %bb.pw, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.pdt = fcmp reassoc nsz arcp contract afn ogt float %i.pdr, f0x477FFEFD
  br i1 %i.pdt, label %bb.pw, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.pdu = fptosi float %i.pdr to i32             ; 2 uses
  %i.pdv = sitofp reassoc nsz arcp contract afn i32 %i.pdu to float
  %i.pdw = fsub reassoc nsz arcp contract afn float %i.pdr, %i.pdv
  %i.pdx = zext nneg i32 %i.pdu to i64
  %i.pdy = getelementptr inbounds nuw [4 x i8], ptr %i.obt, i64 %i.pdx ; 2 uses
  %i.pdz = load float, ptr %i.pdy, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %i.pea = getelementptr inbounds nuw i8, ptr %i.pdy, i64 4
  %i.peb = load float, ptr %i.pea, align 4, !tbaa !12, !noalias !542
  %i.pec = fsub reassoc nsz arcp contract afn float %i.peb, %i.pdz
  %i.ped = fmul reassoc nsz arcp contract afn float %i.pec, %i.pdw
  %i.pee = fadd reassoc nsz arcp contract afn float %i.ped, %i.pdz
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu, %bb.pt
  %.1.i978.ph.i = phi float [ 1.000000e+00, %bb.pu ], [ 0.000000e+00, %bb.pt ], [ %i.pee, %bb.pv ]
  %i.pef = fmul reassoc nsz arcp contract afn float %.1.i978.ph.i, %i.eh
  %i.peg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pef, float 0.000000e+00)
  %i.peh = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 4
  store float %i.peg, ptr %i.peh, align 4, !tbaa !12, !alias.scope !542
  %i.pei = load float, ptr %.08731172.i, align 4, !tbaa !12, !noalias !542
  %i.pej = fmul reassoc nsz arcp contract afn float %i.pei, 6.553500e+04 ; 4 uses
  %i.pek = fcmp reassoc nsz arcp contract afn olt float %i.pej, 0.000000e+00
  br i1 %i.pek, label %_calc_gamma.exit981.i, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.pel = fcmp reassoc nsz arcp contract afn ogt float %i.pej, f0x477FFEFD
  br i1 %i.pel, label %_calc_gamma.exit981.i, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.pem = fptosi float %i.pej to i32             ; 2 uses
  %i.pen = sitofp reassoc nsz arcp contract afn i32 %i.pem to float
  %i.peo = fsub reassoc nsz arcp contract afn float %i.pej, %i.pen
  %i.pep = zext nneg i32 %i.pem to i64
  %i.peq = getelementptr inbounds nuw [4 x i8], ptr %i.obt, i64 %i.pep ; 2 uses
  %i.per = load float, ptr %i.peq, align 4, !tbaa !12, !noalias !542 ; 2 uses
  %i.pes = getelementptr inbounds nuw i8, ptr %i.peq, i64 4
  %i.pet = load float, ptr %i.pes, align 4, !tbaa !12, !noalias !542
  %i.peu = fsub reassoc nsz arcp contract afn float %i.pet, %i.per
  %i.pev = fmul reassoc nsz arcp contract afn float %i.peu, %i.peo
  %i.pew = fadd reassoc nsz arcp contract afn float %i.pev, %i.per
  br label %_calc_gamma.exit981.i

_calc_gamma.exit981.i:                            ; preds = %bb.py, %bb.px, %bb.pw
  %.1.i980.i = phi nsz float [ 1.000000e+00, %bb.px ], [ %i.pew, %bb.py ], [ 0.000000e+00, %bb.pw ]
  %i.pex = fmul reassoc nsz arcp contract afn float %.1.i980.i, %i.eh
  %i.pey = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pex, float 0.000000e+00)
  %i.pez = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 8
  store float %i.pey, ptr %i.pez, align 4, !tbaa !12, !alias.scope !542
  %i.pfa = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 12
  store float 0.000000e+00, ptr %i.pfa, align 4, !tbaa !12, !alias.scope !542
  %i.pfb = add nuw nsw i32 %.01173.i, 1           ; 2 uses
  %i.pfc = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 16
  %i.pfd = getelementptr inbounds nuw i8, ptr %.08751170.i, i64 4
  %i.pfe = getelementptr inbounds nuw i8, ptr %.08741171.i, i64 4
  %i.pff = getelementptr inbounds nuw i8, ptr %.08731172.i, i64 4
  %i.pfg = icmp slt i32 %i.pfb, %i.obr
  br i1 %i.pfg, label %.lr.ph1175.split.i, label %._crit_edge1176.i, !llvm.loop !383

bb.pz:                                            ; preds = %bb.nw
  %i.pfh = load float, ptr %i.aov, align 8, !tbaa !141
  tail call fastcc void @demosaic_ppg(ptr noundef %i.anu, ptr noundef %i.awz, i32 noundef %i.bo, i32 noundef %i.awp, i32 noundef %.fr1070, float noundef %i.pfh, i32 noundef 100000)
  br label %demosaic_box3.exit

bb.qa:                                            ; preds = %bb.nw
  tail call void @amaze_demosaic(ptr noundef %i.awz, ptr noundef nonnull %i.anu, i32 noundef %i.bo, i32 noundef %i.awp, i32 noundef %.fr1070, float noundef %i.ek) #27
  br label %demosaic_box3.exit

demosaic_box3.exit:                               ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %._crit_edge.i478, %._crit_edge.i, %bb.hy, %bb.hx, %bb.hh, %._crit_edge1190.split.i, %bb.og, %._crit_edge942.split.i, %bb.nx, %xtrans_fdc_interpolate.exit, %bb.ns, %xtrans_markesteijn_interpolate.exit, %bb.hw, %bb.nv, %bb.nu, %bb.qa, %bb.pz
  br i1 %i.dv, label %bb.qb, label %_capture_sharpen.exit

bb.qb:                                            ; preds = %demosaic_box3.exit
  %i.pfi = load i32, ptr %4, align 4, !tbaa !36
  %i.pfj = load i32, ptr %i.aqo, align 4, !tbaa !37
  %i.pfk = add nsw i32 %i.pfj, %i.awn
  %.val452 = load ptr, ptr %i.r, align 8, !tbaa !439 ; 7 uses
  %.val453 = load ptr, ptr %i.y, align 16, !tbaa !56 ; 6 uses
  %i.pfl = sext i32 %i.awp to i64                 ; 10 uses
  %i.pfm = mul nsw i64 %i.pfl, %i.aoa             ; 13 uses
  %i.pfn = load ptr, ptr %i.aqp, align 16, !tbaa !576
  %i.pfo = getelementptr i8, ptr %.val452, i64 644
  %.val.i576 = load i32, ptr %i.pfo, align 4, !tbaa !447
  %i.pfp = and i32 %.val.i576, 8
  %.not.i577 = icmp eq i32 %i.pfp, 0
  br i1 %.not.i577, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.pfq = getelementptr inbounds nuw i8, ptr %.val452, i64 544
  %i.pfr = load i32, ptr %i.pfq, align 16, !tbaa !577
  %i.pfs = getelementptr inbounds nuw i8, ptr %.val452, i64 548
  %i.pft = load i32, ptr %i.pfs, align 4, !tbaa !578
  %i.pfu = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.pfr, i32 noundef %i.pft) #27
  %i.pfv = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.187) #27
  %i.pfw = tail call i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef %i.pfv) #27
  %.not16.i = icmp ult i32 %i.pfu, %i.pfw
  br i1 %.not16.i, label %_capture_sharpen.exit, label %bb.qd

bb.qd:                                            ; preds = %bb.qc, %bb.qb
  %i.pfx = getelementptr inbounds nuw i8, ptr %.val453, i64 144
  %i.pfy = load i32, ptr %i.pfx, align 8, !tbaa !83
  %i.pfz = or i32 %.0389, %i.pfy
  %or.cond3.not.i = icmp eq i32 %i.pfz, 0
  br i1 %or.cond3.not.i, label %_capture_sharpen.exit, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.pga = getelementptr inbounds nuw i8, ptr %.val452, i64 240
  %i.pgb = load i32, ptr %i.pga, align 16, !tbaa !457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %.not184.i = icmp eq i32 %i.pgb, 0
  br i1 %.not184.i, label %.thread1.i, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.pgc = getelementptr inbounds nuw i8, ptr %.val452, i64 256
  %i.pgd = load <2 x float>, ptr %i.pgc, align 16, !tbaa !12
  %i.pge = fmul reassoc nsz arcp contract afn <2 x float> %i.pgd, splat (float f0x3F666666)
  %i.pgf = getelementptr inbounds nuw i8, ptr %.val452, i64 264
  %i.pgg = load float, ptr %i.pgf, align 8, !tbaa !12
  %i.pgh = fmul reassoc nsz arcp contract afn float %i.pgg, f0x3F666666
  br label %.thread1.i

.thread1.i:                                       ; preds = %bb.qe, %bb.qf
  %i.pgi = phi reassoc nsz arcp contract afn float [ %i.pgh, %bb.qf ], [ f0x3F666666, %bb.qe ]
  %i.pgj = phi <2 x float> [ %i.pge, %bb.qf ], [ splat (float f0x3F666666), %bb.qe ]
  store <2 x float> %i.pgj, ptr %i.a, align 16, !tbaa !12
  store float %i.pgi, ptr %i.aqq, align 8, !tbaa !12
  store float 0.000000e+00, ptr %i.aqr, align 4, !tbaa !12
  %i.pgk = mul i64 %i.aoc, %i.pfl                 ; 4 uses
  %i.pgl = tail call ptr @dt_alloc_aligned(i64 noundef %i.pgk) #27 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pgl, i64 64) ]
  %i.pgm = tail call ptr @dt_alloc_aligned(i64 noundef %i.pgk) #27 ; 30 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pgm, i64 64) ]
  %i.pgn = tail call ptr @dt_alloc_aligned(i64 noundef %i.pgk) #27 ; 28 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pgn, i64 64) ]
  %i.pgo = tail call ptr @dt_alloc_aligned(i64 noundef %i.pgk) #27 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pgo, i64 64) ]
  %i.pgp = icmp ne ptr %i.pgl, null
  %i.pgq = icmp ne ptr %i.pgm, null
  %or.cond5.i579 = select i1 %i.pgp, i1 %i.pgq, i1 false
  %i.pgr = icmp ne ptr %i.pgn, null
  %or.cond7.i580 = select i1 %or.cond5.i579, i1 %i.pgr, i1 false
  %i.pgs = icmp ne ptr %i.pgo, null
  %or.cond9.i = select i1 %or.cond7.i580, i1 %i.pgs, i1 false
  br i1 %or.cond9.i, label %bb.qg, label %bb.rk

bb.qg:                                            ; preds = %.thread1.i
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.pgm, float noundef 1.000000e+00, i64 noundef %i.aoa, i64 noundef %i.pfl, i64 noundef 1) #27
  %.not122.i.i = icmp eq i32 %i.awp, 0
  br i1 %.not122.i.i, label %_modify_blend.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.qg
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.pgm, i64 %i.aoa
  %i.pgt = add nsw i32 %i.awp, -2
  %i.pgu = sext i32 %i.pgt to i64
  %invariant.gep115.i.i = getelementptr [4 x i8], ptr %i.pgm, i64 %i.aqu
  br i1 %.not123.i.i, label %_prepare_blend.exit.i, label %.preheader.i.i583.preheader

.preheader.i.i583.preheader:                      ; preds = %.preheader.lr.ph.i.i
  %i.pgv = mul i64 %i.ato, %i.pfl
  %scevgep2078 = getelementptr i8, ptr %scevgep2077, i64 %i.pgv ; 2 uses
  %i.pgw = mul i64 %i.atp, %i.pfl                 ; 2 uses
  %scevgep2080 = getelementptr i8, ptr %i.pgm, i64 %i.pgw ; 2 uses
  %scevgep2081 = getelementptr i8, ptr %i.pgm, i64 8 ; 2 uses
  %scevgep2082 = getelementptr i8, ptr %i.pgn, i64 %i.pgw ; 2 uses
  %scevgep2083 = getelementptr i8, ptr %i.pgn, i64 8 ; 2 uses
  %i.pgx = mul i64 %i.atq, %i.pfl
  %scevgep2130 = getelementptr i8, ptr %scevgep2129, i64 %i.pgx ; 2 uses
  %i.pgy = mul i64 %i.atr, %i.pfl                 ; 2 uses
  %scevgep2131 = getelementptr i8, ptr %i.pgm, i64 %i.pgy ; 2 uses
  %scevgep2132 = getelementptr i8, ptr %i.pgn, i64 %i.pgy ; 2 uses
  %bound02136 = icmp ult ptr %i.pgn, %scevgep2131
  %bound12137 = icmp ult ptr %i.pgm, %scevgep2132
  %found.conflict2138 = and i1 %bound02136, %bound12137
  %bound02140 = icmp ult ptr %i.pgn, %scevgep2130
  %bound12141 = icmp ult ptr %i.anu, %scevgep2132
  %found.conflict2142 = and i1 %bound02140, %bound12141
  %i.pgz = or i1 %found.conflict2142, %stride.check2143
  %conflict.rdx2144 = or i1 %found.conflict2138, %i.pgz
  %bound02145 = icmp ult ptr %i.pgm, %scevgep2130
  %bound12146 = icmp ult ptr %i.anu, %scevgep2131
  %found.conflict2147 = and i1 %bound02145, %bound12146
  %conflict.rdx2148 = or i1 %conflict.rdx2144, %found.conflict2147
  %bound02087 = icmp ult ptr %scevgep2083, %scevgep2080
  %bound12088 = icmp ult ptr %scevgep2081, %scevgep2082
  %found.conflict2089 = and i1 %bound02087, %bound12088
  %bound02091 = icmp ult ptr %scevgep2083, %scevgep2078
  %bound12092 = icmp ult ptr %scevgep2079, %scevgep2082
  %found.conflict2093 = and i1 %bound02091, %bound12092
  %i.pha = or i1 %found.conflict2093, %stride.check2094
  %conflict.rdx2095 = or i1 %found.conflict2089, %i.pha
  %bound02096 = icmp ult ptr %scevgep2081, %scevgep2078
  %bound12097 = icmp ult ptr %scevgep2079, %scevgep2080
  %found.conflict2098 = and i1 %bound02096, %bound12097
  %conflict.rdx2099 = or i1 %conflict.rdx2095, %found.conflict2098
  br label %.preheader.i.i583

.preheader.i.i583:                                ; preds = %.preheader.i.i583.preheader, %._crit_edge.i.i585
  %.0103117.i.i = phi i64 [ %i.pkv, %._crit_edge.i.i585 ], [ 0, %.preheader.i.i583.preheader ] ; 5 uses
  %i.phb = mul i64 %.0103117.i.i, %i.aoa          ; 9 uses
  %i.phc = icmp ugt i64 %.0103117.i.i, 1
  %i.phd = icmp ult i64 %.0103117.i.i, %i.pgu
  %i.phe = trunc i64 %.0103117.i.i to i32         ; 2 uses
  %i.phf = shl i32 %i.phe, 1
  %i.phg = and i32 %i.phf, 14
  %i.phh = add nsw i32 %i.phe, 600
  %i.phi = srem i32 %i.phh, 6
  %i.phj = sext i32 %i.phi to i64
  %i.phk = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.phj
  br i1 %i.phc, label %bb.qh, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %.preheader.i.i583
  %brmerge5374 = select i1 %min.iters.check2134, i1 true, i1 %conflict.rdx2148
  br i1 %brmerge5374, label %.lr.ph.split.us.i.i.preheader5242, label %vector.body2151

.lr.ph.split.us.i.i.preheader5242:                ; preds = %.lr.ph.split.us.i.i.preheader, %vector.body2151
  %.0102113.us.i.i.ph = phi i64 [ %n.vec2150, %vector.body2151 ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  br label %.lr.ph.split.us.i.i

vector.body2151:                                  ; preds = %.lr.ph.split.us.i.i.preheader, %vector.body2151
  %index2152 = phi i64 [ %index.next2157, %vector.body2151 ], [ 0, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %i.phl = add i64 %index2152, %i.phb             ; 3 uses
  %i.phm = shl i64 %i.phl, 4
  %i.phn = getelementptr inbounds nuw i8, ptr %i.anu, i64 %i.phm
  %wide.vec2153 = load <32 x float>, ptr %i.phn, align 4, !tbaa !12, !alias.scope !579 ; 3 uses
  %strided.vec2154 = shufflevector <32 x float> %wide.vec2153, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec2155 = shufflevector <32 x float> %wide.vec2153, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec2156 = shufflevector <32 x float> %wide.vec2153, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.pho = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec2154, splat (float 2.126710e-01)
  %i.php = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec2155, splat (float 7.151600e-01)
  %i.phq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec2156, splat (float 7.216900e-02)
  %i.phr = fadd reassoc nsz arcp contract afn <8 x float> %i.php, %i.pho
  %i.phs = fadd reassoc nsz arcp contract afn <8 x float> %i.phr, %i.phq ; 2 uses
  %i.pht = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.phs, zeroinitializer
  %i.phu = select reassoc nsz arcp contract afn <8 x i1> %i.pht, <8 x float> zeroinitializer, <8 x float> %i.phs
end_hunk_1
