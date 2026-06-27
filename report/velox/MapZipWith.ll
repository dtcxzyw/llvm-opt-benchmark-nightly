inline.NumInlined: 5627
inline.NumDeleted: 1581
begin_hunk_0_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi:bb.a
  %i.aw = lshr i64 %i.av, 6
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !135
  %i.az = and i64 %i.av, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ay, %i.ba
  %.not.i.i15 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i15, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

bb.h:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !292, !range !71, !noundef !72
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !309
  %i.bh = sext i32 %1 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !135
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bp, %i.bn
  %.not.i7.i12 = icmp eq i64 %i.bq, 0
  br i1 %.not.i7.i12, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16: ; preds = %bb.h
  %i.br = load i64, ptr %i.ao, align 8, !tbaa !135
  %i.bs = and i64 %i.br, 1
  %.not.i6.i14 = icmp eq i64 %i.bs, 0
  br i1 %.not.i6.i14, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2032, !nonnull !72, !align !393
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !240
  %i.bx = zext i32 %1 to i64                      ; 2 uses
  %i.by = and i64 %i.bx, 7
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = lshr i64 %i.bx, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !30
  %i.ce = and i8 %i.cd, %i.ca
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !30
  br label %bb.y

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2033, !nonnull !72, !align !530
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2032, !nonnull !72, !align !393
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !247
  %i.cm = sext i32 %1 to i64                      ; 5 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %i.ch, ptr %i.cn, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !292, !range !71, !noundef !72
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !309
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cm
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread, %bb.l, %bb.m
  %.0.i17 = phi i32 [ %i.cz, %bb.m ], [ %i.cv, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.db = load i8, ptr %i.da, align 2, !tbaa !301, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !292, !range !71, !noundef !72
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

bb.p:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !309
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.cm
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

_ZNK8facebook5velox13DecodedVector5indexEi.exit19: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i18 = phi i32 [ %i.dl, %bb.p ], [ %i.dh, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !179
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2034, !nonnull !72, !align !393
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2035, !nonnull !72, !align !393
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.dn, i32 noundef %.0.i17, ptr noundef nonnull align 8 dereferenceable(120) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dr)
  %i.ds = load ptr, ptr %0, align 8, !tbaa !2030, !nonnull !72, !align !393
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !180
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2036, !nonnull !72, !align !393
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !2037, !nonnull !72, !align !393
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.du, i32 noundef %.0.i18, ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dy)
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !2035, !nonnull !72, !align !393 ; 6 uses
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !2037, !nonnull !72, !align !393 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !2038, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ec, align 8, !tbaa !2039
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !2039
  %i.ed = load ptr, ptr %i.ci, align 8, !tbaa !2032, !nonnull !72, !align !393 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !257 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !267 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !261 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !271 ; 3 uses
  %i.em = load ptr, ptr %i.cf, align 8, !tbaa !2033, !nonnull !72, !align !530 ; 16 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !952 ; 2 uses
  %i.ep = load ptr, ptr %i.dz, align 8, !tbaa !307 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2                 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !952 ; 2 uses
  %i.ew = load ptr, ptr %i.ea, align 8, !tbaa !307 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 2                 ; 3 uses
  %i.fb = icmp ne ptr %i.eo, %i.ep
  %i.fc = icmp ne ptr %i.ev, %i.ew
  %i.fd = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %i.fd, label %.lr.ph.i, label %.preheader67.i

.lr.ph.i:                                         ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit19
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.q

.preheader67.i:                                   ; preds = %bb.x, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19
  %.055.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.ik, %bb.x ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.ii, %bb.x ] ; 2 uses
  %i.fg = icmp ugt i64 %i.et, %.0.lcssa.i
  br i1 %i.fg, label %.lr.ph72.preheader.i, label %.preheader.i

.lr.ph72.preheader.i:                             ; preds = %.preheader67.i
  %.pre.i = load i32, ptr %i.em, align 4, !tbaa !3
  br label %.lr.ph72.i

bb.q:                                             ; preds = %bb.x, %.lr.ph.i
  %i.fh = phi i64 [ 0, %.lr.ph.i ], [ %i.ik, %bb.x ] ; 3 uses
  %i.fi = phi i64 [ 0, %.lr.ph.i ], [ %i.ii, %bb.x ] ; 3 uses
  %.069.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.x ] ; 3 uses
  %.05568.i = phi i32 [ 0, %.lr.ph.i ], [ %.156.i, %bb.x ] ; 3 uses
  %i.fj = load ptr, ptr %i.dz, align 8, !tbaa !307 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fh
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !860 ; 3 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !860
  %i.fp = getelementptr i8, ptr %.val62.val.i, i64 128
  %.val62.val.val.i = load ptr, ptr %i.fp, align 8, !tbaa !2041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 128
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !2041
  %i.fs = sext i32 %i.fl to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !2050 ; 4 uses
  store float %i.fu, ptr %i.b, align 4, !tbaa !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.fv = sext i32 %i.fo to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %.val62.val.val.i, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !2050 ; 4 uses
  store float %i.fx, ptr %i.c, align 4, !tbaa !2050
  %i.fy = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 25
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !969, !range !71, !noundef !72
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.gc, ptr %i.a, align 8, !tbaa !971
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.a, ptr %2, align 8, !tbaa !972
  store ptr %i.b, ptr %i.fe, align 8, !tbaa !2051
  store ptr %i.c, ptr %i.ff, align 8, !tbaa !2051
  %i.gd = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIfE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKfS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i

bb.s:                                             ; preds = %bb.q
  %3 = fcmp ord float %i.fu, 0.000000e+00         ; 2 uses
  %i.ge = fcmp ord float %i.fx, 0.000000e+00      ; 2 uses
  %i.gf = zext i1 %i.ge to i32
  %.010.i.i.i.i = select i1 %3, i32 -1, i32 %i.gf
  %.0.i.not.i.i.i = select i1 %3, i1 %i.ge, i1 false
  br i1 %.0.i.not.i.i.i, label %bb.t, label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.gg = fcmp olt float %i.fu, %i.fx
  %i.gh = fcmp une float %i.fu, %i.fx
  %i.gi = zext i1 %i.gh to i32
  br i1 %i.gg, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.v

_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.gj = phi i32 [ %i.gd, %bb.r ], [ %i.gi, %bb.t ], [ %.010.i.i.i.i, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.u, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i

bb.u:                                             ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i
  %i.gl = load ptr, ptr %i.dz, align 8, !tbaa !307
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.fi
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = load i32, ptr %i.em, align 4, !tbaa !3
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.gp
  store i32 %i.gn, ptr %i.gq, align 4, !tbaa !3
  %i.gr = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.fh
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = load i32, ptr %i.em, align 4, !tbaa !3
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.gv
  store i32 %i.gt, ptr %i.gw, align 4, !tbaa !3
  %i.gx = add nsw i32 %.069.i, 1
  %i.gy = add nsw i32 %.05568.i, 1
  br label %bb.x

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i: ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i
  %i.gz = icmp slt i32 %i.gj, 0
  br i1 %i.gz, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge, label %bb.w

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge: ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %.pre = load ptr, ptr %i.dz, align 8, !tbaa !307
  br label %bb.v

bb.v:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i
  %i.ha = phi ptr [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge ], [ %i.fj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.fi
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = load i32, ptr %i.em, align 4, !tbaa !3
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.he
  store i32 %i.hc, ptr %i.hf, align 4, !tbaa !3
  %i.hg = load i32, ptr %i.em, align 4, !tbaa !3
  %i.hh = zext i32 %i.hg to i64                   ; 2 uses
  %i.hi = and i64 %i.hh, 7
  %i.hj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !30
  %i.hl = lshr i64 %i.hh, 3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.hl ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !30
  %i.ho = and i8 %i.hn, %i.hk
  store i8 %i.ho, ptr %i.hm, align 1, !tbaa !30
  %i.hp = add nsw i32 %.069.i, 1
  br label %bb.x

bb.w:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.hq = load i32, ptr %i.em, align 4, !tbaa !3
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = and i64 %i.hr, 7
  %i.ht = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !30
  %i.hv = lshr i64 %i.hr, 3
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.hv ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !30
  %i.hy = and i8 %i.hx, %i.hu
  store i8 %i.hy, ptr %i.hw, align 1, !tbaa !30
  %i.hz = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.fh
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.ic = load i32, ptr %i.em, align 4, !tbaa !3
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.id
  store i32 %i.ib, ptr %i.ie, align 4, !tbaa !3
  %i.if = add nsw i32 %.05568.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.156.i = phi i32 [ %i.gy, %bb.u ], [ %.05568.i, %bb.v ], [ %i.if, %bb.w ] ; 2 uses
  %.1.i = phi i32 [ %i.gx, %bb.u ], [ %i.hp, %bb.v ], [ %.069.i, %bb.w ] ; 2 uses
  %i.ig = load i32, ptr %i.em, align 4, !tbaa !3
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.em, align 4, !tbaa !3
  %i.ii = sext i32 %.1.i to i64                   ; 3 uses
  %i.ij = icmp ugt i64 %i.et, %i.ii
  %i.ik = sext i32 %.156.i to i64                 ; 3 uses
  %i.il = icmp ugt i64 %i.fa, %i.ik
  %i.im = select i1 %i.ij, i1 %i.il, i1 false
  br i1 %i.im, label %bb.q, label %.preheader67.i, !llvm.loop !2052

.preheader.i:                                     ; preds = %.lr.ph72.i, %.preheader67.i
  %i.in = icmp ugt i64 %i.fa, %.055.lcssa.i
  br i1 %i.in, label %.lr.ph74.preheader.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph74.preheader.i:                             ; preds = %.preheader.i
  %.pre79.i = load i32, ptr %i.em, align 4, !tbaa !3
  br label %.lr.ph74.i

.lr.ph72.i:                                       ; preds = %.lr.ph72.i, %.lr.ph72.preheader.i
  %i.io = phi i32 [ %.pre.i, %.lr.ph72.preheader.i ], [ %i.je, %.lr.ph72.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph72.preheader.i ], [ %indvars.iv.next.i, %.lr.ph72.i ] ; 2 uses
  %i.ip = load ptr, ptr %i.dz, align 8, !tbaa !307
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.is = sext i32 %i.io to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.is
  store i32 %i.ir, ptr %i.it, align 4, !tbaa !3
  %i.iu = load i32, ptr %i.em, align 4, !tbaa !3
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = and i64 %i.iv, 7
  %i.ix = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !30
  %i.iz = lshr i64 %i.iv, 3
  %i.ja = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.iz ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !30
  %i.jc = and i8 %i.jb, %i.iy
  store i8 %i.jc, ptr %i.ja, align 1, !tbaa !30
  %i.jd = load i32, ptr %i.em, align 4, !tbaa !3
  %i.je = add nsw i32 %i.jd, 1                    ; 2 uses
  store i32 %i.je, ptr %i.em, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.et
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph72.i, !llvm.loop !2053

.lr.ph74.i:                                       ; preds = %.lr.ph74.i, %.lr.ph74.preheader.i
  %i.jf = phi i32 [ %.pre79.i, %.lr.ph74.preheader.i ], [ %i.jv, %.lr.ph74.i ]
  %indvars.iv76.i = phi i64 [ %.055.lcssa.i, %.lr.ph74.preheader.i ], [ %indvars.iv.next77.i, %.lr.ph74.i ] ; 2 uses
  %i.jg = zext i32 %i.jf to i64                   ; 2 uses
  %i.jh = and i64 %i.jg, 7
  %i.ji = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !30
  %i.jk = lshr i64 %i.jg, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.jk ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !30
  %i.jn = and i8 %i.jm, %i.jj
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !30
  %i.jo = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv76.i
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %i.jr = load i32, ptr %i.em, align 4, !tbaa !3
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.js
  store i32 %i.jq, ptr %i.jt, align 4, !tbaa !3
  %i.ju = load i32, ptr %i.em, align 4, !tbaa !3
  %i.jv = add nsw i32 %i.ju, 1                    ; 2 uses
  store i32 %i.jv, ptr %i.em, align 4, !tbaa !3
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next77.i, %i.fa
  br i1 %exitcond24.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph74.i, !llvm.loop !2054

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph74.i, %.preheader.i
  %i.jw = load ptr, ptr %i.cf, align 8, !tbaa !2033, !nonnull !72, !align !530
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !3
  %i.jy = load ptr, ptr %i.ci, align 8, !tbaa !2032, !nonnull !72, !align !393 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !247
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.cm
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = sub nsw i32 %i.jx, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !251
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.cm
  store i32 %i.kd, ptr %i.kg, align 4, !tbaa !3
  br label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox12SimpleVectorIfE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKfS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %13 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !292, !range !71, !noundef !72
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !309
  %i.bh = sext i32 %1 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !135
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bp, %i.bn
  %.not.i7.i12 = icmp eq i64 %i.bq, 0
  br i1 %.not.i7.i12, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16: ; preds = %bb.h
  %i.br = load i64, ptr %i.ao, align 8, !tbaa !135
  %i.bs = and i64 %i.br, 1
  %.not.i6.i14 = icmp eq i64 %i.bs, 0
  br i1 %.not.i6.i14, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2143, !nonnull !72, !align !393
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !240
  %i.bx = zext i32 %1 to i64                      ; 2 uses
  %i.by = and i64 %i.bx, 7
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = lshr i64 %i.bx, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !30
  %i.ce = and i8 %i.cd, %i.ca
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !30
  br label %bb.y

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2144, !nonnull !72, !align !530
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2143, !nonnull !72, !align !393
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !247
  %i.cm = sext i32 %1 to i64                      ; 5 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %i.ch, ptr %i.cn, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !292, !range !71, !noundef !72
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !309
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cm
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread, %bb.l, %bb.m
  %.0.i17 = phi i32 [ %i.cz, %bb.m ], [ %i.cv, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.db = load i8, ptr %i.da, align 2, !tbaa !301, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !292, !range !71, !noundef !72
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

bb.p:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !309
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.cm
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

_ZNK8facebook5velox13DecodedVector5indexEi.exit19: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i18 = phi i32 [ %i.dl, %bb.p ], [ %i.dh, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !179
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2145, !nonnull !72, !align !393
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2146, !nonnull !72, !align !393
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.dn, i32 noundef %.0.i17, ptr noundef nonnull align 8 dereferenceable(120) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dr)
  %i.ds = load ptr, ptr %0, align 8, !tbaa !2141, !nonnull !72, !align !393
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !180
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2147, !nonnull !72, !align !393
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !2148, !nonnull !72, !align !393
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.du, i32 noundef %.0.i18, ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dy)
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !2146, !nonnull !72, !align !393 ; 6 uses
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !2148, !nonnull !72, !align !393 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !2149, !nonnull !72, !align !393 ; 4 uses
  %.sroa.020.0.copyload = load ptr, ptr %i.ec, align 8, !tbaa !2039
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !2039
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !1243
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !1243
  %i.ed = load ptr, ptr %i.ci, align 8, !tbaa !2143, !nonnull !72, !align !393 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !257 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !267 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !261 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !271 ; 3 uses
  %i.em = load ptr, ptr %i.cf, align 8, !tbaa !2144, !nonnull !72, !align !530 ; 16 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !952 ; 2 uses
  %i.ep = load ptr, ptr %i.dz, align 8, !tbaa !307 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2                 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !952 ; 2 uses
  %i.ew = load ptr, ptr %i.ea, align 8, !tbaa !307 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 2                 ; 3 uses
  %i.fb = icmp ne ptr %i.eo, %i.ep
  %i.fc = icmp ne ptr %i.ev, %i.ew
  %i.fd = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %i.fd, label %.lr.ph.i, label %.preheader65.i

.lr.ph.i:                                         ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit19
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.q

.preheader65.i:                                   ; preds = %bb.x, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19
  %.055.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.iv, %bb.x ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.it, %bb.x ] ; 2 uses
  %i.fg = icmp ugt i64 %i.et, %.0.lcssa.i
  br i1 %i.fg, label %.lr.ph70.preheader.i, label %.preheader.i

.lr.ph70.preheader.i:                             ; preds = %.preheader65.i
  %.pre.i = load i32, ptr %i.em, align 4, !tbaa !3
  br label %.lr.ph70.i

bb.q:                                             ; preds = %bb.x, %.lr.ph.i
  %i.fh = phi i64 [ 0, %.lr.ph.i ], [ %i.iv, %bb.x ] ; 3 uses
  %i.fi = phi i64 [ 0, %.lr.ph.i ], [ %i.it, %bb.x ] ; 3 uses
  %.067.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.x ] ; 3 uses
  %.05566.i = phi i32 [ 0, %.lr.ph.i ], [ %.156.i, %bb.x ] ; 3 uses
  %i.fj = load ptr, ptr %i.dz, align 8, !tbaa !307 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fh
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fp = load ptr, ptr %.sroa.020.0.copyload, align 8, !tbaa !860 ; 3 uses
  %i.fq = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !860
  %i.fr = load ptr, ptr %.sroa.3.0.copyload, align 8, !tbaa !310
  %i.fs = sext i32 %i.fl to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = load ptr, ptr %.sroa.421.0.copyload, align 8, !tbaa !310
  %i.fw = sext i32 %i.fo to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 128
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !2041
  %i.gb = sext i32 %i.fu to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !2050 ; 4 uses
  store float %i.gd, ptr %i.b, align 4, !tbaa !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 128
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !2041
  %i.gg = sext i32 %i.fy to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !2050 ; 4 uses
  store float %i.gi, ptr %i.c, align 4, !tbaa !2050
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fp, i64 25
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !969, !range !71, !noundef !72
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.gn, ptr %i.a, align 8, !tbaa !971
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.a, ptr %2, align 8, !tbaa !972
  store ptr %i.b, ptr %i.fe, align 8, !tbaa !2051
  store ptr %i.c, ptr %i.ff, align 8, !tbaa !2051
  %i.go = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIfE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKfS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i

bb.s:                                             ; preds = %bb.q
  %3 = fcmp ord float %i.gd, 0.000000e+00         ; 2 uses
  %i.gp = fcmp ord float %i.gi, 0.000000e+00      ; 2 uses
  %i.gq = zext i1 %i.gp to i32
  %.010.i.i.i.i = select i1 %3, i32 -1, i32 %i.gq
  %.0.i.not.i.i.i = select i1 %3, i1 %i.gp, i1 false
  br i1 %.0.i.not.i.i.i, label %bb.t, label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.gr = fcmp olt float %i.gd, %i.gi
  %i.gs = fcmp une float %i.gd, %i.gi
  %i.gt = zext i1 %i.gs to i32
  br i1 %i.gr, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.v

_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.gu = phi i32 [ %i.go, %bb.r ], [ %i.gt, %bb.t ], [ %.010.i.i.i.i, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.u, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i

bb.u:                                             ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i
  %i.gw = load ptr, ptr %i.dz, align 8, !tbaa !307
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.fi
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = load i32, ptr %i.em, align 4, !tbaa !3
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ha
  store i32 %i.gy, ptr %i.hb, align 4, !tbaa !3
  %i.hc = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.fh
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = load i32, ptr %i.em, align 4, !tbaa !3
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.hg
  store i32 %i.he, ptr %i.hh, align 4, !tbaa !3
  %i.hi = add nsw i32 %.067.i, 1
  %i.hj = add nsw i32 %.05566.i, 1
  br label %bb.x

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i: ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i
  %i.hk = icmp slt i32 %i.gu, 0
  br i1 %i.hk, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge, label %bb.w

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge: ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %.pre = load ptr, ptr %i.dz, align 8, !tbaa !307
  br label %bb.v

bb.v:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i
  %i.hl = phi ptr [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge ], [ %i.fj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.fi
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.em, align 4, !tbaa !3
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.hp
  store i32 %i.hn, ptr %i.hq, align 4, !tbaa !3
  %i.hr = load i32, ptr %i.em, align 4, !tbaa !3
  %i.hs = zext i32 %i.hr to i64                   ; 2 uses
  %i.ht = and i64 %i.hs, 7
  %i.hu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = lshr i64 %i.hs, 3
  %i.hx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.hw ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !30
  %i.hz = and i8 %i.hy, %i.hv
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !30
  %i.ia = add nsw i32 %.067.i, 1
  br label %bb.x

bb.w:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.ib = load i32, ptr %i.em, align 4, !tbaa !3
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = and i64 %i.ic, 7
  %i.ie = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !30
  %i.ig = lshr i64 %i.ic, 3
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ig ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !30
  %i.ij = and i8 %i.ii, %i.if
  store i8 %i.ij, ptr %i.ih, align 1, !tbaa !30
  %i.ik = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.fh
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = load i32, ptr %i.em, align 4, !tbaa !3
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.io
  store i32 %i.im, ptr %i.ip, align 4, !tbaa !3
  %i.iq = add nsw i32 %.05566.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.156.i = phi i32 [ %i.hj, %bb.u ], [ %.05566.i, %bb.v ], [ %i.iq, %bb.w ] ; 2 uses
  %.1.i = phi i32 [ %i.hi, %bb.u ], [ %i.ia, %bb.v ], [ %.067.i, %bb.w ] ; 2 uses
  %i.ir = load i32, ptr %i.em, align 4, !tbaa !3
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr %i.em, align 4, !tbaa !3
  %i.it = sext i32 %.1.i to i64                   ; 3 uses
  %i.iu = icmp ugt i64 %i.et, %i.it
  %i.iv = sext i32 %.156.i to i64                 ; 3 uses
  %i.iw = icmp ugt i64 %i.fa, %i.iv
  %i.ix = select i1 %i.iu, i1 %i.iw, i1 false
  br i1 %i.ix, label %bb.q, label %.preheader65.i, !llvm.loop !2150

.preheader.i:                                     ; preds = %.lr.ph70.i, %.preheader65.i
  %i.iy = icmp ugt i64 %i.fa, %.055.lcssa.i
  br i1 %i.iy, label %.lr.ph72.preheader.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph72.preheader.i:                             ; preds = %.preheader.i
  %.pre77.i = load i32, ptr %i.em, align 4, !tbaa !3
  br label %.lr.ph72.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i, %.lr.ph70.preheader.i
  %i.iz = phi i32 [ %.pre.i, %.lr.ph70.preheader.i ], [ %i.jp, %.lr.ph70.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph70.preheader.i ], [ %indvars.iv.next.i, %.lr.ph70.i ] ; 2 uses
  %i.ja = load ptr, ptr %i.dz, align 8, !tbaa !307
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jd = sext i32 %i.iz to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.jd
  store i32 %i.jc, ptr %i.je, align 4, !tbaa !3
  %i.jf = load i32, ptr %i.em, align 4, !tbaa !3
  %i.jg = zext i32 %i.jf to i64                   ; 2 uses
  %i.jh = and i64 %i.jg, 7
  %i.ji = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !30
  %i.jk = lshr i64 %i.jg, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.jk ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !30
  %i.jn = and i8 %i.jm, %i.jj
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !30
  %i.jo = load i32, ptr %i.em, align 4, !tbaa !3
  %i.jp = add nsw i32 %i.jo, 1                    ; 2 uses
  store i32 %i.jp, ptr %i.em, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.et
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph70.i, !llvm.loop !2151

.lr.ph72.i:                                       ; preds = %.lr.ph72.i, %.lr.ph72.preheader.i
  %i.jq = phi i32 [ %.pre77.i, %.lr.ph72.preheader.i ], [ %i.kg, %.lr.ph72.i ]
  %indvars.iv74.i = phi i64 [ %.055.lcssa.i, %.lr.ph72.preheader.i ], [ %indvars.iv.next75.i, %.lr.ph72.i ] ; 2 uses
  %i.jr = zext i32 %i.jq to i64                   ; 2 uses
  %i.js = and i64 %i.jr, 7
  %i.jt = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !30
  %i.jv = lshr i64 %i.jr, 3
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.jv ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !30
  %i.jy = and i8 %i.jx, %i.ju
  store i8 %i.jy, ptr %i.jw, align 1, !tbaa !30
  %i.jz = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv74.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !3
  %i.kc = load i32, ptr %i.em, align 4, !tbaa !3
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.kd
  store i32 %i.kb, ptr %i.ke, align 4, !tbaa !3
  %i.kf = load i32, ptr %i.em, align 4, !tbaa !3
  %i.kg = add nsw i32 %i.kf, 1                    ; 2 uses
  store i32 %i.kg, ptr %i.em, align 4, !tbaa !3
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next75.i, %i.fa
  br i1 %exitcond26.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph72.i, !llvm.loop !2152

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph72.i, %.preheader.i
  %i.kh = load ptr, ptr %i.cf, align 8, !tbaa !2144, !nonnull !72, !align !530
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3
  %i.kj = load ptr, ptr %i.ci, align 8, !tbaa !2143, !nonnull !72, !align !393 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !247
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.cm
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !3
  %i.ko = sub nsw i32 %i.ki, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !251
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.cm
  store i32 %i.ko, ptr %i.kr, align 4, !tbaa !3
  br label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.100", align 8   ; 14 uses
  %3 = alloca %"class.std::vector.100", align 8   ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2153, !nonnull !72, !align !393 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.f = load i8, ptr %i.e, align 2, !tbaa !301, !range !71, !noundef !72
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.i = load i8, ptr %i.h, align 1, !range !71
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %1 to i64                       ; 2 uses
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi:bb.a
  %i.aw = lshr i64 %i.av, 6
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !135
  %i.az = and i64 %i.av, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ay, %i.ba
  %.not.i.i15 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i15, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

bb.h:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !292, !range !71, !noundef !72
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !309
  %i.bh = sext i32 %1 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !135
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bp, %i.bn
  %.not.i7.i12 = icmp eq i64 %i.bq, 0
  br i1 %.not.i7.i12, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16: ; preds = %bb.h
  %i.br = load i64, ptr %i.ao, align 8, !tbaa !135
  %i.bs = and i64 %i.br, 1
  %.not.i6.i14 = icmp eq i64 %i.bs, 0
  br i1 %.not.i6.i14, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2164, !nonnull !72, !align !393
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !240
  %i.bx = zext i32 %1 to i64                      ; 2 uses
  %i.by = and i64 %i.bx, 7
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = lshr i64 %i.bx, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !30
  %i.ce = and i8 %i.cd, %i.ca
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !30
  br label %bb.y

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2165, !nonnull !72, !align !530
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2164, !nonnull !72, !align !393
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !247
  %i.cm = sext i32 %1 to i64                      ; 5 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %i.ch, ptr %i.cn, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !292, !range !71, !noundef !72
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !309
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cm
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread, %bb.l, %bb.m
  %.0.i17 = phi i32 [ %i.cz, %bb.m ], [ %i.cv, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.db = load i8, ptr %i.da, align 2, !tbaa !301, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !292, !range !71, !noundef !72
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

bb.p:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !309
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.cm
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

_ZNK8facebook5velox13DecodedVector5indexEi.exit19: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i18 = phi i32 [ %i.dl, %bb.p ], [ %i.dh, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !179
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2166, !nonnull !72, !align !393
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2167, !nonnull !72, !align !393
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.dn, i32 noundef %.0.i17, ptr noundef nonnull align 8 dereferenceable(120) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dr)
  %i.ds = load ptr, ptr %0, align 8, !tbaa !2162, !nonnull !72, !align !393
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !180
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2168, !nonnull !72, !align !393
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !2169, !nonnull !72, !align !393
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.du, i32 noundef %.0.i18, ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dy)
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !2167, !nonnull !72, !align !393 ; 6 uses
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !2169, !nonnull !72, !align !393 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !2170, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ec, align 8, !tbaa !2171
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !2171
  %i.ed = load ptr, ptr %i.ci, align 8, !tbaa !2164, !nonnull !72, !align !393 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !257 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !267 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !261 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !271 ; 3 uses
  %i.em = load ptr, ptr %i.cf, align 8, !tbaa !2165, !nonnull !72, !align !530 ; 16 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !952 ; 2 uses
  %i.ep = load ptr, ptr %i.dz, align 8, !tbaa !307 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2                 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !952 ; 2 uses
  %i.ew = load ptr, ptr %i.ea, align 8, !tbaa !307 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 2                 ; 3 uses
  %i.fb = icmp ne ptr %i.eo, %i.ep
  %i.fc = icmp ne ptr %i.ev, %i.ew
  %i.fd = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %i.fd, label %.lr.ph.i, label %.preheader67.i

.lr.ph.i:                                         ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit19
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.q

.preheader67.i:                                   ; preds = %bb.x, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19
  %.055.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.ik, %bb.x ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.ii, %bb.x ] ; 2 uses
  %i.fg = icmp ugt i64 %i.et, %.0.lcssa.i
  br i1 %i.fg, label %.lr.ph72.preheader.i, label %.preheader.i

.lr.ph72.preheader.i:                             ; preds = %.preheader67.i
  %.pre.i = load i32, ptr %i.em, align 4, !tbaa !3
  br label %.lr.ph72.i

bb.q:                                             ; preds = %bb.x, %.lr.ph.i
  %i.fh = phi i64 [ 0, %.lr.ph.i ], [ %i.ik, %bb.x ] ; 3 uses
  %i.fi = phi i64 [ 0, %.lr.ph.i ], [ %i.ii, %bb.x ] ; 3 uses
  %.069.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.x ] ; 3 uses
  %.05568.i = phi i32 [ 0, %.lr.ph.i ], [ %.156.i, %bb.x ] ; 3 uses
  %i.fj = load ptr, ptr %i.dz, align 8, !tbaa !307 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fh
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !878 ; 3 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !878
  %i.fp = getelementptr i8, ptr %.val62.val.i, i64 144
  %.val62.val.val.i = load ptr, ptr %i.fp, align 8, !tbaa !2173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 144
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !2173
  %i.fs = sext i32 %i.fl to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !2182 ; 4 uses
  store double %i.fu, ptr %i.b, align 8, !tbaa !2182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.fv = sext i32 %i.fo to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %.val62.val.val.i, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !2182 ; 4 uses
  store double %i.fx, ptr %i.c, align 8, !tbaa !2182
  %i.fy = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 25
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !969, !range !71, !noundef !72
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.gc, ptr %i.a, align 8, !tbaa !971
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.a, ptr %2, align 8, !tbaa !972
  store ptr %i.b, ptr %i.fe, align 8, !tbaa !2184
  store ptr %i.c, ptr %i.ff, align 8, !tbaa !2184
  %i.gd = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIdE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKdS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i

bb.s:                                             ; preds = %bb.q
  %3 = fcmp ord double %i.fu, 0.000000e+00        ; 2 uses
  %i.ge = fcmp ord double %i.fx, 0.000000e+00     ; 2 uses
  %i.gf = zext i1 %i.ge to i32
  %.010.i.i.i.i = select i1 %3, i32 -1, i32 %i.gf
  %.0.i.not.i.i.i = select i1 %3, i1 %i.ge, i1 false
  br i1 %.0.i.not.i.i.i, label %bb.t, label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.gg = fcmp olt double %i.fu, %i.fx
  %i.gh = fcmp une double %i.fu, %i.fx
  %i.gi = zext i1 %i.gh to i32
  br i1 %i.gg, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.v

_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.gj = phi i32 [ %i.gd, %bb.r ], [ %i.gi, %bb.t ], [ %.010.i.i.i.i, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.u, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i

bb.u:                                             ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i
  %i.gl = load ptr, ptr %i.dz, align 8, !tbaa !307
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.fi
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = load i32, ptr %i.em, align 4, !tbaa !3
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.gp
  store i32 %i.gn, ptr %i.gq, align 4, !tbaa !3
  %i.gr = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.fh
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = load i32, ptr %i.em, align 4, !tbaa !3
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.gv
  store i32 %i.gt, ptr %i.gw, align 4, !tbaa !3
  %i.gx = add nsw i32 %.069.i, 1
  %i.gy = add nsw i32 %.05568.i, 1
  br label %bb.x

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i: ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i
  %i.gz = icmp slt i32 %i.gj, 0
  br i1 %i.gz, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge, label %bb.w

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge: ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %.pre = load ptr, ptr %i.dz, align 8, !tbaa !307
  br label %bb.v

bb.v:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i
  %i.ha = phi ptr [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge ], [ %i.fj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.fi
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = load i32, ptr %i.em, align 4, !tbaa !3
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.he
  store i32 %i.hc, ptr %i.hf, align 4, !tbaa !3
  %i.hg = load i32, ptr %i.em, align 4, !tbaa !3
  %i.hh = zext i32 %i.hg to i64                   ; 2 uses
  %i.hi = and i64 %i.hh, 7
  %i.hj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !30
  %i.hl = lshr i64 %i.hh, 3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.hl ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !30
  %i.ho = and i8 %i.hn, %i.hk
  store i8 %i.ho, ptr %i.hm, align 1, !tbaa !30
  %i.hp = add nsw i32 %.069.i, 1
  br label %bb.x

bb.w:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.hq = load i32, ptr %i.em, align 4, !tbaa !3
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = and i64 %i.hr, 7
  %i.ht = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !30
  %i.hv = lshr i64 %i.hr, 3
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.hv ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !30
  %i.hy = and i8 %i.hx, %i.hu
  store i8 %i.hy, ptr %i.hw, align 1, !tbaa !30
  %i.hz = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.fh
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.ic = load i32, ptr %i.em, align 4, !tbaa !3
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.id
  store i32 %i.ib, ptr %i.ie, align 4, !tbaa !3
  %i.if = add nsw i32 %.05568.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.156.i = phi i32 [ %i.gy, %bb.u ], [ %.05568.i, %bb.v ], [ %i.if, %bb.w ] ; 2 uses
  %.1.i = phi i32 [ %i.gx, %bb.u ], [ %i.hp, %bb.v ], [ %.069.i, %bb.w ] ; 2 uses
  %i.ig = load i32, ptr %i.em, align 4, !tbaa !3
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.em, align 4, !tbaa !3
  %i.ii = sext i32 %.1.i to i64                   ; 3 uses
  %i.ij = icmp ugt i64 %i.et, %i.ii
  %i.ik = sext i32 %.156.i to i64                 ; 3 uses
  %i.il = icmp ugt i64 %i.fa, %i.ik
  %i.im = select i1 %i.ij, i1 %i.il, i1 false
  br i1 %i.im, label %bb.q, label %.preheader67.i, !llvm.loop !2185

.preheader.i:                                     ; preds = %.lr.ph72.i, %.preheader67.i
  %i.in = icmp ugt i64 %i.fa, %.055.lcssa.i
  br i1 %i.in, label %.lr.ph74.preheader.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph74.preheader.i:                             ; preds = %.preheader.i
  %.pre79.i = load i32, ptr %i.em, align 4, !tbaa !3
  br label %.lr.ph74.i

.lr.ph72.i:                                       ; preds = %.lr.ph72.i, %.lr.ph72.preheader.i
  %i.io = phi i32 [ %.pre.i, %.lr.ph72.preheader.i ], [ %i.je, %.lr.ph72.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph72.preheader.i ], [ %indvars.iv.next.i, %.lr.ph72.i ] ; 2 uses
  %i.ip = load ptr, ptr %i.dz, align 8, !tbaa !307
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.is = sext i32 %i.io to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.is
  store i32 %i.ir, ptr %i.it, align 4, !tbaa !3
  %i.iu = load i32, ptr %i.em, align 4, !tbaa !3
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = and i64 %i.iv, 7
  %i.ix = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !30
  %i.iz = lshr i64 %i.iv, 3
  %i.ja = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.iz ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !30
  %i.jc = and i8 %i.jb, %i.iy
  store i8 %i.jc, ptr %i.ja, align 1, !tbaa !30
  %i.jd = load i32, ptr %i.em, align 4, !tbaa !3
  %i.je = add nsw i32 %i.jd, 1                    ; 2 uses
  store i32 %i.je, ptr %i.em, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.et
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph72.i, !llvm.loop !2186

.lr.ph74.i:                                       ; preds = %.lr.ph74.i, %.lr.ph74.preheader.i
  %i.jf = phi i32 [ %.pre79.i, %.lr.ph74.preheader.i ], [ %i.jv, %.lr.ph74.i ]
  %indvars.iv76.i = phi i64 [ %.055.lcssa.i, %.lr.ph74.preheader.i ], [ %indvars.iv.next77.i, %.lr.ph74.i ] ; 2 uses
  %i.jg = zext i32 %i.jf to i64                   ; 2 uses
  %i.jh = and i64 %i.jg, 7
  %i.ji = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !30
  %i.jk = lshr i64 %i.jg, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.jk ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !30
  %i.jn = and i8 %i.jm, %i.jj
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !30
  %i.jo = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv76.i
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %i.jr = load i32, ptr %i.em, align 4, !tbaa !3
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.js
  store i32 %i.jq, ptr %i.jt, align 4, !tbaa !3
  %i.ju = load i32, ptr %i.em, align 4, !tbaa !3
  %i.jv = add nsw i32 %i.ju, 1                    ; 2 uses
  store i32 %i.jv, ptr %i.em, align 4, !tbaa !3
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next77.i, %i.fa
  br i1 %exitcond24.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph74.i, !llvm.loop !2187

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph74.i, %.preheader.i
  %i.jw = load ptr, ptr %i.cf, align 8, !tbaa !2165, !nonnull !72, !align !530
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !3
  %i.jy = load ptr, ptr %i.ci, align 8, !tbaa !2164, !nonnull !72, !align !393 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !247
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.cm
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = sub nsw i32 %i.jx, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !251
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.cm
  store i32 %i.kd, ptr %i.kg, align 4, !tbaa !3
  br label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox12SimpleVectorIdE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKdS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %13 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.259", align 16 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !292, !range !71, !noundef !72
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !309
  %i.bh = sext i32 %1 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !135
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bp, %i.bn
  %.not.i7.i12 = icmp eq i64 %i.bq, 0
  br i1 %.not.i7.i12, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16: ; preds = %bb.h
  %i.br = load i64, ptr %i.ao, align 8, !tbaa !135
  %i.bs = and i64 %i.br, 1
  %.not.i6.i14 = icmp eq i64 %i.bs, 0
  br i1 %.not.i6.i14, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2276, !nonnull !72, !align !393
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !240
  %i.bx = zext i32 %1 to i64                      ; 2 uses
  %i.by = and i64 %i.bx, 7
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = lshr i64 %i.bx, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !30
  %i.ce = and i8 %i.cd, %i.ca
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !30
  br label %bb.y

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2277, !nonnull !72, !align !530
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2276, !nonnull !72, !align !393
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !247
  %i.cm = sext i32 %1 to i64                      ; 5 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %i.ch, ptr %i.cn, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !292, !range !71, !noundef !72
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !309
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cm
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread, %bb.l, %bb.m
  %.0.i17 = phi i32 [ %i.cz, %bb.m ], [ %i.cv, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.db = load i8, ptr %i.da, align 2, !tbaa !301, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !292, !range !71, !noundef !72
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

bb.p:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !309
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.cm
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

_ZNK8facebook5velox13DecodedVector5indexEi.exit19: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i18 = phi i32 [ %i.dl, %bb.p ], [ %i.dh, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !179
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2278, !nonnull !72, !align !393
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2279, !nonnull !72, !align !393
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.dn, i32 noundef %.0.i17, ptr noundef nonnull align 8 dereferenceable(120) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dr)
  %i.ds = load ptr, ptr %0, align 8, !tbaa !2274, !nonnull !72, !align !393
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !180
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2280, !nonnull !72, !align !393
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !2281, !nonnull !72, !align !393
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.du, i32 noundef %.0.i18, ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dy)
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !2279, !nonnull !72, !align !393 ; 6 uses
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !2281, !nonnull !72, !align !393 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !2282, !nonnull !72, !align !393 ; 4 uses
  %.sroa.020.0.copyload = load ptr, ptr %i.ec, align 8, !tbaa !2171
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !2171
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !1243
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !1243
  %i.ed = load ptr, ptr %i.ci, align 8, !tbaa !2276, !nonnull !72, !align !393 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !257 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !267 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !261 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !271 ; 3 uses
  %i.em = load ptr, ptr %i.cf, align 8, !tbaa !2277, !nonnull !72, !align !530 ; 16 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !952 ; 2 uses
  %i.ep = load ptr, ptr %i.dz, align 8, !tbaa !307 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2                 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !952 ; 2 uses
  %i.ew = load ptr, ptr %i.ea, align 8, !tbaa !307 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 2                 ; 3 uses
  %i.fb = icmp ne ptr %i.eo, %i.ep
  %i.fc = icmp ne ptr %i.ev, %i.ew
  %i.fd = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %i.fd, label %.lr.ph.i, label %.preheader65.i

.lr.ph.i:                                         ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit19
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.q

.preheader65.i:                                   ; preds = %bb.x, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19
  %.055.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.iv, %bb.x ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.it, %bb.x ] ; 2 uses
  %i.fg = icmp ugt i64 %i.et, %.0.lcssa.i
  br i1 %i.fg, label %.lr.ph70.preheader.i, label %.preheader.i

.lr.ph70.preheader.i:                             ; preds = %.preheader65.i
  %.pre.i = load i32, ptr %i.em, align 4, !tbaa !3
  br label %.lr.ph70.i

bb.q:                                             ; preds = %bb.x, %.lr.ph.i
  %i.fh = phi i64 [ 0, %.lr.ph.i ], [ %i.iv, %bb.x ] ; 3 uses
  %i.fi = phi i64 [ 0, %.lr.ph.i ], [ %i.it, %bb.x ] ; 3 uses
  %.067.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.x ] ; 3 uses
  %.05566.i = phi i32 [ 0, %.lr.ph.i ], [ %.156.i, %bb.x ] ; 3 uses
  %i.fj = load ptr, ptr %i.dz, align 8, !tbaa !307 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fh
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fp = load ptr, ptr %.sroa.020.0.copyload, align 8, !tbaa !878 ; 3 uses
  %i.fq = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !878
  %i.fr = load ptr, ptr %.sroa.3.0.copyload, align 8, !tbaa !310
  %i.fs = sext i32 %i.fl to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = load ptr, ptr %.sroa.421.0.copyload, align 8, !tbaa !310
  %i.fw = sext i32 %i.fo to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 144
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !2173
  %i.gb = sext i32 %i.fu to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !2182 ; 4 uses
  store double %i.gd, ptr %i.b, align 8, !tbaa !2182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 144
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !2173
  %i.gg = sext i32 %i.fy to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !2182 ; 4 uses
  store double %i.gi, ptr %i.c, align 8, !tbaa !2182
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fp, i64 25
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !969, !range !71, !noundef !72
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.gn, ptr %i.a, align 8, !tbaa !971
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.a, ptr %2, align 8, !tbaa !972
  store ptr %i.b, ptr %i.fe, align 8, !tbaa !2184
  store ptr %i.c, ptr %i.ff, align 8, !tbaa !2184
  %i.go = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIdE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKdS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i

bb.s:                                             ; preds = %bb.q
  %3 = fcmp ord double %i.gd, 0.000000e+00        ; 2 uses
  %i.gp = fcmp ord double %i.gi, 0.000000e+00     ; 2 uses
  %i.gq = zext i1 %i.gp to i32
  %.010.i.i.i.i = select i1 %3, i32 -1, i32 %i.gq
  %.0.i.not.i.i.i = select i1 %3, i1 %i.gp, i1 false
  br i1 %.0.i.not.i.i.i, label %bb.t, label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.gr = fcmp olt double %i.gd, %i.gi
  %i.gs = fcmp une double %i.gd, %i.gi
  %i.gt = zext i1 %i.gs to i32
  br i1 %i.gr, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.v

_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.gu = phi i32 [ %i.go, %bb.r ], [ %i.gt, %bb.t ], [ %.010.i.i.i.i, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.u, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i

bb.u:                                             ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i
  %i.gw = load ptr, ptr %i.dz, align 8, !tbaa !307
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.fi
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = load i32, ptr %i.em, align 4, !tbaa !3
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ha
  store i32 %i.gy, ptr %i.hb, align 4, !tbaa !3
  %i.hc = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.fh
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = load i32, ptr %i.em, align 4, !tbaa !3
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.hg
  store i32 %i.he, ptr %i.hh, align 4, !tbaa !3
  %i.hi = add nsw i32 %.067.i, 1
  %i.hj = add nsw i32 %.05566.i, 1
  br label %bb.x

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i: ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i
  %i.hk = icmp slt i32 %i.gu, 0
  br i1 %i.hk, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge, label %bb.w

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge: ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %.pre = load ptr, ptr %i.dz, align 8, !tbaa !307
  br label %bb.v

bb.v:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i
  %i.hl = phi ptr [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i._crit_edge ], [ %i.fj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.fi
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.em, align 4, !tbaa !3
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.hp
  store i32 %i.hn, ptr %i.hq, align 4, !tbaa !3
  %i.hr = load i32, ptr %i.em, align 4, !tbaa !3
  %i.hs = zext i32 %i.hr to i64                   ; 2 uses
  %i.ht = and i64 %i.hs, 7
  %i.hu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = lshr i64 %i.hs, 3
  %i.hx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.hw ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !30
  %i.hz = and i8 %i.hy, %i.hv
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !30
  %i.ia = add nsw i32 %.067.i, 1
  br label %bb.x

bb.w:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.ib = load i32, ptr %i.em, align 4, !tbaa !3
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = and i64 %i.ic, 7
  %i.ie = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !30
  %i.ig = lshr i64 %i.ic, 3
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ig ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !30
  %i.ij = and i8 %i.ii, %i.if
  store i8 %i.ij, ptr %i.ih, align 1, !tbaa !30
  %i.ik = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.fh
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = load i32, ptr %i.em, align 4, !tbaa !3
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.io
  store i32 %i.im, ptr %i.ip, align 4, !tbaa !3
  %i.iq = add nsw i32 %.05566.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.156.i = phi i32 [ %i.hj, %bb.u ], [ %.05566.i, %bb.v ], [ %i.iq, %bb.w ] ; 2 uses
  %.1.i = phi i32 [ %i.hi, %bb.u ], [ %i.ia, %bb.v ], [ %.067.i, %bb.w ] ; 2 uses
  %i.ir = load i32, ptr %i.em, align 4, !tbaa !3
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr %i.em, align 4, !tbaa !3
  %i.it = sext i32 %.1.i to i64                   ; 3 uses
  %i.iu = icmp ugt i64 %i.et, %i.it
  %i.iv = sext i32 %.156.i to i64                 ; 3 uses
  %i.iw = icmp ugt i64 %i.fa, %i.iv
  %i.ix = select i1 %i.iu, i1 %i.iw, i1 false
  br i1 %i.ix, label %bb.q, label %.preheader65.i, !llvm.loop !2283

.preheader.i:                                     ; preds = %.lr.ph70.i, %.preheader65.i
  %i.iy = icmp ugt i64 %i.fa, %.055.lcssa.i
  br i1 %i.iy, label %.lr.ph72.preheader.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph72.preheader.i:                             ; preds = %.preheader.i
  %.pre77.i = load i32, ptr %i.em, align 4, !tbaa !3
  br label %.lr.ph72.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i, %.lr.ph70.preheader.i
  %i.iz = phi i32 [ %.pre.i, %.lr.ph70.preheader.i ], [ %i.jp, %.lr.ph70.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph70.preheader.i ], [ %indvars.iv.next.i, %.lr.ph70.i ] ; 2 uses
  %i.ja = load ptr, ptr %i.dz, align 8, !tbaa !307
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jd = sext i32 %i.iz to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.jd
  store i32 %i.jc, ptr %i.je, align 4, !tbaa !3
  %i.jf = load i32, ptr %i.em, align 4, !tbaa !3
  %i.jg = zext i32 %i.jf to i64                   ; 2 uses
  %i.jh = and i64 %i.jg, 7
  %i.ji = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !30
  %i.jk = lshr i64 %i.jg, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.jk ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !30
  %i.jn = and i8 %i.jm, %i.jj
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !30
  %i.jo = load i32, ptr %i.em, align 4, !tbaa !3
  %i.jp = add nsw i32 %i.jo, 1                    ; 2 uses
  store i32 %i.jp, ptr %i.em, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.et
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph70.i, !llvm.loop !2284

.lr.ph72.i:                                       ; preds = %.lr.ph72.i, %.lr.ph72.preheader.i
  %i.jq = phi i32 [ %.pre77.i, %.lr.ph72.preheader.i ], [ %i.kg, %.lr.ph72.i ]
  %indvars.iv74.i = phi i64 [ %.055.lcssa.i, %.lr.ph72.preheader.i ], [ %indvars.iv.next75.i, %.lr.ph72.i ] ; 2 uses
  %i.jr = zext i32 %i.jq to i64                   ; 2 uses
  %i.js = and i64 %i.jr, 7
  %i.jt = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !30
  %i.jv = lshr i64 %i.jr, 3
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.jv ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !30
  %i.jy = and i8 %i.jx, %i.ju
  store i8 %i.jy, ptr %i.jw, align 1, !tbaa !30
  %i.jz = load ptr, ptr %i.ea, align 8, !tbaa !307
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv74.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !3
  %i.kc = load i32, ptr %i.em, align 4, !tbaa !3
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.kd
  store i32 %i.kb, ptr %i.ke, align 4, !tbaa !3
  %i.kf = load i32, ptr %i.em, align 4, !tbaa !3
  %i.kg = add nsw i32 %i.kf, 1                    ; 2 uses
  store i32 %i.kg, ptr %i.em, align 4, !tbaa !3
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next75.i, %i.fa
  br i1 %exitcond26.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph72.i, !llvm.loop !2285

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph72.i, %.preheader.i
  %i.kh = load ptr, ptr %i.cf, align 8, !tbaa !2277, !nonnull !72, !align !530
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3
  %i.kj = load ptr, ptr %i.ci, align 8, !tbaa !2276, !nonnull !72, !align !393 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !247
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.cm
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !3
  %i.ko = sub nsw i32 %i.ki, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !251
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.cm
  store i32 %i.ko, ptr %i.kr, align 4, !tbaa !3
  br label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.100", align 8   ; 14 uses
  %3 = alloca %"class.std::vector.100", align 8   ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2286, !nonnull !72, !align !393 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.f = load i8, ptr %i.e, align 2, !tbaa !301, !range !71, !noundef !72
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.i = load i8, ptr %i.h, align 1, !range !71
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %1 to i64                       ; 2 uses
end_hunk_3
