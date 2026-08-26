Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MapZipWith?download=true
inline.NumInlined: 5627
inline.NumDeleted: 1581
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi:bb.a
  %i.au = trunc nuw i8 %i.at to i1
  %or.cond.i11 = select i1 %i.ar, i1 true, i1 %i.au
  br i1 %or.cond.i11, label %.split23, label %bb.e

.split23:                                         ; preds = %bb.d
  %i.av = zext i32 %1 to i64                      ; 2 uses
  %i.aw = lshr i64 %i.av, 6
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !137
  %i.az = and i64 %i.av, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ay, %i.ba
  %.not.i.i15 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i15, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !294, !range !73, !noundef !74
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, label %.split24

.split24:                                         ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !311
  %i.bh = sext i32 %1 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !44
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !137
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bp, %i.bn
  %.not.i7.i12 = icmp eq i64 %i.bq, 0
  br i1 %.not.i7.i12, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16: ; preds = %bb.e
  %i.br = load i64, ptr %i.ao, align 8, !tbaa !137
  %i.bs = and i64 %i.br, 1
  %.not.i6.i14 = icmp eq i64 %i.bs, 0
  br i1 %.not.i6.i14, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

bb.f:                                             ; preds = %.split24, %.split23, %.split21, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1266, !nonnull !74, !align !395
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !242
  %i.bx = zext i32 %1 to i64                      ; 2 uses
  %i.by = and i64 %i.bx, 7
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !31
  %i.cb = lshr i64 %i.bx, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !31
  %i.ce = and i8 %i.cd, %i.ca
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !31
  br label %bb.t

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %.split24, %.split23, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1267, !nonnull !74, !align !538
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1266, !nonnull !74, !align !395
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !249
  %i.cm = sext i32 %1 to i64                      ; 5 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %i.ch, ptr %i.cn, align 4, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !303, !range !73, !noundef !74
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !294, !range !73, !noundef !74
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !958
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.i:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !311
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cm
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !44
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread, %bb.h, %bb.i
  %.0.i17 = phi i32 [ %i.cz, %bb.i ], [ %i.cv, %bb.h ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.db = load i8, ptr %i.da, align 2, !tbaa !303, !range !73, !noundef !74
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !294, !range !73, !noundef !74
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !958
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

bb.l:                                             ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !311
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.cm
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !44
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

_ZNK8facebook5velox13DecodedVector5indexEi.exit19: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.k, %bb.l
  %.0.i18 = phi i32 [ %i.dl, %bb.l ], [ %i.dh, %bb.k ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !181
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1268, !nonnull !74, !align !395
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1269, !nonnull !74, !align !395
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.dn, i32 noundef %.0.i17, ptr noundef nonnull align 8 dereferenceable(120) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dr)
  %i.ds = load ptr, ptr %0, align 8, !tbaa !1264, !nonnull !74, !align !395
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !182
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1270, !nonnull !74, !align !395
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1271, !nonnull !74, !align !395
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.du, i32 noundef %.0.i18, ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dy)
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !1269, !nonnull !74, !align !395 ; 6 uses
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !1271, !nonnull !74, !align !395 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1272, !nonnull !74, !align !395 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ec, align 8, !tbaa !1273
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !1273
  %i.ed = load ptr, ptr %i.ci, align 8, !tbaa !1266, !nonnull !74, !align !395 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !259 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !269 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !263 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !273 ; 3 uses
  %i.em = load ptr, ptr %i.cf, align 8, !tbaa !1267, !nonnull !74, !align !538 ; 16 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !960 ; 2 uses
  %i.ep = load ptr, ptr %i.dz, align 8, !tbaa !309 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2                 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !960 ; 2 uses
  %i.ew = load ptr, ptr %i.ea, align 8, !tbaa !309 ; 2 uses
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
  br label %bb.m

.preheader67.i:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19
  %.055.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.ib, %bb.s ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.hz, %bb.s ] ; 2 uses
  %i.fg = icmp ugt i64 %i.et, %.0.lcssa.i
  br i1 %i.fg, label %.lr.ph72.preheader.i, label %.preheader.i

.lr.ph72.preheader.i:                             ; preds = %.preheader67.i
  %.pre.i = load i32, ptr %i.em, align 4, !tbaa !44
  br label %.lr.ph72.i

bb.m:                                             ; preds = %bb.s, %.lr.ph.i
  %i.fh = phi i64 [ 0, %.lr.ph.i ], [ %i.ib, %bb.s ] ; 3 uses
  %i.fi = phi i64 [ 0, %.lr.ph.i ], [ %i.hz, %bb.s ] ; 3 uses
  %.069.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.s ] ; 3 uses
  %.05568.i = phi i32 [ 0, %.lr.ph.i ], [ %.156.i, %bb.s ] ; 3 uses
  %i.fj = load ptr, ptr %i.dz, align 8, !tbaa !309
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !44
  %i.fm = load ptr, ptr %i.ea, align 8, !tbaa !309
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fh
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !44
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !760 ; 3 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fp = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %.val.val.i, i32 noundef %i.fl) ; 2 uses
  %i.fq = zext i1 %i.fp to i8
  store i8 %i.fq, ptr %i.b, align 1, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.fr = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %.val62.val.i, i32 noundef %i.fo) ; 2 uses
  %i.fs = zext i1 %i.fr to i8
  store i8 %i.fs, ptr %i.c, align 1, !tbaa !58
  %i.ft = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 25
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !977, !range !73, !noundef !74
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fw = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.fx, ptr %i.a, align 8, !tbaa !979
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.a, ptr %2, align 8, !tbaa !980
  store ptr %i.b, ptr %i.fe, align 8, !tbaa !1275
  store ptr %i.c, ptr %i.ff, align 8, !tbaa !1275
  %i.fy = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.fz = call i32 @llvm.ucmp.i32.i1(i1 %i.fp, i1 %i.fr)
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i

_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i: ; preds = %bb.o, %bb.n
  %i.ga = phi i32 [ %i.fy, %bb.n ], [ %i.fz, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.p, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i

bb.p:                                             ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i
  %i.gc = load ptr, ptr %i.dz, align 8, !tbaa !309
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.fi
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !44
  %i.gf = load i32, ptr %i.em, align 4, !tbaa !44
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.gg
  store i32 %i.ge, ptr %i.gh, align 4, !tbaa !44
  %i.gi = load ptr, ptr %i.ea, align 8, !tbaa !309
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.fh
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !44
  %i.gl = load i32, ptr %i.em, align 4, !tbaa !44
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.gm
  store i32 %i.gk, ptr %i.gn, align 4, !tbaa !44
  %i.go = add nsw i32 %.069.i, 1
  %i.gp = add nsw i32 %.05568.i, 1
  br label %bb.s

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i: ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E0_clIiiEEDaSE_SF_.exit.i
  %i.gq = icmp slt i32 %i.ga, 0
  br i1 %i.gq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.gr = load ptr, ptr %i.dz, align 8, !tbaa !309
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.fi
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !44
  %i.gu = load i32, ptr %i.em, align 4, !tbaa !44
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.gv
  store i32 %i.gt, ptr %i.gw, align 4, !tbaa !44
  %i.gx = load i32, ptr %i.em, align 4, !tbaa !44
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %i.gz = and i64 %i.gy, 7
  %i.ha = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !31
  %i.hc = lshr i64 %i.gy, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.hc ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !31
  %i.hf = and i8 %i.he, %i.hb
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !31
  %i.hg = add nsw i32 %.069.i, 1
  br label %bb.s

bb.r:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.hh = load i32, ptr %i.em, align 4, !tbaa !44
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = and i64 %i.hi, 7
  %i.hk = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !31
  %i.hm = lshr i64 %i.hi, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.hm ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !31
  %i.hp = and i8 %i.ho, %i.hl
  store i8 %i.hp, ptr %i.hn, align 1, !tbaa !31
  %i.hq = load ptr, ptr %i.ea, align 8, !tbaa !309
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.fh
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !44
  %i.ht = load i32, ptr %i.em, align 4, !tbaa !44
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.hu
  store i32 %i.hs, ptr %i.hv, align 4, !tbaa !44
  %i.hw = add nsw i32 %.05568.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.156.i = phi i32 [ %i.gp, %bb.p ], [ %.05568.i, %bb.q ], [ %i.hw, %bb.r ] ; 2 uses
  %.1.i = phi i32 [ %i.go, %bb.p ], [ %i.hg, %bb.q ], [ %.069.i, %bb.r ] ; 2 uses
  %i.hx = load i32, ptr %i.em, align 4, !tbaa !44
  %i.hy = add nsw i32 %i.hx, 1
  store i32 %i.hy, ptr %i.em, align 4, !tbaa !44
  %i.hz = sext i32 %.1.i to i64                   ; 3 uses
  %i.ia = icmp ugt i64 %i.et, %i.hz
  %i.ib = sext i32 %.156.i to i64                 ; 3 uses
  %i.ic = icmp ugt i64 %i.fa, %i.ib
  %i.id = select i1 %i.ia, i1 %i.ic, i1 false
  br i1 %i.id, label %bb.m, label %.preheader67.i, !llvm.loop !1277

.preheader.i:                                     ; preds = %.lr.ph72.i, %.preheader67.i
  %i.ie = icmp ugt i64 %i.fa, %.055.lcssa.i
  br i1 %i.ie, label %.lr.ph74.preheader.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph74.preheader.i:                             ; preds = %.preheader.i
  %.pre79.i = load i32, ptr %i.em, align 4, !tbaa !44
  br label %.lr.ph74.i

.lr.ph72.i:                                       ; preds = %.lr.ph72.i, %.lr.ph72.preheader.i
  %i.if = phi i32 [ %.pre.i, %.lr.ph72.preheader.i ], [ %i.iv, %.lr.ph72.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph72.preheader.i ], [ %indvars.iv.next.i, %.lr.ph72.i ] ; 2 uses
  %i.ig = load ptr, ptr %i.dz, align 8, !tbaa !309
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !44
  %i.ij = sext i32 %i.if to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ij
  store i32 %i.ii, ptr %i.ik, align 4, !tbaa !44
  %i.il = load i32, ptr %i.em, align 4, !tbaa !44
  %i.im = zext i32 %i.il to i64                   ; 2 uses
  %i.in = and i64 %i.im, 7
  %i.io = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !31
  %i.iq = lshr i64 %i.im, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.iq ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !31
  %i.it = and i8 %i.is, %i.ip
  store i8 %i.it, ptr %i.ir, align 1, !tbaa !31
  %i.iu = load i32, ptr %i.em, align 4, !tbaa !44
  %i.iv = add nsw i32 %i.iu, 1                    ; 2 uses
  store i32 %i.iv, ptr %i.em, align 4, !tbaa !44
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.et
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph72.i, !llvm.loop !1278

.lr.ph74.i:                                       ; preds = %.lr.ph74.i, %.lr.ph74.preheader.i
  %i.iw = phi i32 [ %.pre79.i, %.lr.ph74.preheader.i ], [ %i.jm, %.lr.ph74.i ]
  %indvars.iv76.i = phi i64 [ %.055.lcssa.i, %.lr.ph74.preheader.i ], [ %indvars.iv.next77.i, %.lr.ph74.i ] ; 2 uses
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %i.iy = and i64 %i.ix, 7
  %i.iz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !31
  %i.jb = lshr i64 %i.ix, 3
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.jb ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !31
  %i.je = and i8 %i.jd, %i.ja
  store i8 %i.je, ptr %i.jc, align 1, !tbaa !31
  %i.jf = load ptr, ptr %i.ea, align 8, !tbaa !309
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv76.i
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !44
  %i.ji = load i32, ptr %i.em, align 4, !tbaa !44
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.jj
  store i32 %i.jh, ptr %i.jk, align 4, !tbaa !44
  %i.jl = load i32, ptr %i.em, align 4, !tbaa !44
  %i.jm = add nsw i32 %i.jl, 1                    ; 2 uses
  store i32 %i.jm, ptr %i.em, align 4, !tbaa !44
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next77.i, %i.fa
  br i1 %exitcond27.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph74.i, !llvm.loop !1279

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph74.i, %.preheader.i
  %i.jn = load ptr, ptr %i.cf, align 8, !tbaa !1267, !nonnull !74, !align !538
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !44
  %i.jp = load ptr, ptr %i.ci, align 8, !tbaa !1266, !nonnull !74, !align !395 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !249
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jr, i64 %i.cm
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !44
  %i.ju = sub nsw i32 %i.jo, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !253
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.cm
  store i32 %i.ju, ptr %i.jx, align 4, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.f
  ret void
}

declare noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1280, !nonnull !74, !align !395
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi:bb.a
  %.not.i.i15 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i15, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !294, !range !73, !noundef !74
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, label %.split26

.split26:                                         ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !311
  %i.bh = sext i32 %1 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !44
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !137
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bp, %i.bn
  %.not.i7.i12 = icmp eq i64 %i.bq, 0
  br i1 %.not.i7.i12, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16: ; preds = %bb.e
  %i.br = load i64, ptr %i.ao, align 8, !tbaa !137
  %i.bs = and i64 %i.br, 1
  %.not.i6.i14 = icmp eq i64 %i.bs, 0
  br i1 %.not.i6.i14, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread

bb.f:                                             ; preds = %.split26, %.split25, %.split23, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1368, !nonnull !74, !align !395
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !242
  %i.bx = zext i32 %1 to i64                      ; 2 uses
  %i.by = and i64 %i.bx, 7
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !31
  %i.cb = lshr i64 %i.bx, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !31
  %i.ce = and i8 %i.cd, %i.ca
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !31
  br label %bb.t

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %.split26, %.split25, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1369, !nonnull !74, !align !538
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1368, !nonnull !74, !align !395
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !249
  %i.cm = sext i32 %1 to i64                      ; 5 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %i.ch, ptr %i.cn, align 4, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !303, !range !73, !noundef !74
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !294, !range !73, !noundef !74
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !958
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.i:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !311
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cm
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !44
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread, %bb.h, %bb.i
  %.0.i17 = phi i32 [ %i.cz, %bb.i ], [ %i.cv, %bb.h ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit16.thread ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.db = load i8, ptr %i.da, align 2, !tbaa !303, !range !73, !noundef !74
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !294, !range !73, !noundef !74
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !958
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

bb.l:                                             ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !311
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.cm
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !44
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit19

_ZNK8facebook5velox13DecodedVector5indexEi.exit19: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.k, %bb.l
  %.0.i18 = phi i32 [ %i.dl, %bb.l ], [ %i.dh, %bb.k ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !181
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1370, !nonnull !74, !align !395
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1371, !nonnull !74, !align !395
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.dn, i32 noundef %.0.i17, ptr noundef nonnull align 8 dereferenceable(120) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dr)
  %i.ds = load ptr, ptr %0, align 8, !tbaa !1366, !nonnull !74, !align !395
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !182
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1372, !nonnull !74, !align !395
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1373, !nonnull !74, !align !395
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction8sortKeysEPKNS0_9MapVectorEiRNS0_13DecodedVectorERSt6vectorIiSaIiEE(ptr noundef %i.du, i32 noundef %.0.i18, ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dy)
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !1371, !nonnull !74, !align !395 ; 6 uses
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !1373, !nonnull !74, !align !395 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1374, !nonnull !74, !align !395 ; 4 uses
  %.sroa.020.0.copyload = load ptr, ptr %i.ec, align 8, !tbaa !1273
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !1273
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !1251
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !1251
  %i.ed = load ptr, ptr %i.ci, align 8, !tbaa !1368, !nonnull !74, !align !395 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !259 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !269 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !263 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !273 ; 3 uses
  %i.em = load ptr, ptr %i.cf, align 8, !tbaa !1369, !nonnull !74, !align !538 ; 16 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !960 ; 2 uses
  %i.ep = load ptr, ptr %i.dz, align 8, !tbaa !309 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2                 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !960 ; 2 uses
  %i.ew = load ptr, ptr %i.ea, align 8, !tbaa !309 ; 2 uses
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
  br label %bb.m

.preheader65.i:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19
  %.055.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.il, %bb.s ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector5indexEi.exit19 ], [ %i.ij, %bb.s ] ; 2 uses
  %i.fg = icmp ugt i64 %i.et, %.0.lcssa.i
  br i1 %i.fg, label %.lr.ph70.preheader.i, label %.preheader.i

.lr.ph70.preheader.i:                             ; preds = %.preheader65.i
  %.pre.i = load i32, ptr %i.em, align 4, !tbaa !44
  br label %.lr.ph70.i

bb.m:                                             ; preds = %bb.s, %.lr.ph.i
  %i.fh = phi i64 [ 0, %.lr.ph.i ], [ %i.il, %bb.s ] ; 3 uses
  %i.fi = phi i64 [ 0, %.lr.ph.i ], [ %i.ij, %bb.s ] ; 3 uses
  %.067.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.s ] ; 3 uses
  %.05566.i = phi i32 [ 0, %.lr.ph.i ], [ %.156.i, %bb.s ] ; 3 uses
  %i.fj = load ptr, ptr %i.dz, align 8, !tbaa !309
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !44
  %i.fm = load ptr, ptr %i.ea, align 8, !tbaa !309
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fh
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !44
  %i.fp = load ptr, ptr %.sroa.020.0.copyload, align 8, !tbaa !760 ; 3 uses
  %i.fq = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !760
  %i.fr = load ptr, ptr %.sroa.3.0.copyload, align 8, !tbaa !312
  %i.fs = sext i32 %i.fl to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !44
  %i.fv = load ptr, ptr %.sroa.421.0.copyload, align 8, !tbaa !312
  %i.fw = sext i32 %i.fo to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fz = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.fp, i32 noundef %i.fu) ; 2 uses
  %i.ga = zext i1 %i.fz to i8
  store i8 %i.ga, ptr %i.b, align 1, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.gb = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.fq, i32 noundef %i.fy) ; 2 uses
  %i.gc = zext i1 %i.gb to i8
  store i8 %i.gc, ptr %i.c, align 1, !tbaa !58
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 25
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !977, !range !73, !noundef !74
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.gh, ptr %i.a, align 8, !tbaa !979
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.a, ptr %2, align 8, !tbaa !980
  store ptr %i.b, ptr %i.fe, align 8, !tbaa !1275
  store ptr %i.c, ptr %i.ff, align 8, !tbaa !1275
  %i.gi = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gj = call i32 @llvm.ucmp.i32.i1(i1 %i.fz, i1 %i.gb)
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i

_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i: ; preds = %bb.o, %bb.n
  %i.gk = phi i32 [ %i.gi, %bb.n ], [ %i.gj, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.p, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i

bb.p:                                             ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i
  %i.gm = load ptr, ptr %i.dz, align 8, !tbaa !309
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.fi
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !44
  %i.gp = load i32, ptr %i.em, align 4, !tbaa !44
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.gq
  store i32 %i.go, ptr %i.gr, align 4, !tbaa !44
  %i.gs = load ptr, ptr %i.ea, align 8, !tbaa !309
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.fh
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !44
  %i.gv = load i32, ptr %i.em, align 4, !tbaa !44
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.gw
  store i32 %i.gu, ptr %i.gx, align 4, !tbaa !44
  %i.gy = add nsw i32 %.067.i, 1
  %i.gz = add nsw i32 %.05566.i, 1
  br label %bb.s

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i: ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEENKUlT_T0_E1_clIiiEEDaSE_SF_.exit.i
  %i.ha = icmp slt i32 %i.gk, 0
  br i1 %i.ha, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.hb = load ptr, ptr %i.dz, align 8, !tbaa !309
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.fi
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !44
  %i.he = load i32, ptr %i.em, align 4, !tbaa !44
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.hf
  store i32 %i.hd, ptr %i.hg, align 4, !tbaa !44
  %i.hh = load i32, ptr %i.em, align 4, !tbaa !44
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = and i64 %i.hi, 7
  %i.hk = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !31
  %i.hm = lshr i64 %i.hi, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.hm ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !31
  %i.hp = and i8 %i.ho, %i.hl
  store i8 %i.hp, ptr %i.hn, align 1, !tbaa !31
  %i.hq = add nsw i32 %.067.i, 1
  br label %bb.s

bb.r:                                             ; preds = %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.hr = load i32, ptr %i.em, align 4, !tbaa !44
  %i.hs = zext i32 %i.hr to i64                   ; 2 uses
  %i.ht = and i64 %i.hs, 7
  %i.hu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !31
  %i.hw = lshr i64 %i.hs, 3
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.hw ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !31
  %i.hz = and i8 %i.hy, %i.hv
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !31
  %i.ia = load ptr, ptr %i.ea, align 8, !tbaa !309
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.fh
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !44
  %i.id = load i32, ptr %i.em, align 4, !tbaa !44
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ie
  store i32 %i.ic, ptr %i.if, align 4, !tbaa !44
  %i.ig = add nsw i32 %.05566.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.156.i = phi i32 [ %i.gz, %bb.p ], [ %.05566.i, %bb.q ], [ %i.ig, %bb.r ] ; 2 uses
  %.1.i = phi i32 [ %i.gy, %bb.p ], [ %i.hq, %bb.q ], [ %.067.i, %bb.r ] ; 2 uses
  %i.ih = load i32, ptr %i.em, align 4, !tbaa !44
  %i.ii = add nsw i32 %i.ih, 1
  store i32 %i.ii, ptr %i.em, align 4, !tbaa !44
  %i.ij = sext i32 %.1.i to i64                   ; 3 uses
  %i.ik = icmp ugt i64 %i.et, %i.ij
  %i.il = sext i32 %.156.i to i64                 ; 3 uses
  %i.im = icmp ugt i64 %i.fa, %i.il
  %i.in = select i1 %i.ik, i1 %i.im, i1 false
  br i1 %i.in, label %bb.m, label %.preheader65.i, !llvm.loop !1375

.preheader.i:                                     ; preds = %.lr.ph70.i, %.preheader65.i
  %i.io = icmp ugt i64 %i.fa, %.055.lcssa.i
  br i1 %i.io, label %.lr.ph72.preheader.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph72.preheader.i:                             ; preds = %.preheader.i
  %.pre77.i = load i32, ptr %i.em, align 4, !tbaa !44
  br label %.lr.ph72.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i, %.lr.ph70.preheader.i
  %i.ip = phi i32 [ %.pre.i, %.lr.ph70.preheader.i ], [ %i.jf, %.lr.ph70.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph70.preheader.i ], [ %indvars.iv.next.i, %.lr.ph70.i ] ; 2 uses
  %i.iq = load ptr, ptr %i.dz, align 8, !tbaa !309
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.i
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !44
  %i.it = sext i32 %i.ip to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.it
  store i32 %i.is, ptr %i.iu, align 4, !tbaa !44
  %i.iv = load i32, ptr %i.em, align 4, !tbaa !44
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = and i64 %i.iw, 7
  %i.iy = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !31
  %i.ja = lshr i64 %i.iw, 3
  %i.jb = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ja ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !31
  %i.jd = and i8 %i.jc, %i.iz
  store i8 %i.jd, ptr %i.jb, align 1, !tbaa !31
  %i.je = load i32, ptr %i.em, align 4, !tbaa !44
  %i.jf = add nsw i32 %i.je, 1                    ; 2 uses
  store i32 %i.jf, ptr %i.em, align 4, !tbaa !44
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.et
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph70.i, !llvm.loop !1376

.lr.ph72.i:                                       ; preds = %.lr.ph72.i, %.lr.ph72.preheader.i
  %i.jg = phi i32 [ %.pre77.i, %.lr.ph72.preheader.i ], [ %i.jw, %.lr.ph72.i ]
  %indvars.iv74.i = phi i64 [ %.055.lcssa.i, %.lr.ph72.preheader.i ], [ %indvars.iv.next75.i, %.lr.ph72.i ] ; 2 uses
  %i.jh = zext i32 %i.jg to i64                   ; 2 uses
  %i.ji = and i64 %i.jh, 7
  %i.jj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !31
  %i.jl = lshr i64 %i.jh, 3
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.jl ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !31
  %i.jo = and i8 %i.jn, %i.jk
  store i8 %i.jo, ptr %i.jm, align 1, !tbaa !31
  %i.jp = load ptr, ptr %i.ea, align 8, !tbaa !309
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv74.i
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !44
  %i.js = load i32, ptr %i.em, align 4, !tbaa !44
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.jt
  store i32 %i.jr, ptr %i.ju, align 4, !tbaa !44
  %i.jv = load i32, ptr %i.em, align 4, !tbaa !44
  %i.jw = add nsw i32 %i.jv, 1                    ; 2 uses
  store i32 %i.jw, ptr %i.em, align 4, !tbaa !44
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next75.i, %i.fa
  br i1 %exitcond29.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph72.i, !llvm.loop !1377

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph72.i, %.preheader.i
  %i.jx = load ptr, ptr %i.cf, align 8, !tbaa !1369, !nonnull !74, !align !538
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !44
  %i.jz = load ptr, ptr %i.ci, align 8, !tbaa !1368, !nonnull !74, !align !395 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !249
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.cm
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !44
  %i.ke = sub nsw i32 %i.jy, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !253
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.cm
  store i32 %i.ke, ptr %i.kh, align 4, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E1_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.100", align 8   ; 14 uses
  %3 = alloca %"class.std::vector.100", align 8   ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1378, !nonnull !74, !align !395 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !536  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.f = load i8, ptr %i.e, align 2, !tbaa !303, !range !73, !noundef !74
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.i = load i8, ptr %i.h, align 1, !range !73
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond.i, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.k = zext i32 %1 to i64                       ; 2 uses
  %i.l = lshr i64 %i.k, 6
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !137
  %i.o = and i64 %i.k, 63
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.n, %i.p
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.f, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_:bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !616
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !609    ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.l, ptr %i.k, align 4, !tbaa !44
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !44
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !616
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVectoreqERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !293  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !293
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !183  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !183
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp slt i32 %i.b, %i.g
  br i1 %.not.i, label %bb.d, label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.b, 63                         ; 2 uses
  %i.l = srem i32 %i.k, 64
  %i.m = sub nsw i32 %i.k, %i.l                   ; 5 uses
  %i.n = and i32 %i.g, -64                        ; 3 uses
  %i.o = icmp slt i32 %i.n, %i.m
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = ashr i32 %i.g, 6
  %i.q = and i32 %i.g, 63
  %i.r = zext nneg i32 %i.q to i64
  %notmask.i.i = shl nsw i64 -1, %i.r
  %i.s = xor i64 %notmask.i.i, -1
  %i.t = sub nsw i32 %i.m, %i.b                   ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask.i.i.i, -1
  %i.w = sub nsw i32 64, %i.t
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %i.v, %i.x
  %i.z = and i64 %i.y, %i.s
  %i.aa = sext i32 %i.p to i64                    ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !291
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !137
  %i.ae = load ptr, ptr %1, align 8, !tbaa !291
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !137
  %i.ah = xor i64 %i.ag, %i.ad
  %i.ai = and i64 %i.z, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit

bb.f:                                             ; preds = %bb.d
  %.not36.i = icmp eq i32 %i.b, %i.m
  br i1 %.not36.i, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = sdiv i32 %i.b, 64
  %i.al = sub nsw i32 %i.m, %i.b                  ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %notmask.i.i39.i = shl nsw i64 -1, %i.am
  %i.an = xor i64 %notmask.i.i39.i, -1
  %i.ao = sub nsw i32 64, %i.al
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl i64 %i.an, %i.ap
  %i.ar = sext i32 %i.ak to i64                   ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !291
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = load i64, ptr %i.at, align 8, !tbaa !137
  %i.av = load ptr, ptr %1, align 8, !tbaa !291
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ar
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !137
  %i.ay = xor i64 %i.ax, %i.au
  %i.az = and i64 %i.ay, %i.aq
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.preheader, label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit

.preheader:                                       ; preds = %bb.g, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.i
  %.0.i = phi i32 [ %i.bb, %bb.i ], [ %i.m, %.preheader ] ; 2 uses
  %i.bb = add nsw i32 %.0.i, 64                   ; 2 uses
  %.not37.i = icmp sgt i32 %i.bb, %i.n
  br i1 %.not37.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = sdiv i32 %.0.i, 64
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !291
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !137
  %i.bh = load ptr, ptr %1, align 8, !tbaa !291
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !137
  %i.bk = icmp eq i64 %i.bg, %i.bj
  br i1 %i.bk, label %bb.h, label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit, !llvm.loop !2665

.critedge.i:                                      ; preds = %bb.h
  %.not38.i = icmp eq i32 %i.g, %i.n
  br i1 %.not38.i, label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.bl = ashr i32 %i.g, 6
  %i.bm = and i32 %i.g, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i40.i = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i40.i, -1
  %i.bp = sext i32 %i.bl to i64                   ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !291
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !137
  %i.bt = load ptr, ptr %1, align 8, !tbaa !291
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !137
  %i.bw = xor i64 %i.bv, %i.bs
  %i.bx = and i64 %i.bw, %i.bo
  %i.by = icmp eq i64 %i.bx, 0
  br label %_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit

_ZN8facebook5velox4bits9testWordsIZNKS0_17SelectivityVectoreqERKS3_EUlimE_ZNKS3_eqES5_EUliE_EEbiiT_T0_.exit: ; preds = %bb.i, %bb.j, %.critedge.i, %bb.g, %bb.e, %bb.c, %bb.b, %bb.a
  %i.bz = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.c ], [ %i.aj, %bb.e ], [ %i.by, %bb.j ], [ false, %bb.g ], [ true, %.critedge.i ], [ false, %bb.i ]
  ret i1 %i.bz
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i1(i1, i1) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i16(i16, i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i128(i128, i128) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #15 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction10signaturesEv: argument 0"}
!10 = distinct !{!10, !"_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction10signaturesEv"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !13, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !19, i64 32, !18, i64 48}
!13 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!14 = !{!"any p2 pointer", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!18 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!19 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !20, i64 0, !16, i64 8}
!20 = !{!"float", !6, i64 0}
!21 = !{!12, !16, i64 8}
!22 = !{!19, !20, i64 0}
!23 = !{!24, !27, i64 32}
!24 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !25, i64 0, !25, i64 16, !27, i64 32}
!25 = !{!"_ZTSSt13_Bit_iterator", !26, i64 0}
!26 = !{!"_ZTSSt18_Bit_iterator_base", !27, i64 0, !5, i64 8}
!27 = !{!"p1 long", !15, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!30 = !{!"p1 omnipotent char", !15, i64 0}
!31 = !{!6, !6, i64 0}
!32 = !{!33, !16, i64 8}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !16, i64 8, !6, i64 16}
!34 = !{!33, !30, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !15, i64 0}
!38 = !{!36, !37, i64 16}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !41, i64 0}
!41 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!42 = !{!15, !15, i64 0}
!43 = !{!36, !37, i64 8}
!44 = !{!5, !5, i64 0}
!45 = !{!46, !5, i64 8}
!46 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!47 = !{!46, !5, i64 12}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !7, i64 0}
!50 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunctionEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!54 = distinct !{!54, !"_ZSt11make_uniqueIN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunctionEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14VectorFunctionELb0EE", !57, i64 0}
!57 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !15, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"bool", !6, i64 0}
!60 = !{!30, !30, i64 0}
!61 = !{!57, !57, i64 0}
!62 = distinct !{null, null}
!63 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!67 = !{!68, !59, i64 32}
!68 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !6, i64 0, !59, i64 32}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!72 = distinct !{!72, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!76, !59, i64 104}
!76 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !6, i64 0, !59, i64 104}
!77 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!78 = !{!79, !80, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!80 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !15, i64 0}
!81 = !{!79, !80, i64 8}
!82 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!83 = distinct !{!83, !65}
!84 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!85 = !{!79, !80, i64 16}
!86 = distinct !{null, null}
!87 = !{!26, !27, i64 0}
!88 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!89 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!90 = !{!12, !16, i64 24}
!91 = !{!17, !18, i64 0}
!92 = distinct !{!92, !65}
!93 = !{!18, !18, i64 0}
!94 = !{!95, !16, i64 0}
!95 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !16, i64 0}
!96 = distinct !{!96, !65}
!97 = !{!98, !99, i64 0}
!98 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !99, i64 0, !100, i64 8}
!99 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !15, i64 0}
!100 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !15, i64 0}
!101 = !{!98, !100, i64 8}
!102 = distinct !{!102, !65}
!103 = !{!19, !16, i64 8}
!104 = !{!12, !18, i64 16}
!105 = !{!12, !18, i64 48}
!106 = distinct !{!106, !65}
!107 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!108 = !{!109, !59, i64 96}
!109 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !33, i64 0, !110, i64 32, !113, i64 56, !59, i64 96}
!110 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !111, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !79, i64 0}
!113 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !114, i64 0}
!114 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !115, i64 0}
!115 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !116, i64 0}
!116 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !68, i64 0}
!117 = !{!80, !80, i64 0}
!118 = distinct !{null, null, null, null}
!119 = distinct !{!119, !65}
!120 = distinct !{null, null, null}
!121 = distinct !{null, null, null, null}
!122 = distinct !{null}
!123 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!124 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!125 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!126 = !{!127, !59, i64 232}
!127 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !128, i64 0, !129, i64 56, !110, i64 168, !133, i64 192, !59, i64 232}
!128 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !12, i64 0}
!129 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !130, i64 0}
!130 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !131, i64 0}
!131 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !132, i64 0}
!132 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !76, i64 0}
end_hunk_2
