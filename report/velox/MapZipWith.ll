inline.NumInlined: 5627
inline.NumDeleted: 1581
begin_hunk_0_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !948, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !949, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !948, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !946, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !951, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !948, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !949, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !953 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !954

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !955

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !956

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !949, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !948, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

declare void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind writable sret(%"class.std::vector.100") align 8, ptr noundef nonnull align 8 dereferenceable(161), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE33EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.257, align 8            ; 6 uses
  %3 = alloca %"struct.facebook::velox::UnknownValue", align 1 ; 4 uses
  %4 = alloca %"struct.facebook::velox::UnknownValue", align 1 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !957, !nonnull !72, !align !393 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %i.g = load i8, ptr %i.f, align 2, !tbaa !301, !range !71, !noundef !72
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.j = load i8, ptr %i.i, align 1, !range !71
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = zext i32 %1 to i64                       ; 2 uses
  %i.m = lshr i64 %i.l, 6
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = and i64 %i.l, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.o, %i.q
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1097, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1098, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1097, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !1095, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1099, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !1097, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !1098, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !1100 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !1101

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !1102

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !1103

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !1098, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !1097, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE35EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1104, !nonnull !72, !align !393 ; 3 uses
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
  %i.l = lshr i64 %i.k, 6
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = and i64 %i.k, 63
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.n, %i.p
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1249, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1250, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1249, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !1247, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1251, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !1249, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !1250, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !1252 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !1253

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !1254

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !1255

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !1250, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !1249, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE0EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.305, align 8            ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1256, !nonnull !72, !align !393 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !301, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.l = load i8, ptr %i.k, align 1, !range !71
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !135
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1372, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1373, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1372, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !1370, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1374, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !1372, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !1373, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !1375 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !1376

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !1377

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !1378

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !1373, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !1372, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE3EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.321, align 8            ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1379, !nonnull !72, !align !393 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !301, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.l = load i8, ptr %i.k, align 1, !range !71
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !135
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1497, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1498, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1497, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !1495, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1499, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !1497, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !1498, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !1500 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !1501

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !1502

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !1503

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !1498, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !1497, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE1EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.348, align 8            ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1504, !nonnull !72, !align !393 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !301, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.l = load i8, ptr %i.k, align 1, !range !71
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !135
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1626, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1627, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1626, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !1624, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1628, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !1626, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !1627, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !1629 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !1630

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !1631

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !1632

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !1627, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !1626, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE2EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.376, align 8            ; 6 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1633, !nonnull !72, !align !393 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !301, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.l = load i8, ptr %i.k, align 1, !range !71
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !135
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1760, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1761, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1760, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !1758, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1762, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !1760, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !1761, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !1763 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !1764

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !1765

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !1766

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !1761, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !1760, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE4EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.404, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1767, !nonnull !72, !align !393 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !301, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.l = load i8, ptr %i.k, align 1, !range !71
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !135
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1889, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1890, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1889, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !1887, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1891, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !1889, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !1890, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !1892 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !1893

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !1894

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !1895

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !1890, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !1889, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE10EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.432, align 8            ; 6 uses
  %i.b = alloca i128, align 16                    ; 4 uses
  %i.c = alloca i128, align 16                    ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1896, !nonnull !72, !align !393 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !301, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.l = load i8, ptr %i.k, align 1, !range !71
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !135
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2023, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2024, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2023, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !2021, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2025, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !2023, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !2024, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !2026 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !2027

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !2028

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !2029

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !2024, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !2023, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE5EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.460, align 8            ; 6 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !2030, !nonnull !72, !align !393 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !301, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.l = load i8, ptr %i.k, align 1, !range !71
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !135
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
end_hunk_8
begin_hunk_9_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2155, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2156, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2155, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !2153, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2157, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !2155, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !2156, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !2158 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !2159

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !2160

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !2161

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !2156, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !2155, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE6EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.488, align 8            ; 6 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !2162, !nonnull !72, !align !393 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !301, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %i.l = load i8, ptr %i.k, align 1, !range !71
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !135
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
end_hunk_9
begin_hunk_10_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2288, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2289, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2288, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !2286, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2290, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !2288, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !2289, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !2291 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !2292

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !2293

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !2294

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !2289, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !2288, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE7EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2295, !nonnull !72, !align !393 ; 3 uses
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
  %i.l = lshr i64 %i.k, 6
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = and i64 %i.k, 63
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.n, %i.p
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2418, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2419, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2418, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !2416, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2420, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !2418, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !2419, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !2421 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !2422

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !2423

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !2424

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !2419, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !2418, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE8EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2425, !nonnull !72, !align !393 ; 3 uses
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
  %i.l = lshr i64 %i.k, 6
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = and i64 %i.k, 63
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.n, %i.p
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
end_hunk_11
begin_hunk_12_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEiS9_SC_SF_SE_ENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2451, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2452, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2451, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !2449, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2453, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !2451, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !2452, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.u, %bb.q
  %.055.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.u ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph75.preheader.i, label %.preheader.i

.lr.ph75.preheader.i:                             ; preds = %.preheader70.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph75.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.u
  %4 = phi ptr [ %5, %bb.u ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.u ], [ 0, %bb.q ]  ; 3 uses
  %.072.i = phi i32 [ %.1.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %.05571.i = phi i32 [ %.156.i, %bb.u ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val62.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val62.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %bb.z, !inline_history !2454 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 8589934591
  %i.fe = icmp eq i64 %i.fd, 4294967296
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.072.i, 1
  %i.fs = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.s:                                             ; preds = %.noexc
  %i.ft = and i64 %i.fc, 6442450944
  %or.cond.not.i = icmp eq i64 %i.ft, 4294967296
  br i1 %or.cond.not.i, label %bb.t, label %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i

_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i: ; preds = %bb.s
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.072.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05571.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i, %bb.r
  %5 = phi ptr [ %i.fl, %bb.r ], [ %.pre, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gt, %bb.t ]
  %.156.i = phi i32 [ %i.fs, %bb.r ], [ %.05571.i, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %i.gz, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.r ], [ %i.gj, %_ZStssIiiQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.thread.i ], [ %.072.i, %bb.t ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.156.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader70.i, !llvm.loop !2455

.preheader.i:                                     ; preds = %.lr.ph75.i, %.preheader70.i
  %i.hh = icmp ugt i64 %i.en, %.055.lcssa.i
  br i1 %i.hh, label %.lr.ph77.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit

.lr.ph77.preheader.i:                             ; preds = %.preheader.i
  %.pre82.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph77.i

.lr.ph75.i:                                       ; preds = %.lr.ph75.i, %.lr.ph75.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph75.preheader.i ], [ %i.hy, %.lr.ph75.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph75.preheader.i ], [ %indvars.iv.next.i, %.lr.ph75.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph75.i, !llvm.loop !2456

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %i.hz = phi i32 [ %.pre82.i, %.lr.ph77.preheader.i ], [ %i.ip, %.lr.ph77.i ]
  %indvars.iv79.i = phi i64 [ %.055.lcssa.i, %.lr.ph77.preheader.i ], [ %indvars.iv.next80.i, %.lr.ph77.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv79.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next80.i, %i.en
  br i1 %exitcond34.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, label %.lr.ph77.i, !llvm.loop !2457

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit: ; preds = %.lr.ph77.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph77.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !2452, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !2451, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E_EEvRKSt6vectorIiSaIiEESM_SF_PmSN_PiSO_Ri.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit25, %bb.j
  ret void

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

bb.z:                                             ; preds = %.lr.ph.i
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !308
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.y ], [ %i.jo, %bb.z ], [ %i.jo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jv = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !308
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction16mergeDecodedKeysIZNS3_21mergeScalarNoNullKeysILNS0_8TypeKindE9EEEiRKNS0_17SelectivityVectorERKNS2_13DecodedInputsERNS2_12MergeResultsEEUlT_T0_E0_EEiS9_SC_RNS0_13DecodedVectorESJ_SF_SE_ENKUliE_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.562, align 8            ; 6 uses
  %3 = alloca %"struct.facebook::velox::Timestamp", align 8 ; 7 uses
  %4 = alloca %"struct.facebook::velox::Timestamp", align 8 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2458, !nonnull !72, !align !393 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !528  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %i.g = load i8, ptr %i.f, align 2, !tbaa !301, !range !71, !noundef !72
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.j = load i8, ptr %i.i, align 1, !range !71
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = zext i32 %1 to i64                       ; 2 uses
  %i.m = lshr i64 %i.l, 6
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135
  %i.p = and i64 %i.l, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.o, %i.q
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
end_hunk_12
begin_hunk_13_@_ZZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction9mergeKeysIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_T0_E_EEiS7_RKNS2_13DecodedInputsESO_RNS2_12MergeResultsEENKUliE_clEi:bb.a
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !292, !range !71, !noundef !72
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %.not.i7.i = icmp eq i64 %i.af, 0
  br i1 %.not.i7.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ah = and i64 %i.ag, 1
  %.not.i6.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i6.i, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.a, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528 ; 4 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !71, !noundef !72
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i15 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %1 to i64                      ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not.i.i19 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i19, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !292, !range !71, !noundef !72
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !309
  %i.be = sext i32 %1 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i16 = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i16, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20: ; preds = %bb.h
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !135
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i18 = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i18, label %bb.j, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2585, !nonnull !72, !align !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = lshr i64 %i.bu, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = and i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !30
  br label %bb.z

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2586, !nonnull !72, !align !530
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2585, !nonnull !72, !align !393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !247
  %i.cj = sext i32 %1 to i64                      ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !292, !range !71, !noundef !72
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cj
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread, %bb.l, %bb.m
  %.0.i21 = phi i32 [ %i.cw, %bb.m ], [ %i.cs, %bb.l ], [ %1, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !301, !range !71, !noundef !72
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !292, !range !71, !noundef !72
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !950
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !309
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cj
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit23

_ZNK8facebook5velox13DecodedVector5indexEi.exit23: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.o, %bb.p
  %.0.i22 = phi i32 [ %i.di, %bb.p ], [ %i.de, %bb.o ], [ %1, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  call void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %2, ptr noundef nonnull align 8 dereferenceable(161) %i.dk, i32 noundef %.0.i21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !2583, !nonnull !72, !align !393
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !180
  invoke void @_ZNK8facebook5velox9MapVector16sortedKeyIndicesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(161) %i.dn, i32 noundef %.0.i22)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2587, !nonnull !72, !align !393 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !336
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !336
  %i.dq = load ptr, ptr %i.cf, align 8, !tbaa !2585, !nonnull !72, !align !393 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !257 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !271 ; 3 uses
  %i.dz = load ptr, ptr %i.cc, align 8, !tbaa !2586, !nonnull !72, !align !530 ; 16 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !952 ; 2 uses
  %i.ec = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !952 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ne ptr %i.eb, %i.ec
  %i.ep = icmp ne ptr %i.ei, %i.ej
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i, label %.preheader65.i

.preheader65.i:                                   ; preds = %bb.w, %bb.q
  %.056.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.he, %bb.w ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.hc, %bb.w ] ; 2 uses
  %i.er = icmp ugt i64 %i.eg, %.0.lcssa.i
  br i1 %i.er, label %.lr.ph72.preheader.i, label %.preheader.i

.lr.ph72.preheader.i:                             ; preds = %.preheader65.i
  %.pre.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph72.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.w
  %4 = phi ptr [ %5, %bb.w ], [ %i.ej, %bb.q ]
  %i.es = phi i64 [ %i.he, %bb.w ], [ 0, %bb.q ]  ; 3 uses
  %i.et = phi i64 [ %i.hc, %bb.w ], [ 0, %bb.q ]  ; 3 uses
  %.069.i = phi i32 [ %.1.i, %bb.w ], [ 0, %bb.q ] ; 3 uses
  %.05668.i = phi i32 [ %.157.i, %bb.w ], [ 0, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8, !tbaa !307
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !272 ; 2 uses
  %.val64.val.i = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !272
  %i.ez = load ptr, ptr %.val.val.i, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i, ptr noundef %.val64.val.i, i32 noundef %i.ew, i32 noundef %i.ey, i64 257)
          to label %.noexc unwind label %.loopexit, !inline_history !2588 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.fd = and i64 %i.fc, 4294967296
  %.not.i.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i.i, label %bb.r, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_T0_E_clIiiEEDaSN_SO_.exit.i

bb.r:                                             ; preds = %.noexc
  invoke void @_ZSt27__throw_bad_optional_accessv() #28
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.r
  unreachable

_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_T0_E_clIiiEEDaSN_SO_.exit.i: ; preds = %.noexc
  %.sroa.04.0.extract.trunc.i.i.i = trunc i64 %i.fc to i32 ; 2 uses
  %i.fe = icmp eq i32 %.sroa.04.0.extract.trunc.i.i.i, 0
  br i1 %i.fe, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_T0_E_clIiiEEDaSN_SO_.exit.i
  %i.ff = load ptr, ptr %2, align 8, !tbaa !307
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !3
  %i.fl = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.es
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !3
  %i.fr = add nsw i32 %.069.i, 1
  %i.fs = add nsw i32 %.05668.i, 1
  br label %bb.w

bb.t:                                             ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_T0_E_clIiiEEDaSN_SO_.exit.i
  %i.ft = icmp slt i32 %.sroa.04.0.extract.trunc.i.i.i, 0
  br i1 %i.ft, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fu = load ptr, ptr %2, align 8, !tbaa !307
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.et
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !3
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = and i64 %i.gb, 7
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30
  %i.gf = lshr i64 %i.gb, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = and i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !30
  %i.gj = add nsw i32 %.069.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !307
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gk = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = lshr i64 %i.gl, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = and i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !30
  %i.gt = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.es
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gx
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !3
  %i.gz = add nsw i32 %.05668.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %5 = phi ptr [ %i.fl, %bb.s ], [ %.pre, %bb.u ], [ %i.gt, %bb.v ]
  %.157.i = phi i32 [ %i.fs, %bb.s ], [ %.05668.i, %bb.u ], [ %i.gz, %bb.v ] ; 2 uses
  %.1.i = phi i32 [ %i.fr, %bb.s ], [ %i.gj, %bb.u ], [ %.069.i, %bb.v ] ; 2 uses
  %i.ha = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.dz, align 4, !tbaa !3
  %i.hc = sext i32 %.1.i to i64                   ; 3 uses
  %i.hd = icmp ugt i64 %i.eg, %i.hc
  %i.he = sext i32 %.157.i to i64                 ; 3 uses
  %i.hf = icmp ugt i64 %i.en, %i.he
  %i.hg = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph.i, label %.preheader65.i, !llvm.loop !2589

.preheader.i:                                     ; preds = %.lr.ph72.i, %.preheader65.i
  %i.hh = icmp ugt i64 %i.en, %.056.lcssa.i
  br i1 %i.hh, label %.lr.ph74.preheader.i, label %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_T0_E_EEvRKS8_IiSaIiEESU_SO_PmSV_PiSW_Ri.exit_crit_edge

.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_T0_E_EEvRKS8_IiSaIiEESU_SO_PmSV_PiSW_Ri.exit_crit_edge: ; preds = %.preheader.i
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_T0_E_EEvRKS8_IiSaIiEESU_SO_PmSV_PiSW_Ri.exit

.lr.ph74.preheader.i:                             ; preds = %.preheader.i
  %.pre79.i = load i32, ptr %i.dz, align 4, !tbaa !3
  br label %.lr.ph74.i

.lr.ph72.i:                                       ; preds = %.lr.ph72.i, %.lr.ph72.preheader.i
  %i.hi = phi i32 [ %.pre.i, %.lr.ph72.preheader.i ], [ %i.hy, %.lr.ph72.i ]
  %indvars.iv.i = phi i64 [ %.0.lcssa.i, %.lr.ph72.preheader.i ], [ %indvars.iv.next.i, %.lr.ph72.i ] ; 2 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !307
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hi to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hm
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  %i.ho = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.ht = lshr i64 %i.hp, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = and i8 %i.hv, %i.hs
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hx = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.eg
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph72.i, !llvm.loop !2590

.lr.ph74.i:                                       ; preds = %.lr.ph74.i, %.lr.ph74.preheader.i
  %i.hz = phi i32 [ %.pre79.i, %.lr.ph74.preheader.i ], [ %i.ip, %.lr.ph74.i ]
  %indvars.iv76.i = phi i64 [ %.056.lcssa.i, %.lr.ph74.preheader.i ], [ %indvars.iv.next77.i, %.lr.ph74.i ] ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = lshr i64 %i.ia, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = and i8 %i.ig, %i.id
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !30
  %i.ii = load ptr, ptr %3, align 8, !tbaa !307   ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv76.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !3
  %i.io = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ip = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next77.i, %i.en
  br i1 %exitcond36.not, label %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_T0_E_EEvRKS8_IiSaIiEESU_SO_PmSV_PiSW_Ri.exit, label %.lr.ph74.i, !llvm.loop !2591

_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_T0_E_EEvRKS8_IiSaIiEESU_SO_PmSV_PiSW_Ri.exit: ; preds = %.lr.ph74.i, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_T0_E_EEvRKS8_IiSaIiEESU_SO_PmSV_PiSW_Ri.exit_crit_edge
  %i.iq = phi ptr [ %.pre.a, %.preheader.i._ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_T0_E_EEvRKS8_IiSaIiEESU_SO_PmSV_PiSW_Ri.exit_crit_edge ], [ %i.ii, %.lr.ph74.i ] ; 3 uses
  %i.ir = load ptr, ptr %i.cc, align 8, !tbaa !2586, !nonnull !72, !align !530
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = load ptr, ptr %i.cf, align 8, !tbaa !2585, !nonnull !72, !align !393 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !247
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.cj
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = sub nsw i32 %i.is, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !251
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.cj
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !3
  %.not.i.i.i25 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_T0_E_EEvRKS8_IiSaIiEESU_SO_PmSV_PiSW_Ri.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !308
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.iq to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118MapZipWithFunction18mergeSingleMapKeysIZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_T0_E_EEvRKS8_IiSaIiEESU_SO_PmSV_PiSW_Ri.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !308
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit27, %bb.j
  ret void

bb.aa:                                            ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit23
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.jo = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !308
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.jt) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %bb.ac, %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.jn, %bb.aa ], [ %lpad.phi, %bb.ab ], [ %lpad.phi, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ju = load ptr, ptr %2, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit29
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !308
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jz) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit29, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox17SelectivityVector13deselectNullsEPKmii(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %class.anon.589, align 8            ; 6 uses
  %5 = alloca %class.anon.591, align 8            ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !289    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %.sroa.speculated6 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %2) ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.f) ; 7 uses
  %.not.i.i.i = icmp slt i32 %.sroa.speculated6, %.sroa.speculated
  br i1 %.not.i.i.i, label %bb.b, label %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %.sroa.speculated6, 63           ; 2 uses
  %i.h = srem i32 %i.g, 64
  %i.i = sub nsw i32 %i.g, %i.h                   ; 6 uses
  %i.j = and i32 %.sroa.speculated, -64           ; 4 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_13
