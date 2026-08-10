inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_process_segmentation:bb.a
  %i.alt = fadd reassoc nsz arcp contract afn float %i.aln, 4.000000e+00
  %i.alu = select i1 %i.alq, float %i.als, float %i.alm ; 2 uses
  %i.alv = select i1 %i.alq, float %i.alt, float %i.aln ; 2 uses
  %.idx202.i = shl nsw i64 %i.abk, 3
  %i.alw = getelementptr i8, ptr %i.afw, i64 %.idx202.i ; 5 uses
  %i.alx = getelementptr i8, ptr %i.alw, i64 -8
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !11 ; 2 uses
  %i.alz = fcmp reassoc nsz arcp contract afn olt float %i.aly, %i.zd ; 2 uses
  %i.ama = fadd reassoc nsz arcp contract afn float %i.alu, %i.aly
  %i.amb = fadd reassoc nsz arcp contract afn float %i.alv, 1.000000e+00
  %i.amc = select i1 %i.alz, float %i.ama, float %i.alu ; 2 uses
  %i.amd = select i1 %i.alz, float %i.amb, float %i.alv ; 2 uses
  %i.ame = getelementptr i8, ptr %i.alw, i64 -4
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !11 ; 2 uses
  %i.amg = fcmp reassoc nsz arcp contract afn olt float %i.amf, %i.zd ; 2 uses
  %i.amh = fmul reassoc nsz arcp contract afn float %i.amf, 4.000000e+00
  %i.ami = fadd reassoc nsz arcp contract afn float %i.amc, %i.amh
  %i.amj = fadd reassoc nsz arcp contract afn float %i.amd, 4.000000e+00
  %i.amk = select i1 %i.amg, float %i.ami, float %i.amc ; 2 uses
  %i.aml = select i1 %i.amg, float %i.amj, float %i.amd ; 2 uses
  %i.amm = load float, ptr %i.alw, align 4, !tbaa !11 ; 2 uses
  %i.amn = fcmp reassoc nsz arcp contract afn olt float %i.amm, %i.zd ; 2 uses
  %i.amo = fmul reassoc nsz arcp contract afn float %i.amm, 6.000000e+00
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
  %9 = fmul reassoc nsz arcp contract afn float %i.bk, 5.000000e+00
  %10 = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %9, float 1.000000e+00)
  tail call void @dt_iop_image_fill(ptr noundef %i.aob, float noundef %10, i64 noundef %i.cf, i64 noundef %i.cl, i64 noundef 1) #33
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.dh, float noundef 0.000000e+00, i64 noundef %i.cf, i64 noundef %i.cl, i64 noundef 1) #33
  %i.aqr = getelementptr inbounds nuw i8, ptr %8, i64 364
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !28 ; 9 uses
  %i.aqt = sext i32 %i.aqs to i64                 ; 9 uses
  %i.aqu = sub i64 %i.cl, %i.aqt                  ; 2 uses
  %i.aqv = icmp ugt i64 %i.aqu, %i.aqt
  br i1 %i.aqv, label %.preheader584.lr.ph, label %._crit_edge636.split

.preheader584.lr.ph:                              ; preds = %bb.al
  %i.aqw = sub i64 %i.cf, %i.aqt                  ; 2 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.t, f0x3EAAAAAB ; 2 uses
  %factor.op.fmul628 = fmul reassoc nsz arcp contract afn float %i.p, f0x3EAAAAAB ; 2 uses
  %factor.op.fmul630 = fmul reassoc nsz arcp contract afn float %i.r, f0x3EAAAAAB ; 2 uses
  %i.aqx = icmp ugt i64 %i.aqw, %i.aqt
  %i.aqy = load ptr, ptr %i.du, align 16          ; 2 uses
  br i1 %i.aqx, label %.preheader584.preheader, label %._crit_edge636.split

.preheader584.preheader:                          ; preds = %.preheader584.lr.ph
  %i.aqz = mul <4 x i64> %i.de, <i64 28, i64 24, i64 20, i64 12>
  %i.ara = shl i64 %i.cn, 2
  %i.arb = shl nsw i64 %i.aqt, 1
  %i.arc = sub i64 %i.ce, %i.arb
  %i.ard = add i64 %i.arc, 16                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ard, 8
  %i.are = shl i64 %i.cn, 4
  %diff.check = icmp ugt i64 %i.are, -32
  %i.arf = add <4 x i64> %i.aqz, splat (i64 -1)
  %i.arg = icmp ult <4 x i64> %i.arf, splat (i64 31)
  %i.arh = add i64 %.idx, -1
  %diff.check949 = icmp ult i64 %i.arh, 31
  %i.ari = add i64 %i.ara, -1
  %diff.check951 = icmp ult i64 %i.ari, 31
  %i.arj = bitcast <4 x i1> %i.arg to i4
  %i.ark = icmp ne i4 %i.arj, 0
  %op.rdx = or i1 %i.ark, %diff.check949
  %op.rdx1106 = or i1 %diff.check951, %diff.check
  %op.rdx1107 = or i1 %op.rdx, %op.rdx1106
  %n.vec = and i64 %i.ard, -8                     ; 3 uses
  %i.arl = add i64 %n.vec, %i.aqt
  %broadcast.splatinsert = insertelement <8 x float> poison, float %factor.op.fmul628, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <8 x float> poison, float %factor.op.fmul630, i64 0
  %broadcast.splat954 = shufflevector <8 x float> %broadcast.splatinsert953, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert955 = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat956 = shufflevector <8 x float> %broadcast.splatinsert955, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ard, %n.vec
  br label %.preheader584

.preheader584:                                    ; preds = %.preheader584.preheader, %._crit_edge634
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %._crit_edge634 ], [ %i.aqt, %.preheader584.preheader ] ; 2 uses
  %i.arm = mul i64 %indvars.iv725, %i.cf          ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx1107
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader584
  %invariant.op1168 = add i64 %i.aqt, %i.arm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass1169 = add i64 %index, %invariant.op1168 ; 6 uses
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.reass1169
  %wide.load = load <8 x float>, ptr %i.arn, align 4, !tbaa !11
  %i.aro = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.reass1169
  %wide.load957 = load <8 x float>, ptr %i.arp, align 4, !tbaa !11
  %i.arq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load957, %broadcast.splat954
  %i.arr = fadd reassoc nsz arcp contract afn <8 x float> %i.arq, %i.aro
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.reass1169
  %wide.load958 = load <8 x float>, ptr %i.ars, align 4, !tbaa !11
  %i.art = fmul reassoc nsz arcp contract afn <8 x float> %wide.load958, %broadcast.splat956
  %i.aru = fadd reassoc nsz arcp contract afn <8 x float> %i.arr, %i.art
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.reass1169
  store <8 x float> %i.aru, ptr %i.arv, align 4, !tbaa !11
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.aqy, i64 %.reass1169
  %wide.load959 = load <8 x i32>, ptr %i.arw, align 4, !tbaa !22
  %i.arx = icmp eq <8 x i32> %wide.load959, splat (i32 1)
  %i.ary = select <8 x i1> %i.arx, <8 x float> splat (float 1.000000e+20), <8 x float> zeroinitializer
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.reass1169
  store <8 x float> %i.ary, ptr %i.arz, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.asa = icmp eq i64 %index.next, %n.vec
  br i1 %i.asa, label %middle.block, label %vector.body, !llvm.loop !492

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge634, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader584, %middle.block
  %indvars.iv722.ph = phi i64 [ %i.arl, %middle.block ], [ %i.aqt, %.preheader584 ]
  br label %scalar.ph

._crit_edge636.split:                             ; preds = %._crit_edge634, %.preheader584.lr.ph, %bb.al
  %i.asb = icmp slt i32 %i.aqs, 1
  br i1 %i.asb, label %_masks_extend_border.exit484, label %bb.am

bb.am:                                            ; preds = %._crit_edge636.split
  %i.asc = zext nneg i32 %i.aqs to i64            ; 8 uses
  %i.asd = sub nsw i32 %i.dm, %i.aqs              ; 3 uses
  %i.ase = sext i32 %i.asd to i64
  %i.asf = icmp ult i32 %i.aqs, %i.asd
  br i1 %i.asf, label %.lr.ph.i478, label %.preheader.i470

.lr.ph.i478:                                      ; preds = %bb.am
  %i.asg = xor i64 %i.asc, -1
  %invariant.gep.i479 = getelementptr [4 x i8], ptr %i.dj, i64 %i.gf
  %xtraiter = and i64 %i.asc, 3                   ; 3 uses
  %i.ash = icmp ult i32 %i.aqs, 4
  %unroll_iter = and i64 %i.asc, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1125 = icmp ne i64 %xtraiter, 0
  br label %bb.an

.preheader.i470:                                  ; preds = %.epilog-lcssa, %bb.am
  br i1 %.not.i, label %_masks_extend_border.exit484, label %.lr.ph85.i472

.lr.ph85.i472:                                    ; preds = %.preheader.i470
  %i.asi = mul nsw i32 %i.aqs, %i.dl
  %i.asj = sext i32 %i.asi to i64
  %i.ask = xor i32 %i.aqs, -1
  %i.asl = add i32 %i.ask, %i.dl
  %i.asm = sext i32 %i.asl to i64
  %i.asn = add nsw i32 %i.asd, -1
  %i.aso = mul nsw i32 %i.asn, %i.dl
  %i.asp = sext i32 %i.aso to i64
  %xtraiter1129 = and i64 %i.asc, 3               ; 3 uses
  %i.asq = icmp ult i32 %i.aqs, 4
  %unroll_iter1134 = and i64 %i.asc, 2147483644
  %lcmp.mod1131.not = icmp eq i64 %xtraiter1129, 0
  %lcmp.mod1133 = icmp ne i64 %xtraiter1129, 0
  br label %bb.ap

bb.an:                                            ; preds = %.epilog-lcssa, %.lr.ph.i478
  %.07282.i480 = phi i64 [ %i.asc, %.lr.ph.i478 ], [ %i.atb, %.epilog-lcssa ] ; 2 uses
  %i.asr = mul i64 %.07282.i480, %i.gf            ; 2 uses
  %i.ass = getelementptr [4 x i8], ptr %i.dj, i64 %i.asr ; 6 uses
  %i.ast = getelementptr [4 x i8], ptr %i.ass, i64 %i.asc ; 5 uses
  %gep.i481 = getelementptr [4 x i8], ptr %invariant.gep.i479, i64 %i.asr ; 6 uses
  %i.asu = getelementptr [4 x i8], ptr %gep.i481, i64 %i.asg ; 5 uses
  br i1 %i.ash, label %.epil.preheader, label %.new

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.an
  %.07481.i482.epil.init = phi i64 [ 0, %bb.an ], [ %i.aua, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1125)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader
  %.07481.i482.epil = phi i64 [ %.07481.i482.epil.init, %.epil.preheader ], [ %i.ata, %bb.ao ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ao ]
  %i.asv = load float, ptr %i.ast, align 4, !tbaa !11
  %i.asw = getelementptr [4 x i8], ptr %i.ass, i64 %.07481.i482.epil
  store float %i.asv, ptr %i.asw, align 4, !tbaa !11
  %i.asx = load float, ptr %i.asu, align 4, !tbaa !11
  %i.asy = xor i64 %.07481.i482.epil, -1
  %i.asz = getelementptr [4 x i8], ptr %gep.i481, i64 %i.asy
  store float %i.asx, ptr %i.asz, align 4, !tbaa !11
  %i.ata = add nuw nsw i64 %.07481.i482.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ao, !llvm.loop !493

.epilog-lcssa:                                    ; preds = %bb.ao, %.unr-lcssa
  %i.atb = add nuw i64 %.07282.i480, 1            ; 2 uses
  %i.atc = icmp ult i64 %i.atb, %i.ase
  br i1 %i.atc, label %bb.an, label %.preheader.i470

.new:                                             ; preds = %bb.an, %.new
  %.07481.i482 = phi i64 [ %i.aua, %.new ], [ 0, %bb.an ] ; 9 uses
  %niter = phi i64 [ %niter.next.3, %.new ], [ 0, %bb.an ]
  %i.atd = load float, ptr %i.ast, align 4, !tbaa !11
  %i.ate = getelementptr [4 x i8], ptr %i.ass, i64 %.07481.i482
  store float %i.atd, ptr %i.ate, align 4, !tbaa !11
  %i.atf = load float, ptr %i.asu, align 4, !tbaa !11
  %i.atg = xor i64 %.07481.i482, -1
  %i.ath = getelementptr [4 x i8], ptr %gep.i481, i64 %i.atg
  store float %i.atf, ptr %i.ath, align 4, !tbaa !11
  %i.ati = load float, ptr %i.ast, align 4, !tbaa !11
  %i.atj = getelementptr [4 x i8], ptr %i.ass, i64 %.07481.i482
  %i.atk = getelementptr i8, ptr %i.atj, i64 4
  store float %i.ati, ptr %i.atk, align 4, !tbaa !11
  %i.atl = load float, ptr %i.asu, align 4, !tbaa !11
  %i.atm = xor i64 %.07481.i482, -2
  %i.atn = getelementptr [4 x i8], ptr %gep.i481, i64 %i.atm
  store float %i.atl, ptr %i.atn, align 4, !tbaa !11
  %i.ato = load float, ptr %i.ast, align 4, !tbaa !11
  %i.atp = getelementptr [4 x i8], ptr %i.ass, i64 %.07481.i482
  %i.atq = getelementptr i8, ptr %i.atp, i64 8
  store float %i.ato, ptr %i.atq, align 4, !tbaa !11
  %i.atr = load float, ptr %i.asu, align 4, !tbaa !11
  %i.ats = xor i64 %.07481.i482, -3
  %i.att = getelementptr [4 x i8], ptr %gep.i481, i64 %i.ats
  store float %i.atr, ptr %i.att, align 4, !tbaa !11
  %i.atu = load float, ptr %i.ast, align 4, !tbaa !11
  %i.atv = getelementptr [4 x i8], ptr %i.ass, i64 %.07481.i482
  %i.atw = getelementptr i8, ptr %i.atv, i64 12
  store float %i.atu, ptr %i.atw, align 4, !tbaa !11
  %i.atx = load float, ptr %i.asu, align 4, !tbaa !11
end_hunk_0
begin_hunk_1_@_process_segmentation:bb.a
  br i1 %i.byo, label %bb.du, label %vec.epilog.scalar.ph.1

bb.du:                                            ; preds = %vec.epilog.scalar.ph
  %i.byp = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %i.byk ; 2 uses
  %i.byq = load float, ptr %i.byp, align 4, !tbaa !11
  %i.byr = fmul reassoc nsz arcp contract afn float %i.byq, %i.bha
  store float %i.byr, ptr %i.byp, align 4, !tbaa !11
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %bb.du, %vec.epilog.scalar.ph
  %.reass1181 = add i64 %indvars.iv.i519, %invariant.op1180 ; 2 uses
  %i.bys = getelementptr inbounds nuw [4 x i8], ptr %i.bct, i64 %.reass1181
  %i.byt = load i32, ptr %i.bys, align 4, !tbaa !22
  %i.byu = zext i32 %i.byt to i64
  %i.byv = icmp eq i64 %indvars.iv730, %i.byu
  br i1 %i.byv, label %bb.dv, label %vec.epilog.scalar.ph.2

bb.dv:                                            ; preds = %vec.epilog.scalar.ph.1
  %i.byw = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %.reass1181 ; 2 uses
  %i.byx = load float, ptr %i.byw, align 4, !tbaa !11
  %i.byy = fmul reassoc nsz arcp contract afn float %i.byx, %i.bha
  store float %i.byy, ptr %i.byw, align 4, !tbaa !11
  br label %vec.epilog.scalar.ph.2

vec.epilog.scalar.ph.2:                           ; preds = %bb.dv, %vec.epilog.scalar.ph.1
  %.reass1183 = add i64 %indvars.iv.i519, %invariant.op1182 ; 2 uses
  %i.byz = getelementptr inbounds nuw [4 x i8], ptr %i.bct, i64 %.reass1183
  %i.bza = load i32, ptr %i.byz, align 4, !tbaa !22
  %i.bzb = zext i32 %i.bza to i64
  %i.bzc = icmp eq i64 %indvars.iv730, %i.bzb
  br i1 %i.bzc, label %bb.dw, label %vec.epilog.scalar.ph.3

bb.dw:                                            ; preds = %vec.epilog.scalar.ph.2
  %i.bzd = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %.reass1183 ; 2 uses
  %i.bze = load float, ptr %i.bzd, align 4, !tbaa !11
  %i.bzf = fmul reassoc nsz arcp contract afn float %i.bze, %i.bha
  store float %i.bzf, ptr %i.bzd, align 4, !tbaa !11
  br label %vec.epilog.scalar.ph.3

vec.epilog.scalar.ph.3:                           ; preds = %bb.dw, %vec.epilog.scalar.ph.2
  %.reass1185 = add i64 %indvars.iv.i519, %invariant.op1184 ; 2 uses
  %i.bzg = getelementptr inbounds nuw [4 x i8], ptr %i.bct, i64 %.reass1185
  %i.bzh = load i32, ptr %i.bzg, align 4, !tbaa !22
  %i.bzi = zext i32 %i.bzh to i64
  %i.bzj = icmp eq i64 %indvars.iv730, %i.bzi
  br i1 %i.bzj, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %vec.epilog.scalar.ph.3
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %.reass1185 ; 2 uses
  %i.bzl = load float, ptr %i.bzk, align 4, !tbaa !11
  %i.bzm = fmul reassoc nsz arcp contract afn float %i.bzl, %i.bha
  store float %i.bzm, ptr %i.bzk, align 4, !tbaa !11
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %vec.epilog.scalar.ph.3
  %indvars.iv.next.i520.3 = add nsw i64 %indvars.iv.i519, 4 ; 2 uses
  %lftr.wideiv.i521.3 = trunc i64 %indvars.iv.next.i520.3 to i32
  %exitcond.not.i522.3 = icmp eq i32 %i.bgq, %lftr.wideiv.i521.3
  br i1 %exitcond.not.i522.3, label %._crit_edge164.i, label %vec.epilog.scalar.ph, !llvm.loop !527

_segment_gradients.exit:                          ; preds = %._crit_edge164.i, %.loopexit.i, %_segment_maxdistance.exit.thread, %_segment_maxdistance.exit
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1 ; 2 uses
  %exitcond734.not = icmp eq i64 %indvars.iv.next731, %wide.trip.count733
  br i1 %exitcond734.not, label %._crit_edge640, label %bb.bc

bb.dz:                                            ; preds = %.lr.ph642, %_add_poisson_noise.exit
  %indvars.iv735 = phi i64 [ 2, %.lr.ph642 ], [ %indvars.iv.next736, %_add_poisson_noise.exit ] ; 7 uses
  %i.bzn = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv735
  %i.bzo = load float, ptr %i.bzn, align 4, !tbaa !11
  %i.bzp = fcmp reassoc nsz arcp contract afn ogt float %i.bzo, 3.000000e+00
  br i1 %i.bzp, label %bb.ea, label %_add_poisson_noise.exit

bb.ea:                                            ; preds = %bb.dz
  %i.bzq = getelementptr inbounds nuw [4 x i8], ptr %i.bdj, i64 %indvars.iv735
  %i.bzr = load i32, ptr %i.bzq, align 4, !tbaa !22
  %..i526 = tail call i32 @llvm.smax.i32(i32 %i.bzr, i32 %i.bdk) ; 2 uses
  %i.bzs = getelementptr inbounds nuw [4 x i8], ptr %i.bdm, i64 %indvars.iv735
  %i.bzt = load i32, ptr %i.bzs, align 4, !tbaa !22
  %i.bzu = add i32 %i.bzt, 1
  %i.bzv = tail call i32 @llvm.smin.i32(i32 %i.bzu, i32 %i.bdp) ; 2 uses
  %i.bzw = getelementptr inbounds nuw [4 x i8], ptr %i.bdr, i64 %indvars.iv735
  %i.bzx = load i32, ptr %i.bzw, align 4, !tbaa !22
  %i.bzy = tail call i32 @llvm.smax.i32(i32 %i.bzx, i32 %i.bdk) ; 2 uses
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %i.bdt, i64 %indvars.iv735
  %i.caa = load i32, ptr %i.bzz, align 4, !tbaa !22
  %i.cab = add i32 %i.caa, 1
  %i.cac = tail call i32 @llvm.smin.i32(i32 %i.cab, i32 %i.bdw) ; 2 uses
  %i.cad = sext i32 %..i526 to i64                ; 3 uses
  %i.cae = icmp slt i32 %i.bzy, %i.cac
  %i.caf = icmp slt i32 %..i526, %i.bzv
  %or.cond657 = select i1 %i.cae, i1 %i.caf, i1 false
  br i1 %or.cond657, label %.preheader.i530.preheader, label %_add_poisson_noise.exit

.preheader.i530.preheader:                        ; preds = %bb.ea
  %i.cag = sext i32 %i.bzy to i64                 ; 3 uses
  %i.cah = lshr i64 %i.cag, 33
  %i.cai = xor i64 %i.cah, %i.cag
  %i.caj = mul i64 %i.cai, 7109453100751455733    ; 2 uses
  %i.cak = lshr i64 %i.caj, 28
  %i.cal = xor i64 %i.cak, %i.caj
  %i.cam = mul i64 %i.cal, -3808689974395783757
  %i.can = lshr i64 %i.cam, 32
  %i.cao = trunc nuw i64 %i.can to i32            ; 2 uses
  %i.cap = xor i32 %i.cao, 635086878              ; 2 uses
  %i.caq = lshr i64 %i.cad, 33
  %i.car = xor i64 %i.caq, %i.cad
  %i.cas = mul i64 %i.car, 7109453100751455733    ; 2 uses
  %i.cat = lshr i64 %i.cas, 28
  %i.cau = xor i64 %i.cat, %i.cas
  %i.cav = mul i64 %i.cau, -3808689974395783757
  %i.caw = lshr i64 %i.cav, 32
  %i.cax = trunc nuw i64 %i.caw to i32            ; 3 uses
  %i.cay = shl i32 %i.cax, 9
  %i.caz = xor i32 %i.cap, %i.cay
  %i.cba = xor i32 %i.cax, -1171427716            ; 3 uses
  %i.cbb = xor i32 %i.cba, %i.cao                 ; 2 uses
  %i.cbc = xor i32 %i.caz, %i.cbb                 ; 2 uses
  %i.cbd = xor i32 %i.cap, %i.cax                 ; 3 uses
  %i.cbe = shl i32 %i.cbd, 9
  %i.cbf = xor i32 %i.cbc, %i.cbe
  %i.cbg = tail call noundef i32 @llvm.fshl.i32(i32 %i.cba, i32 %i.cba, i32 11)
  %i.cbh = xor i32 %i.cbd, %i.cbg                 ; 3 uses
  %i.cbi = xor i32 %i.cbh, %i.cbb                 ; 2 uses
  %i.cbj = xor i32 %i.cbf, %i.cbi                 ; 2 uses
  %i.cbk = xor i32 %i.cbc, %i.cbd                 ; 3 uses
  %i.cbl = xor i32 %i.cbj, %i.cbk                 ; 3 uses
  %i.cbm = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbh, i32 %i.cbh, i32 11)
  %i.cbn = xor i32 %i.cbk, %i.cbm                 ; 3 uses
  %i.cbo = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbn, i32 %i.cbn, i32 11)
  %i.cbp = xor i32 %i.cbl, %i.cbo                 ; 3 uses
  %i.cbq = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbp, i32 %i.cbp, i32 11)
  %i.cbr = shl i32 %i.cbk, 9
  %i.cbs = xor i32 %i.cbj, %i.cbr
  %i.cbt = xor i32 %i.cbn, %i.cbi                 ; 2 uses
  %i.cbu = xor i32 %i.cbs, %i.cbt                 ; 2 uses
  %i.cbv = shl i32 %i.cbl, 9
  %i.cbw = xor i32 %i.cbu, %i.cbv
  %i.cbx = xor i32 %i.cbp, %i.cbt
  %i.cby = xor i32 %i.cbu, %i.cbl
  br label %.preheader.i530

.preheader.i530:                                  ; preds = %.preheader.i530.preheader, %._crit_edge.i535
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %._crit_edge.i535 ], [ %i.cag, %.preheader.i530.preheader ] ; 2 uses
  %.sroa.0.087.i = phi i32 [ %.sroa.0.2.i, %._crit_edge.i535 ], [ %i.cbx, %.preheader.i530.preheader ]
  %.sroa.13.086.i = phi i32 [ %.sroa.13.2.i, %._crit_edge.i535 ], [ %i.cby, %.preheader.i530.preheader ]
  %.sroa.24.085.i = phi i32 [ %.sroa.24.2.i, %._crit_edge.i535 ], [ %i.cbw, %.preheader.i530.preheader ]
  %.sroa.35.084.i = phi i32 [ %.sroa.35.2.i, %._crit_edge.i535 ], [ %i.cbq, %.preheader.i530.preheader ]
  %i.cbz = mul nsw i64 %indvars.iv91.i, %i.bdx
  br label %bb.eb

._crit_edge.i535:                                 ; preds = %bb.ec
  %indvars.iv.next92.i = add nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %lftr.wideiv93.i = trunc i64 %indvars.iv.next92.i to i32
  %exitcond94.not.i = icmp eq i32 %i.cac, %lftr.wideiv93.i
  br i1 %exitcond94.not.i, label %_add_poisson_noise.exit, label %.preheader.i530

bb.eb:                                            ; preds = %bb.ec, %.preheader.i530
  %indvars.iv.i531 = phi i64 [ %i.cad, %.preheader.i530 ], [ %indvars.iv.next.i532, %bb.ec ] ; 3 uses
  %.sroa.0.179.i = phi i32 [ %.sroa.0.087.i, %.preheader.i530 ], [ %.sroa.0.2.i, %bb.ec ] ; 4 uses
  %.sroa.13.178.i = phi i32 [ %.sroa.13.086.i, %.preheader.i530 ], [ %.sroa.13.2.i, %bb.ec ] ; 4 uses
  %.sroa.24.177.i = phi i32 [ %.sroa.24.085.i, %.preheader.i530 ], [ %.sroa.24.2.i, %bb.ec ] ; 2 uses
  %.sroa.35.176.i = phi i32 [ %.sroa.35.084.i, %.preheader.i530 ], [ %.sroa.35.2.i, %bb.ec ] ; 3 uses
  %i.cca = add nsw i64 %indvars.iv.i531, %i.cbz   ; 2 uses
  %i.ccb = getelementptr inbounds nuw [4 x i8], ptr %i.bdz, i64 %i.cca
  %i.ccc = load i32, ptr %i.ccb, align 4, !tbaa !22
  %i.ccd = zext i32 %i.ccc to i64
  %i.cce = icmp eq i64 %indvars.iv735, %i.ccd
  br i1 %i.cce, label %poisson_noise.exit.i, label %bb.ec

poisson_noise.exit.i:                             ; preds = %bb.eb
  %i.ccf = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.cca ; 2 uses
  %i.ccg = load float, ptr %i.ccf, align 4, !tbaa !11 ; 2 uses
  %i.cch = fmul reassoc nsz arcp contract afn float %i.ccg, %i.bde
  %i.cci = shl i32 %.sroa.13.178.i, 9
  %i.ccj = xor i32 %.sroa.24.177.i, %.sroa.0.179.i ; 2 uses
  %i.cck = xor i32 %.sroa.35.176.i, %.sroa.13.178.i ; 3 uses
  %i.ccl = xor i32 %i.ccj, %.sroa.13.178.i        ; 3 uses
  %i.ccm = xor i32 %i.cck, %.sroa.0.179.i         ; 3 uses
  %i.ccn = xor i32 %i.ccj, %i.cci
  %i.cco = tail call noundef i32 @llvm.fshl.i32(i32 %i.cck, i32 %i.cck, i32 11) ; 2 uses
  %i.ccp = add i32 %i.cco, %i.ccm
  %i.ccq = shl i32 %i.ccl, 9
  %i.ccr = xor i32 %i.ccn, %i.ccm                 ; 2 uses
  %i.ccs = xor i32 %i.cco, %i.ccl                 ; 3 uses
  %i.cct = xor i32 %i.ccr, %i.ccl
  %i.ccu = xor i32 %i.ccs, %i.ccm
  %i.ccv = xor i32 %i.ccr, %i.ccq
  %i.ccw = tail call noundef i32 @llvm.fshl.i32(i32 %i.ccs, i32 %i.ccs, i32 11)
  %i.ccx = lshr i32 %i.ccp, 8
  %i.ccy = uitofp reassoc nsz arcp contract afn nneg i32 %i.ccx to float
  %i.ccz = and i64 %indvars.iv.i531, 1
  %.not.i.i = icmp eq i64 %i.ccz, 0
  %i.cda = fmul reassoc nnan nsz arcp contract afn float %i.ccy, f0x34C90FDB
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.cda) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %.sink.i.i = select i1 %.not.i.i, float %sin.i.i, float %cos.i.i
  %i.cdb = add i32 %.sroa.35.176.i, %.sroa.0.179.i
  %i.cdc = lshr i32 %i.cdb, 8
  %i.cdd = uitofp reassoc nsz arcp contract afn nneg i32 %i.cdc to float
  %11 = fmul reassoc nnan nsz arcp contract afn float %i.cdd, f0x33800000
  %12 = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %11, float f0x00800000)
  %i.cde = tail call fast float @llvm.log.f32(float %12)
  %i.cdf = fmul reassoc nnan nsz arcp contract afn float %i.cde, -2.000000e+00
  %i.cdg = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cdf)
  %i.cdh = fmul reassoc nsz arcp contract afn float %i.cdg, %i.bde
  %i.cdi = fmul reassoc nsz arcp contract afn float %i.cdh, %.sink.i.i
  %i.cdj = fadd reassoc nsz arcp contract afn float %i.cch, 3.750000e-01
  %i.cdk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cdj, float 0.000000e+00)
  %i.cdl = tail call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.cdk)
  %i.cdm = fmul reassoc nnan nsz arcp contract afn float %i.cdl, 2.000000e+00
  %i.cdn = fadd reassoc nsz arcp contract afn float %i.cdm, %i.cdi ; 2 uses
  %i.cdo = fmul reassoc nsz arcp contract afn float %i.cdn, %i.cdn
  %i.cdp = fsub reassoc nsz arcp contract afn float %i.cdo, %i.bdy
  %i.cdq = fmul reassoc nsz arcp contract afn float %i.cdp, 2.500000e-01
  %i.cdr = fadd reassoc nsz arcp contract afn float %i.ccg, -3.750000e-01
  %i.cds = fadd reassoc nsz arcp contract afn float %i.cdr, %i.cdq
  store float %i.cds, ptr %i.ccf, align 4, !tbaa !11
  br label %bb.ec

bb.ec:                                            ; preds = %poisson_noise.exit.i, %bb.eb
  %.sroa.35.2.i = phi i32 [ %i.ccw, %poisson_noise.exit.i ], [ %.sroa.35.176.i, %bb.eb ] ; 2 uses
  %.sroa.24.2.i = phi i32 [ %i.ccv, %poisson_noise.exit.i ], [ %.sroa.24.177.i, %bb.eb ] ; 2 uses
  %.sroa.13.2.i = phi i32 [ %i.cct, %poisson_noise.exit.i ], [ %.sroa.13.178.i, %bb.eb ] ; 2 uses
  %.sroa.0.2.i = phi i32 [ %i.ccu, %poisson_noise.exit.i ], [ %.sroa.0.179.i, %bb.eb ] ; 2 uses
  %indvars.iv.next.i532 = add nsw i64 %indvars.iv.i531, 1 ; 2 uses
  %lftr.wideiv.i533 = trunc i64 %indvars.iv.next.i532 to i32
  %exitcond.not.i534 = icmp eq i32 %i.bzv, %lftr.wideiv.i533
  br i1 %exitcond.not.i534, label %._crit_edge.i535, label %bb.eb

_add_poisson_noise.exit:                          ; preds = %._crit_edge.i535, %bb.ea, %bb.dz
  %indvars.iv.next736 = add nuw nsw i64 %indvars.iv735, 1 ; 2 uses
  %exitcond739.not = icmp eq i64 %indvars.iv.next736, %wide.trip.count738
  br i1 %exitcond739.not, label %.loopexit581, label %bb.dz

.loopexit581:                                     ; preds = %_add_poisson_noise.exit, %._crit_edge640, %._crit_edge640.thread
  %i.cdt = sitofp reassoc nsz arcp contract afn i32 %i.bn to float
  %i.cdu = fadd reassoc nsz arcp contract afn float %i.cdt, 2.000000e+00 ; 2 uses
  %i.cdv = load i32, ptr %i.cg, align 4, !tbaa !308 ; 2 uses
  %i.cdw = add i32 %i.cdv, -1
  %i.cdx = icmp sgt i32 %i.cdv, 2
  br i1 %i.cdx, label %.preheader579.lr.ph, label %.loopexit

.preheader579.lr.ph:                              ; preds = %.loopexit581
  %i.cdy = load i32, ptr %i.ca, align 4, !tbaa !310 ; 3 uses
  %i.cdz = icmp sgt i32 %i.cdy, 2
  %i.cea = sext i32 %i.cdy to i64
  br i1 %i.cdz, label %.preheader579.preheader, label %.loopexit

.preheader579.preheader:                          ; preds = %.preheader579.lr.ph
  %i.ceb = add nsw i32 %i.cdy, -1                 ; 2 uses
  %wide.trip.count753 = zext nneg i32 %i.cdw to i64
  %wide.trip.count743 = zext i32 %i.ceb to i64
  %wide.trip.count748 = zext i32 %i.ceb to i64
  br label %.preheader579

.preheader579:                                    ; preds = %.preheader579.preheader, %._crit_edge645
  %indvars.iv750 = phi i64 [ 1, %.preheader579.preheader ], [ %indvars.iv.next751, %._crit_edge645 ] ; 5 uses
  %i.cec = mul nuw nsw i64 %indvars.iv750, %i.cea ; 2 uses
  %indvars.iv750.tr = trunc i64 %indvars.iv750 to i32
  %i.ced = shl i32 %indvars.iv750.tr, 1
  %i.cee = and i32 %i.ced, 14
  %i.cef = trunc i64 %indvars.iv750 to i32
  %i.ceg = add i32 %i.cef, 600
  %i.ceh = urem i32 %i.ceg, 6
  %i.cei = zext nneg i32 %i.ceh to i64
  %i.cej = getelementptr inbounds nuw [6 x i8], ptr %i.ac, i64 %i.cei
  %i.cek = trunc nuw nsw i64 %indvars.iv750 to i32
  %i.cel = udiv i32 %i.cek, 3
  %i.cem = add nuw nsw i32 %i.cel, 8
  %i.cen = mul nsw i32 %i.cem, %i.dl
  %i.ceo = add i32 %i.cen, 8                      ; 2 uses
  br i1 %.not453, label %fcol.exit538.us, label %fcol.exit538

fcol.exit538.us:                                  ; preds = %.preheader579, %bb.ee
  %indvars.iv745 = phi i64 [ %indvars.iv.next746, %bb.ee ], [ 1, %.preheader579 ] ; 4 uses
  %i.cep = add nuw nsw i64 %i.cec, %indvars.iv745 ; 2 uses
  %i.ceq = trunc i64 %indvars.iv745 to i32
  %i.cer = add i32 %i.ceq, 600
  %i.ces = urem i32 %i.cer, 6
  %i.cet = zext nneg i32 %i.ces to i64
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cej, i64 %i.cet
  %i.cev = load i8, ptr %i.ceu, align 1, !tbaa !332
  %i.cew = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cep
  %i.cex = load float, ptr %i.cew, align 4, !tbaa !11
  %i.cey = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cex, float 0.000000e+00)
  %i.cez = zext i8 %i.cev to i64
  %i.cfa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cez
  %i.cfb = load float, ptr %i.cfa, align 4, !tbaa !11
  %i.cfc = fcmp reassoc nsz arcp contract afn ogt float %i.cey, %i.cfb
  br i1 %i.cfc, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %fcol.exit538.us
  %i.cfd = trunc nuw nsw i64 %indvars.iv745 to i32
  %i.cfe = udiv i32 %i.cfd, 3
  %i.cff = add i32 %i.ceo, %i.cfe
  %i.cfg = sext i32 %i.cff to i64                 ; 2 uses
  %i.cfh = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.cfg
  %i.cfi = load float, ptr %i.cfh, align 4, !tbaa !11
  %i.cfj = fsub reassoc nsz arcp contract afn float %i.cdu, %i.cfi
  %i.cfk = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cfj)
  %i.cfl = fadd reassoc nsz arcp contract afn float %i.cfk, 1.000000e+00
  %i.cfm = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.cfg
  %i.cfn = load float, ptr %i.cfm, align 4, !tbaa !11
  %i.cfo = fmul reassoc nsz arcp contract afn float %i.cfn, %i.bk
  %i.cfp = fdiv reassoc nsz arcp contract afn float %i.cfo, %i.cfl
  %i.cfq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cfp, float 0.000000e+00)
  %i.cfr = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cep ; 2 uses
  %i.cfs = load float, ptr %i.cfr, align 4, !tbaa !11
  %i.cft = fadd reassoc nsz arcp contract afn float %i.cfq, %i.cfs
  store float %i.cft, ptr %i.cfr, align 4, !tbaa !11
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %fcol.exit538.us
  %indvars.iv.next746 = add nuw nsw i64 %indvars.iv745, 1 ; 2 uses
  %exitcond749.not = icmp eq i64 %indvars.iv.next746, %wide.trip.count748
  br i1 %exitcond749.not, label %._crit_edge645, label %fcol.exit538.us

._crit_edge645:                                   ; preds = %bb.eg, %bb.ee
  %indvars.iv.next751 = add nuw nsw i64 %indvars.iv750, 1 ; 2 uses
  %exitcond754.not = icmp eq i64 %indvars.iv.next751, %wide.trip.count753
  br i1 %exitcond754.not, label %.loopexit, label %.preheader579

fcol.exit538:                                     ; preds = %.preheader579, %bb.eg
  %indvars.iv740 = phi i64 [ %indvars.iv.next741, %bb.eg ], [ 1, %.preheader579 ] ; 3 uses
  %i.cfu = add nuw nsw i64 %i.cec, %indvars.iv740 ; 2 uses
  %i.cfv = trunc nuw nsw i64 %indvars.iv740 to i32 ; 2 uses
  %i.cfw = and i32 %i.cfv, 1
  %.tr.i.i536 = or disjoint i32 %i.cfw, %i.cee
  %i.cfx = shl nuw nsw i32 %.tr.i.i536, 1
  %i.cfy = lshr i32 %i.i, %i.cfx
  %i.cfz = and i32 %i.cfy, 3
  %i.cga = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cfu
  %i.cgb = load float, ptr %i.cga, align 4, !tbaa !11
  %i.cgc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cgb, float 0.000000e+00)
  %i.cgd = zext nneg i32 %i.cfz to i64
  %i.cge = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cgd
  %i.cgf = load float, ptr %i.cge, align 4, !tbaa !11
  %i.cgg = fcmp reassoc nsz arcp contract afn ogt float %i.cgc, %i.cgf
  br i1 %i.cgg, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %fcol.exit538
  %i.cgh = udiv i32 %i.cfv, 3
  %i.cgi = add i32 %i.ceo, %i.cgh
  %i.cgj = sext i32 %i.cgi to i64                 ; 2 uses
  %i.cgk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.cgj
  %i.cgl = load float, ptr %i.cgk, align 4, !tbaa !11
  %i.cgm = fsub reassoc nsz arcp contract afn float %i.cdu, %i.cgl
  %i.cgn = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cgm)
  %i.cgo = fadd reassoc nsz arcp contract afn float %i.cgn, 1.000000e+00
  %i.cgp = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.cgj
  %i.cgq = load float, ptr %i.cgp, align 4, !tbaa !11
  %i.cgr = fmul reassoc nsz arcp contract afn float %i.cgq, %i.bk
  %i.cgs = fdiv reassoc nsz arcp contract afn float %i.cgr, %i.cgo
  %i.cgt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cgs, float 0.000000e+00)
  %i.cgu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cfu ; 2 uses
  %i.cgv = load float, ptr %i.cgu, align 4, !tbaa !11
  %i.cgw = fadd reassoc nsz arcp contract afn float %i.cgt, %i.cgv
  store float %i.cgw, ptr %i.cgu, align 4, !tbaa !11
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %fcol.exit538
  %indvars.iv.next741 = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %exitcond744.not = icmp eq i64 %indvars.iv.next741, %wide.trip.count743
  br i1 %exitcond744.not, label %._crit_edge645, label %fcol.exit538

.loopexit:                                        ; preds = %._crit_edge645, %.loopexit581, %.preheader579.lr.ph, %bb.as, %bb.ar
  %i.cgx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cgy = load i32, ptr %i.cgx, align 4, !tbaa !308 ; 2 uses
  %i.cgz = icmp sgt i32 %i.cgy, 0
  br i1 %i.cgz, label %.preheader.lr.ph, label %._crit_edge653.split

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.cha = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.chb = load i32, ptr %i.cha, align 4, !tbaa !310 ; 3 uses
  %i.chc = icmp sgt i32 %i.chb, 0
  %i.chd = sext i32 %i.chb to i64                 ; 2 uses
  %i.che = icmp eq i32 %6, 1
  %i.chf = getelementptr inbounds nuw i8, ptr %8, i64 372
  %i.chg = load i32, ptr %i.chf, align 4
  %i.chh = getelementptr inbounds nuw i8, ptr %8, i64 376
  %i.chi = load i32, ptr %i.chh, align 8
  %i.chj = getelementptr inbounds nuw i8, ptr %8, i64 364
  %i.chk = load i32, ptr %i.chj, align 4
  %i.chl = sub nsw i32 %i.chi, %i.chk
  %i.chm = mul nsw i32 %i.chl, %i.chg
  %i.chn = load ptr, ptr %i.du, align 16
  %i.cho = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.chp = load i32, ptr %i.cho, align 8
  br i1 %i.chc, label %.preheader.lr.ph.split, label %._crit_edge653.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.chq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.chr = load i32, ptr %i.chq, align 4, !tbaa !300
  %i.chs = load i32, ptr %4, align 4, !tbaa !299
  %i.cht = shl nuw nsw i64 %i.chd, 2
  %i.chu = zext nneg i32 %i.chb to i64            ; 2 uses
  %i.chv = shl nuw nsw i64 %i.chu, 2
  %i.chw = sext i32 %i.chs to i64
  %i.chx = sext i32 %i.chr to i64
  %wide.trip.count769 = zext nneg i32 %i.cgy to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge649
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge649 ] ; 4 uses
  %i.chy = mul i64 %i.cht, %indvar
  %scevgep759 = getelementptr i8, ptr %2, i64 %i.chy
  %i.chz = add nsw i64 %indvar, %i.chx            ; 7 uses
  %i.cia = mul nuw nsw i64 %indvar, %i.chd
  %i.cib = icmp sgt i64 %i.chz, -1
  %i.cic = trunc nsw i64 %i.chz to i32            ; 2 uses
  %i.cid = udiv i32 %i.cic, 3
  %i.cie = add nuw nsw i32 %i.cid, 8
  %i.cif = mul nsw i32 %i.cie, %i.dl
  %invariant.op = add i32 %i.cif, 8
  %i.cig = icmp ne i64 %i.chz, 0
  %i.cih = shl nuw i32 %i.cic, 1
  %i.cii = and i32 %i.cih, 14
  %i.cij = trunc i64 %i.chz to i32
  %i.cik = add i32 %i.cij, 600
  %i.cil = urem i32 %i.cik, 6
  %i.cim = zext nneg i32 %i.cil to i64
  %i.cin = getelementptr inbounds nuw [6 x i8], ptr %i.ac, i64 %i.cim
  br i1 %i.cib, label %.lr.ph648.split.us, label %._crit_edge649.sink.split

.lr.ph648.split.us:                               ; preds = %.preheader
  %i.cio = load i32, ptr %i.cg, align 4, !tbaa !308 ; 2 uses
  %i.cip = sext i32 %i.cio to i64
  %i.ciq = icmp slt i64 %i.chz, %i.cip
  %i.cir = add nsw i32 %i.cio, -1
  %i.cis = sext i32 %i.cir to i64
  %i.cit = icmp samesign ult i64 %i.chz, %i.cis
  %.fr651 = freeze i1 %i.ciq
  br i1 %.fr651, label %.lr.ph648.split.us.split, label %._crit_edge649.sink.split

.lr.ph648.split.us.split:                         ; preds = %.lr.ph648.split.us, %bb.eu
  %indvars.iv763 = phi i64 [ %indvars.iv.next764, %bb.eu ], [ 0, %.lr.ph648.split.us ] ; 3 uses
  %i.ciu = add nsw i64 %indvars.iv763, %i.chw     ; 7 uses
  %i.civ = add nuw nsw i64 %i.cia, %indvars.iv763 ; 3 uses
  %i.ciw = icmp sgt i64 %i.ciu, -1
  br i1 %i.ciw, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph648.split.us.split
  %i.cix = load i32, ptr %i.ca, align 4, !tbaa !310 ; 3 uses
  %i.ciy = sext i32 %i.cix to i64
  %i.ciz = icmp slt i64 %i.ciu, %i.ciy
  br i1 %i.ciz, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph648.split.us.split
  %i.cja = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.civ
  store float 0.000000e+00, ptr %i.cja, align 4, !tbaa !11
  br label %bb.eu

bb.ej:                                            ; preds = %bb.eh
  %i.cjb = trunc nuw nsw i64 %i.ciu to i32        ; 2 uses
  %i.cjc = udiv i32 %i.cjb, 3
  %.reass650.us = add i32 %i.cjc, %invariant.op   ; 3 uses
  %i.cjd = sext i32 %.reass650.us to i64          ; 4 uses
  br i1 %i.aoi, label %bb.ek, label %.thread553.us

.thread553.us:                                    ; preds = %bb.ej
  %i.cje = zext nneg i32 %i.cix to i64
  %i.cjf = mul nuw nsw i64 %i.chz, %i.cje
  %i.cjg = getelementptr [4 x i8], ptr %7, i64 %i.cjf
  %i.cjh = getelementptr [4 x i8], ptr %i.cjg, i64 %i.ciu
  %i.cji = load float, ptr %i.cjh, align 4, !tbaa !11
  %i.cjj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.civ
  store float %i.cji, ptr %i.cjj, align 4, !tbaa !11
  br label %bb.eu

bb.ek:                                            ; preds = %bb.ej
  %i.cjk = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %i.cjd
  %i.cjl = load float, ptr %i.cjk, align 4, !tbaa !11
  %13 = fmul reassoc nsz arcp contract afn float %i.cjl, 2.000000e-01
  %14 = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %13, float 2.000000e-01) ; 6 uses
  %i.cjm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.civ ; 4 uses
  store float %14, ptr %i.cjm, align 4, !tbaa !11
  %i.cjn = icmp ne i64 %i.ciu, 0
  %or.cond11.us = and i1 %i.cig, %i.cjn
  %or.cond561.us = select i1 %or.cond11.us, i1 %i.cit, i1 false
  %i.cjo = add nsw i32 %i.cix, -1
  %i.cjp = sext i32 %i.cjo to i64
  %i.cjq = icmp samesign ult i64 %i.ciu, %i.cjp
  %or.cond563.us = select i1 %or.cond561.us, i1 %i.cjq, i1 false
  br i1 %or.cond563.us, label %bb.el, label %bb.eu

bb.el:                                            ; preds = %bb.ek
  br i1 %.not453, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.cjr = and i32 %i.cjb, 1
  %.tr.i.i539.us = or disjoint i32 %i.cii, %i.cjr
  %i.cjs = shl nuw nsw i32 %.tr.i.i539.us, 1
  %i.cjt = lshr i32 %i.i, %i.cjs
  %i.cju = and i32 %i.cjt, 3
  br label %fcol.exit541.us

bb.en:                                            ; preds = %bb.el
  %i.cjv = trunc nuw nsw i64 %i.ciu to i32
  %i.cjw = add nuw i32 %i.cjv, 600
  %i.cjx = urem i32 %i.cjw, 6
  %i.cjy = zext nneg i32 %i.cjx to i64
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cin, i64 %i.cjy
  %i.cka = load i8, ptr %i.cjz, align 1, !tbaa !332
  %i.ckb = zext i8 %i.cka to i32
  br label %fcol.exit541.us

fcol.exit541.us:                                  ; preds = %bb.en, %bb.em
  %.0.i540.us = phi i32 [ %i.ckb, %bb.en ], [ %i.cju, %bb.em ]
  %i.ckc = zext nneg i32 %.0.i540.us to i64
  %i.ckd = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %i.ckc ; 6 uses
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckd, i64 84
  %i.ckf = load i32, ptr %i.cke, align 4, !tbaa !23
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.ckd, i64 88
  %i.ckh = load i32, ptr %i.ckg, align 8, !tbaa !27
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ckd, i64 76
  %i.ckj = load i32, ptr %i.cki, align 4, !tbaa !28
  %i.ckk = sub nsw i32 %i.ckh, %i.ckj
  %i.ckl = mul nsw i32 %i.ckk, %i.ckf
  %.not.i542.us = icmp ult i32 %.reass650.us, %i.ckl
  br i1 %.not.i542.us, label %_get_segment_id.exit545.us, label %_get_segment_id.exit545.thread.us

_get_segment_id.exit545.us:                       ; preds = %fcol.exit541.us
  %i.ckm = load ptr, ptr %i.ckd, align 16, !tbaa !30
  %i.ckn = getelementptr inbounds nuw [4 x i8], ptr %i.ckm, i64 %i.cjd
  %i.cko = load i32, ptr %i.ckn, align 4, !tbaa !22 ; 2 uses
  %i.ckp = and i32 %i.cko, 262143                 ; 3 uses
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.ckd, i64 72
  %i.ckr = load i32, ptr %i.ckq, align 8, !tbaa !47
  %i.cks = icmp ult i32 %i.ckp, %i.ckr
  %i.ckt = icmp samesign ugt i32 %i.ckp, 1
  %or.cond.i544.us = select i1 %i.cks, i1 %i.ckt, i1 false ; 3 uses
  %i.cku = select i1 %or.cond.i544.us, i32 %i.ckp, i32 0
  %or.cond13.us = select i1 %i.che, i1 %or.cond.i544.us, i1 false
  br i1 %or.cond13.us, label %bb.et, label %_get_segment_id.exit545.thread.us

_get_segment_id.exit545.thread.us:                ; preds = %_get_segment_id.exit545.us, %fcol.exit541.us
  %i.ckv = phi i1 [ %or.cond.i544.us, %_get_segment_id.exit545.us ], [ false, %fcol.exit541.us ]
  %.0.i543558.us = phi i32 [ %i.cku, %_get_segment_id.exit545.us ], [ 0, %fcol.exit541.us ]
  switch i32 %6, label %bb.eu [
    i32 2, label %bb.eq
    i32 3, label %bb.eo
  ]

bb.eo:                                            ; preds = %_get_segment_id.exit545.thread.us
  %.not.i546.us = icmp ult i32 %.reass650.us, %i.chm
  br i1 %.not.i546.us, label %_get_segment_id.exit549.us, label %_get_segment_id.exit549.thread.us

_get_segment_id.exit549.us:                       ; preds = %bb.eo
  %i.ckw = getelementptr inbounds nuw [4 x i8], ptr %i.chn, i64 %i.cjd
  %i.ckx = load i32, ptr %i.ckw, align 4, !tbaa !22
  %i.cky = and i32 %i.ckx, 262143                 ; 2 uses
  %i.ckz = icmp ult i32 %i.cky, %i.chp
  %i.cla = icmp samesign ugt i32 %i.cky, 1
  %or.cond.i548.us = select i1 %i.ckz, i1 %i.cla, i1 false
  br i1 %or.cond.i548.us, label %bb.ep, label %_get_segment_id.exit549.thread.us

bb.ep:                                            ; preds = %_get_segment_id.exit549.us
  %i.clb = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.cjd
  %i.clc = load float, ptr %i.clb, align 4, !tbaa !11
  %i.cld = fmul reassoc nsz arcp contract afn float %i.clc, %i.bk
  %i.cle = fadd reassoc nsz arcp contract afn float %i.cld, %14
  br label %_get_segment_id.exit549.thread.us

_get_segment_id.exit549.thread.us:                ; preds = %bb.ep, %_get_segment_id.exit549.us, %bb.eo
  %i.clf = phi float [ %i.cle, %bb.ep ], [ %14, %_get_segment_id.exit549.us ], [ %14, %bb.eo ]
  store float %i.clf, ptr %i.cjm, align 4, !tbaa !11
  br label %bb.eu

bb.eq:                                            ; preds = %_get_segment_id.exit545.thread.us
  br i1 %i.ckv, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  %i.clg = getelementptr inbounds nuw i8, ptr %i.ckd, i64 56
  %i.clh = load ptr, ptr %i.clg, align 8, !tbaa !37
  %i.cli = zext nneg i32 %.0.i543558.us to i64
  %i.clj = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cli
  %i.clk = load float, ptr %i.clj, align 4, !tbaa !11
  %i.cll = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.clk)
  %i.clm = fcmp reassoc nsz arcp contract afn uge float %i.cll, f0x3089705F
  br i1 %i.clm, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.cln = fadd reassoc nsz arcp contract afn float %14, 1.000000e+00
  store float %i.cln, ptr %i.cjm, align 4, !tbaa !11
  br label %bb.eu

bb.et:                                            ; preds = %_get_segment_id.exit545.us
  %i.clo = and i32 %i.cko, 262144
  %.not456.us = icmp eq i32 %i.clo, 0
  %i.clp = select reassoc nsz arcp contract afn i1 %.not456.us, float 6.000000e-01, float 1.000000e+00
  %i.clq = fadd reassoc nsz arcp contract afn float %i.clp, %14
  store float %i.clq, ptr %i.cjm, align 4, !tbaa !11
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.er, %bb.eq, %_get_segment_id.exit549.thread.us, %_get_segment_id.exit545.thread.us, %bb.ek, %.thread553.us, %bb.ei
  %indvars.iv.next764 = add nuw nsw i64 %indvars.iv763, 1 ; 2 uses
  %exitcond767.not = icmp eq i64 %indvars.iv.next764, %i.chu
  br i1 %exitcond767.not, label %._crit_edge649, label %.lr.ph648.split.us.split

._crit_edge653.split:                             ; preds = %._crit_edge649, %.preheader.lr.ph, %.loopexit
  %i.clr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !336
  %i.cls = and i32 %i.clr, 16
  %.not454.not = icmp eq i32 %i.cls, 0
  br i1 %.not454.not, label %bb.ew, label %bb.ev

._crit_edge649.sink.split:                        ; preds = %.lr.ph648.split.us, %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep759, i8 0, i64 %i.chv, i1 false), !tbaa !11
  br label %._crit_edge649

._crit_edge649:                                   ; preds = %bb.eu, %._crit_edge649.sink.split
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond770.not = icmp eq i64 %indvar.next, %wide.trip.count769
  br i1 %exitcond770.not, label %._crit_edge653.split, label %.preheader

bb.ev:                                            ; preds = %._crit_edge653.split
  %i.clt = load ptr, ptr %i.j, align 8, !tbaa !281
  %i.clu = getelementptr inbounds nuw i8, ptr %i.clt, i64 644
  %i.clv = load i32, ptr %i.clu, align 4, !tbaa !325
  %i.clw = tail call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.clv) #33
  %i.clx = load i32, ptr %i.ca, align 4, !tbaa !310
  %i.cly = load i32, ptr %i.cg, align 4, !tbaa !308
  %i.clz = mul nsw i32 %i.cly, %i.clx
  %i.cma = sitofp reassoc nsz arcp contract afn i32 %i.clz to float
  %i.cmb = fmul reassoc nnan nsz arcp contract afn float %i.cma, f0x358637BD
  %i.cmc = fpext reassoc nsz arcp contract afn float %i.cmb to double
  %i.cmd = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.cme = load i32, ptr %i.cmd, align 8, !tbaa !47
  %i.cmf = add nsw i32 %i.cme, -2
  %i.cmg = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.cmh = load i32, ptr %i.cmg, align 8, !tbaa !47
  %i.cmi = add nsw i32 %i.cmh, -2
  %i.cmj = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.cmk = load i32, ptr %i.cmj, align 8, !tbaa !47
  %i.cml = add nsw i32 %i.cmk, -2
  %i.cmm = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.cmn = load i32, ptr %i.cmm, align 8, !tbaa !47
  %i.cmo = add nsw i32 %i.cmn, -2
  %i.cmp = add nsw i32 %i.bz, -2
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef %i.clw, double noundef %i.cmc, i32 noundef %i.cmf, i32 noundef %i.cmi, i32 noundef %i.cml, i32 noundef %i.cmo, i32 noundef %i.cmp) #33
  br label %bb.ew

bb.ew:                                            ; preds = %._crit_edge616, %bb.ev, %._crit_edge653.split, %bb.g, %bb.h
  %i.cmq = load ptr, ptr %8, align 16, !tbaa !30
  tail call void @free(ptr noundef %i.cmq) #33
  %i.cmr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cms = load ptr, ptr %i.cmr, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.cms) #33
  %i.cmt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cmu = load ptr, ptr %i.cmt, align 16, !tbaa !35
  tail call void @free(ptr noundef %i.cmu) #33
  %i.cmv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cmw = load ptr, ptr %i.cmv, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.cmw) #33
  %i.cmx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cmy = load ptr, ptr %i.cmx, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.cmy) #33
  %i.cmz = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cna = load ptr, ptr %i.cmz, align 16, !tbaa !33
  tail call void @free(ptr noundef %i.cna) #33
  %i.cnb = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cnc = load ptr, ptr %i.cnb, align 16, !tbaa !31
  tail call void @free(ptr noundef %i.cnc) #33
  %i.cnd = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.cne = load ptr, ptr %i.cnd, align 8, !tbaa !37
  tail call void @free(ptr noundef %i.cne) #33
  %i.cnf = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.cng = load ptr, ptr %i.cnf, align 16, !tbaa !36
  tail call void @free(ptr noundef %i.cng) #33
  %i.cnh = load ptr, ptr %i.do, align 16, !tbaa !30
  tail call void @free(ptr noundef %i.cnh) #33
  %i.cni = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.cnj = load ptr, ptr %i.cni, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.cnj) #33
  %i.cnk = getelementptr inbounds nuw i8, ptr %8, i64 112
end_hunk_1
begin_hunk_2_@wavelets_process:bb.a
  %i.os = shufflevector <4 x float> %i.kp, <4 x float> %i.lk, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ot = fmul reassoc nsz arcp contract afn <4 x float> %i.om, %i.os
  %i.ou = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.nh, i64 0
  %i.ov = insertelement <4 x float> %i.ou, float %i.ni, i64 1
  %i.ow = insertelement <4 x float> %i.ov, float %i.no, i64 2
  %i.ox = fadd reassoc nsz arcp contract afn <4 x float> %i.ot, %i.ow
  %i.oy = shufflevector <2 x float> %i.op, <2 x float> %i.or, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.oz = insertelement <4 x float> %i.oy, float -0.000000e+00, i64 3
  %i.pa = shufflevector <4 x float> %foldExtExtBinop47, <4 x float> %i.oz, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.pb = fadd reassoc nsz arcp contract afn <4 x float> %i.ox, %i.pa
  %i.pc = shufflevector <2 x float> %i.op, <2 x float> %i.or, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.pd = insertelement <4 x float> %i.pc, float %op.rdx37, i64 0
  %i.pe = insertelement <4 x float> %i.pd, float %i.ns, i64 3
  %i.pf = fadd reassoc nsz arcp contract afn <4 x float> %i.pe, %i.pb
  %i.pg = insertelement <4 x float> poison, float %i.oa, i64 0
  %i.ph = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pi = fdiv reassoc nsz arcp contract afn <4 x float> %i.pf, %i.ph
  %i.pj = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pi, <4 x float> zeroinitializer) ; 4 uses
  %i.pk = extractelement <4 x float> %i.pj, i64 0
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.pk
  %i.pl = fadd reassoc nsz arcp contract afn float %i.oe, %reass.mul.i
  %i.pm = fmul reassoc nsz arcp contract afn float %i.pl, %i.nu
  %i.pn = fmul reassoc nsz arcp contract afn float %i.pm, %i.gi
  %i.po = extractelement <4 x float> %i.ic, i64 3 ; 2 uses
  %i.pp = fsub reassoc nsz arcp contract afn float %i.km, %i.po
  %i.pq = fadd reassoc nsz arcp contract afn float %i.pn, %i.od ; 2 uses
  store float %i.pq, ptr %i.a, align 16, !tbaa !11, !noalias !606
  %i.pr = load float, ptr %i.ob, align 4, !tbaa !11, !noalias !606
  %reass.add.1.i = fsub reassoc nsz arcp contract afn float %i.pr, %i.lv
  %i.ps = extractelement <4 x float> %i.pj, i64 1
  %reass.mul.1.i = fmul reassoc nsz arcp contract afn float %reass.add.1.i, %i.ps
  %i.pt = fadd reassoc nsz arcp contract afn float %i.og, %reass.mul.1.i
  %i.pu = fmul reassoc nsz arcp contract afn float %i.pt, %i.nw
  %i.pv = fmul reassoc nsz arcp contract afn float %i.pu, %i.gj
  %i.pw = fadd reassoc nsz arcp contract afn float %i.pv, %i.of ; 2 uses
  store float %i.pw, ptr %i.r, align 4, !tbaa !11, !noalias !606
  %i.px = load float, ptr %i.ob, align 4, !tbaa !11, !noalias !606
  %reass.add.2.i = fsub reassoc nsz arcp contract afn float %i.px, %i.lv
  %i.py = extractelement <4 x float> %i.pj, i64 2
  %reass.mul.2.i = fmul reassoc nsz arcp contract afn float %reass.add.2.i, %i.py
  %i.pz = fadd reassoc nsz arcp contract afn float %i.oi, %reass.mul.2.i
  %i.qa = fmul reassoc nsz arcp contract afn float %i.pz, %i.ny
  %i.qb = fmul reassoc nsz arcp contract afn float %i.qa, %i.gk
  %i.qc = fadd reassoc nsz arcp contract afn float %i.qb, %i.oh ; 2 uses
  store float %i.qc, ptr %i.s, align 8, !tbaa !11, !noalias !606
  %i.qd = load float, ptr %i.ob, align 4, !tbaa !11, !noalias !606
  %reass.add.3.i = fsub reassoc nsz arcp contract afn float %i.qd, %i.lv
  %i.qe = extractelement <4 x float> %i.pj, i64 3
  %reass.mul.3.i = fmul reassoc nsz arcp contract afn float %reass.add.3.i, %i.qe
  %i.qf = fadd reassoc nsz arcp contract afn float %i.pp, %reass.mul.3.i
  %i.qg = fmul reassoc nsz arcp contract afn float %i.qf, %i.hy
  %i.qh = fmul reassoc nsz arcp contract afn float %i.qg, %i.gl
  %i.qi = fadd reassoc nsz arcp contract afn float %i.qh, %i.po ; 2 uses
  store float %i.qi, ptr %i.t, align 4, !tbaa !11, !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33, !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33, !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !606
  %i.qj = insertelement <4 x float> poison, float %i.pq, i64 0
  %i.qk = insertelement <4 x float> %i.qj, float %i.pw, i64 1
  %i.ql = insertelement <4 x float> %i.qk, float %i.qc, i64 2
  %i.qm = insertelement <4 x float> %i.ql, float %i.qi, i64 3
  br label %bb.q

bb.q:                                             ; preds = %.preheader293.i, %bb.p
  %i.qn = phi <4 x float> [ %i.qm, %.preheader293.i ], [ %i.ic, %bb.p ]
  br i1 %.not145.not, label %.preheader296.i, label %.preheader295.i

.preheader296.i:                                  ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep340.i, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa !11, !noalias !608
  br label %.loopexit.i

.preheader295.i:                                  ; preds = %bb.q
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hv ; 2 uses
  %i.qp = load <4 x float>, ptr %i.qo, align 16, !tbaa !11, !alias.scope !603, !noalias !608
  %i.qq = fadd reassoc nsz arcp contract afn <4 x float> %i.qp, %i.qn
  store <4 x float> %i.qq, ptr %i.qo, align 16, !tbaa !11, !alias.scope !603, !noalias !608
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader295.i, %.preheader296.i
  br i1 %.not81, label %.preheader294.preheader.i, label %.thread289.i

.preheader294.preheader.i:                        ; preds = %.loopexit.i
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hv ; 4 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.054, i64 %i.hv
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ia
  %i.qu = load <2 x float>, ptr %i.qr, align 16, !tbaa !11, !alias.scope !603, !noalias !608
  %i.qv = load <2 x float>, ptr %i.qs, align 16, !tbaa !11, !alias.scope !599, !noalias !609
  %i.qw = fadd reassoc nsz arcp contract afn <2 x float> %i.qv, %i.qu
  %i.qx = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qw, <2 x float> zeroinitializer) ; 5 uses
  %i.qy = extractelement <2 x float> %i.qx, i64 1
  store float %i.qy, ptr %i.qt, align 4, !tbaa !11, !alias.scope !603, !noalias !608
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ib ; 2 uses
  %i.ra = load float, ptr %i.qz, align 8, !tbaa !11, !alias.scope !603, !noalias !608
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.054, i64 %i.ib
  %i.rc = load float, ptr %i.rb, align 8, !tbaa !11, !alias.scope !599, !noalias !609
  %i.rd = fadd reassoc nsz arcp contract afn float %i.rc, %i.ra
  %i.re = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rd, float 0.000000e+00) ; 3 uses
  store float %i.re, ptr %i.qz, align 8, !tbaa !11, !alias.scope !603, !noalias !608
  %or.cond3.i = and i1 %i.ac, %i.id
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader294.preheader.i
  %i.rf = fmul reassoc nsz arcp contract afn <2 x float> %i.qx, %i.ak ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.ri = fmul reassoc nsz arcp contract afn float %i.re, %10 ; 3 uses
  %i.rj = add nuw nsw i64 %indvar.i, 1            ; 2 uses
  %i.rk = mul i64 %i.rj, 7109453100751455733      ; 2 uses
  %i.rl = lshr i64 %i.rk, 28
  %i.rm = xor i64 %i.rl, %i.rk
  %i.rn = mul i64 %i.rm, -3808689974395783757
  %i.ro = lshr i64 %i.rn, 32
  %i.rp = trunc nuw i64 %i.ro to i32              ; 2 uses
  %i.rq = mul nsw i64 %i.rj, %i.ho                ; 2 uses
  %i.rr = lshr i64 %i.rq, 33
  %i.rs = xor i64 %i.rr, %i.rq
  %i.rt = mul i64 %i.rs, 7109453100751455733      ; 2 uses
  %i.ru = lshr i64 %i.rt, 28
  %i.rv = xor i64 %i.ru, %i.rt
  %i.rw = mul i64 %i.rv, -3808689974395783757
  %i.rx = lshr i64 %i.rw, 32
  %i.ry = trunc nuw i64 %i.rx to i32              ; 3 uses
  %i.rz = shl i32 %i.ry, 9
  %i.sa = xor i32 %i.rp, 635086878                ; 2 uses
  %i.sb = xor i32 %i.ry, -1171427716              ; 3 uses
  %i.sc = xor i32 %i.sa, %i.ry                    ; 3 uses
  %i.sd = xor i32 %i.sb, %i.rp                    ; 2 uses
  %i.se = xor i32 %i.rz, %i.sa
  %i.sf = call noundef i32 @llvm.fshl.i32(i32 %i.sb, i32 %i.sb, i32 11)
  %i.sg = shl i32 %i.sc, 9
  %i.sh = xor i32 %i.se, %i.sd                    ; 2 uses
  %i.si = xor i32 %i.sf, %i.sc                    ; 3 uses
  %i.sj = xor i32 %i.sh, %i.sc                    ; 3 uses
  %i.sk = xor i32 %i.si, %i.sd                    ; 2 uses
  %i.sl = xor i32 %i.sh, %i.sg
  %i.sm = call noundef i32 @llvm.fshl.i32(i32 %i.si, i32 %i.si, i32 11)
  %i.sn = shl i32 %i.sj, 9
  %i.so = xor i32 %i.sl, %i.sk                    ; 2 uses
  %i.sp = xor i32 %i.sj, %i.sm                    ; 3 uses
  %i.sq = xor i32 %i.so, %i.sj                    ; 3 uses
  %i.sr = xor i32 %i.sp, %i.sk                    ; 2 uses
  %i.ss = xor i32 %i.so, %i.sn
  %i.st = call noundef i32 @llvm.fshl.i32(i32 %i.sp, i32 %i.sp, i32 11)
  %i.su = shl i32 %i.sq, 9
  %i.sv = xor i32 %i.ss, %i.sr                    ; 2 uses
  %i.sw = xor i32 %i.sq, %i.st                    ; 3 uses
  %i.sx = xor i32 %i.sv, %i.sq                    ; 3 uses
  %i.sy = xor i32 %i.sv, %i.su
  %i.sz = shl i32 %i.sx, 9
  %i.ta = xor i32 %i.sw, %i.sr                    ; 3 uses
  %i.tb = call noundef i32 @llvm.fshl.i32(i32 %i.sw, i32 %i.sw, i32 11) ; 2 uses
  %i.tc = xor i32 %i.sy, %i.ta                    ; 2 uses
  %i.td = xor i32 %i.sx, %i.tb                    ; 3 uses
  %i.te = xor i32 %i.tc, %i.sx                    ; 3 uses
  %i.tf = xor i32 %i.td, %i.ta                    ; 3 uses
  %i.tg = xor i32 %i.tc, %i.sz
  %i.th = call noundef i32 @llvm.fshl.i32(i32 %i.td, i32 %i.td, i32 11) ; 2 uses
  %i.ti = add i32 %i.th, %i.tf
  %i.tj = shl i32 %i.te, 9
  %i.tk = xor i32 %i.tg, %i.tf                    ; 2 uses
  %i.tl = xor i32 %i.te, %i.th                    ; 3 uses
  %i.tm = xor i32 %i.tk, %i.te                    ; 3 uses
  %i.tn = xor i32 %i.tl, %i.tf                    ; 3 uses
  %i.to = xor i32 %i.tk, %i.tj
  %i.tp = call noundef i32 @llvm.fshl.i32(i32 %i.tl, i32 %i.tl, i32 11) ; 2 uses
  %i.tq = lshr i32 %i.ti, 8
  %i.tr = uitofp reassoc nsz arcp contract afn nneg i32 %i.tq to float
  %i.ts = shl i32 %i.tm, 9
  %i.tt = xor i32 %i.to, %i.tn                    ; 2 uses
  %i.tu = xor i32 %i.tm, %i.tp                    ; 3 uses
  %i.tv = xor i32 %i.tt, %i.tm                    ; 2 uses
  %i.tw = xor i32 %i.tu, %i.tn                    ; 3 uses
  %i.tx = xor i32 %i.tt, %i.ts
  %i.ty = call noundef i32 @llvm.fshl.i32(i32 %i.tu, i32 %i.tu, i32 11) ; 2 uses
  %i.tz = add i32 %i.ty, %i.tw
  %i.ua = xor i32 %i.tx, %i.tw
  %i.ub = xor i32 %i.tv, %i.ty                    ; 3 uses
  %i.uc = xor i32 %i.ua, %i.tv
  %i.ud = xor i32 %i.ub, %i.tw                    ; 2 uses
  %i.ue = call noundef i32 @llvm.fshl.i32(i32 %i.ub, i32 %i.ub, i32 11) ; 2 uses
  %i.uf = lshr i32 %i.tz, 8
  %i.ug = uitofp reassoc nsz arcp contract afn nneg i32 %i.uf to float
  %i.uh = xor i32 %i.uc, %i.ue                    ; 3 uses
  %i.ui = xor i32 %i.uh, %i.ud
  %i.uj = call noundef i32 @llvm.fshl.i32(i32 %i.uh, i32 %i.uh, i32 11)
  %i.uk = add i32 %i.uj, %i.ui
  %i.ul = lshr i32 %i.uk, 8
  %i.um = uitofp reassoc nsz arcp contract afn nneg i32 %i.ul to float
  %i.un = fmul reassoc nnan nsz arcp contract afn float %i.tr, f0x34C90FDB
  %sincos.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.un)
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1
  %i.uo = fmul reassoc nnan nsz arcp contract afn float %i.ug, f0x34C90FDB
  %sincos60.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.uo)
  %sin61.i.i.i = extractvalue { float, float } %sincos60.i.i.i, 0
  %i.up = fmul reassoc nnan nsz arcp contract afn float %i.um, f0x34C90FDB
  %sincos63.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.up)
  %cos65.i.i.i = extractvalue { float, float } %sincos63.i.i.i, 1
  %i.uq = add i32 %i.ue, %i.ud
  %i.ur = lshr i32 %i.uq, 8
  %i.us = uitofp reassoc nsz arcp contract afn nneg i32 %i.ur to float
  %13 = fmul reassoc nnan nsz arcp contract afn float %i.us, f0x33800000
  %14 = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %13, float f0x00800000)
  %i.ut = call fast float @llvm.log.f32(float %14)
  %i.uu = fmul reassoc nnan nsz arcp contract afn float %i.ut, -2.000000e+00
  %i.uv = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.uu)
  %i.uw = add i32 %i.tp, %i.tn
  %i.ux = add i32 %i.tb, %i.ta
  %i.uy = insertelement <2 x i32> poison, i32 %i.ux, i64 0
  %i.uz = insertelement <2 x i32> %i.uy, i32 %i.uw, i64 1
  %i.va = lshr <2 x i32> %i.uz, splat (i32 8)
  %i.vb = uitofp nneg <2 x i32> %i.va to <2 x float>
  %15 = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.vb, splat (float f0x33800000)
  %16 = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %15, <2 x float> splat (float f0x00800000))
  %i.vc = call fast <2 x float> @llvm.log.v2f32(<2 x float> %16)
  %i.vd = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.vc, splat (float -2.000000e+00)
  %i.ve = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.vd)
  %i.vf = extractelement <2 x float> %i.qx, i64 0
  %i.vg = fadd reassoc nnan nsz arcp contract afn float %i.vf, 3.750000e-01
  %i.vh = load float, ptr %i.rg, align 4, !tbaa !11, !alias.scope !603, !noalias !608 ; 2 uses
  %i.vi = fadd reassoc nsz arcp contract afn float %i.vh, 3.750000e-01
  %i.vj = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vi, float 0.000000e+00)
  %i.vk = fmul reassoc nsz arcp contract afn float %cos65.i.i.i, %i.uv
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vk, %i.ri
  %i.vm = load float, ptr %i.rh, align 8, !tbaa !11, !alias.scope !603, !noalias !608 ; 3 uses
  %i.vn = fadd reassoc nsz arcp contract afn float %i.vm, 3.750000e-01
  %i.vo = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vn, float 0.000000e+00)
  %i.vp = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.vo)
  %i.vq = fmul reassoc nnan nsz arcp contract afn float %i.vp, 2.000000e+00
  %i.vr = fadd reassoc nsz arcp contract afn float %i.vq, %i.vl ; 2 uses
  %i.vs = fmul reassoc nsz arcp contract afn float %i.vr, %i.vr
  %i.vt = fmul reassoc nsz arcp contract afn float %i.ri, %i.ri
  %i.vu = fsub reassoc nsz arcp contract afn float %i.vs, %i.vt
  %i.vv = fmul reassoc nsz arcp contract afn float %i.vu, 2.500000e-01
  %i.vw = insertelement <2 x float> poison, float %cos.i.i.i, i64 0
  %i.vx = insertelement <2 x float> %i.vw, float %sin61.i.i.i, i64 1
  %i.vy = fmul reassoc nsz arcp contract afn <2 x float> %i.vx, %i.ve
  %i.vz = fmul reassoc nsz arcp contract afn <2 x float> %i.vy, %i.rf
  %i.wa = insertelement <2 x float> poison, float %i.vg, i64 0
  %i.wb = insertelement <2 x float> %i.wa, float %i.vj, i64 1
  %i.wc = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.wb)
  %i.wd = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.wc, splat (float 2.000000e+00)
  %i.we = fadd reassoc nsz arcp contract afn <2 x float> %i.wd, %i.vz ; 2 uses
  %i.wf = fmul reassoc nsz arcp contract afn <2 x float> %i.we, %i.we
  %i.wg = fmul reassoc nsz arcp contract afn <2 x float> %i.rf, %i.rf
  %i.wh = fsub reassoc nsz arcp contract afn <2 x float> %i.wf, %i.wg
  %i.wi = fmul reassoc nsz arcp contract afn <2 x float> %i.wh, splat (float 2.500000e-01)
  %i.wj = insertelement <2 x float> %i.qx, float %i.vh, i64 1 ; 2 uses
  %i.wk = fsub reassoc nsz arcp contract afn <2 x float> splat (float -3.750000e-01), %i.wj
  %i.wl = fadd reassoc nsz arcp contract afn <2 x float> %i.wk, %i.wi
  %i.wm = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wl)
  %i.wn = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.wo = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wp = fmul reassoc nsz arcp contract afn <2 x float> %i.wm, %i.wo
  %i.wq = fadd reassoc nsz arcp contract afn <2 x float> %i.wp, %i.wj
  %i.wr = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wq, <2 x float> zeroinitializer)
  %i.ws = fsub reassoc nsz arcp contract afn float -3.750000e-01, %i.vm
  %i.wt = fadd reassoc nsz arcp contract afn float %i.ws, %i.vv
  %i.wu = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.wt)
  %i.wv = fmul reassoc nsz arcp contract afn float %i.wu, %i.hy
  %i.ww = fadd reassoc nsz arcp contract afn float %i.wv, %i.vm
  %i.wx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ww, float 0.000000e+00)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader294.preheader.i
  %i.wy = phi float [ %i.re, %.preheader294.preheader.i ], [ %i.wx, %bb.r ] ; 3 uses
  %i.wz = phi <2 x float> [ %i.qx, %.preheader294.preheader.i ], [ %i.wr, %bb.r ] ; 3 uses
  %i.xa = fmul reassoc nsz arcp contract afn <2 x float> %i.wz, %i.wz ; 2 uses
  %i.xb = fmul reassoc nsz arcp contract afn float %i.wy, %i.wy
  %i.xc = extractelement <2 x float> %i.xa, i64 1
  %i.xd = fadd reassoc nsz arcp contract afn float %i.xc, %i.xb
  %i.xe = extractelement <2 x float> %i.xa, i64 0
  %i.xf = fadd reassoc nsz arcp contract afn float %i.xd, %i.xe
  %i.xg = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.xf)
  %i.xh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xg, float f0x358637BD) ; 2 uses
  %i.xi = shufflevector <2 x float> %i.wz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xj = insertelement <4 x float> %i.xi, float %i.wy, i64 2
  %i.xk = insertelement <4 x float> %i.xj, float %i.xh, i64 3
  %i.xl = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.xh, i64 0
  %i.xm = shufflevector <4 x float> %i.xl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xn = fdiv reassoc nsz arcp contract afn <4 x float> %i.xk, %i.xm
  store <4 x float> %i.xn, ptr %i.qr, align 16, !tbaa !11, !alias.scope !603, !noalias !608
  br label %.thread289.i

.thread289.i:                                     ; preds = %bb.s, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !606
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvar.next.i, %3
  br i1 %exitcond.not.i64, label %._crit_edge.i65, label %bb.p

bb.t:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.054, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %bb.t
  %.not.i.i69 = icmp slt i32 %i.al, %i.l
  %.reass.i70 = add i32 %invariant.op.i, %i.al
  %i.xo = add nsw i32 %i.al, -1
  %i.xp = and i32 %i.xo, %i.l                     ; 3 uses
  %i.xq = icmp eq i32 %i.xp, 0
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i79, %.lr.ph214.i
  %.0171212.i = phi i64 [ 0, %.lr.ph214.i ], [ %i.yu, %._crit_edge.i79 ] ; 2 uses
  %i.xr = trunc i64 %.0171212.i to i32            ; 5 uses
  br i1 %.not.i.i69, label %bb.v, label %dwt_interleave_rows.exit.i73

bb.v:                                             ; preds = %bb.u
  %i.xs = sdiv i32 %.reass.i70, %i.al             ; 4 uses
  br i1 %i.xq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.xt = mul nsw i32 %i.xp, %i.xs                ; 2 uses
  %i.xu = icmp sgt i32 %i.xt, %i.xr
  br i1 %i.xu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.xv = sdiv i32 %i.xr, %i.xs
  %i.xw = srem i32 %i.xr, %i.xs
  %i.xx = shl nsw i32 %i.xw, %.0118
  %i.xy = add nsw i32 %i.xx, %i.xv
  br label %dwt_interleave_rows.exit.i73

bb.y:                                             ; preds = %bb.w
  %i.xz = sub nsw i32 %i.xr, %i.xt                ; 2 uses
  %i.ya = add nsw i32 %i.xs, -1                   ; 2 uses
  %i.yb = sdiv i32 %i.xz, %i.ya
  %i.yc = add nsw i32 %i.yb, %i.xp
  %i.yd = srem i32 %i.xz, %i.ya
  %i.ye = shl nsw i32 %i.yd, %.0118
  %i.yf = add nsw i32 %i.yc, %i.ye
  br label %dwt_interleave_rows.exit.i73

dwt_interleave_rows.exit.i73:                     ; preds = %bb.y, %bb.x, %bb.u
  %.1.i.i74 = phi i32 [ %i.xr, %bb.u ], [ %i.xy, %bb.x ], [ %i.yf, %bb.y ] ; 3 uses
  %i.yg = sext i32 %.1.i.i74 to i64               ; 2 uses
  %i.yh = sub i32 %.1.i.i74, %i.al
  %i.yi = call i32 @llvm.smax.i32(i32 %i.yh, i32 0)
  %i.yj = zext nneg i32 %i.yi to i64              ; 2 uses
  %i.yk = mul i64 %3, %i.yj                       ; 2 uses
  %i.yl = mul i64 %3, %i.yg                       ; 3 uses
  %i.ym = add i32 %.1.i.i74, %i.al
  %..i75 = call i32 @llvm.smin.i32(i32 %i.ym, i32 %invariant.op.i)
  %i.yn = sext i32 %..i75 to i64                  ; 2 uses
  %i.yo = mul i64 %3, %i.yn                       ; 2 uses
  br i1 %.not.i40.i, label %._crit_edge.i79, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %dwt_interleave_rows.exit.i73
  %i.yp = mul i64 %i.g, %i.yj
  %i.yq = mul i64 %i.g, %i.yg
  %i.yr = mul i64 %i.g, %i.yn
  %i.ys = getelementptr i8, ptr %6, i64 %i.yp
  %i.yt = getelementptr i8, ptr %6, i64 %i.yr
  br label %.lr.ph.i76

._crit_edge.i79:                                  ; preds = %.loopexit.i77, %dwt_interleave_rows.exit.i73
  %i.yu = add nuw nsw i64 %.0171212.i, 1          ; 2 uses
  %exitcond233.not.i = icmp eq i64 %i.yu, %4
  br i1 %exitcond233.not.i, label %guide_laplacians.exit, label %bb.u

.lr.ph.i76:                                       ; preds = %.loopexit.i77, %.lr.ph.preheader.i
  %.0179211.i = phi i64 [ %i.ada, %.loopexit.i77 ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %i.yv = shl i64 %.0179211.i, 4                  ; 3 uses
  %i.yw = add i64 %i.yv, %i.yq                    ; 2 uses
  %scevgep232.i = getelementptr i8, ptr %1, i64 %i.yw ; 3 uses
  %i.yx = add i64 %.0179211.i, %i.yl
  %i.yy = shl i64 %i.yx, 2                        ; 7 uses
  %i.yz = or disjoint i64 %i.yy, 2                ; 4 uses
  %i.za = or disjoint i64 %i.yy, 3                ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.za
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !11, !alias.scope !615, !noalias !619
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.yy
  %i.ze = load <2 x float>, ptr %i.zd, align 16, !tbaa !11, !alias.scope !610, !noalias !620 ; 3 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.yz
  %i.zg = load float, ptr %i.zf, align 8, !tbaa !11, !alias.scope !610, !noalias !620 ; 3 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.za
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !11, !alias.scope !610, !noalias !620 ; 2 uses
  %i.zj = fcmp reassoc nsz arcp contract afn ogt float %i.zc, 0.000000e+00 ; 2 uses
  br i1 %i.zj, label %.preheader.i, label %bb.z

.preheader.i:                                     ; preds = %.lr.ph.i76
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yz
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !11, !alias.scope !615, !noalias !619
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yy
  %i.zn = trunc i64 %.0179211.i to i32            ; 2 uses
  %i.zo = sub i32 %i.zn, %i.al
  %smax226.i = call i32 @llvm.smax.i32(i32 %i.zo, i32 0)
  %i.zp = zext nneg i32 %smax226.i to i64         ; 3 uses
  %i.zq = add i64 %i.yk, %i.zp
  %i.zr = shl i64 %i.zq, 4
  %scevgep.i80 = getelementptr i8, ptr %6, i64 %i.zr ; 2 uses
  %scevgep219.i = getelementptr i8, ptr %i.ys, i64 %i.yv ; 2 uses
  %i.zs = add i32 %i.al, %i.zn
  %i.zt = sext i32 %i.zs to i64
  %smin229.i = call i64 @llvm.smin.i64(i64 %i.zt, i64 %i.q) ; 3 uses
  %i.zu = add i64 %smin229.i, %i.yk
  %i.zv = shl i64 %i.zu, 4
  %scevgep220.i = getelementptr i8, ptr %6, i64 %i.zv ; 2 uses
  %i.zw = add i64 %i.yl, %i.zp
  %i.zx = shl i64 %i.zw, 4
  %scevgep222.i = getelementptr i8, ptr %6, i64 %i.zx ; 2 uses
  %scevgep223.i = getelementptr i8, ptr %6, i64 %i.yw ; 2 uses
  %i.zy = add i64 %smin229.i, %i.yl
  %i.zz = shl i64 %i.zy, 4
  %scevgep225.i = getelementptr i8, ptr %6, i64 %i.zz ; 2 uses
  %i.aaa = add i64 %i.yo, %i.zp
  %i.aab = shl i64 %i.aaa, 4
  %scevgep227.i = getelementptr i8, ptr %6, i64 %i.aab ; 2 uses
  %scevgep228.i = getelementptr i8, ptr %i.yt, i64 %i.yv ; 2 uses
end_hunk_2
