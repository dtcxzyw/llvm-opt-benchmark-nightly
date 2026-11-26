Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_decoder?download=true
inline.NumInlined: 2410
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.not.i.i.i.i = icmp eq i32 %4, 0               ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cr = shl nuw nsw i64 %i.e, 2
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #19
          to label %.noexc133 unwind label %bb.ad ; 5 uses

.noexc133:                                        ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.e ; 2 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !102
  %i.cu = add nsw i64 %i.e, -1                    ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc133
  %i.cw = getelementptr i8, ptr %i.cs, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !102
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc133, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0 = phi ptr [ %i.ct, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ct, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0208.0 = phi ptr [ %i.cs, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cs, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 18 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !128 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !182
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !183 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 4 uses
  %i.dg = trunc i64 %i.df to i32
  %.not126270 = icmp slt i32 %i.dg, 2
  br i1 %.not126270, label %.critedge130, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 160 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 14 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.dn = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %umax307 = call i64 @llvm.umax.i64(i64 %i.df, i64 1) ; 2 uses
  %wide.trip.count309 = and i64 %i.df, 2147483647
  %scevgep = getelementptr i8, ptr %.sroa.0208.0, i64 %i.dn
  %min.iters.check396 = icmp ult i32 %4, 12
  %n.vec402 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n413 = icmp eq i64 %n.vec402, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.do = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check378 = icmp ult i32 %4, 8
  %n.vec380 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n389 = icmp eq i64 %n.vec380, %wide.trip.count.i
  %xtraiter420 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod421.not = icmp eq i64 %xtraiter420, 0
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit186

bb.ae:                                            ; preds = %.lr.ph273, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169
  %indvars.iv304 = phi i64 [ 1, %.lr.ph273 ], [ %indvars.iv.next305, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit169 ] ; 9 uses
  %exitcond308.not = icmp eq i64 %indvars.iv304, %umax307
  br i1 %exitcond308.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %umax307, i64 noundef %i.df) #20
          to label %.noexc135 unwind label %bb.aj

.noexc135:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv304
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !185 ; 6 uses
  %.not233250 = icmp eq i32 %i.ds, -1
  br i1 %.not233250, label %.thread230, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !143, !noalias !403
  %i.du = urem i32 %i.ds, 3
  %.not.i.i.i150 = icmp ne i32 %i.du, 0           ; 2 uses
  %i.dv = add i32 %i.ds, -1
  %i.dw = add i32 %i.ds, 2                        ; 2 uses
  %i.dx = icmp ne i32 %i.dw, -1
  %brmerge = or i1 %.not.i.i.i150, %i.dx
  %.mux = select i1 %.not.i.i.i150, i32 %i.dv, i32 %i.dw ; 3 uses
  %i.dy = lshr i32 %.mux, 6
  %.zext.i.i.i153 = zext nneg i32 %i.dy to i64
  %i.dz = and i32 %.mux, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = zext i32 %.mux to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159
  %.083253 = phi i1 [ true, %.lr.ph ], [ %.184, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 3 uses
  %.085252 = phi i32 [ 0, %.lr.ph ], [ %.186, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 5 uses
  %.sroa.0198.0251 = phi i32 [ %i.ds, %.lr.ph ], [ %.sroa.0198.2, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159 ] ; 8 uses
  %i.ed = sext i32 %.085252 to i64
  %i.ee = getelementptr inbounds [24 x i8], ptr %6, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !58 ; 5 uses
  %i.eg = ptrtoaddr ptr %i.ef to i64
  %i.eh = lshr i32 %.sroa.0198.0251, 6
  %.zext.i.i.i = zext nneg i32 %i.eh to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.zext.i.i.i
  %i.ej = and i32 %.sroa.0198.0251, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = load i64, ptr %i.ei, align 8, !tbaa !186, !noalias !403
  %i.en = and i64 %i.em, %i.el
  %.not.i.i136 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i136, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ah
  %i.eo = load ptr, ptr %i.dh, align 8, !tbaa !203, !noalias !403
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = zext i32 %.sroa.0198.0251 to i64
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !183, !noalias !404
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.eq
  %i.et = load i32, ptr %i.es, align 4, !tbaa !185, !noalias !404 ; 5 uses
  %i.eu = icmp eq i32 %i.et, -1
  br i1 %i.eu, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ev = zext i32 %i.et to i64
  %i.ew = load ptr, ptr %i.di, align 8, !tbaa !204, !noalias !405 ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !206, !noalias !405
  %i.ez = zext i32 %i.ey to i64
  %i.fa = load ptr, ptr %i.co, align 8, !tbaa !58 ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !102 ; 2 uses
  %i.fd = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %i.fe = shufflevector <2 x i32> %i.fd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ff = add nuw <2 x i32> %i.fe, <i32 0, i32 1>
  %i.fg = urem <2 x i32> %i.ff, splat (i32 3)
  %i.fh = icmp eq <2 x i32> %i.fg, zeroinitializer ; 2 uses
  %i.fi = extractelement <2 x i1> %i.fh, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.fi, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.et, %spec.select.i.i.i.i.v
  %i.fj = zext i32 %spec.select.i.i.i.i to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !206, !noalias !406
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !102 ; 2 uses
  %i.fp = extractelement <2 x i1> %i.fh, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.fp, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.et
  %i.fq = zext i32 %.sink.i.i12.i.i to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !206, !noalias !407
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !102 ; 2 uses
  %i.fw = sext i32 %i.fc to i64
  %i.fx = icmp sgt i64 %indvars.iv304, %i.fw
  %i.fy = sext i32 %i.fo to i64
  %i.fz = icmp sgt i64 %indvars.iv304, %i.fy
  %or.cond.i = select i1 %i.fx, i1 %i.fz, i1 false
  %i.ga = sext i32 %i.fv to i64
  %i.gb = icmp sgt i64 %indvars.iv304, %i.ga
  %or.cond40.i = select i1 %or.cond.i, i1 %i.gb, i1 false
  br i1 %or.cond40.i, label %bb.ai, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.ai:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ai
  %i.gc = mul nsw i32 %i.fv, %4
  %i.gd = mul nsw i32 %i.fo, %4
  %i.ge = mul nsw i32 %i.fc, %4
  %i.gf = sext i32 %i.gd to i64                   ; 2 uses
  %i.gg = sext i32 %i.gc to i64                   ; 2 uses
  %i.gh = sext i32 %i.ge to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.gf ; 4 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %2, i64 %i.gg ; 4 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %2, i64 %i.gh ; 4 uses
  br i1 %min.iters.check396, label %.lr.ph.i138.preheader, label %vector.memcheck397

vector.memcheck397:                               ; preds = %.lr.ph.preheader.i
  %i.gi = shl nsw i64 %i.gh, 2
  %i.gj = sub i64 %i.eg, %i.a                     ; 3 uses
  %i.gk = sub i64 %i.gi, %i.gj
  %diff.check = icmp ugt i64 %i.gk, -32
  %i.gl = shl nsw i64 %i.gg, 2
  %i.gm = sub i64 %i.gl, %i.gj
  %diff.check398 = icmp ugt i64 %i.gm, -32
  %conflict.rdx = or i1 %diff.check, %diff.check398
  %i.gn = shl nsw i64 %i.gf, 2
  %i.go = sub i64 %i.gn, %i.gj
  %diff.check399 = icmp ugt i64 %i.go, -32
  %conflict.rdx400 = or i1 %conflict.rdx, %diff.check399
  br i1 %conflict.rdx400, label %.lr.ph.i138.preheader, label %vector.body403

vector.body403:                                   ; preds = %vector.memcheck397, %vector.body403
  %index404 = phi i64 [ %index.next411, %vector.body403 ], [ 0, %vector.memcheck397 ] ; 5 uses
  %i.gp = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index404 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 16
  %wide.load405 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !102
  %wide.load406 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !102
  %i.gr = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index404 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  %wide.load407 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !102
  %wide.load408 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !102
  %i.gt = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index404 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %wide.load409 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !102
  %wide.load410 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !102
  %i.gv = add <4 x i32> %wide.load407, %wide.load405
  %i.gw = add <4 x i32> %wide.load408, %wide.load406
  %i.gx = sub <4 x i32> %i.gv, %wide.load409
  %i.gy = sub <4 x i32> %i.gw, %wide.load410
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index404 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <4 x i32> %i.gx, ptr %i.gz, align 4, !tbaa !102
  store <4 x i32> %i.gy, ptr %i.ha, align 4, !tbaa !102
  %index.next411 = add nuw i64 %index404, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next411, %n.vec402
  br i1 %i.hb, label %middle.block412, label %vector.body403, !llvm.loop !372

middle.block412:                                  ; preds = %vector.body403
  br i1 %cmp.n413, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %vector.memcheck397, %.lr.ph.preheader.i, %middle.block412
  %indvars.iv.i139.ph = phi i64 [ 0, %vector.memcheck397 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec402, %middle.block412 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i138.prol.loopexit, label %.lr.ph.i138.prol

.lr.ph.i138.prol:                                 ; preds = %.lr.ph.i138.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i139.ph
  %i.hc = load i32, ptr %gep.i.prol, align 4, !tbaa !102
  %gep49.i.prol = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i139.ph
  %i.hd = load i32, ptr %gep49.i.prol, align 4, !tbaa !102
  %gep51.i.prol = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i139.ph
  %i.he = load i32, ptr %gep51.i.prol, align 4, !tbaa !102
  %i.hf = add i32 %i.hd, %i.hc
  %i.hg = sub i32 %i.hf, %i.he
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i139.ph
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !102
  %indvars.iv.next.i140.prol = or disjoint i64 %indvars.iv.i139.ph, 1
  br label %.lr.ph.i138.prol.loopexit

.lr.ph.i138.prol.loopexit:                        ; preds = %.lr.ph.i138.prol, %.lr.ph.i138.preheader
  %indvars.iv.i139.unr = phi i64 [ %indvars.iv.i139.ph, %.lr.ph.i138.preheader ], [ %indvars.iv.next.i140.prol, %.lr.ph.i138.prol ]
  %i.hi = icmp eq i64 %indvars.iv.i139.ph, %i.do
  br i1 %i.hi, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138
  %indvars.iv.i139 = phi i64 [ %indvars.iv.next.i140.1, %.lr.ph.i138 ], [ %indvars.iv.i139.unr, %.lr.ph.i138.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i139
  %i.hj = load i32, ptr %gep.i, align 4, !tbaa !102
  %gep49.i = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i139
  %i.hk = load i32, ptr %gep49.i, align 4, !tbaa !102
  %gep51.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i139
  %i.hl = load i32, ptr %gep51.i, align 4, !tbaa !102
  %i.hm = add i32 %i.hk, %i.hj
  %i.hn = sub i32 %i.hm, %i.hl
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i139
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !102
  %indvars.iv.next.i140 = add nuw nsw i64 %indvars.iv.i139, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i140
  %i.hp = load i32, ptr %gep.i.1, align 4, !tbaa !102
  %gep49.i.1 = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.next.i140
  %i.hq = load i32, ptr %gep49.i.1, align 4, !tbaa !102
  %gep51.i.1 = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next.i140
  %i.hr = load i32, ptr %gep51.i.1, align 4, !tbaa !102
  %i.hs = add i32 %i.hq, %i.hp
  %i.ht = sub i32 %i.hs, %i.hr
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next.i140
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !102
  %indvars.iv.next.i140.1 = add nuw nsw i64 %indvars.iv.i139, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i140.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i138, !llvm.loop !373

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138, %middle.block412, %bb.ai
  %i.hv = add nsw i32 %.085252, 1                 ; 2 uses
  %i.hw = icmp eq i32 %i.hv, 4
  br i1 %i.hw, label %.preheader238, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.aj:                                            ; preds = %bb.af
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %.sroa.0208.0, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIiSaIiEED2Ev.exit186, label %bb.bt

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread: ; preds = %bb.ah, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %.186 = phi i32 [ %i.hv, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit ], [ %.085252, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.085252, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %.085252, %bb.ah ] ; 3 uses
  br i1 %.083253, label %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.am

_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.hy = add nuw i32 %.sroa.0198.0251, 1         ; 2 uses
  %i.hz = urem i32 %i.hy, 3
  %.not.i.i.i141 = icmp eq i32 %i.hz, 0
  %i.ia = add i32 %.sroa.0198.0251, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i141, i32 %i.ia, i32 %i.hy ; 4 uses
  %i.ib = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.ib, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ic = load ptr, ptr %i.cm, align 8, !tbaa !143, !noalias !408
  %i.id = lshr i32 %spec.select.i.i.i, 6
  %.zext.i.i.i142 = zext nneg i32 %i.id to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %.zext.i.i.i142
  %i.if = and i32 %spec.select.i.i.i, 63
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = load i64, ptr %i.ie, align 8, !tbaa !186, !noalias !408
  %i.ij = and i64 %i.ii, %i.ih
  %.not.i.i143 = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i143, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144: ; preds = %bb.ak
  %i.ik = load ptr, ptr %i.dh, align 8, !tbaa !203, !noalias !408
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = zext i32 %spec.select.i.i.i to i64
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !183, !noalias !409
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.im
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !185, !noalias !409 ; 3 uses
  %i.iq = icmp eq i32 %i.ip, -1
  br i1 %i.iq, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144
  %i.ir = add nuw i32 %i.ip, 1                    ; 2 uses
  %i.is = urem i32 %i.ir, 3
  %.not.i.i1.i = icmp eq i32 %i.is, 0
  %i.it = add i32 %i.ip, -2
  %spec.select.i.i2.i = select i1 %.not.i.i1.i, i32 %i.it, i32 %i.ir
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.am:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.iu = urem i32 %.sroa.0198.0251, 3
  %.not.i.i.i145 = icmp eq i32 %i.iu, 0
  br i1 %.not.i.i.i145, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.am
  %i.iv = add i32 %.sroa.0198.0251, -1
  br label %bb.an

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.am
  %i.iw = add i32 %.sroa.0198.0251, 2             ; 2 uses
  %i.ix = icmp eq i32 %i.iw, -1
  br i1 %i.ix, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.an

bb.an:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i.i9.i = phi i32 [ %i.iv, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.iw, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.iy = load ptr, ptr %i.cm, align 8, !tbaa !143, !noalias !410
  %i.iz = lshr i32 %.sink.i.i9.i, 6
  %.zext.i.i.i146 = zext nneg i32 %i.iz to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.zext.i.i.i146
  %i.jb = and i32 %.sink.i.i9.i, 63
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = shl nuw i64 1, %i.jc
  %i.je = load i64, ptr %i.ja, align 8, !tbaa !186, !noalias !410
  %i.jf = and i64 %i.jd, %i.je
  %.not.i.i147 = icmp eq i64 %i.jf, 0
  br i1 %.not.i.i147, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148: ; preds = %bb.an
  %i.jg = load ptr, ptr %i.dh, align 8, !tbaa !203, !noalias !410
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = zext i32 %.sink.i.i9.i to i64
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !183, !noalias !411
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ji
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !185, !noalias !411 ; 4 uses
  %i.jm = icmp eq i32 %i.jl, -1
  br i1 %i.jm, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148
  %i.jn = urem i32 %i.jl, 3
  %.not.i.i1.i149 = icmp eq i32 %i.jn, 0
  br i1 %.not.i.i1.i149, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jo = add i32 %i.jl, -1
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.aq:                                            ; preds = %bb.ao
  %i.jp = add i32 %i.jl, 2
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.an, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148, %bb.ap, %bb.aq, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.ak, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144, %bb.al
  %.sroa.0198.1 = phi i32 [ -1, %bb.ak ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i144 ], [ %spec.select.i.i2.i, %bb.al ], [ -1, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %i.jo, %bb.ap ], [ %i.jp, %bb.aq ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i148 ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %bb.an ] ; 3 uses
  %i.jq = icmp eq i32 %.sroa.0198.1, %i.ds
  br i1 %i.jq, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.jr = icmp eq i32 %.sroa.0198.1, -1
  %or.cond = and i1 %.083253, %i.jr
  br i1 %or.cond, label %bb.as, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit159

end_hunk_0
begin_hunk_1_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.not.i.i.i.i = icmp eq i32 %4, 0               ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cr = shl nuw nsw i64 %i.e, 2
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #19
          to label %.noexc133 unwind label %bb.ad ; 5 uses

.noexc133:                                        ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.e ; 2 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !102
  %i.cu = add nsw i64 %i.e, -1                    ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc133
  %i.cw = getelementptr i8, ptr %i.cs, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !102
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc133, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0 = phi ptr [ %i.ct, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ct, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0201.0 = phi ptr [ %i.cs, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cs, %.noexc133 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 18 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !134 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !182
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !183 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 4 uses
  %i.dg = trunc i64 %i.df to i32
  %.not126263 = icmp slt i32 %i.dg, 2
  br i1 %.not126263, label %.critedge130, label %.lr.ph266

.lr.ph266:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 14 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.dm = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %umax300 = call i64 @llvm.umax.i64(i64 %i.df, i64 1) ; 2 uses
  %wide.trip.count302 = and i64 %i.df, 2147483647
  %scevgep = getelementptr i8, ptr %.sroa.0201.0, i64 %i.dm
  %min.iters.check390 = icmp ult i32 %4, 12
  %n.vec396 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n407 = icmp eq i64 %n.vec396, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dn = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check372 = icmp ult i32 %4, 8
  %n.vec374 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n383 = icmp eq i64 %n.vec374, %wide.trip.count.i
  %xtraiter414 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod415.not = icmp eq i64 %xtraiter414, 0
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit179

bb.ae:                                            ; preds = %.lr.ph266, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162
  %indvars.iv297 = phi i64 [ 1, %.lr.ph266 ], [ %indvars.iv.next298, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit162 ] ; 9 uses
  %exitcond301.not = icmp eq i64 %indvars.iv297, %umax300
  br i1 %exitcond301.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %umax300, i64 noundef %i.df) #20
          to label %.noexc135 unwind label %bb.al

.noexc135:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv297
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !185 ; 6 uses
  %.not226243 = icmp eq i32 %i.dr, -1
  br i1 %.not226243, label %.thread223, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph: ; preds = %bb.ag
  %i.ds = load ptr, ptr %i.dh, align 8, !tbaa !183, !noalias !715
  %i.dt = urem i32 %i.dr, 3
  %.not.i.i145 = icmp ne i32 %i.dt, 0             ; 2 uses
  %i.du = add i32 %i.dr, -1
  %i.dv = add i32 %i.dr, 2                        ; 2 uses
  %i.dw = icmp ne i32 %i.dv, -1
  %brmerge = or i1 %.not.i.i145, %i.dw
  %.mux = select i1 %.not.i.i145, i32 %i.du, i32 %i.dv
  %i.dx = zext i32 %.mux to i64
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152
  %.083246 = phi i1 [ true, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.184, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 3 uses
  %.085245 = phi i32 [ 0, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.186, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 4 uses
  %.sroa.0191.0244 = phi i32 [ %i.dr, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.sroa.0191.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152 ] ; 6 uses
  %i.dy = sext i32 %.085245 to i64
  %i.dz = getelementptr inbounds [24 x i8], ptr %6, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !58 ; 5 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64
  %i.ec = zext i32 %.sroa.0191.0244 to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !185, !noalias !715 ; 7 uses
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.eg = zext i32 %i.ee to i64
  %i.eh = load ptr, ptr %i.cm, align 8, !tbaa !204, !noalias !716 ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !206, !noalias !716
  %i.ek = zext i32 %i.ej to i64
  %i.el = load ptr, ptr %i.co, align 8, !tbaa !58 ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ek
  %i.en = load i32, ptr %i.em, align 4, !tbaa !102 ; 2 uses
  %i.eo = add nuw i32 %i.ee, 1                    ; 2 uses
  %i.ep = urem i32 %i.eo, 3
  %.not.i.i.i136 = icmp eq i32 %i.ep, 0
  %i.eq = add i32 %i.ee, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i136, i32 %i.eq, i32 %i.eo ; 2 uses
  %i.er = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.er, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.es = zext i32 %spec.select.i.i.i to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !206, !noalias !717
  %i.ev = zext i32 %i.eu to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.ev, %bb.ah ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %storemerge.i11.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !102 ; 2 uses
  %i.ey = urem i32 %i.ee, 3
  %.not.i13.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.ai
  %i.ez = add i32 %i.ee, -1
  br label %bb.aj

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.ai
  %i.fa = add i32 %i.ee, 2                        ; 2 uses
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.ez, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.fa, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.fc = zext i32 %.sink.i1428.i.i to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !206, !noalias !718
  %i.ff = zext i32 %i.fe to i64
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.aj, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.ff, %bb.aj ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %storemerge.i15.i.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !102 ; 2 uses
  %i.fi = sext i32 %i.en to i64
  %i.fj = icmp sgt i64 %indvars.iv297, %i.fi
  %i.fk = sext i32 %i.ex to i64
  %i.fl = icmp sgt i64 %indvars.iv297, %i.fk
  %or.cond.i = select i1 %i.fj, i1 %i.fl, i1 false
  %i.fm = sext i32 %i.fh to i64
  %i.fn = icmp sgt i64 %indvars.iv297, %i.fm
  %or.cond40.i = select i1 %or.cond.i, i1 %i.fn, i1 false
  br i1 %or.cond40.i, label %bb.ak, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ak:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ak
  %i.fo = mul nsw i32 %i.fh, %4
  %i.fp = mul nsw i32 %i.ex, %4
  %i.fq = mul nsw i32 %i.en, %4
  %i.fr = sext i32 %i.fp to i64                   ; 2 uses
  %i.fs = sext i32 %i.fo to i64                   ; 2 uses
  %i.ft = sext i32 %i.fq to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.fr ; 4 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %2, i64 %i.fs ; 4 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %2, i64 %i.ft ; 4 uses
  br i1 %min.iters.check390, label %.lr.ph.i137.preheader, label %vector.memcheck391

vector.memcheck391:                               ; preds = %.lr.ph.preheader.i
  %i.fu = shl nsw i64 %i.ft, 2
  %i.fv = sub i64 %i.eb, %i.a                     ; 3 uses
  %i.fw = sub i64 %i.fu, %i.fv
  %diff.check = icmp ugt i64 %i.fw, -32
  %i.fx = shl nsw i64 %i.fs, 2
  %i.fy = sub i64 %i.fx, %i.fv
  %diff.check392 = icmp ugt i64 %i.fy, -32
  %conflict.rdx = or i1 %diff.check, %diff.check392
  %i.fz = shl nsw i64 %i.fr, 2
  %i.ga = sub i64 %i.fz, %i.fv
  %diff.check393 = icmp ugt i64 %i.ga, -32
  %conflict.rdx394 = or i1 %conflict.rdx, %diff.check393
  br i1 %conflict.rdx394, label %.lr.ph.i137.preheader, label %vector.body397

vector.body397:                                   ; preds = %vector.memcheck391, %vector.body397
  %index398 = phi i64 [ %index.next405, %vector.body397 ], [ 0, %vector.memcheck391 ] ; 5 uses
  %i.gb = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index398 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  %wide.load399 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !102
  %wide.load400 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !102
  %i.gd = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index398 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !102
  %wide.load402 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !102
  %i.gf = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index398 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  %wide.load403 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !102
  %wide.load404 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !102
  %i.gh = add <4 x i32> %wide.load401, %wide.load399
  %i.gi = add <4 x i32> %wide.load402, %wide.load400
  %i.gj = sub <4 x i32> %i.gh, %wide.load403
  %i.gk = sub <4 x i32> %i.gi, %wide.load404
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index398 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <4 x i32> %i.gj, ptr %i.gl, align 4, !tbaa !102
  store <4 x i32> %i.gk, ptr %i.gm, align 4, !tbaa !102
  %index.next405 = add nuw i64 %index398, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next405, %n.vec396
  br i1 %i.gn, label %middle.block406, label %vector.body397, !llvm.loop !690

middle.block406:                                  ; preds = %vector.body397
  br i1 %cmp.n407, label %.loopexit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %vector.memcheck391, %.lr.ph.preheader.i, %middle.block406
  %indvars.iv.i138.ph = phi i64 [ 0, %vector.memcheck391 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec396, %middle.block406 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i138.ph
  %i.go = load i32, ptr %gep.i.prol, align 4, !tbaa !102
  %gep50.i.prol = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i138.ph
  %i.gp = load i32, ptr %gep50.i.prol, align 4, !tbaa !102
  %gep52.i.prol = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i138.ph
  %i.gq = load i32, ptr %gep52.i.prol, align 4, !tbaa !102
  %i.gr = add i32 %i.gp, %i.go
  %i.gs = sub i32 %i.gr, %i.gq
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i138.ph
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !102
  %indvars.iv.next.i139.prol = or disjoint i64 %indvars.iv.i138.ph, 1
  br label %.lr.ph.i137.prol.loopexit

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %indvars.iv.i138.unr = phi i64 [ %indvars.iv.i138.ph, %.lr.ph.i137.preheader ], [ %indvars.iv.next.i139.prol, %.lr.ph.i137.prol ]
  %i.gu = icmp eq i64 %indvars.iv.i138.ph, %i.dn
  br i1 %i.gu, label %.loopexit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139.1, %.lr.ph.i137 ], [ %indvars.iv.i138.unr, %.lr.ph.i137.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i138
  %i.gv = load i32, ptr %gep.i, align 4, !tbaa !102
  %gep50.i = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i138
  %i.gw = load i32, ptr %gep50.i, align 4, !tbaa !102
  %gep52.i = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i138
  %i.gx = load i32, ptr %gep52.i, align 4, !tbaa !102
  %i.gy = add i32 %i.gw, %i.gv
  %i.gz = sub i32 %i.gy, %i.gx
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i138
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !102
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i138, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i139
  %i.hb = load i32, ptr %gep.i.1, align 4, !tbaa !102
  %gep50.i.1 = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.next.i139
  %i.hc = load i32, ptr %gep50.i.1, align 4, !tbaa !102
  %gep52.i.1 = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.next.i139
  %i.hd = load i32, ptr %gep52.i.1, align 4, !tbaa !102
  %i.he = add i32 %i.hc, %i.hb
  %i.hf = sub i32 %i.he, %i.hd
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i139
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !102
  %indvars.iv.next.i139.1 = add nuw nsw i64 %indvars.iv.i138, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i139.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.i137, !llvm.loop !691

.loopexit:                                        ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %middle.block406, %bb.ak
  %i.hh = add nsw i32 %.085245, 1                 ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 4
  br i1 %i.hi, label %.preheader231, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.al:                                            ; preds = %bb.af
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i173 = icmp eq ptr %.sroa.0201.0, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorIiSaIiEED2Ev.exit179, label %bb.bt

_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %.loopexit
  %.186 = phi i32 [ %i.hh, %.loopexit ], [ %.085245, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.085245, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  br i1 %.083246, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.an

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.hk = add nuw i32 %.sroa.0191.0244, 1         ; 2 uses
  %i.hl = urem i32 %i.hk, 3
  %.not.i.i140 = icmp eq i32 %i.hl, 0
  %i.hm = add i32 %.sroa.0191.0244, -2
  %spec.select.i.i = select i1 %.not.i.i140, i32 %i.hm, i32 %i.hk ; 2 uses
  %i.hn = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.hn, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ho = zext i32 %spec.select.i.i to i64
  %i.hp = load ptr, ptr %i.dh, align 8, !tbaa !183, !noalias !719
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ho
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !185, !noalias !719 ; 3 uses
  %i.hs = icmp eq i32 %i.hr, -1
  br i1 %i.hs, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141
  %i.ht = add nuw i32 %i.hr, 1                    ; 2 uses
  %i.hu = urem i32 %i.ht, 3
  %.not.i1.i = icmp eq i32 %i.hu, 0
  %i.hv = add i32 %i.hr, -2
  %spec.select.i2.i = select i1 %.not.i1.i, i32 %i.hv, i32 %i.ht
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.an:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.hw = urem i32 %.sroa.0191.0244, 3
  %.not.i.i142 = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i142, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.an
  %i.hx = add i32 %.sroa.0191.0244, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.an
  %i.hy = add i32 %.sroa.0191.0244, 2             ; 2 uses
  %i.hz = icmp eq i32 %i.hy, -1
  br i1 %i.hz, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.hx, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.hy, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.ia = zext i32 %.sink.i9.i to i64
  %i.ib = load ptr, ptr %i.dh, align 8, !tbaa !183, !noalias !720
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ia
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !185, !noalias !720 ; 4 uses
  %i.ie = icmp eq i32 %i.id, -1
  br i1 %i.ie, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143
  %i.if = urem i32 %i.id, 3
  %.not.i1.i144 = icmp eq i32 %i.if, 0
  br i1 %.not.i1.i144, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ig = add i32 %i.id, -1
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ih = add i32 %i.id, 2
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143, %bb.ap, %bb.aq, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141, %bb.am
  %.sroa.0191.1 = phi i32 [ -1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i141 ], [ %spec.select.i2.i, %bb.am ], [ %i.ig, %bb.ap ], [ %i.ih, %bb.aq ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i143 ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.ii = icmp eq i32 %.sroa.0191.1, %i.dr
  br i1 %i.ii, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ij = icmp eq i32 %.sroa.0191.1, -1
  %or.cond = and i1 %.083246, %i.ij
  br i1 %or.cond, label %bb.as, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

bb.as:                                            ; preds = %bb.ar
  br i1 %brmerge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147: ; preds = %bb.as
  %i.ik = load ptr, ptr %i.dh, align 8, !tbaa !183, !noalias !721
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.dx
  %i.im = load i32, ptr %i.il, align 4, !tbaa !185, !noalias !721 ; 4 uses
  %i.in = icmp eq i32 %i.im, -1
  br i1 %i.in, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %bb.at

bb.at:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147
  %i.io = urem i32 %i.im, 3
  %.not.i1.i149 = icmp eq i32 %i.io, 0
  br i1 %.not.i1.i149, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ip = add i32 %i.im, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

bb.av:                                            ; preds = %bb.at
  %i.iq = add i32 %i.im, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152: ; preds = %bb.au, %bb.av, %bb.ar
  %.sroa.0191.2 = phi i32 [ %.sroa.0191.1, %bb.ar ], [ %i.ip, %bb.au ], [ %i.iq, %bb.av ] ; 2 uses
  %.184 = phi i1 [ %.083246, %bb.ar ], [ false, %bb.au ], [ false, %bb.av ]
  %.not226 = icmp eq i32 %.sroa.0191.2, -1
  br i1 %.not226, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, !llvm.loop !704

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit._crit_edge: ; preds = %bb.as, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit152, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
end_hunk_1
