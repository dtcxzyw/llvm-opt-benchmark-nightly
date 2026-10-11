Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/machine-operator?download=true
inline.NumInlined: 8556
inline.NumDeleted: 1529
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal8compiler22MachineOperatorBuilder9StoreLaneENS1_16MemoryAccessKindENS0_21MachineRepresentationEh:bb.a

bb.fx:                                            ; preds = %bb.fv
  %or.cond439 = and i1 %or.cond421, %i.xj
  br i1 %or.cond439, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.aln = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vc) #11
  store i32 890, ptr %i.vc, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #11
  store i8 104, ptr %168, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vd) #11
  store i32 3, ptr %i.vd, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ve) #11
  store i32 1, ptr %i.ve, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vf) #11
  store i32 1, ptr %i.vf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vg) #11
  store i32 0, ptr %i.vg, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vh) #11
  store i32 1, ptr %i.vh, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vi) #11
  store i32 0, ptr %i.vi, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #11
  store i8 0, ptr %169, align 1
  %i.alo = getelementptr inbounds nuw i8, ptr %169, i64 1
  store i8 5, ptr %i.alo, align 1
  %i.alp = getelementptr inbounds nuw i8, ptr %169, i64 2
  store i8 1, ptr %i.alp, align 1
  %i.alq = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aln, ptr noundef nonnull align 4 dereferenceable(4) %i.vc, ptr noundef nonnull align 1 dereferenceable(1) %168, ptr noundef nonnull align 1 dereferenceable(10) @.str.37, ptr noundef nonnull align 4 dereferenceable(4) %i.vd, ptr noundef nonnull align 4 dereferenceable(4) %i.ve, ptr noundef nonnull align 4 dereferenceable(4) %i.vf, ptr noundef nonnull align 4 dereferenceable(4) %i.vg, ptr noundef nonnull align 4 dereferenceable(4) %i.vh, ptr noundef nonnull align 4 dereferenceable(4) %i.vi, ptr noundef nonnull align 1 dereferenceable(3) %169)
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vi) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vg) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vf) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ve) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vd) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vc) #11
  br label %bb.ge

bb.fz:                                            ; preds = %bb.fx
  %or.cond444 = and i1 %or.cond426, %i.xj
  br i1 %or.cond444, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.alr = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vj) #11
  store i32 890, ptr %i.vj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #11
  store i8 104, ptr %170, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vk) #11
  store i32 3, ptr %i.vk, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vl) #11
  store i32 1, ptr %i.vl, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vm) #11
  store i32 1, ptr %i.vm, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vn) #11
  store i32 0, ptr %i.vn, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vo) #11
  store i32 1, ptr %i.vo, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vp) #11
  store i32 0, ptr %i.vp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #11
  store i8 1, ptr %171, align 1
  %i.als = getelementptr inbounds nuw i8, ptr %171, i64 1
  store i8 5, ptr %i.als, align 1
  %i.alt = getelementptr inbounds nuw i8, ptr %171, i64 2
  store i8 1, ptr %i.alt, align 1
  %i.alu = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.alr, ptr noundef nonnull align 4 dereferenceable(4) %i.vj, ptr noundef nonnull align 1 dereferenceable(1) %170, ptr noundef nonnull align 1 dereferenceable(10) @.str.37, ptr noundef nonnull align 4 dereferenceable(4) %i.vk, ptr noundef nonnull align 4 dereferenceable(4) %i.vl, ptr noundef nonnull align 4 dereferenceable(4) %i.vm, ptr noundef nonnull align 4 dereferenceable(4) %i.vn, ptr noundef nonnull align 4 dereferenceable(4) %i.vo, ptr noundef nonnull align 4 dereferenceable(4) %i.vp, ptr noundef nonnull align 1 dereferenceable(3) %171)
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vp) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vo) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vn) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vm) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vl) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vk) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vj) #11
  br label %bb.ge

bb.gb:                                            ; preds = %bb.fz
  %or.cond449 = and i1 %or.cond431, %i.xj
  br i1 %or.cond449, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.alv = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vq) #11
  store i32 890, ptr %i.vq, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #11
  store i8 104, ptr %172, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vr) #11
  store i32 3, ptr %i.vr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vs) #11
  store i32 1, ptr %i.vs, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vt) #11
  store i32 1, ptr %i.vt, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vu) #11
  store i32 0, ptr %i.vu, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vv) #11
  store i32 1, ptr %i.vv, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vw) #11
  store i32 0, ptr %i.vw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #11
  store i8 2, ptr %173, align 1
  %i.alw = getelementptr inbounds nuw i8, ptr %173, i64 1
  store i8 5, ptr %i.alw, align 1
  %i.alx = getelementptr inbounds nuw i8, ptr %173, i64 2
  store i8 1, ptr %i.alx, align 1
  %i.aly = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.alv, ptr noundef nonnull align 4 dereferenceable(4) %i.vq, ptr noundef nonnull align 1 dereferenceable(1) %172, ptr noundef nonnull align 1 dereferenceable(10) @.str.37, ptr noundef nonnull align 4 dereferenceable(4) %i.vr, ptr noundef nonnull align 4 dereferenceable(4) %i.vs, ptr noundef nonnull align 4 dereferenceable(4) %i.vt, ptr noundef nonnull align 4 dereferenceable(4) %i.vu, ptr noundef nonnull align 4 dereferenceable(4) %i.vv, ptr noundef nonnull align 4 dereferenceable(4) %i.vw, ptr noundef nonnull align 1 dereferenceable(3) %173)
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vv) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vu) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vt) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vs) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vr) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.vq) #11
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #12
  unreachable

bb.ge:                                            ; preds = %bb.gc, %bb.ga, %bb.fy, %bb.fw, %bb.fu, %bb.fs, %bb.fq, %bb.fo, %bb.fm, %bb.fk, %bb.fi, %bb.fg, %bb.fe, %bb.fc, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.es, %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_.exit735, %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_.exit731, %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_.exit727, %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_.exit723, %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_.exit
  %.0 = phi ptr [ %i.wi, %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_.exit ], [ %i.wu, %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_.exit723 ], [ %i.xg, %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_.exit727 ], [ %i.xs, %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_.exit731 ], [ %i.yd, %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_.exit735 ], [ %i.yj, %bb.q ], [ %i.yo, %bb.s ], [ %i.ys, %bb.u ], [ %i.yw, %bb.w ], [ %i.zb, %bb.y ], [ %i.zf, %bb.aa ], [ %i.zj, %bb.ac ], [ %i.zo, %bb.ae ], [ %i.zs, %bb.ag ], [ %i.zw, %bb.ai ], [ %i.aab, %bb.ak ], [ %i.aaf, %bb.am ], [ %i.aaj, %bb.ao ], [ %i.aao, %bb.aq ], [ %i.aas, %bb.as ], [ %i.aaw, %bb.au ], [ %i.abb, %bb.aw ], [ %i.abf, %bb.ay ], [ %i.abj, %bb.ba ], [ %i.abo, %bb.bc ], [ %i.abs, %bb.be ], [ %i.abw, %bb.bg ], [ %i.acb, %bb.bi ], [ %i.acf, %bb.bk ], [ %i.acj, %bb.bm ], [ %i.aco, %bb.bo ], [ %i.acs, %bb.bq ], [ %i.acw, %bb.bs ], [ %i.adb, %bb.bu ], [ %i.adf, %bb.bw ], [ %i.adj, %bb.by ], [ %i.ado, %bb.ca ], [ %i.ads, %bb.cc ], [ %i.adw, %bb.ce ], [ %i.aeb, %bb.cg ], [ %i.aef, %bb.ci ], [ %i.aej, %bb.ck ], [ %i.aeo, %bb.cm ], [ %i.aes, %bb.co ], [ %i.aew, %bb.cq ], [ %i.afb, %bb.cs ], [ %i.aff, %bb.cu ], [ %i.afj, %bb.cw ], [ %i.afo, %bb.cy ], [ %i.afs, %bb.da ], [ %i.afw, %bb.dc ], [ %i.aga, %bb.de ], [ %i.age, %bb.dg ], [ %i.agi, %bb.di ], [ %i.agm, %bb.dk ], [ %i.agq, %bb.dm ], [ %i.agu, %bb.do ], [ %i.agy, %bb.dq ], [ %i.ahc, %bb.ds ], [ %i.ahg, %bb.du ], [ %i.ahk, %bb.dw ], [ %i.aho, %bb.dy ], [ %i.ahs, %bb.ea ], [ %i.ahw, %bb.ec ], [ %i.aia, %bb.ee ], [ %i.aie, %bb.eg ], [ %i.aii, %bb.ei ], [ %i.aim, %bb.ek ], [ %i.aiq, %bb.em ], [ %i.aiu, %bb.eo ], [ %i.aiy, %bb.eq ], [ %i.ajc, %bb.es ], [ %i.ajh, %bb.eu ], [ %i.ajl, %bb.ew ], [ %i.ajp, %bb.ey ], [ %i.ajt, %bb.fa ], [ %i.ajx, %bb.fc ], [ %i.akb, %bb.fe ], [ %i.akf, %bb.fg ], [ %i.akj, %bb.fi ], [ %i.akn, %bb.fk ], [ %i.akr, %bb.fm ], [ %i.akv, %bb.fo ], [ %i.akz, %bb.fq ], [ %i.ale, %bb.fs ], [ %i.ali, %bb.fu ], [ %i.alm, %bb.fw ], [ %i.alq, %bb.fy ], [ %i.alu, %bb.ga ], [ %i.aly, %bb.gc ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA10_KciiiiiiS5_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 1 dereferenceable(3) %10) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 48
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4Zone8AllocateINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEEEPvm.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 48) #11
  %.pre.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler9Operator1INS3_19StoreLaneParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEEEPvm.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = add i64 %i.g, 48
  store i64 %i.i, ptr %i.c, align 8
  %i.j = load i32, ptr %1, align 4
  %i.k = trunc i32 %i.j to i16
  %.sroa.01.0.copyload = load i8, ptr %2, align 1
  %i.l = load i32, ptr %4, align 4
  %i.m = sext i32 %i.l to i64
  %i.n = load i32, ptr %5, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = load i32, ptr %6, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = load i32, ptr %7, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = load i32, ptr %8, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = load i32, ptr %9, align 4
  %i.w = sext i32 %i.v to i64
  %.sroa.0.0.copyload = load i24, ptr %10, align 1
  tail call void @_ZN2v88internal8compiler8OperatorC2EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(43) %i.h, i16 noundef zeroext %i.k, i8 %.sroa.01.0.copyload, ptr noundef nonnull %3, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.q, i64 noundef %i.s, i64 noundef %i.u, i64 noundef %i.w) #11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler9Operator1INS1_19StoreLaneParametersENS1_9OpEqualToIS3_EENS1_6OpHashIS3_EEEE, i64 16), ptr %i.h, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i24 %.sroa.0.0.copyload, ptr %i.x, align 8
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9StackSlotEiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  store i32 %1, ptr %i.a, align 4
  store i32 %2, ptr %i.b, align 4
  %i.d = zext i1 %3 to i8
  store i8 %i.d, ptr %i.c, align 1
  %i.e = icmp eq i32 %1, 4                        ; 2 uses
  %i.f = icmp eq i32 %2, 0                        ; 3 uses
  %or.cond = and i1 %i.e, %i.f
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = or i1 %3, %or.cond.not
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 31488
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %1, 8                        ; 2 uses
  %or.cond3 = and i1 %i.j, %i.f
  %i.k = xor i1 %3, true                          ; 5 uses
  %or.cond14 = and i1 %or.cond3, %i.k
  br i1 %or.cond14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !align !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 31544
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %1, 16                       ; 2 uses
  %or.cond5 = and i1 %i.o, %i.f
  %or.cond16 = and i1 %or.cond5, %i.k
  br i1 %or.cond16, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 31600
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i32 %2, 4
  %or.cond7 = and i1 %i.e, %i.s
  %or.cond18 = and i1 %or.cond7, %i.k
  br i1 %or.cond18, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !align !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 31656
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.w = icmp eq i32 %2, 8
  %or.cond9 = and i1 %i.j, %i.w
  %or.cond20 = and i1 %or.cond9, %i.k
  br i1 %or.cond20, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !align !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 31712
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.aa = icmp eq i32 %2, 16
  %or.cond11 = and i1 %i.o, %i.aa
  %or.cond22 = and i1 %or.cond11, %i.k
  br i1 %or.cond22, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !align !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 31768
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %0, align 8
  %i.af = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler17StackSlotOperatorEJRiS5_RbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.d ], [ %i.r, %bb.f ], [ %i.v, %bb.h ], [ %i.z, %bb.j ], [ %i.ad, %bb.l ], [ %i.af, %bb.m ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler17StackSlotOperatorEJRiS5_RbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 56
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4Zone8AllocateINS0_8compiler17StackSlotOperatorEEEPvm.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 56) #11
  %.pre.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler17StackSlotOperatorEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler17StackSlotOperatorEEEPvm.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 6 uses
  %i.i = add i64 %i.g, 56
  store i64 %i.i, ptr %i.c, align 8
  %i.j = load i32, ptr %1, align 4
  %i.k = load i32, ptr %2, align 4
  %i.l = load i8, ptr %3, align 1, !range !8, !noundef !5
  tail call void @_ZN2v88internal8compiler8OperatorC2EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(52) %i.h, i16 noundef zeroext 527, i8 96, ptr noundef nonnull @.str.646, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 0) #11
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 %i.j, ptr %i.m, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.k, ptr %.sroa.44.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i8 %i.l, ptr %.sroa.5.0..sroa_idx.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler17StackSlotOperatorE, i64 16), ptr %i.h, align 8
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9StackSlotENS0_21MachineRepresentationEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i8, align 1                       ; 10 uses
  switch i8 %1, label %bb.d [
    i8 1, label %.thread38
    i8 2, label %.thread38
    i8 3, label %bb.b
    i8 16, label %bb.b
    i8 4, label %_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE.exit
    i8 17, label %_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE.exit
    i8 13, label %_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE.exit
    i8 5, label %bb.f
    i8 18, label %bb.f
    i8 19, label %bb.h
    i8 20, label %bb.c
    i8 7, label %bb.f
    i8 8, label %bb.f
    i8 9, label %bb.f
    i8 6, label %bb.f
    i8 10, label %bb.f
    i8 11, label %bb.f
    i8 12, label %bb.f
    i8 14, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %.thread38

bb.c:                                             ; preds = %bb.a
  br label %.thread38

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #12
  unreachable

_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE.exit: ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 4, ptr %i.a, align 4
  store i32 %2, ptr %i.b, align 4
  store i8 0, ptr %i.c, align 1
  switch i32 %2, label %.thread35 [
    i32 0, label %bb.e
    i32 4, label %bb.j
  ]

bb.e:                                             ; preds = %_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 31488
  br label %_ZN2v88internal8compiler22MachineOperatorBuilder9StackSlotEiib.exit

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 8, ptr %i.a, align 4
  store i32 %2, ptr %i.b, align 4
  store i8 0, ptr %i.c, align 1
  switch i32 %2, label %.thread35 [
    i32 0, label %bb.g
    i32 8, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 31544
  br label %_ZN2v88internal8compiler22MachineOperatorBuilder9StackSlotEiib.exit

.thread38:                                        ; preds = %bb.c, %bb.b, %bb.a, %bb.a
  %.0.i.ph.ph.ph = phi i32 [ 0, %bb.a ], [ 5, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ]
  %i.j = shl nuw nsw i32 1, %.0.i.ph.ph.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.j, ptr %i.a, align 4
  store i32 %2, ptr %i.b, align 4
  store i8 0, ptr %i.c, align 1
  br label %.thread35

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 16, ptr %i.a, align 4
  store i32 %2, ptr %i.b, align 4
  store i8 0, ptr %i.c, align 1
  switch i32 %2, label %.thread35 [
    i32 0, label %bb.i
    i32 16, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 31600
  br label %_ZN2v88internal8compiler22MachineOperatorBuilder9StackSlotEiib.exit

bb.j:                                             ; preds = %_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 31656
  br label %_ZN2v88internal8compiler22MachineOperatorBuilder9StackSlotEiib.exit

bb.k:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 31712
  br label %_ZN2v88internal8compiler22MachineOperatorBuilder9StackSlotEiib.exit

bb.l:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !align !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 31768
  br label %_ZN2v88internal8compiler22MachineOperatorBuilder9StackSlotEiib.exit

.thread35:                                        ; preds = %bb.h, %bb.f, %_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE.exit, %.thread38
  %i.w = load ptr, ptr %0, align 8
  %i.x = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler17StackSlotOperatorEJRiS5_RbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  br label %_ZN2v88internal8compiler22MachineOperatorBuilder9StackSlotEiib.exit

_ZN2v88internal8compiler22MachineOperatorBuilder9StackSlotEiib.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %.thread35
  %.0.i2 = phi ptr [ %i.f, %bb.e ], [ %i.i, %bb.g ], [ %i.m, %bb.i ], [ %i.p, %bb.j ], [ %i.s, %bb.k ], [ %i.v, %bb.l ], [ %i.x, %.thread35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %.0.i2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal8compiler22MachineOperatorBuilder5StoreENS1_19StoreRepresentationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i16 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i16 %1 to i8
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %.sroa.2.0.extract.trunc = trunc nuw i16 %.sroa.2.0.extract.shift to i8 ; 16 uses
  switch i8 %.sroa.0.0.extract.trunc, label %bb.dk [
    i8 16, label %bb.b
    i8 17, label %bb.i
    i8 18, label %bb.p
    i8 19, label %bb.w
    i8 2, label %bb.ad
    i8 3, label %bb.ak
    i8 4, label %bb.ar
end_hunk_0
