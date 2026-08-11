inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_process_segmentation:bb.a
  %i.amp = fadd reassoc nsz arcp contract afn float %i.amk, %i.amo
  %i.amq = fadd reassoc nsz arcp contract afn float %i.aml, 6.000000e+00
  %i.amr = select i1 %i.amn, float %i.amp, float %i.amk ; 2 uses
  %i.ams = select i1 %i.amn, float %i.amq, float %i.aml ; 2 uses
  %i.amt = getelementptr i8, ptr %i.alw, i64 4
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !11 ; 2 uses
  %i.amv = fcmp reassoc nsz arcp contract afn olt float %i.amu, %i.zd ; 2 uses
  %i.amw = fmul reassoc nsz arcp contract afn float %i.amu, 4.000000e+00
  %i.amx = fadd reassoc nsz arcp contract afn float %i.amr, %i.amw
  %i.amy = fadd reassoc nsz arcp contract afn float %i.ams, 4.000000e+00
  %i.amz = select i1 %i.amv, float %i.amx, float %i.amr ; 2 uses
  %i.ana = select i1 %i.amv, float %i.amy, float %i.ams ; 2 uses
  %i.anb = getelementptr i8, ptr %i.alw, i64 8
  %i.anc = load float, ptr %i.anb, align 4, !tbaa !11 ; 2 uses
  %i.and = fcmp reassoc nsz arcp contract afn olt float %i.anc, %i.zd ; 2 uses
  %i.ane = fadd reassoc nsz arcp contract afn float %i.amz, %i.anc
  %i.anf = fadd reassoc nsz arcp contract afn float %i.ana, 1.000000e+00
  %i.ang = select i1 %i.and, float %i.ane, float %i.amz
  %i.anh = select i1 %i.and, float %i.anf, float %i.ana
  %i.ani = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.anh, float 1.000000e+00)
  %i.anj = fdiv reassoc nsz arcp contract afn float %i.ang, %i.ani ; 2 uses
  %i.ank = fcmp reassoc nsz arcp contract afn ogt float %i.anj, %i.zw
  br i1 %i.ank, label %bb.ae, label %._crit_edge142.thread.i

bb.ae:                                            ; preds = %.preheader132.i
  %i.anl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.zd, float %i.anj)
  store float %i.anl, ptr %i.zy, align 4, !tbaa !11
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %.3.us.i
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !11
  store float %i.ann, ptr %i.zz, align 4, !tbaa !11
  br label %._crit_edge142.thread.i

._crit_edge142.thread.i:                          ; preds = %bb.ae, %.preheader132.i, %._crit_edge142.i, %.lr.ph141.i, %bb.aa, %bb.z, %bb.y
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count.i
  br i1 %exitcond173.not.i, label %_calc_plane_candidates.exit, label %bb.y

_calc_plane_candidates.exit:                      ; preds = %._crit_edge142.thread.i, %bb.x
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %exitcond712.not = icmp eq i64 %indvars.iv.next710, 3
  br i1 %exitcond712.not, label %.preheader586, label %bb.x

.preheader585:                                    ; preds = %.preheader585.preheader, %._crit_edge625
  %indvars.iv717 = phi i64 [ 1, %.preheader585.preheader ], [ %indvars.iv.next718, %._crit_edge625 ] ; 5 uses
  %i.ano = mul nuw nsw i64 %indvars.iv717, %i.yv
  %indvars.iv717.tr = trunc i64 %indvars.iv717 to i32
  %i.anp = shl i32 %indvars.iv717.tr, 1
  %i.anq = and i32 %i.anp, 14
  %i.anr = trunc i64 %indvars.iv717 to i32
  %i.ans = add i32 %i.anr, 600
  %i.ant = urem i32 %i.ans, 6
  %i.anu = zext nneg i32 %i.ant to i64
  %i.anv = getelementptr inbounds nuw [6 x i8], ptr %i.ac, i64 %i.anu
  %i.anw = trunc nuw nsw i64 %indvars.iv717 to i32 ; 2 uses
  %i.anx = udiv i32 %i.anw, 3
  %i.any = add nuw nsw i32 %i.anx, 8
  %i.anz = mul nsw i32 %i.any, %i.dl
  %i.aoa = add i32 %i.anz, 8
  br label %bb.af

._crit_edge627.split:                             ; preds = %._crit_edge625, %.preheader585.lr.ph, %.preheader586
  %i.aob = load ptr, ptr %i.cy, align 16, !tbaa !386 ; 7 uses
  %i.aoc = load ptr, ptr %i.da, align 8, !tbaa !386 ; 3 uses
  %i.aod = load ptr, ptr %i.dc, align 16, !tbaa !386 ; 52 uses
  %i.aoe = icmp ne i32 %i.bi, 0
  %or.cond3 = select i1 %i.aoe, i1 %.0402.lcssa, i1 false
  %i.aof = fcmp reassoc nsz arcp contract afn ogt float %i.bk, 0.000000e+00
  %spec.select = select i1 %or.cond3, i1 %i.aof, i1 false ; 2 uses
  %i.aog = icmp ne i32 %6, 0
  %i.aoh = icmp ne i32 %i.ad, 0
  %i.aoi = select i1 %i.aog, i1 %i.aoh, i1 false  ; 2 uses
  %or.cond5 = select i1 %spec.select, i1 true, i1 %i.aoi
  br i1 %or.cond5, label %bb.al, label %bb.ar

._crit_edge625:                                   ; preds = %_get_segment_id.exit.thread
  %indvars.iv.next718 = add nuw nsw i64 %indvars.iv717, 1 ; 2 uses
  %exitcond721.not = icmp eq i64 %indvars.iv.next718, %wide.trip.count720
  br i1 %exitcond721.not, label %._crit_edge627.split, label %.preheader585

bb.af:                                            ; preds = %.preheader585, %_get_segment_id.exit.thread
  %indvars.iv713 = phi i64 [ 1, %.preheader585 ], [ %indvars.iv.next714, %_get_segment_id.exit.thread ] ; 4 uses
  %i.aoj = add nuw nsw i64 %i.ano, %indvars.iv713 ; 2 uses
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aoj
  %i.aol = load float, ptr %i.aok, align 4, !tbaa !11
  %i.aom = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aol, float 0.000000e+00) ; 2 uses
  %i.aon = trunc i64 %indvars.iv713 to i32        ; 2 uses
  br i1 %.not453, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.aoo = add i32 %i.aon, 600
  %i.aop = urem i32 %i.aoo, 6
  %i.aoq = zext nneg i32 %i.aop to i64
  %i.aor = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.aoq
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !332
  %i.aot = zext i8 %i.aos to i32
  br label %fcol.exit466

bb.ah:                                            ; preds = %bb.af
  %i.aou = and i32 %i.aon, 1
  %.tr.i.i464 = or disjoint i32 %i.aou, %i.anq
  %i.aov = shl nuw nsw i32 %.tr.i.i464, 1
  %i.aow = lshr i32 %i.i, %i.aov
  %i.aox = and i32 %i.aow, 3
  br label %fcol.exit466

fcol.exit466:                                     ; preds = %bb.ag, %bb.ah
  %.0.i465 = phi i32 [ %i.aot, %bb.ag ], [ %i.aox, %bb.ah ]
  %i.aoy = zext nneg i32 %.0.i465 to i64          ; 3 uses
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aoy
  %i.apa = load float, ptr %i.aoz, align 4, !tbaa !11
  %i.apb = fcmp reassoc nsz arcp contract afn ogt float %i.aom, %i.apa
  br i1 %i.apb, label %bb.ai, label %_get_segment_id.exit.thread

bb.ai:                                            ; preds = %fcol.exit466
  %i.apc = trunc nuw nsw i64 %indvars.iv713 to i32 ; 2 uses
  %i.apd = udiv i32 %i.apc, 3
  %i.ape = add i32 %i.aoa, %i.apd                 ; 2 uses
  %i.apf = sext i32 %i.ape to i64                 ; 2 uses
  %i.apg = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %i.aoy ; 7 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 84
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !23
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apg, i64 88
  %i.apk = load i32, ptr %i.apj, align 8, !tbaa !27
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apg, i64 76
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !28
  %i.apn = sub nsw i32 %i.apk, %i.apm
  %i.apo = mul nsw i32 %i.apn, %i.api
  %.not.i467 = icmp ult i32 %i.ape, %i.apo
  br i1 %.not.i467, label %bb.aj, label %_get_segment_id.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.app = load ptr, ptr %i.apg, align 16, !tbaa !30
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %i.app, i64 %i.apf
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !22
  %i.aps = and i32 %i.apr, 262143                 ; 3 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apg, i64 72
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !47
  %i.apv = icmp ult i32 %i.aps, %i.apu
  %i.apw = icmp samesign ugt i32 %i.aps, 1
  %or.cond.i469 = select i1 %i.apv, i1 %i.apw, i1 false
  br i1 %or.cond.i469, label %_get_segment_id.exit, label %_get_segment_id.exit.thread

_get_segment_id.exit:                             ; preds = %bb.aj
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apg, i64 56
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !37
  %i.apz = zext nneg i32 %i.aps to i64            ; 2 uses
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.apy, i64 %i.apz
  %i.aqb = load float, ptr %i.aqa, align 4, !tbaa !11 ; 2 uses
  %i.aqc = fcmp reassoc nsz arcp contract afn une float %i.aqb, 0.000000e+00
  br i1 %i.aqc, label %bb.ak, label %_get_segment_id.exit.thread

bb.ak:                                            ; preds = %_get_segment_id.exit
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apg, i64 64
  %i.aqe = load ptr, ptr %i.aqd, align 16, !tbaa !36
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.aqe, i64 %i.apz
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !11
  %i.aqh = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %1, ptr noundef nonnull %i.ac, i32 noundef %i.i, i32 noundef %i.anw, i32 noundef %i.apc, ptr noundef nonnull %3, ptr noundef %i.c, i32 noundef 0)
  %i.aqi = fsub reassoc nsz arcp contract afn float %i.aqb, %i.aqg
  %i.aqj = fadd reassoc nsz arcp contract afn float %i.aqi, %i.aqh ; 3 uses
  %i.aqk = fmul reassoc nsz arcp contract afn float %i.aqj, %i.aqj
  %i.aql = fmul reassoc nsz arcp contract afn float %i.aqk, %i.aqj
  %i.aqm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aom, float %i.aql) ; 2 uses
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aoy
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !386
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %i.apf
  store float %i.aqm, ptr %i.aqp, align 4, !tbaa !11
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.aoj
  store float %i.aqm, ptr %i.aqq, align 4, !tbaa !11
  br label %_get_segment_id.exit.thread

_get_segment_id.exit.thread:                      ; preds = %bb.ai, %bb.aj, %bb.ak, %_get_segment_id.exit, %fcol.exit466
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %exitcond716.not = icmp eq i64 %indvars.iv.next714, %wide.trip.count
  br i1 %exitcond716.not, label %._crit_edge625, label %bb.af

bb.al:                                            ; preds = %._crit_edge627.split
  call void @dt_segments_combine(ptr noundef nonnull %i.du, i32 noundef %i.bn)
  %i.aqr = fmul reassoc nsz arcp contract afn float %i.bk, 5.000000e+00
  %i.aqs = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.aqr, float 1.000000e+00)
  tail call void @dt_iop_image_fill(ptr noundef %i.aob, float noundef %i.aqs, i64 noundef %i.cf, i64 noundef %i.cl, i64 noundef 1) #33
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.dh, float noundef 0.000000e+00, i64 noundef %i.cf, i64 noundef %i.cl, i64 noundef 1) #33
  %i.aqt = getelementptr inbounds nuw i8, ptr %8, i64 364
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !28 ; 9 uses
  %i.aqv = sext i32 %i.aqu to i64                 ; 9 uses
  %i.aqw = sub i64 %i.cl, %i.aqv                  ; 2 uses
  %i.aqx = icmp ugt i64 %i.aqw, %i.aqv
  br i1 %i.aqx, label %.preheader584.lr.ph, label %._crit_edge636.split

.preheader584.lr.ph:                              ; preds = %bb.al
  %i.aqy = sub i64 %i.cf, %i.aqv                  ; 2 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.t, f0x3EAAAAAB ; 2 uses
  %factor.op.fmul628 = fmul reassoc nsz arcp contract afn float %i.p, f0x3EAAAAAB ; 2 uses
  %factor.op.fmul630 = fmul reassoc nsz arcp contract afn float %i.r, f0x3EAAAAAB ; 2 uses
  %i.aqz = icmp ugt i64 %i.aqy, %i.aqv
  %i.ara = load ptr, ptr %i.du, align 16          ; 2 uses
  br i1 %i.aqz, label %.preheader584.preheader, label %._crit_edge636.split

.preheader584.preheader:                          ; preds = %.preheader584.lr.ph
  %i.arb = mul <4 x i64> %i.de, <i64 28, i64 24, i64 20, i64 12>
  %i.arc = shl i64 %i.cn, 2
  %9 = add i64 %i.ce, 16
  %i.ard = shl nsw i64 %i.aqv, 1
  %i.are = sub i64 %9, %i.ard                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.are, 8
  %i.arf = shl i64 %i.cn, 4
  %diff.check = icmp ugt i64 %i.arf, -32
  %i.arg = add <4 x i64> %i.arb, splat (i64 -1)
  %i.arh = icmp ult <4 x i64> %i.arg, splat (i64 31)
  %i.ari = add i64 %.idx, -1
  %diff.check949 = icmp ult i64 %i.ari, 31
  %i.arj = add i64 %i.arc, -1
  %diff.check951 = icmp ult i64 %i.arj, 31
  %i.ark = bitcast <4 x i1> %i.arh to i4
  %i.arl = icmp ne i4 %i.ark, 0
  %op.rdx = or i1 %i.arl, %diff.check949
  %op.rdx1106 = or i1 %diff.check951, %diff.check
  %op.rdx1107 = or i1 %op.rdx, %op.rdx1106
  %n.vec = and i64 %i.are, -8                     ; 3 uses
  %i.arm = add i64 %n.vec, %i.aqv
  %broadcast.splatinsert = insertelement <8 x float> poison, float %factor.op.fmul628, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <8 x float> poison, float %factor.op.fmul630, i64 0
  %broadcast.splat954 = shufflevector <8 x float> %broadcast.splatinsert953, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert955 = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat956 = shufflevector <8 x float> %broadcast.splatinsert955, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.are, %n.vec
  br label %.preheader584

.preheader584:                                    ; preds = %.preheader584.preheader, %._crit_edge634
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %._crit_edge634 ], [ %i.aqv, %.preheader584.preheader ] ; 2 uses
  %i.arn = mul i64 %indvars.iv725, %i.cf          ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx1107
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader584
  %invariant.op1168 = add i64 %i.aqv, %i.arn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass1169 = add i64 %index, %invariant.op1168 ; 6 uses
  %i.aro = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.reass1169
  %wide.load = load <8 x float>, ptr %i.aro, align 4, !tbaa !11
  %i.arp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.reass1169
  %wide.load957 = load <8 x float>, ptr %i.arq, align 4, !tbaa !11
  %i.arr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load957, %broadcast.splat954
  %i.ars = fadd reassoc nsz arcp contract afn <8 x float> %i.arr, %i.arp
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.reass1169
  %wide.load958 = load <8 x float>, ptr %i.art, align 4, !tbaa !11
  %i.aru = fmul reassoc nsz arcp contract afn <8 x float> %wide.load958, %broadcast.splat956
  %i.arv = fadd reassoc nsz arcp contract afn <8 x float> %i.ars, %i.aru
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.reass1169
  store <8 x float> %i.arv, ptr %i.arw, align 4, !tbaa !11
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %.reass1169
  %wide.load959 = load <8 x i32>, ptr %i.arx, align 4, !tbaa !22
  %i.ary = icmp eq <8 x i32> %wide.load959, splat (i32 1)
  %i.arz = select <8 x i1> %i.ary, <8 x float> splat (float 1.000000e+20), <8 x float> zeroinitializer
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.reass1169
  store <8 x float> %i.arz, ptr %i.asa, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.asb = icmp eq i64 %index.next, %n.vec
  br i1 %i.asb, label %middle.block, label %vector.body, !llvm.loop !512

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge634, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader584, %middle.block
  %indvars.iv722.ph = phi i64 [ %i.arm, %middle.block ], [ %i.aqv, %.preheader584 ]
  br label %scalar.ph

._crit_edge636.split:                             ; preds = %._crit_edge634, %.preheader584.lr.ph, %bb.al
  %i.asc = icmp slt i32 %i.aqu, 1
  br i1 %i.asc, label %_masks_extend_border.exit484, label %bb.am

bb.am:                                            ; preds = %._crit_edge636.split
  %i.asd = zext nneg i32 %i.aqu to i64            ; 8 uses
  %i.ase = sub nsw i32 %i.dm, %i.aqu              ; 3 uses
  %i.asf = sext i32 %i.ase to i64
  %i.asg = icmp ult i32 %i.aqu, %i.ase
  br i1 %i.asg, label %.lr.ph.i478, label %.preheader.i470

.lr.ph.i478:                                      ; preds = %bb.am
  %i.ash = xor i64 %i.asd, -1
  %invariant.gep.i479 = getelementptr [4 x i8], ptr %i.dj, i64 %i.gf
  %xtraiter = and i64 %i.asd, 3                   ; 3 uses
  %i.asi = icmp ult i32 %i.aqu, 4
  %unroll_iter = and i64 %i.asd, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1125 = icmp ne i64 %xtraiter, 0
  br label %bb.an

.preheader.i470:                                  ; preds = %.epilog-lcssa, %bb.am
  br i1 %.not.i, label %_masks_extend_border.exit484, label %.lr.ph85.i472

.lr.ph85.i472:                                    ; preds = %.preheader.i470
  %i.asj = mul nsw i32 %i.aqu, %i.dl
  %i.ask = sext i32 %i.asj to i64
  %i.asl = xor i32 %i.aqu, -1
  %i.asm = add i32 %i.asl, %i.dl
  %i.asn = sext i32 %i.asm to i64
  %i.aso = add nsw i32 %i.ase, -1
  %i.asp = mul nsw i32 %i.aso, %i.dl
  %i.asq = sext i32 %i.asp to i64
  %xtraiter1129 = and i64 %i.asd, 3               ; 3 uses
  %i.asr = icmp ult i32 %i.aqu, 4
  %unroll_iter1134 = and i64 %i.asd, 2147483644
  %lcmp.mod1131.not = icmp eq i64 %xtraiter1129, 0
  %lcmp.mod1133 = icmp ne i64 %xtraiter1129, 0
  br label %bb.ap

bb.an:                                            ; preds = %.epilog-lcssa, %.lr.ph.i478
  %.07282.i480 = phi i64 [ %i.asd, %.lr.ph.i478 ], [ %i.atc, %.epilog-lcssa ] ; 2 uses
  %i.ass = mul i64 %.07282.i480, %i.gf            ; 2 uses
  %i.ast = getelementptr [4 x i8], ptr %i.dj, i64 %i.ass ; 6 uses
  %i.asu = getelementptr [4 x i8], ptr %i.ast, i64 %i.asd ; 5 uses
  %gep.i481 = getelementptr [4 x i8], ptr %invariant.gep.i479, i64 %i.ass ; 6 uses
  %i.asv = getelementptr [4 x i8], ptr %gep.i481, i64 %i.ash ; 5 uses
  br i1 %i.asi, label %.epil.preheader, label %.new

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.an
  %.07481.i482.epil.init = phi i64 [ 0, %bb.an ], [ %i.aub, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1125)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader
  %.07481.i482.epil = phi i64 [ %.07481.i482.epil.init, %.epil.preheader ], [ %i.atb, %bb.ao ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ao ]
  %i.asw = load float, ptr %i.asu, align 4, !tbaa !11
  %i.asx = getelementptr [4 x i8], ptr %i.ast, i64 %.07481.i482.epil
  store float %i.asw, ptr %i.asx, align 4, !tbaa !11
  %i.asy = load float, ptr %i.asv, align 4, !tbaa !11
  %i.asz = xor i64 %.07481.i482.epil, -1
  %i.ata = getelementptr [4 x i8], ptr %gep.i481, i64 %i.asz
  store float %i.asy, ptr %i.ata, align 4, !tbaa !11
  %i.atb = add nuw nsw i64 %.07481.i482.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ao, !llvm.loop !513

.epilog-lcssa:                                    ; preds = %bb.ao, %.unr-lcssa
  %i.atc = add nuw i64 %.07282.i480, 1            ; 2 uses
  %i.atd = icmp ult i64 %i.atc, %i.asf
  br i1 %i.atd, label %bb.an, label %.preheader.i470

.new:                                             ; preds = %bb.an, %.new
  %.07481.i482 = phi i64 [ %i.aub, %.new ], [ 0, %bb.an ] ; 9 uses
  %niter = phi i64 [ %niter.next.3, %.new ], [ 0, %bb.an ]
  %i.ate = load float, ptr %i.asu, align 4, !tbaa !11
  %i.atf = getelementptr [4 x i8], ptr %i.ast, i64 %.07481.i482
  store float %i.ate, ptr %i.atf, align 4, !tbaa !11
  %i.atg = load float, ptr %i.asv, align 4, !tbaa !11
  %i.ath = xor i64 %.07481.i482, -1
  %i.ati = getelementptr [4 x i8], ptr %gep.i481, i64 %i.ath
  store float %i.atg, ptr %i.ati, align 4, !tbaa !11
  %i.atj = load float, ptr %i.asu, align 4, !tbaa !11
  %i.atk = getelementptr [4 x i8], ptr %i.ast, i64 %.07481.i482
  %i.atl = getelementptr i8, ptr %i.atk, i64 4
  store float %i.atj, ptr %i.atl, align 4, !tbaa !11
  %i.atm = load float, ptr %i.asv, align 4, !tbaa !11
  %i.atn = xor i64 %.07481.i482, -2
  %i.ato = getelementptr [4 x i8], ptr %gep.i481, i64 %i.atn
  store float %i.atm, ptr %i.ato, align 4, !tbaa !11
  %i.atp = load float, ptr %i.asu, align 4, !tbaa !11
  %i.atq = getelementptr [4 x i8], ptr %i.ast, i64 %.07481.i482
  %i.atr = getelementptr i8, ptr %i.atq, i64 8
  store float %i.atp, ptr %i.atr, align 4, !tbaa !11
  %i.ats = load float, ptr %i.asv, align 4, !tbaa !11
  %i.att = xor i64 %.07481.i482, -3
  %i.atu = getelementptr [4 x i8], ptr %gep.i481, i64 %i.att
  store float %i.ats, ptr %i.atu, align 4, !tbaa !11
  %i.atv = load float, ptr %i.asu, align 4, !tbaa !11
  %i.atw = getelementptr [4 x i8], ptr %i.ast, i64 %.07481.i482
  %i.atx = getelementptr i8, ptr %i.atw, i64 12
  store float %i.atv, ptr %i.atx, align 4, !tbaa !11
  %i.aty = load float, ptr %i.asv, align 4, !tbaa !11
  %i.atz = xor i64 %.07481.i482, -4
  %i.aua = getelementptr [4 x i8], ptr %gep.i481, i64 %i.atz
  store float %i.aty, ptr %i.aua, align 4, !tbaa !11
  %i.aub = add nuw nsw i64 %.07481.i482, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.new

bb.ap:                                            ; preds = %.epilog-lcssa1132, %.lr.ph85.i472
  %.07384.i473 = phi i64 [ 0, %.lr.ph85.i472 ], [ %i.auq, %.epilog-lcssa1132 ] ; 3 uses
  %i.auc = tail call i64 @llvm.umax.i64(i64 %.07384.i473, i64 %i.asd)
  %..i474 = tail call i64 @llvm.umin.i64(i64 %i.auc, i64 %i.asn)
  %i.aud = getelementptr [4 x i8], ptr %i.dj, i64 %..i474 ; 2 uses
  %i.aue = getelementptr [4 x i8], ptr %i.aud, i64 %i.ask
  %i.auf = load float, ptr %i.aue, align 4, !tbaa !11 ; 5 uses
  %i.aug = getelementptr [4 x i8], ptr %i.aud, i64 %i.asq
  %i.auh = load float, ptr %i.aug, align 4, !tbaa !11 ; 5 uses
  %i.aui = getelementptr [4 x i8], ptr %i.dj, i64 %.07384.i473 ; 10 uses
  br i1 %i.asr, label %.epil.preheader1128, label %.new1126

.unr-lcssa1127:                                   ; preds = %.new1126
  br i1 %lcmp.mod1131.not, label %.epilog-lcssa1132, label %.epil.preheader1128

.epil.preheader1128:                              ; preds = %.unr-lcssa1127, %bb.ap
  %.083.i475.epil.init = phi i64 [ 0, %bb.ap ], [ %i.avs, %.unr-lcssa1127 ]
  tail call void @llvm.assume(i1 %lcmp.mod1133)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.epil.preheader1128
  %.083.i475.epil = phi i64 [ %.083.i475.epil.init, %.epil.preheader1128 ], [ %i.aup, %bb.aq ] ; 3 uses
  %epil.iter1130 = phi i64 [ 0, %.epil.preheader1128 ], [ %epil.iter1130.next, %bb.aq ]
  %i.auj = mul nsw i64 %.083.i475.epil, %i.gf
  %i.auk = getelementptr [4 x i8], ptr %i.aui, i64 %i.auj
  store float %i.auf, ptr %i.auk, align 4, !tbaa !11
  %i.aul = xor i64 %.083.i475.epil, -1
  %i.aum = add nsw i64 %i.gl, %i.aul
  %i.aun = mul nsw i64 %i.aum, %i.gf
  %i.auo = getelementptr [4 x i8], ptr %i.aui, i64 %i.aun
  store float %i.auh, ptr %i.auo, align 4, !tbaa !11
  %i.aup = add nuw nsw i64 %.083.i475.epil, 1
  %epil.iter1130.next = add i64 %epil.iter1130, 1 ; 2 uses
  %epil.iter1130.cmp.not = icmp eq i64 %epil.iter1130.next, %xtraiter1129
  br i1 %epil.iter1130.cmp.not, label %.epilog-lcssa1132, label %bb.aq, !llvm.loop !514

.epilog-lcssa1132:                                ; preds = %bb.aq, %.unr-lcssa1127
  %i.auq = add nuw i64 %.07384.i473, 1            ; 2 uses
  %exitcond87.not.i477 = icmp eq i64 %i.auq, %i.gf
end_hunk_0
