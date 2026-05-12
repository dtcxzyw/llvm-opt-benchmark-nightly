inline.NumInlined: 2245
inline.NumDeleted: 1176
begin_hunk_0_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EE5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %4 = shl i64 %n.vec, 2                          ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = getelementptr i8, ptr %1, i64 %4
  %i.d = load float, ptr %i.b, align 8, !tbaa !15, !alias.scope !325 ; 3 uses
  %broadcast.splatinsert43.a = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat44.a = shufflevector <4 x float> %broadcast.splatinsert43.a, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EE5applyEPKvPvl:bb.a
  %i.e = load float, ptr %i.b, align 8, !tbaa !15, !alias.scope !325
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EE5applyEPKvPvl:bb.a
  %i.p = insertelement <4 x i8> %i.o, i8 %i.l, i64 2
  %i.q = insertelement <4 x i8> %i.p, i8 %i.m, i64 3
  %i.r = uitofp <4 x i8> %i.q to <4 x float>
  %i.s = fmul <4 x float> %broadcast.splat44.a, %i.r
  %i.t = fadd <4 x float> %i.s, splat (float 5.000000e-01) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep33, i64 1
  %i.v = getelementptr i8, ptr %i.g, i64 5
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EE5applyEPKvPvl:bb.a
  %i.ae = insertelement <4 x i8> %i.ad, i8 %i.aa, i64 2
  %i.af = insertelement <4 x i8> %i.ae, i8 %i.ab, i64 3
  %i.ag = uitofp <4 x i8> %i.af to <4 x float>
  %i.ah = fmul <4 x float> %broadcast.splat41.a, %i.ag
  %i.ai = fadd <4 x float> %i.ah, splat (float 5.000000e-01) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep33, i64 2
  %i.ak = getelementptr i8, ptr %i.g, i64 6
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EE5applyEPKvPvl:bb.a
  %i.at = insertelement <4 x i8> %i.as, i8 %i.ap, i64 2
  %i.au = insertelement <4 x i8> %i.at, i8 %i.aq, i64 3
  %i.av = uitofp <4 x i8> %i.au to <4 x float>
  %i.aw = fmul <4 x float> %broadcast.splat38, %i.av
  %i.ax = fadd <4 x float> %i.aw, splat (float 5.000000e-01) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep33, i64 3
  %i.az = getelementptr i8, ptr %i.g, i64 7
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EE5applyEPKvPvl:bb.a
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.be, i64 2
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bf, i64 3
  %i.bk = uitofp <4 x i8> %i.bj to <4 x float>
  %i.bl = fmul <4 x float> %broadcast.splat, %i.bk
  %i.bm = fadd <4 x float> %i.bl, splat (float 5.000000e-01) ; 3 uses
  %i.bn = shufflevector <4 x float> %i.t, <4 x float> %i.ai, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bo = fcmp ogt <8 x float> %i.bn, splat (float 2.550000e+02)
end_hunk_5
begin_hunk_6_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_8EE5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %4 = shl i64 %n.vec, 4
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = shl i64 %n.vec, 2
  %7 = getelementptr i8, ptr %1, i64 %6
  %8 = load float, ptr %i.b, align 8, !tbaa !42, !alias.scope !366 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert31 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert33 = insertelement <4 x float> poison, float %8, i64 0
  %i.e = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert29, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.f = shufflevector <4 x float> %broadcast.splatinsert31, <4 x float> %broadcast.splatinsert33, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body
end_hunk_6
begin_hunk_7_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_8EE5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %5, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %7, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_7
begin_hunk_8_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_1EE5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %4 = shl i64 %n.vec, 2
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = shl i64 %n.vec, 3
  %7 = getelementptr i8, ptr %1, i64 %6
  %i.e = load float, ptr %i.b, align 8, !tbaa !47, !alias.scope !377 ; 3 uses
  %broadcast.splatinsert43.a = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat44.a = shufflevector <4 x float> %broadcast.splatinsert43.a, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_8
begin_hunk_9_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_1EE5applyEPKvPvl:bb.a
  %i.f = load float, ptr %i.b, align 8, !tbaa !47, !alias.scope !377
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_9
begin_hunk_10_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_1EE5applyEPKvPvl:bb.a
  %i.r = insertelement <4 x i16> %i.q, i16 %i.n, i64 2
  %i.s = insertelement <4 x i16> %i.r, i16 %i.o, i64 3
  %i.t = uitofp <4 x i16> %i.s to <4 x float>
  %i.u = fmul <4 x float> %broadcast.splat44.a, %i.t
  %i.v = fadd <4 x float> %i.u, splat (float 5.000000e-01) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %next.gep33, i64 2
  %i.x = getelementptr i8, ptr %i.i, i64 10
end_hunk_10
begin_hunk_11_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_1EE5applyEPKvPvl:bb.a
  %i.ag = insertelement <4 x i16> %i.af, i16 %i.ac, i64 2
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.ad, i64 3
  %i.ai = uitofp <4 x i16> %i.ah to <4 x float>
  %i.aj = fmul <4 x float> %broadcast.splat41.a, %i.ai
  %i.ak = fadd <4 x float> %i.aj, splat (float 5.000000e-01) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep33, i64 4
  %i.am = getelementptr i8, ptr %i.i, i64 12
end_hunk_11
begin_hunk_12_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_1EE5applyEPKvPvl:bb.a
  %i.av = insertelement <4 x i16> %i.au, i16 %i.ar, i64 2
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.as, i64 3
  %i.ax = uitofp <4 x i16> %i.aw to <4 x float>
  %i.ay = fmul <4 x float> %broadcast.splat38, %i.ax
  %i.az = fadd <4 x float> %i.ay, splat (float 5.000000e-01) ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep33, i64 6
  %i.bb = getelementptr i8, ptr %i.i, i64 14
end_hunk_12
begin_hunk_13_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_1EE5applyEPKvPvl:bb.a
  %i.bk = insertelement <4 x i16> %i.bj, i16 %i.bg, i64 2
  %i.bl = insertelement <4 x i16> %i.bk, i16 %i.bh, i64 3
  %i.bm = uitofp <4 x i16> %i.bl to <4 x float>
  %i.bn = fmul <4 x float> %broadcast.splat, %i.bm
  %i.bo = fadd <4 x float> %i.bn, splat (float 5.000000e-01) ; 3 uses
  %i.bp = shufflevector <4 x float> %i.v, <4 x float> %i.ak, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bq = fcmp ogt <8 x float> %i.bp, splat (float 2.550000e+02)
end_hunk_13
begin_hunk_14_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_8EE5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %4 = shl i64 %n.vec, 4
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = shl i64 %n.vec, 3
  %7 = getelementptr i8, ptr %1, i64 %6
  %8 = load float, ptr %i.b, align 8, !tbaa !72, !alias.scope !414 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert25 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert27 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %8, i64 0
  %i.d = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert25, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.e = shufflevector <4 x float> %broadcast.splatinsert27, <4 x float> %broadcast.splatinsert29, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body
end_hunk_14
begin_hunk_15_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_8EE5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %5, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %7, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_15
begin_hunk_16_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_1EE5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %4 = shl i64 %n.vec, 2
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = shl i64 %n.vec, 3
  %7 = getelementptr i8, ptr %1, i64 %6
  %i.e = load float, ptr %i.b, align 8, !tbaa !77, !alias.scope !422 ; 3 uses
  %broadcast.splatinsert43.a = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat44.a = shufflevector <4 x float> %broadcast.splatinsert43.a, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_16
begin_hunk_17_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_1EE5applyEPKvPvl:bb.a
  %i.f = load float, ptr %i.b, align 8, !tbaa !77, !alias.scope !422
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_17
begin_hunk_18_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_1EE5applyEPKvPvl:bb.a
  %i.r = insertelement <4 x i16> %i.q, i16 %i.n, i64 2
  %i.s = insertelement <4 x i16> %i.r, i16 %i.o, i64 3
  %i.t = uitofp <4 x i16> %i.s to <4 x float>
  %i.u = fmul <4 x float> %broadcast.splat44.a, %i.t
  %i.v = fadd <4 x float> %i.u, splat (float 5.000000e-01) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %next.gep33, i64 2
  %i.x = getelementptr i8, ptr %i.i, i64 10
end_hunk_18
begin_hunk_19_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_1EE5applyEPKvPvl:bb.a
  %i.ag = insertelement <4 x i16> %i.af, i16 %i.ac, i64 2
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.ad, i64 3
  %i.ai = uitofp <4 x i16> %i.ah to <4 x float>
  %i.aj = fmul <4 x float> %broadcast.splat41.a, %i.ai
  %i.ak = fadd <4 x float> %i.aj, splat (float 5.000000e-01) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep33, i64 4
  %i.am = getelementptr i8, ptr %i.i, i64 12
end_hunk_19
begin_hunk_20_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_1EE5applyEPKvPvl:bb.a
  %i.av = insertelement <4 x i16> %i.au, i16 %i.ar, i64 2
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.as, i64 3
  %i.ax = uitofp <4 x i16> %i.aw to <4 x float>
  %i.ay = fmul <4 x float> %broadcast.splat38, %i.ax
  %i.az = fadd <4 x float> %i.ay, splat (float 5.000000e-01) ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep33, i64 6
  %i.bb = getelementptr i8, ptr %i.i, i64 14
end_hunk_20
begin_hunk_21_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_1EE5applyEPKvPvl:bb.a
  %i.bk = insertelement <4 x i16> %i.bj, i16 %i.bg, i64 2
  %i.bl = insertelement <4 x i16> %i.bk, i16 %i.bh, i64 3
  %i.bm = uitofp <4 x i16> %i.bl to <4 x float>
  %i.bn = fmul <4 x float> %broadcast.splat, %i.bm
  %i.bo = fadd <4 x float> %i.bn, splat (float 5.000000e-01) ; 3 uses
  %i.bp = shufflevector <4 x float> %i.v, <4 x float> %i.ak, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bq = fcmp ogt <8 x float> %i.bp, splat (float 2.550000e+02)
end_hunk_21
begin_hunk_22_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_8EE5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %4 = shl i64 %n.vec, 4
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = shl i64 %n.vec, 3
  %7 = getelementptr i8, ptr %1, i64 %6
  %8 = load float, ptr %i.b, align 8, !tbaa !102, !alias.scope !459 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert25 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert27 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %8, i64 0
  %i.d = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert25, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.e = shufflevector <4 x float> %broadcast.splatinsert27, <4 x float> %broadcast.splatinsert29, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body
end_hunk_22
begin_hunk_23_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_8EE5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %5, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %7, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_23
begin_hunk_24_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_1EE5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %4 = shl i64 %n.vec, 2
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = shl i64 %n.vec, 3
  %7 = getelementptr i8, ptr %1, i64 %6
  %i.e = load float, ptr %i.b, align 8, !tbaa !107, !alias.scope !467 ; 3 uses
  %broadcast.splatinsert43.a = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat44.a = shufflevector <4 x float> %broadcast.splatinsert43.a, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_24
begin_hunk_25_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_1EE5applyEPKvPvl:bb.a
  %i.f = load float, ptr %i.b, align 8, !tbaa !107, !alias.scope !467
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_25
begin_hunk_26_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_1EE5applyEPKvPvl:bb.a
  %i.r = insertelement <4 x i16> %i.q, i16 %i.n, i64 2
  %i.s = insertelement <4 x i16> %i.r, i16 %i.o, i64 3
  %i.t = uitofp <4 x i16> %i.s to <4 x float>
  %i.u = fmul <4 x float> %broadcast.splat44.a, %i.t
  %i.v = fadd <4 x float> %i.u, splat (float 5.000000e-01) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %next.gep33, i64 2
  %i.x = getelementptr i8, ptr %i.i, i64 10
end_hunk_26
begin_hunk_27_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_1EE5applyEPKvPvl:bb.a
  %i.ag = insertelement <4 x i16> %i.af, i16 %i.ac, i64 2
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.ad, i64 3
  %i.ai = uitofp <4 x i16> %i.ah to <4 x float>
  %i.aj = fmul <4 x float> %broadcast.splat41.a, %i.ai
  %i.ak = fadd <4 x float> %i.aj, splat (float 5.000000e-01) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep33, i64 4
  %i.am = getelementptr i8, ptr %i.i, i64 12
end_hunk_27
begin_hunk_28_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_1EE5applyEPKvPvl:bb.a
  %i.av = insertelement <4 x i16> %i.au, i16 %i.ar, i64 2
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.as, i64 3
  %i.ax = uitofp <4 x i16> %i.aw to <4 x float>
  %i.ay = fmul <4 x float> %broadcast.splat38, %i.ax
  %i.az = fadd <4 x float> %i.ay, splat (float 5.000000e-01) ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep33, i64 6
  %i.bb = getelementptr i8, ptr %i.i, i64 14
end_hunk_28
begin_hunk_29_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_1EE5applyEPKvPvl:bb.a
  %i.bk = insertelement <4 x i16> %i.bj, i16 %i.bg, i64 2
  %i.bl = insertelement <4 x i16> %i.bk, i16 %i.bh, i64 3
  %i.bm = uitofp <4 x i16> %i.bl to <4 x float>
  %i.bn = fmul <4 x float> %broadcast.splat, %i.bm
  %i.bo = fadd <4 x float> %i.bn, splat (float 5.000000e-01) ; 3 uses
  %i.bp = shufflevector <4 x float> %i.v, <4 x float> %i.ak, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bq = fcmp ogt <8 x float> %i.bp, splat (float 2.550000e+02)
end_hunk_29
begin_hunk_30_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_8EE5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %4 = shl i64 %n.vec, 4
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = shl i64 %n.vec, 3
  %7 = getelementptr i8, ptr %1, i64 %6
  %8 = load float, ptr %i.b, align 8, !tbaa !132, !alias.scope !504 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert25 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert27 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %8, i64 0
  %i.d = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert25, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.e = shufflevector <4 x float> %broadcast.splatinsert27, <4 x float> %broadcast.splatinsert29, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body
end_hunk_30
begin_hunk_31_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_8EE5applyEPKvPvl:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %5, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %7, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_31
begin_hunk_32_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_1EE5applyEPKvPvl:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %4 = shl i64 %n.vec, 2
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = shl i64 %n.vec, 4
  %7 = getelementptr i8, ptr %1, i64 %6
  %i.e = load float, ptr %i.b, align 8, !tbaa !167, !alias.scope !528 ; 3 uses
  %broadcast.splatinsert43.a = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat44.a = shufflevector <4 x float> %broadcast.splatinsert43.a, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_32
begin_hunk_33_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_1EE5applyEPKvPvl:bb.a
  %i.f = load float, ptr %i.b, align 8, !tbaa !167, !alias.scope !528
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_33
begin_hunk_34_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_1EE5applyEPKvPvl:bb.a
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3
  %i.t = fmul <4 x float> %i.s, %broadcast.splat44.a
  %i.u = fadd <4 x float> %i.t, splat (float 5.000000e-01) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep33, i64 4
  %i.w = getelementptr i8, ptr %i.i, i64 20
end_hunk_34
begin_hunk_35_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_1EE5applyEPKvPvl:bb.a
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 3
  %i.ah = fmul <4 x float> %i.ag, %broadcast.splat41.a
  %i.ai = fadd <4 x float> %i.ah, splat (float 5.000000e-01) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep33, i64 8
  %i.ak = getelementptr i8, ptr %i.i, i64 24
end_hunk_35
begin_hunk_36_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_1EE5applyEPKvPvl:bb.a
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = fmul <4 x float> %i.au, %broadcast.splat38
  %i.aw = fadd <4 x float> %i.av, splat (float 5.000000e-01) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep33, i64 12
  %i.ay = getelementptr i8, ptr %i.i, i64 28
end_hunk_36
begin_hunk_37_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_1EE5applyEPKvPvl:bb.a
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 1
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 2
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 3
  %i.bj = fmul <4 x float> %i.bi, %broadcast.splat
  %i.bk = fadd <4 x float> %i.bj, splat (float 5.000000e-01) ; 3 uses
  %i.bl = shufflevector <4 x float> %i.u, <4 x float> %i.ai, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = fcmp ogt <8 x float> %i.bl, splat (float 2.550000e+02)
end_hunk_37
