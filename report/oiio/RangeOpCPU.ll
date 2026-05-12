inline.NumInlined: 231
inline.NumDeleted: 127
begin_hunk_0_@_ZNK16OpenColorIO_v2_524RangeScaleMinMaxRenderer5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %4 = load float, ptr %i.e, align 4, !tbaa !19, !alias.scope !22 ; 2 uses
  %broadcast.splatinsert45 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat46 = shufflevector <4 x float> %broadcast.splatinsert45, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = load float, ptr %i.d, align 8, !tbaa !25, !alias.scope !22 ; 2 uses
  %broadcast.splatinsert43 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat44 = shufflevector <4 x float> %broadcast.splatinsert43, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert41 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat42 = shufflevector <4 x float> %broadcast.splatinsert41, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert39.a = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat40.a = shufflevector <4 x float> %broadcast.splatinsert39.a, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !19, !alias.scope !22
  %broadcast.splatinsert37 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat38 = shufflevector <4 x float> %broadcast.splatinsert37, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %6 = load float, ptr %i.d, align 8, !tbaa !25, !alias.scope !22
  %broadcast.splatinsert35 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat36 = shufflevector <4 x float> %broadcast.splatinsert35, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %7 = load <4 x float>, ptr %0, align 8
  %broadcast.splat34 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 3 uses
  %8 = load <4 x float>, ptr %i.b, align 8
  %broadcast.splat.a = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %9 = shl i64 %n.vec, 4                          ; 2 uses
  %10 = getelementptr i8, ptr %1, i64 %9
  %11 = getelementptr i8, ptr %2, i64 %9
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_524RangeScaleMinMaxRenderer5applyEPKvPvl:bb.a
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %broadcast.splat.a, <4 x float> %broadcast.splat34) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.v = getelementptr i8, ptr %i.i, i64 20
  %i.w = getelementptr i8, ptr %i.j, i64 36
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_524RangeScaleMinMaxRenderer5applyEPKvPvl:bb.a
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 2
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 3
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %broadcast.splat.a, <4 x float> %broadcast.splat34) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ai = getelementptr i8, ptr %i.i, i64 24
  %i.aj = getelementptr i8, ptr %i.j, i64 40
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_524RangeScaleMinMaxRenderer5applyEPKvPvl:bb.a
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 1
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 2
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 3
  %i.at = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %broadcast.splat.a, <4 x float> %broadcast.splat34) ; 2 uses
  %i.au = fcmp olt <4 x float> %broadcast.splat36, %i.t
  %i.av = select <4 x i1> %i.au, <4 x float> %i.t, <4 x float> %broadcast.splat36 ; 2 uses
  %i.aw = fcmp olt <4 x float> %broadcast.splat38, %i.av
  %i.ax = select <4 x i1> %i.aw, <4 x float> %broadcast.splat38, <4 x float> %i.av
  %i.ay = fcmp olt <4 x float> %broadcast.splat40.a, %i.ag
  %i.az = select <4 x i1> %i.ay, <4 x float> %i.ag, <4 x float> %broadcast.splat40.a ; 2 uses
  %i.ba = fcmp olt <4 x float> %broadcast.splat42, %i.az
  %i.bb = select <4 x i1> %i.ba, <4 x float> %broadcast.splat42, <4 x float> %i.az
  %i.bc = fcmp olt <4 x float> %broadcast.splat44, %i.at
  %i.bd = select <4 x i1> %i.bc, <4 x float> %i.at, <4 x float> %broadcast.splat44 ; 2 uses
  %i.be = fcmp olt <4 x float> %broadcast.splat46, %i.bd
  %i.bf = select <4 x i1> %i.be, <4 x float> %broadcast.splat46, <4 x float> %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_524RangeScaleMinMaxRenderer5applyEPKvPvl:bb.a
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.023.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %10, %middle.block ]
  %.01522.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %11, %middle.block ]
  %.01621.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_524RangeScaleMinMaxRenderer5applyEPKvPvl:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !17
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bw, float %i.bx) ; 2 uses
  %i.cf = load float, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.cg = load float, ptr %i.e, align 4, !tbaa !19 ; 2 uses
  %i.ch = fcmp olt float %i.cf, %i.by
  %.sroa.speculated2.i = select i1 %i.ch, float %i.by, float %i.cf ; 2 uses
  %i.ci = fcmp olt float %i.cg, %.sroa.speculated2.i
  %.sroa.speculated.i = select i1 %i.ci, float %i.cg, float %.sroa.speculated2.i
  store float %.sroa.speculated.i, ptr %.01522, align 4, !tbaa !17
  %i.cj = load float, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.ck = load float, ptr %i.e, align 4, !tbaa !19 ; 2 uses
  %i.cl = fcmp olt float %i.cj, %i.cb
  %.sroa.speculated2.i17 = select i1 %i.cl, float %i.cb, float %i.cj ; 2 uses
  %i.cm = fcmp olt float %i.ck, %.sroa.speculated2.i17
  %.sroa.speculated.i18 = select i1 %i.cm, float %i.ck, float %.sroa.speculated2.i17
  %i.cn = getelementptr inbounds nuw i8, ptr %.01522, i64 4
  store float %.sroa.speculated.i18, ptr %i.cn, align 4, !tbaa !17
  %i.co = load float, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.cp = load float, ptr %i.e, align 4, !tbaa !19 ; 2 uses
  %i.cq = fcmp olt float %i.co, %i.ce
  %.sroa.speculated2.i19 = select i1 %i.cq, float %i.ce, float %i.co ; 2 uses
  %i.cr = fcmp olt float %i.cp, %.sroa.speculated2.i19
end_hunk_5
begin_hunk_6_@_ZNK16OpenColorIO_v2_519RangeMinMaxRenderer5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %4 = load float, ptr %i.c, align 4, !tbaa !19, !alias.scope !38 ; 2 uses
  %broadcast.splatinsert41 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat42 = shufflevector <4 x float> %broadcast.splatinsert41, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.e = load float, ptr %i.b, align 8, !tbaa !25, !alias.scope !38 ; 2 uses
  %broadcast.splatinsert39.a = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat40.a = shufflevector <4 x float> %broadcast.splatinsert39.a, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert37.a = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat38.a = shufflevector <4 x float> %broadcast.splatinsert37.a, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert35 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat36 = shufflevector <4 x float> %broadcast.splatinsert35, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = load float, ptr %i.c, align 4, !tbaa !19, !alias.scope !38
  %broadcast.splatinsert33 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat34 = shufflevector <4 x float> %broadcast.splatinsert33, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.f = load float, ptr %i.b, align 8, !tbaa !25, !alias.scope !38
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %6 = shl i64 %n.vec, 4                          ; 2 uses
  %7 = getelementptr i8, ptr %2, i64 %6
  %8 = getelementptr i8, ptr %1, i64 %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_6
begin_hunk_7_@_ZNK16OpenColorIO_v2_519RangeMinMaxRenderer5applyEPKvPvl:bb.a
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 1
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 2
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 3 ; 2 uses
  %i.s = fcmp olt <4 x float> %broadcast.splat, %i.r
  %i.t = select <4 x i1> %i.s, <4 x float> %i.r, <4 x float> %broadcast.splat ; 2 uses
  %i.u = fcmp olt <4 x float> %broadcast.splat34, %i.t
  %i.v = select <4 x i1> %i.u, <4 x float> %broadcast.splat34, <4 x float> %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %next.gep29, i64 4
  %i.x = getelementptr i8, ptr %i.h, i64 20
  %i.y = getelementptr i8, ptr %i.i, i64 36
end_hunk_7
begin_hunk_8_@_ZNK16OpenColorIO_v2_519RangeMinMaxRenderer5applyEPKvPvl:bb.a
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 3 ; 2 uses
  %i.ai = fcmp olt <4 x float> %broadcast.splat36, %i.ah
  %i.aj = select <4 x i1> %i.ai, <4 x float> %i.ah, <4 x float> %broadcast.splat36 ; 2 uses
  %i.ak = fcmp olt <4 x float> %broadcast.splat38.a, %i.aj
  %i.al = select <4 x i1> %i.ak, <4 x float> %broadcast.splat38.a, <4 x float> %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %next.gep29, i64 8
  %i.an = getelementptr i8, ptr %i.h, i64 24
  %i.ao = getelementptr i8, ptr %i.i, i64 40
end_hunk_8
begin_hunk_9_@_ZNK16OpenColorIO_v2_519RangeMinMaxRenderer5applyEPKvPvl:bb.a
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3 ; 2 uses
  %i.ay = fcmp olt <4 x float> %broadcast.splat40.a, %i.ax
  %i.az = select <4 x i1> %i.ay, <4 x float> %i.ax, <4 x float> %broadcast.splat40.a ; 2 uses
  %i.ba = fcmp olt <4 x float> %broadcast.splat42, %i.az
  %i.bb = select <4 x i1> %i.ba, <4 x float> %broadcast.splat42, <4 x float> %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep29, i64 12
end_hunk_9
begin_hunk_10_@_ZNK16OpenColorIO_v2_519RangeMinMaxRenderer5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.023.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01522.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %7, %middle.block ]
  %.01621.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %8, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_10
begin_hunk_11_@_ZNK16OpenColorIO_v2_519RangeMinMaxRenderer5applyEPKvPvl:bb.a
  %.01522 = phi ptr [ %i.co, %scalar.ph ], [ %.01522.ph, %scalar.ph.preheader ] ; 5 uses
  %.01621 = phi ptr [ %i.cn, %scalar.ph ], [ %.01621.ph, %scalar.ph.preheader ] ; 5 uses
  %i.br = load float, ptr %.01621, align 4, !tbaa !17 ; 2 uses
  %i.bs = load float, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.bt = load float, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %i.bu = fcmp olt float %i.bs, %i.br
  %.sroa.speculated2.i = select i1 %i.bu, float %i.br, float %i.bs ; 2 uses
  %i.bv = fcmp olt float %i.bt, %.sroa.speculated2.i
end_hunk_11
begin_hunk_12_@_ZNK16OpenColorIO_v2_519RangeMinMaxRenderer5applyEPKvPvl:bb.a
  store float %.sroa.speculated.i, ptr %.01522, align 4, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %.01621, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !17 ; 2 uses
  %i.by = load float, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.bz = load float, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %i.ca = fcmp olt float %i.by, %i.bx
  %.sroa.speculated2.i17 = select i1 %i.ca, float %i.bx, float %i.by ; 2 uses
  %i.cb = fcmp olt float %i.bz, %.sroa.speculated2.i17
end_hunk_12
begin_hunk_13_@_ZNK16OpenColorIO_v2_519RangeMinMaxRenderer5applyEPKvPvl:bb.a
  store float %.sroa.speculated.i18, ptr %i.cc, align 4, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.01621, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !17 ; 2 uses
  %i.cf = load float, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.cg = load float, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %i.ch = fcmp olt float %i.cf, %i.ce
  %.sroa.speculated2.i19 = select i1 %i.ch, float %i.ce, float %i.cf ; 2 uses
  %i.ci = fcmp olt float %i.cg, %.sroa.speculated2.i19
end_hunk_13
begin_hunk_14_@_ZNK16OpenColorIO_v2_516RangeMinRenderer5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %4 = load float, ptr %i.b, align 8, !tbaa !17, !alias.scope !48 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat36 = shufflevector <4 x float> %broadcast.splatinsert35, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert33.a = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat34.a = shufflevector <4 x float> %broadcast.splatinsert33.a, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = shl i64 %n.vec, 4                          ; 2 uses
  %6 = getelementptr i8, ptr %2, i64 %5
  %7 = getelementptr i8, ptr %1, i64 %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_14
begin_hunk_15_@_ZNK16OpenColorIO_v2_516RangeMinRenderer5applyEPKvPvl:bb.a
  %i.m = insertelement <4 x float> %i.l, float %i.i, i64 1
  %i.n = insertelement <4 x float> %i.m, float %i.j, i64 2
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 3 ; 2 uses
  %i.p = fcmp olt <4 x float> %broadcast.splat, %i.o
  %i.q = select <4 x i1> %i.p, <4 x float> %i.o, <4 x float> %broadcast.splat
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep29, i64 4
  %i.s = getelementptr i8, ptr %i.e, i64 20
  %i.t = getelementptr i8, ptr %i.f, i64 36
end_hunk_15
begin_hunk_16_@_ZNK16OpenColorIO_v2_516RangeMinRenderer5applyEPKvPvl:bb.a
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 3 ; 2 uses
  %i.ad = fcmp olt <4 x float> %broadcast.splat34.a, %i.ac
  %i.ae = select <4 x i1> %i.ad, <4 x float> %i.ac, <4 x float> %broadcast.splat34.a
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep29, i64 8
  %i.ag = getelementptr i8, ptr %i.e, i64 24
  %i.ah = getelementptr i8, ptr %i.f, i64 40
end_hunk_16
begin_hunk_17_@_ZNK16OpenColorIO_v2_516RangeMinRenderer5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.023.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01522.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %6, %middle.block ]
  %.01621.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %7, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_17
begin_hunk_18_@_ZNK16OpenColorIO_v2_516RangeMaxRenderer5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %4 = load float, ptr %i.b, align 4, !tbaa !17, !alias.scope !58 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat36 = shufflevector <4 x float> %broadcast.splatinsert35, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert33.a = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat34.a = shufflevector <4 x float> %broadcast.splatinsert33.a, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = shl i64 %n.vec, 4                          ; 2 uses
  %6 = getelementptr i8, ptr %2, i64 %5
  %7 = getelementptr i8, ptr %1, i64 %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_18
begin_hunk_19_@_ZNK16OpenColorIO_v2_516RangeMaxRenderer5applyEPKvPvl:bb.a
  %i.m = insertelement <4 x float> %i.l, float %i.i, i64 1
  %i.n = insertelement <4 x float> %i.m, float %i.j, i64 2
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 3 ; 2 uses
  %i.p = fcmp olt <4 x float> %i.o, %broadcast.splat
  %i.q = select <4 x i1> %i.p, <4 x float> %i.o, <4 x float> %broadcast.splat
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep29, i64 4
  %i.s = getelementptr i8, ptr %i.e, i64 20
  %i.t = getelementptr i8, ptr %i.f, i64 36
end_hunk_19
begin_hunk_20_@_ZNK16OpenColorIO_v2_516RangeMaxRenderer5applyEPKvPvl:bb.a
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 3 ; 2 uses
  %i.ad = fcmp olt <4 x float> %i.ac, %broadcast.splat34.a
  %i.ae = select <4 x i1> %i.ad, <4 x float> %i.ac, <4 x float> %broadcast.splat34.a
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep29, i64 8
  %i.ag = getelementptr i8, ptr %i.e, i64 24
  %i.ah = getelementptr i8, ptr %i.f, i64 40
end_hunk_20
begin_hunk_21_@_ZNK16OpenColorIO_v2_516RangeMaxRenderer5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.023.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01522.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %6, %middle.block ]
  %.01621.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %7, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_21
begin_hunk_22_@llvm.fmuladd.v4f32
!16 = !{!"double", !5, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !5, i64 0}
!19 = !{!20, !18, i64 20}
!20 = !{!"_ZTSN16OpenColorIO_v2_510RangeOpCPUE", !21, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20}
!21 = !{!"_ZTSN16OpenColorIO_v2_55OpCPUE"}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!20, !18, i64 16}
!26 = !{!27}
!27 = distinct !{!27, !24}
!28 = !{!29}
end_hunk_22
