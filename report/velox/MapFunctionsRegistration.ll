inline.NumInlined: 92650
inline.NumDeleted: 25950
begin_hunk_0_@_ZN8facebook5velox9functions26RemapKeysPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE4callERNS3_9MapWriterIS5_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES5_SB_EERKNS3_9ArrayViewILb1ES5_EESL_:bb.a
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2377
  %i.ct = shl nsw i64 %indvars.iv209, 2
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  br label %bb.s

bb.s:                                             ; preds = %.thread159, %bb.q, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.cv, %bb.r ], [ %i.cq, %bb.q ], [ %i.cl, %.thread159 ]
  %i.cw = sext i32 %.0.i.i.i.i to i64
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.cj, i64 %i.cw
  %i.cy = load <2 x i64>, ptr %i.cx, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.cz = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2367
  %i.db = getelementptr inbounds nuw i8, ptr %i.w, i64 58
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = trunc nsw i64 %indvars.iv to i32
  br i1 %i.dd, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %i.w, i64 59
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !2373
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !2377
  %i.dm = shl nsw i64 %indvars.iv, 2
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i.i.i78 = phi i32 [ %i.do, %bb.v ], [ %i.dj, %bb.u ], [ %i.de, %bb.s ]
  %i.dp = sext i32 %.0.i.i.i.i78 to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.da, i64 %i.dp ; 2 uses
  %.sroa.0.0.copyload.i.i.i79 = load i64, ptr %i.dq, align 8, !tbaa !612 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i80 = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.2.0.copyload.i.i.i81 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i80, align 8, !tbaa !612 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i79, ptr %9, align 8
  store i64 %.sroa.2.0.copyload.i.i.i81, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !10993
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !10993
  store ptr %9, ptr %6, align 8, !tbaa !7813, !alias.scope !10996, !noalias !10993
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !10993
  %i.dr = xor i64 %.sroa.2.0.copyload.i.i.i81, %.sroa.0.0.copyload.i.i.i79
  %i.ds = mul i64 %i.dr, -7070675565921424023     ; 2 uses
  %i.dt = lshr i64 %i.ds, 47
  %i.du = xor i64 %.sroa.0.0.copyload.i.i.i79, %i.dt
  %i.dv = xor i64 %i.du, %i.ds
  %i.dw = mul i64 %i.dv, -7070675565921424023     ; 2 uses
  %i.dx = lshr i64 %i.dw, 47
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = mul i64 %i.dy, -7070675565921424023     ; 2 uses
  %i.ea = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.dz) ; 2 uses
  %i.eb = lshr i64 %i.ea, 24
  %i.ec = or i64 %i.eb, 128
  %i.ed = add i64 %i.dz, %i.ea
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESF_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.3101") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %i.ed, i64 %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !10993
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !10993
  %i.ee = load ptr, ptr %5, align 8, !tbaa !10999, !noalias !10993, !nonnull !552, !noundef !552
  %i.ef = load ptr, ptr %8, align 8, !tbaa !10972, !noalias !10993, !nonnull !552, !noundef !552
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !10993
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %i.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !10993
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <2 x i64> %i.cy, ptr %i.ej, align 8, !tbaa !612
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.bd

.critedge:                                        ; preds = %bb.i, %bb.o, %bb.x
  %i.el = add nuw i64 %.036197, 1                 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next210 = add nsw i64 %indvars.iv209, 1
  %exitcond.not = icmp eq i64 %i.el, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !11001

._crit_edge:                                      ; preds = %.critedge
  %.pre217 = load i32, ptr %i.a, align 4, !tbaa !10954, !noalias !10988 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load i32, ptr %i.em, align 8, !tbaa !10953, !noalias !10988 ; 2 uses
  %i.eo = add nsw i32 %.pre217, %i.en
  %i.ep = icmp eq i32 %.pre217, 0
  br i1 %i.ep, label %._crit_edge205, label %.lr.ph204

.lr.ph204:                                        ; preds = %._crit_edge.thread, %._crit_edge
  %i.eq = phi i32 [ %i.o, %._crit_edge.thread ], [ %i.eo, %._crit_edge ]
  %i.er = phi i32 [ %i.n, %._crit_edge.thread ], [ %i.en, %._crit_edge ]
  %i.es = load ptr, ptr %2, align 8, !tbaa !10950, !noalias !10988
  %.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.et = load ptr, ptr %.in, align 8, !tbaa !10952, !noalias !10988 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, <2 x i64> <i64 8, i64 56>
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fd = sext i32 %i.er to i64
  br label %bb.ab

._crit_edge205:                                   ; preds = %bb.bb, %._crit_edge
  %i.fe = load ptr, ptr %i.d, align 8, !tbaa !10975 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 15
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !1391
  %i.fh = icmp eq i8 %i.fg, -1
  br i1 %i.fh, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge205
  %i.fi = load i64, ptr %i.e, align 8, !tbaa !1394 ; 2 uses
  %i.fj = and i64 %i.fi, 255                      ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.fk, align 1
  %i.fl = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.fj
  %i.fm = xor i64 %notmask.i.i.i.i.i, -1
  %i.fn = lshr i64 %i.fm, 12
  %i.fo = add nuw nsw i64 %i.fn, 1
  %i.fp = icmp ult i64 %i.fi, 256
  br i1 %i.fp, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 %i.fj, ptr %i.e, align 8, !tbaa !1394
  %.0.copyload.i.pre.i.i.i.i = load i16, ptr %i.fk, align 1
  %.pre20.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.pre-phi21.i.i.i.i = phi i64 [ %i.fl, %bb.z ], [ %.pre20.i.i.i.i, %bb.aa ]
  %i.fq = icmp eq i64 %i.fj, 0
  %i.fr = shl nuw nsw i64 %.pre-phi21.i.i.i.i, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.fr
  %.neg18.i.i.i.i = shl i64 -64, %i.fj
  %.0.i.neg.i.i.i.i = select i1 %i.fq, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.d, align 8, !tbaa !10975
  store i64 0, ptr %i.e, align 8, !tbaa !1394
  %i.fs = and i64 %.0.i.neg.i.i.i.i, -8
  %i.ft = shl nuw nsw i64 %i.fl, 5
  %i.fu = mul i64 %i.ft, %i.fo
  %i.fv = sub i64 %i.fu, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fv) #34
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %._crit_edge205, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.bc

bb.ab:                                            ; preds = %.lr.ph204, %bb.bb
  %indvars.iv214 = phi i64 [ %i.fd, %.lr.ph204 ], [ %indvars.iv.next215, %bb.bb ] ; 6 uses
  %i.fw = load ptr, ptr %i.es, align 8, !tbaa !10992, !noalias !11002, !nonnull !552, !align !674 ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !2367, !noalias !11002
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 58
  %i.ga = load i8, ptr %i.fz, align 2, !tbaa !2366, !range !551, !noalias !11002, !noundef !552
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = trunc nsw i64 %indvars.iv214 to i32     ; 2 uses
  br i1 %i.gb, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 59
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !2372, !range !551, !noalias !11002, !noundef !552
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !2373, !noalias !11002
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !2377, !noalias !11002
  %i.gk = shl nsw i64 %indvars.iv214, 2
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3, !noalias !11002
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gm, %bb.ae ], [ %i.gh, %bb.ad ], [ %i.gc, %bb.ab ]
  %i.gn = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.go = getelementptr inbounds [16 x i8], ptr %i.fy, i64 %i.gn ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.go, align 8, !tbaa !612, !noalias !11002 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !612, !noalias !11002 ; 4 uses
  %i.gp = load i64, ptr %i.e, align 8, !tbaa !1394 ; 2 uses
  %i.gq = icmp ult i64 %i.gp, 256
  br i1 %i.gq, label %.noexc.thread, label %.noexc54

.noexc54:                                         ; preds = %bb.af
  %i.gr = xor i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.gs = mul i64 %i.gr, -7070675565921424023     ; 2 uses
  %i.gt = lshr i64 %i.gs, 47
  %i.gu = xor i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.gt
  %i.gv = xor i64 %i.gu, %i.gs
  %i.gw = mul i64 %i.gv, -7070675565921424023     ; 2 uses
  %i.gx = lshr i64 %i.gw, 47
  %i.gy = xor i64 %i.gx, %i.gw
  %i.gz = mul i64 %i.gy, -7070675565921424023     ; 2 uses
  %i.ha = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gz) ; 2 uses
  %i.hb = lshr i64 %i.ha, 24
  %i.hc = or i64 %i.hb, 128                       ; 2 uses
  %i.hd = add i64 %i.ha, %i.gz
  %i.he = shl nuw nsw i64 %i.hc, 1
  %i.hf = or disjoint i64 %i.he, 1
  %i.hg = trunc nuw i64 %i.hc to i8
  %i.hh = insertelement <16 x i8> poison, i8 %i.hg, i64 0
  %i.hi = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.hj = and i64 %i.gp, 255                      ; 2 uses
  %i.hk = shl nuw i64 1, %i.hj
  %i.hl = load ptr, ptr %i.d, align 8, !tbaa !10975
  %i.hm = load ptr, ptr %8, align 8
  br label %.noexc56

.noexc56:                                         ; preds = %.noexc54, %.noexc59
  %.0.i.i201 = phi i64 [ %i.hd, %.noexc54 ], [ %i.ii, %.noexc59 ] ; 2 uses
  %.022.i.i200 = phi i64 [ %i.hk, %.noexc54 ], [ %i.ih, %.noexc59 ]
  %i.hn = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i201, i64 range(i64 0, 256) %i.hj)
  %i.ho = getelementptr inbounds nuw [64 x i8], ptr %i.hl, i64 %i.hn ; 3 uses
  %i.hp = load <16 x i8>, ptr %i.ho, align 16     ; 2 uses
  %i.hq = icmp eq <16 x i8> %i.hp, %i.hi
  %i.hr = bitcast <16 x i1> %i.hq to i16
  %i.hs = and i16 %i.hr, 4095
  %i.ht = zext nneg i16 %i.hs to i32
  %i.hu = icmp ne ptr %i.ho, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hw = extractelement <16 x i8> %i.hp, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.noexc58, %.noexc56
  %.sroa.0154.0 = phi i32 [ %i.ht, %.noexc56 ], [ %i.hz, %.noexc58 ] ; 4 uses
  %.not = icmp eq i32 %.sroa.0154.0, 0
  br i1 %.not, label %bb.ag, label %.noexc58

.noexc58:                                         ; preds = %.critedge.i.i
  %i.hx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0154.0, i1 true)
  %i.hy = add nsw i32 %.sroa.0154.0, -1
  %i.hz = and i32 %i.hy, %.sroa.0154.0
  %i.ia = zext nneg i32 %i.hx to i64
  call void @llvm.assume(i1 %i.hu)
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !3
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.hm, i64 %i.id ; 3 uses
  %11 = load i64, ptr %i.ie, align 8, !tbaa !7893
  %12 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %11
  %13 = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %14
  %i.if = select i1 %12, i1 %15, i1 false
  br i1 %i.if, label %.noexc.thread, label %.critedge.i.i, !prof !741, !llvm.loop !11007

bb.ag:                                            ; preds = %.critedge.i.i
  %i.ig = icmp eq i8 %i.hw, 0
  br i1 %i.ig, label %.noexc.thread, label %.noexc59, !prof !741

.noexc59:                                         ; preds = %bb.ag
  %i.ih = add i64 %.022.i.i200, -1                ; 2 uses
  %i.ii = add i64 %i.hf, %.0.i.i201
  %.not.i.i = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i, label %.noexc.thread, label %.noexc56, !llvm.loop !11008

.noexc.thread:                                    ; preds = %bb.ag, %.noexc59, %.noexc58, %bb.af
  %.sroa.0.0.i = phi ptr [ %i.ie, %.noexc58 ], [ null, %bb.af ], [ null, %.noexc59 ], [ null, %bb.ag ] ; 4 uses
  %i.ij = load ptr, ptr %i.et, align 8, !tbaa !8394, !nonnull !552, !align !674 ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i89 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i89, label %.thread191, label %bb.ah

bb.ah:                                            ; preds = %.noexc.thread
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 58
  %i.in = load i8, ptr %i.im, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.io = trunc nuw i8 %i.in to i1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 57
  %i.iq = load i8, ptr %i.ip, align 1, !range !551
  %i.ir = trunc nuw i8 %i.iq to i1
  %or.cond.i.i.i90 = select i1 %i.io, i1 true, i1 %i.ir
  br i1 %or.cond.i.i.i90, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.is = lshr i64 %indvars.iv214, 6
  %i.it = and i64 %i.is, 67108863
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.it
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !612
  %i.iw = and i64 %indvars.iv214, 63
  %i.ix = shl nuw i64 1, %i.iw
  %i.iy = and i64 %i.iv, %i.ix
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ij, i64 59
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jc = load i64, ptr %i.il, align 8, !tbaa !612
  %i.jd = and i64 %i.jc, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.je = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !2377
  %i.jg = shl nsw i64 %indvars.iv214, 2
  %i.jh = getelementptr inbounds i8, ptr %i.jf, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !3
  %i.jj = zext i32 %i.ji to i64                   ; 2 uses
  %i.jk = lshr i64 %i.jj, 6
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !612
  %i.jn = and i64 %i.jj, 63
  %i.jo = shl nuw i64 1, %i.jn
  %i.jp = and i64 %i.jo, %i.jm
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai
  %.0.i.i.i92.in = phi i64 [ %i.iy, %bb.ai ], [ %i.jd, %bb.ak ], [ %i.jp, %bb.al ]
  %.0.i.i.i92.not = icmp eq i64 %.0.i.i.i92.in, 0
  br i1 %.0.i.i.i92.not, label %bb.an, label %.thread191

bb.an:                                            ; preds = %bb.am
  %i.jq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ao unwind label %bb.aq     ; 3 uses

bb.ao:                                            ; preds = %bb.an
  %.not193 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not193, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, ptr noundef nonnull align 8 dereferenceable(16) %i.jr, i64 16, i1 false), !tbaa.struct !7787
  br label %bb.bb

bb.aq:                                            ; preds = %bb.an
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ao
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.jq, align 8, !tbaa !612
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !612
  br label %bb.bb

.thread191:                                       ; preds = %.noexc.thread, %bb.am
  %i.jt = load i32, ptr %i.eu, align 8, !tbaa !10889, !noalias !11009 ; 2 uses
  %i.ju = add nsw i32 %i.jt, 1                    ; 2 uses
  %i.jv = load i8, ptr %i.ev, align 1, !tbaa !10902, !range !551, !noalias !11009, !noundef !552
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.as, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.as:                                            ; preds = %.thread191
  %i.jx = load ptr, ptr %i.ew, align 8, !tbaa !10903, !noalias !11009 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !541, !noalias !11009
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !11009
  invoke void %i.ka(ptr noundef nonnull align 8 dereferenceable(96) %i.jx, i1 noundef zeroext true)
          to label %.noexc95 unwind label %bb.aw, !inline_history !11012

.noexc95:                                         ; preds = %bb.as
  store i8 0, ptr %i.ev, align 1, !tbaa !10902, !noalias !11009
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %.noexc95, %.thread191
  %i.kb = load i32, ptr %i.ex, align 4, !tbaa !10890, !noalias !11009 ; 2 uses
  %i.kc = add nsw i32 %i.kb, %i.ju                ; 2 uses
  %i.kd = load i32, ptr %i.ey, align 8, !tbaa !10914, !noalias !11009
  %i.ke = icmp sgt i32 %i.kc, %i.kd
  br i1 %i.ke, label %bb.at, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit.i, !prof !524

bb.at:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.kf = sitofp i32 %i.kc to double
  %i.kg = call noundef double @log2(double noundef %i.kf) #34, !tbaa !3, !noalias !11009
  %i.kh = call double @llvm.ceil.f64(double %i.kg)
  %exp2.i.i.i96 = invoke double @exp2(double %i.kh)
          to label %exp2.i.i.i.noexc unwind label %bb.aw

exp2.i.i.i.noexc:                                 ; preds = %bb.at
  %i.ki = fptosi double %exp2.i.i.i96 to i32      ; 3 uses
  %i.kj = load ptr, ptr %i.ez, align 8, !tbaa !10911, !noalias !11009 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !541, !noalias !11009
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !11009
  invoke void %i.km(ptr noundef nonnull align 8 dereferenceable(32) %i.kj, i32 noundef %i.ki)
          to label %.noexc97 unwind label %bb.aw, !inline_history !11012

.noexc97:                                         ; preds = %exp2.i.i.i.noexc
  %i.kn = load ptr, ptr %i.ew, align 8, !tbaa !10903, !noalias !11009 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !541, !noalias !11009
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !11009
  invoke void %i.kq(ptr noundef nonnull align 8 dereferenceable(96) %i.kn, i32 noundef %i.ki)
          to label %.noexc98 unwind label %bb.aw, !inline_history !11012

.noexc98:                                         ; preds = %.noexc97
  store i32 %i.ki, ptr %i.ey, align 8, !tbaa !10914, !noalias !11009
  %.pre.i = load i32, ptr %i.ex, align 4, !tbaa !10890, !noalias !11009
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit.i: ; preds = %.noexc98, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.kr = phi i32 [ %i.kb, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %.noexc98 ]
  store i32 %i.ju, ptr %i.eu, align 8, !tbaa !10889, !noalias !11009
  %i.ks = add i32 %i.kr, %i.jt                    ; 2 uses
  %i.kt = load ptr, ptr %i.ez, align 8, !tbaa !10911, !noalias !11009
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !7743, !noalias !11009
  %i.kw = sext i32 %i.ks to i64
  %i.kx = getelementptr inbounds [16 x i8], ptr %i.kv, i64 %i.kw ; 3 uses
  store i8 1, ptr %i.ev, align 1, !tbaa !10902, !noalias !11009
  %i.ky = load ptr, ptr %i.ew, align 8, !tbaa !10903, !noalias !11009 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !541, !noalias !11009
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !11009
  invoke void %i.la(ptr noundef nonnull align 8 dereferenceable(96) %i.ky, i32 noundef %i.ks)
          to label %bb.au unwind label %bb.aw, !inline_history !11012

bb.au:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit.i
  %i.lb = load ptr, ptr %i.ew, align 8, !tbaa !10903, !noalias !11009
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %.not194 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not194, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kx, ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i64 16, i1 false), !tbaa.struct !7787
  br label %bb.ay

bb.aw:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit.i, %.noexc97, %exp2.i.i.i.noexc, %bb.at, %bb.as
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ax:                                            ; preds = %bb.au
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.kx, align 8, !tbaa !612
  %.sroa.8110.0..sroa.5101.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.8110.0..sroa.5101.8..sroa_idx, align 8, !tbaa !612
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !11013)
  call void @llvm.experimental.noalias.scope.decl(metadata !11016)
  %i.lf = load ptr, ptr %i.et, align 8, !tbaa !8394, !noalias !11019, !nonnull !552, !align !674
  store ptr %i.lf, ptr %10, align 8, !tbaa !1033, !alias.scope !11019
  store <2 x ptr> %i.fa, ptr %i.fb, align 8, !tbaa !533, !alias.scope !11019
  store i32 %i.gc, ptr %i.fc, align 8, !tbaa !8647, !alias.scope !11019
  invoke void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.lc, ptr noundef nonnull align 8 dereferenceable(28) %10)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.lg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ap, %bb.ar, %bb.az
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.lh = trunc nsw i64 %indvars.iv.next215 to i32
  %i.li = icmp eq i32 %i.eq, %i.lh
  br i1 %i.li, label %._crit_edge205, label %bb.ab

bb.bc:                                            ; preds = %bb.a, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit
  ret void

bb.bd:                                            ; preds = %bb.y, %bb.aw, %bb.ba, %bb.aq
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.y ], [ %i.lg, %bb.ba ], [ %i.js, %bb.aq ], [ %i.le, %bb.aw ]
  call void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  resume { ptr, i32 } %.pn47.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10889 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10902, !range !551, !noundef !552
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10903 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !541
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !11020
  store i8 0, ptr %i.d, align 1, !tbaa !10902
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10890 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !10914
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit, !prof !524

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10911 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !541
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.u), !inline_history !11021
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10903 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !541
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i32 noundef %i.u), !inline_history !11021
  store i32 %i.u, ptr %i.o, align 8, !tbaa !10914
  %.pre = load i32, ptr %i.l, align 4, !tbaa !10890
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !10889
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !10913 ; 2 uses
  %i.ai = add i32 %i.af, %i.b
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !541
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ah, i32 noundef %i.ai, i1 noundef zeroext true)
  %i.am = load i32, ptr %i.l, align 4, !tbaa !10890
  %i.an = load i32, ptr %i.a, align 8, !tbaa !10889
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !10911
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7743
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.au
  ret ptr %i.av
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10975 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1391
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1394 ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i.i.i to i64   ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.h
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = lshr i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = icmp ult i64 %i.g, 256
  br i1 %i.n, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !1394
  %.0.copyload.i.pre.i.i.i = load i16, ptr %i.i, align 1
  %.pre20.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi21.i.i.i = phi i64 [ %i.j, %bb.b ], [ %.pre20.i.i.i, %bb.c ]
  %i.o = icmp eq i64 %i.h, 0
  %i.p = shl nuw nsw i64 %.pre-phi21.i.i.i, 2
  %.neg17.i.i.i = sub nuw nsw i64 -16, %i.p
  %.neg18.i.i.i = shl i64 -64, %i.h
  %.0.i.neg.i.i.i = select i1 %i.o, i64 %.neg17.i.i.i, i64 %.neg18.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !10975
  store i64 0, ptr %i.f, align 8, !tbaa !1394
  %i.q = and i64 %.0.i.neg.i.i.i, -8
  %i.r = shl nuw nsw i64 %i.j, 5
  %i.s = mul i64 %i.r, %i.m
  %i.t = sub i64 %i.s, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.t) #34
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %bb.a, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESF_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.3101") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1394 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread66_crit_edge, label %bb.b

..thread66_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10975
  %.pre85 = shl nuw i64 1, %i.b
  br label %.thread66

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10975 ; 3 uses
  %i.m = load ptr, ptr %1, align 8
  %i.n = load <2 x i64>, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.0.i77 = phi i64 [ %2, %bb.b ], [ %i.an, %bb.f ] ; 2 uses
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.am, %bb.f ]
  %i.o = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i77, i64 range(i64 0, 256) %i.i)
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.o ; 3 uses
  %i.q = load <16 x i8>, ptr %i.p, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKS1_S10_S12_EUlS10_E_EEvS10_:bb.a
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit43, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %lpad.loopexit, %.loopexit43 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit41 unwind label %bb.ai

.loopexit41:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit40, label %bb.i, !llvm.loop !14387

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !1034
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !1415
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !1417
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.4314) align 8 %1)
  br label %.loopexit40

.loopexit40:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions29MapIntersectPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE4callERNS3_9MapWriterIS5_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES5_SB_EERKNS3_9ArrayViewILb1ES5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10979
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !14282, !range !551, !noundef !552
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14266 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1391
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1394 ; 4 uses
  %i.m = and i64 %i.l, 252
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17
  %i.p = and i8 %i.o, 15
  %i.q = icmp ult i64 %i.l, 256
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre.i.i.i = and i64 %i.l, 255
  br label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !14266 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  store i8 %i.p, ptr %i.s, align 2, !tbaa !14319
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.v, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !14266
  %i.u = getelementptr inbounds nuw [256 x i8], ptr %i.t, i64 %.017.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.u, i8 0, i64 16, i1 false)
  %i.v = add nuw i64 %.017.i.i.i, 1               ; 2 uses
  %i.w = load i64, ptr %i.k, align 8, !tbaa !1394
  %i.x = and i64 %i.w, 255                        ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.v, %i.x
  %i.y = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.y, label %.preheader.i.i.i, label %bb.f, !llvm.loop !14388

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.z = phi ptr [ %i.g, %._crit_edge.i.i.i ], [ %i.r, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.aa, align 8, !tbaa !612
  store i64 %.pre-phi.i.i.i, ptr %i.k, align 8, !tbaa !1394
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ab = phi i64 [ %.pre-phi.i.i.i, %bb.g ], [ %i.l, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %i.z, %bb.g ], [ %i.g, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17
  %i.af = icmp eq i64 %i.ab, 0
  %i.ag = shl i8 %i.ae, 4
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, 16
  %i.aj = shl i64 256, %i.ab
  %.0.i.i.i.i = select i1 %i.af, i64 %i.ai, i64 %i.aj
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !14266
  store i64 0, ptr %i.k, align 8, !tbaa !1394
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %.0.i.i.i.i) #34
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit: ; preds = %bb.c, %bb.h, %bb.i
  tail call void @_ZN8facebook5velox9functions29MapIntersectPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE20initializeSearchKeysERKNS3_9ArrayViewILb1ES5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1394
  %i.an = icmp ult i64 %i.am, 256
  br i1 %i.an, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !10953, !noalias !14389 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10954, !noalias !14389 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !10950, !noalias !14389
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10952, !noalias !14389 ; 3 uses
  %i.av = add nsw i32 %i.ar, %i.ap
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, <2 x i64> <i64 8, i64 56>
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = sext i32 %i.ap to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread ] ; 6 uses
  %i.bi = load ptr, ptr %i.as, align 8, !tbaa !10992, !noalias !14392, !nonnull !552, !align !674 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2367, !noalias !14392
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 58
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !2366, !range !551, !noalias !14392, !noundef !552
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bn, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 59
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !2372, !range !551, !noalias !14392, !noundef !552
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !2373, !noalias !14392
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2377, !noalias !14392
  %i.bw = shl nsw i64 %indvars.iv, 2
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !14392
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.by, %bb.o ], [ %i.bt, %bb.n ], [ %i.bo, %bb.l ]
  %i.bz = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ca, align 8, !tbaa !612, !noalias !14392 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !612, !noalias !14392 ; 5 uses
  %i.cb = load i64, ptr %i.al, align 8, !tbaa !1394 ; 2 uses
  %i.cc = lshr i64 %i.cb, 8
  switch i64 %i.cc, label %bb.q [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cd = load i64, ptr %i.ax, align 8, !tbaa !14320
  %i.ce = and i64 %i.cd, -16
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %5 = load i64, ptr %i.cf, align 16, !tbaa !7893
  %6 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %5
  %7 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %8
  %i.cg = select i1 %6, i1 %9, i1 false
  br i1 %i.cg, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread71, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.ch = xor i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ci = mul i64 %i.ch, -7070675565921424023     ; 2 uses
  %i.cj = lshr i64 %i.ci, 47
  %i.ck = xor i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.cj
  %i.cl = xor i64 %i.ck, %i.ci
  %i.cm = mul i64 %i.cl, -7070675565921424023     ; 2 uses
  %i.cn = lshr i64 %i.cm, 47
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = mul i64 %i.co, -7070675565921424023     ; 2 uses
  %i.cq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.cp) ; 2 uses
  %i.cr = lshr i64 %i.cq, 24
  %i.cs = or i64 %i.cr, 128                       ; 2 uses
  %i.ct = add i64 %i.cq, %i.cp
  %i.cu = shl nuw nsw i64 %i.cs, 1
  %i.cv = or disjoint i64 %i.cu, 1
  %i.cw = trunc nuw i64 %i.cs to i8
  %i.cx = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cz = and i64 %i.cb, 255                      ; 2 uses
  %i.da = shl nuw i64 1, %i.cz
  %i.db = load ptr, ptr %i.ak, align 8, !tbaa !14266
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.u
  %.0.i.i89 = phi i64 [ %i.ct, %bb.q ], [ %i.dv, %bb.u ] ; 2 uses
  %.023.i.i88 = phi i64 [ %i.da, %bb.q ], [ %i.du, %bb.u ]
  %i.dc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i89, i64 range(i64 0, 256) %i.cz)
  %i.dd = getelementptr inbounds nuw [256 x i8], ptr %i.db, i64 %i.dc ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.df, i32 0, i32 3, i32 1)
  %i.dg = load <16 x i8>, ptr %i.dd, align 16     ; 2 uses
  %i.dh = icmp eq <16 x i8> %i.dg, %i.cy
  %i.di = bitcast <16 x i1> %i.dh to i16
  %i.dj = and i16 %i.di, 16383
  %i.dk = zext nneg i16 %i.dj to i32
  %i.dl = icmp ne ptr %i.dd, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.dm = extractelement <16 x i8> %i.dg, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  %.sroa.043.0 = phi i32 [ %i.dk, %bb.r ], [ %i.dp, %bb.s ] ; 4 uses
  %.not = icmp eq i32 %.sroa.043.0, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.dn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.043.0, i1 true)
  %i.do = add nsw i32 %.sroa.043.0, -1
  %i.dp = and i32 %i.do, %.sroa.043.0
  %i.dq = zext nneg i32 %i.dn to i64
  call void @llvm.assume(i1 %i.dl)
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dq ; 2 uses
  %10 = load i64, ptr %i.dr, align 8, !tbaa !7893
  %11 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %10
  %12 = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %13
  %i.ds = select i1 %11, i1 %14, i1 false
  br i1 %i.ds, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread71, label %.critedge.i.i, !prof !741, !llvm.loop !14314

bb.t:                                             ; preds = %.critedge.i.i
  %i.dt = icmp eq i8 %i.dm, 0
  br i1 %i.dt, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %bb.u, !prof !741

bb.u:                                             ; preds = %bb.t
  %i.du = add i64 %.023.i.i88, -1                 ; 2 uses
  %i.dv = add i64 %i.cv, %.0.i.i89
  %.not.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %bb.r, !llvm.loop !14315

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread71: ; preds = %bb.s, %bb.p
  %i.dw = load ptr, ptr %i.au, align 8, !tbaa !8394, !nonnull !552, !align !674 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i19 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i19, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread71
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 58
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 57
  %i.ed = load i8, ptr %i.ec, align 1, !range !551
  %i.ee = trunc nuw i8 %i.ed to i1
  %or.cond.i.i.i = select i1 %i.eb, i1 true, i1 %i.ee
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ef = lshr i64 %indvars.iv, 6
  %i.eg = and i64 %i.ef, 67108863
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !612
  %i.ej = and i64 %indvars.iv, 63
  %i.ek = shl nuw i64 1, %i.ej
  %i.el = and i64 %i.ei, %i.ek
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.x:                                             ; preds = %bb.v
  %i.em = getelementptr inbounds nuw i8, ptr %i.dw, i64 59
  %i.en = load i8, ptr %i.em, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ep = load i64, ptr %i.dy, align 8, !tbaa !612
  %i.eq = and i64 %i.ep, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.z:                                             ; preds = %bb.x
  %i.er = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2377
  %i.et = shl nsw i64 %indvars.iv, 2
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !612
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.fb, %i.ez
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.i.i.in = phi i64 [ %i.el, %bb.w ], [ %i.eq, %bb.y ], [ %i.fc, %bb.z ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.aa, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.aa:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.fd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.fd, align 8, !tbaa !612
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !612
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread71, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.fe = load i32, ptr %i.ay, align 8, !tbaa !10889, !noalias !14397 ; 2 uses
  %i.ff = add nsw i32 %i.fe, 1                    ; 2 uses
  %i.fg = load i8, ptr %i.az, align 1, !tbaa !10902, !range !551, !noalias !14397, !noundef !552
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ab, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.ab:                                            ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fi = load ptr, ptr %i.ba, align 8, !tbaa !10903, !noalias !14397 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !541, !noalias !14397
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !14397
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(96) %i.fi, i1 noundef zeroext true), !noalias !14397, !inline_history !14400
  store i8 0, ptr %i.az, align 1, !tbaa !10902, !noalias !14397
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.ab, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fm = load i32, ptr %i.bb, align 4, !tbaa !10890, !noalias !14397 ; 2 uses
  %i.fn = add nsw i32 %i.fm, %i.ff                ; 2 uses
  %i.fo = load i32, ptr %i.bc, align 8, !tbaa !10914, !noalias !14397
  %i.fp = icmp sgt i32 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ac, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit, !prof !524

bb.ac:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.fq = sitofp i32 %i.fn to double
  %i.fr = call noundef double @log2(double noundef %i.fq) #34, !tbaa !3, !noalias !14397
  %i.fs = call double @llvm.ceil.f64(double %i.fr)
  %exp2.i.i.i = call double @exp2(double %i.fs), !noalias !14397
  %i.ft = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.fu = load ptr, ptr %i.bd, align 8, !tbaa !10911, !noalias !14397 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !541, !noalias !14397
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !14397
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, i32 noundef %i.ft), !noalias !14397, !inline_history !14401
  %i.fy = load ptr, ptr %i.ba, align 8, !tbaa !10903, !noalias !14397 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !541, !noalias !14397
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !14397
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(96) %i.fy, i32 noundef %i.ft), !noalias !14397, !inline_history !14401
  store i32 %i.ft, ptr %i.bc, align 8, !tbaa !10914, !noalias !14397
  %.pre.i = load i32, ptr %i.bb, align 4, !tbaa !10890, !noalias !14397
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.ac
  %i.gc = phi i32 [ %i.fm, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.ac ]
  store i32 %i.ff, ptr %i.ay, align 8, !tbaa !10889, !noalias !14397
  %i.gd = add i32 %i.gc, %i.fe                    ; 2 uses
  %i.ge = load ptr, ptr %i.bd, align 8, !tbaa !10911, !noalias !14397
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !7743, !noalias !14397
  %i.gh = sext i32 %i.gd to i64
  %i.gi = getelementptr inbounds [16 x i8], ptr %i.gg, i64 %i.gh ; 2 uses
  store i8 1, ptr %i.az, align 1, !tbaa !10902, !noalias !14397
  %i.gj = load ptr, ptr %i.ba, align 8, !tbaa !10903, !noalias !14397 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !541, !noalias !14397
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !14397
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(96) %i.gj, i32 noundef %i.gd), !noalias !14397, !inline_history !14402
  %i.gm = load ptr, ptr %i.ba, align 8, !tbaa !10903, !noalias !14397
  %15 = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.gi, align 8, !tbaa !612
  %.sroa.8.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.8.0..sroa.4.8..sroa_idx, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !14403)
  call void @llvm.experimental.noalias.scope.decl(metadata !14406)
  %i.gn = load ptr, ptr %i.au, align 8, !tbaa !8394, !noalias !14409, !nonnull !552, !align !674
  store ptr %i.gn, ptr %4, align 8, !tbaa !1033, !alias.scope !14409
  store <2 x ptr> %i.be, ptr %i.bf, align 8, !tbaa !533, !alias.scope !14409
  store i32 %i.bo, ptr %i.bg, align 8, !tbaa !8647, !alias.scope !14409
  call void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(28) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread: ; preds = %bb.t, %bb.u, %bb.p, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %bb.aa, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.go = trunc nsw i64 %indvars.iv.next to i32
  %i.gp = icmp eq i32 %i.av, %i.go
  br i1 %i.gp, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, %bb.k, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.4314) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.4316, align 8           ; 6 uses
  %6 = alloca %class.anon.4315, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14410

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::exec::ArrayView.3071", align 8 ; 5 uses
  %4 = alloca %"class.facebook::velox::exec::MapView.3070", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !14411, !range !551, !noundef !552
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14413
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !612
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit47, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit
  %.057 = phi i64 [ %i.k, %.preheader ], [ %i.ev, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions29MapIntersectPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit ] ; 3 uses
  %i.t = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.057, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 6 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !14356 ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !14360, !nonnull !552, !align !674 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14361, !nonnull !552, !align !674 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 %i.v, ptr %i.z, align 8, !tbaa !953
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14364, !nonnull !552, !align !674 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !14351, !noalias !14414
  %i.ae = sext i32 %i.v to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14368, !noalias !14414, !nonnull !552, !align !674 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14369, !noalias !14414, !nonnull !552, !align !674 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !14417
  call void @llvm.experimental.noalias.scope.decl(metadata !14420)
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !10949, !noalias !14420, !nonnull !552, !align !674 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !2366, !range !551, !noalias !14420, !noundef !552
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.noexc16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !2372, !range !551, !noalias !14420, !noundef !552
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2373, !noalias !14420
  br label %.noexc16

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2377, !noalias !14420
  %i.au = shl nsw i64 %i.ae, 2
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3, !noalias !14420
  br label %.noexc16

.noexc16:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.aw, %bb.e ], [ %i.ar, %bb.d ], [ %i.v, %bb.b ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 272
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 280
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 256
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !10915, !noalias !14420
  %i.bb = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3, !noalias !14420
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 264
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10918, !noalias !14420
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bb
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKS1_S10_S12_EUlS10_E_EEvS10_:bb.a
bb.af:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EEEEEJSF_SI_EEEE8applyUdfIZNKSL_7iterateIJNS1_12VectorReaderISF_EENSO_ISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_ENKUlSW_E0_clIiEEDaSW_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %6, align 8, !tbaa !910
  %.not.i38 = icmp eq ptr %i.fj, null
  br i1 %.not.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit43, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39
  %.pn16.i = phi { ptr, i32 } [ %i.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39 ], [ %lpad.loopexit, %.loopexit43 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit41 unwind label %bb.ai

.loopexit41:                                      ; preds = %bb.v, %bb.ah, %bb.ac
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn16.i, %bb.ah ], [ %eh.lpad-body, %bb.v ]
  resume { ptr, i32 } %.merged.i

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #43
  unreachable

bb.aj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit40, label %bb.i, !llvm.loop !16692

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !1034
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !1415
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !1417
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_(ptr noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.5106) align 8 %1)
  br label %.loopexit40

.loopexit40:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit, %bb.h, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapExceptPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE4callERNS3_9MapWriterIS5_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES5_SB_EERKNS3_9ArrayViewILb1ES5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 6 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !16643, !range !551, !noundef !552
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14266 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.f = load i8, ptr %i.e, align 1, !tbaa !1391
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1394 ; 4 uses
  %i.j = and i64 %i.i, 252
  %.not.i.i.i = icmp eq i64 %i.j, 0               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.l = load i8, ptr %i.k, align 1, !tbaa !17
  %i.m = and i8 %i.l, 15
  %i.n = icmp ult i64 %i.i, 256
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d
  %.pre.i.i.i = and i64 %i.i, 255
  br label %bb.f

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !14266 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  store i8 %i.m, ptr %i.p, align 2, !tbaa !14319
  br label %bb.f

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.s, %.preheader.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !14266
  %i.r = getelementptr inbounds nuw [256 x i8], ptr %i.q, i64 %.017.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.r, i8 0, i64 16, i1 false)
  %i.s = add nuw i64 %.017.i.i.i, 1               ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !tbaa !1394
  %i.u = and i64 %i.t, 255                        ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.s, %i.u
  %i.v = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.v, label %.preheader.i.i.i, label %bb.e, !llvm.loop !14388

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.u, %bb.e ] ; 2 uses
  %i.w = phi ptr [ %i.d, %._crit_edge.i.i.i ], [ %i.o, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.x, align 8, !tbaa !612
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8, !tbaa !1394
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.y = phi i64 [ %.pre-phi.i.i.i, %bb.f ], [ %i.i, %bb.c ] ; 2 uses
  %i.z = phi ptr [ %i.w, %bb.f ], [ %i.d, %bb.c ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = icmp eq i64 %i.y, 0
  %i.ad = shl i8 %i.ab, 4
  %i.ae = zext i8 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 16
  %i.ag = shl i64 256, %i.y
  %.0.i.i.i.i = select i1 %i.ac, i64 %i.af, i64 %i.ag
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.c, align 8, !tbaa !14266
  store i64 0, ptr %i.h, align 8, !tbaa !1394
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %.0.i.i.i.i) #34
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit: ; preds = %bb.b, %bb.g, %bb.h
  tail call void @_ZN8facebook5velox9functions26MapExceptPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE20initializeSearchKeysERKNS3_9ArrayViewILb1ES5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5clearEv.exit, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !10953, !noalias !16693 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10954, !noalias !16693 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !10950, !noalias !16693
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !10952, !noalias !16693 ; 3 uses
  %i.ao = add nsw i32 %i.ak, %i.ai
  %i.ap = icmp eq i32 %i.ak, 0
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, <2 x i64> <i64 8, i64 56>
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bc = sext i32 %i.ai to i64
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread72, %bb.i
  ret void

bb.j:                                             ; preds = %.lr.ph, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread72
  %indvars.iv = phi i64 [ %i.bc, %.lr.ph ], [ %indvars.iv.next, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread72 ] ; 6 uses
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !10992, !noalias !16696, !nonnull !552, !align !674 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2367, !noalias !16696
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 58
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !2366, !range !551, !noalias !16696, !noundef !552
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bi, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 59
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !2372, !range !551, !noalias !16696, !noundef !552
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !2373, !noalias !16696
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2377, !noalias !16696
  %i.br = shl nsw i64 %indvars.iv, 2
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !16696
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.m ], [ %i.bo, %bb.l ], [ %i.bj, %bb.j ]
  %i.bu = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bu ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !tbaa !612, !noalias !16696 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !612, !noalias !16696 ; 5 uses
  %i.bw = load i64, ptr %i.ar, align 8, !tbaa !1394 ; 2 uses
  %i.bx = lshr i64 %i.bw, 8
  switch i64 %i.bx, label %bb.o [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.by = load i64, ptr %i.as, align 8, !tbaa !14320
  %i.bz = and i64 %i.by, -16
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  %5 = load i64, ptr %i.ca, align 16, !tbaa !7893
  %6 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %5
  %7 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %8
  %i.cb = select i1 %6, i1 %9, i1 false
  br i1 %i.cb, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread72, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread

bb.o:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cc = xor i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.cd = mul i64 %i.cc, -7070675565921424023     ; 2 uses
  %i.ce = lshr i64 %i.cd, 47
  %i.cf = xor i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.ce
  %i.cg = xor i64 %i.cf, %i.cd
  %i.ch = mul i64 %i.cg, -7070675565921424023     ; 2 uses
  %i.ci = lshr i64 %i.ch, 47
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = mul i64 %i.cj, -7070675565921424023     ; 2 uses
  %i.cl = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ck) ; 2 uses
  %i.cm = lshr i64 %i.cl, 24
  %i.cn = or i64 %i.cm, 128                       ; 2 uses
  %i.co = add i64 %i.cl, %i.ck
  %i.cp = shl nuw nsw i64 %i.cn, 1
  %i.cq = or disjoint i64 %i.cp, 1
  %i.cr = trunc nuw i64 %i.cn to i8
  %i.cs = insertelement <16 x i8> poison, i8 %i.cr, i64 0
  %i.ct = shufflevector <16 x i8> %i.cs, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cu = and i64 %i.bw, 255                      ; 2 uses
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = load ptr, ptr %i.aq, align 8, !tbaa !14266
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.s
  %.0.i.i88 = phi i64 [ %i.co, %bb.o ], [ %i.dq, %bb.s ] ; 2 uses
  %.023.i.i87 = phi i64 [ %i.cv, %bb.o ], [ %i.dp, %bb.s ]
  %i.cx = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i88, i64 range(i64 0, 256) %i.cu)
  %i.cy = getelementptr inbounds nuw [256 x i8], ptr %i.cw, i64 %i.cx ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.da, i32 0, i32 3, i32 1)
  %i.db = load <16 x i8>, ptr %i.cy, align 16     ; 2 uses
  %i.dc = icmp eq <16 x i8> %i.db, %i.ct
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %i.de = and i16 %i.dd, 16383
  %i.df = zext nneg i16 %i.de to i32
  %i.dg = icmp ne ptr %i.cy, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.dh = extractelement <16 x i8> %i.db, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.q, %bb.p
  %.sroa.042.0 = phi i32 [ %i.df, %bb.p ], [ %i.dk, %bb.q ] ; 4 uses
  %.not = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge.i.i
  %i.di = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.dj = add nsw i32 %.sroa.042.0, -1
  %i.dk = and i32 %i.dj, %.sroa.042.0
  %i.dl = zext nneg i32 %i.di to i64
  call void @llvm.assume(i1 %i.dg)
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.dl ; 2 uses
  %10 = load i64, ptr %i.dm, align 8, !tbaa !7893
  %11 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %10
  %12 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %13
  %i.dn = select i1 %11, i1 %14, i1 false
  br i1 %i.dn, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread72, label %.critedge.i.i, !prof !741, !llvm.loop !14314

bb.r:                                             ; preds = %.critedge.i.i
  %i.do = icmp eq i8 %i.dh, 0
  br i1 %i.do, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %bb.s, !prof !741

bb.s:                                             ; preds = %bb.r
  %i.dp = add i64 %.023.i.i87, -1                 ; 2 uses
  %i.dq = add i64 %i.cq, %.0.i.i88
  %.not.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, label %bb.p, !llvm.loop !14315

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread: ; preds = %bb.r, %bb.s, %bb.n, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.dr = load ptr, ptr %i.an, align 8, !tbaa !8394, !nonnull !552, !align !674 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i18 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i18, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 58
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 57
  %i.dy = load i8, ptr %i.dx, align 1, !range !551
  %i.dz = trunc nuw i8 %i.dy to i1
  %or.cond.i.i.i = select i1 %i.dw, i1 true, i1 %i.dz
  br i1 %or.cond.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ea = lshr i64 %indvars.iv, 6
  %i.eb = and i64 %i.ea, 67108863
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !612
  %i.ee = and i64 %indvars.iv, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ed, %i.ef
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.v:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ek = load i64, ptr %i.dt, align 8, !tbaa !612
  %i.el = and i64 %i.ek, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

bb.x:                                             ; preds = %bb.v
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2377
  %i.eo = shl nsw i64 %indvars.iv, 2
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = lshr i64 %i.er, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !612
  %i.ev = and i64 %i.er, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = and i64 %i.ew, %i.eu
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.u, %bb.w, %bb.x
  %.0.i.i.i.in = phi i64 [ %i.eg, %bb.u ], [ %i.el, %bb.w ], [ %i.ex, %bb.x ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.y, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread

bb.y:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ey = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.ey, align 8, !tbaa !612
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !612
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread72

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit
  %i.ez = load i32, ptr %i.at, align 8, !tbaa !10889, !noalias !16701 ; 2 uses
  %i.fa = add nsw i32 %i.ez, 1                    ; 2 uses
  %i.fb = load i8, ptr %i.au, align 1, !tbaa !10902, !range !551, !noalias !16701, !noundef !552
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.z, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.z:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fd = load ptr, ptr %i.av, align 8, !tbaa !10903, !noalias !16701 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !541, !noalias !16701
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !16701
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(96) %i.fd, i1 noundef zeroext true), !noalias !16701, !inline_history !14400
  store i8 0, ptr %i.au, align 1, !tbaa !10902, !noalias !16701
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.z, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.fh = load i32, ptr %i.aw, align 4, !tbaa !10890, !noalias !16701 ; 2 uses
  %i.fi = add nsw i32 %i.fh, %i.fa                ; 2 uses
  %i.fj = load i32, ptr %i.ax, align 8, !tbaa !10914, !noalias !16701
  %i.fk = icmp sgt i32 %i.fi, %i.fj
  br i1 %i.fk, label %bb.aa, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit, !prof !524

bb.aa:                                            ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.fl = sitofp i32 %i.fi to double
  %i.fm = call noundef double @log2(double noundef %i.fl) #34, !tbaa !3, !noalias !16701
  %i.fn = call double @llvm.ceil.f64(double %i.fm)
  %exp2.i.i.i = call double @exp2(double %i.fn), !noalias !16701
  %i.fo = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.fp = load ptr, ptr %i.ay, align 8, !tbaa !10911, !noalias !16701 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !541, !noalias !16701
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !16701
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, i32 noundef %i.fo), !noalias !16701, !inline_history !14401
  %i.ft = load ptr, ptr %i.av, align 8, !tbaa !10903, !noalias !16701 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !541, !noalias !16701
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !16701
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(96) %i.ft, i32 noundef %i.fo), !noalias !16701, !inline_history !14401
  store i32 %i.fo, ptr %i.ax, align 8, !tbaa !10914, !noalias !16701
  %.pre.i = load i32, ptr %i.aw, align 4, !tbaa !10890, !noalias !16701
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.aa
  %i.fx = phi i32 [ %i.fh, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.aa ]
  store i32 %i.fa, ptr %i.at, align 8, !tbaa !10889, !noalias !16701
  %i.fy = add i32 %i.fx, %i.ez                    ; 2 uses
  %i.fz = load ptr, ptr %i.ay, align 8, !tbaa !10911, !noalias !16701
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !7743, !noalias !16701
  %i.gc = sext i32 %i.fy to i64
  %i.gd = getelementptr inbounds [16 x i8], ptr %i.gb, i64 %i.gc ; 2 uses
  store i8 1, ptr %i.au, align 1, !tbaa !10902, !noalias !16701
  %i.ge = load ptr, ptr %i.av, align 8, !tbaa !10903, !noalias !16701 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !541, !noalias !16701
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !16701
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(96) %i.ge, i32 noundef %i.fy), !noalias !16701, !inline_history !14402
  %i.gh = load ptr, ptr %i.av, align 8, !tbaa !10903, !noalias !16701
  %15 = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.gd, align 8, !tbaa !612
  %.sroa.8.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.8.0..sroa.4.8..sroa_idx, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !16704)
  call void @llvm.experimental.noalias.scope.decl(metadata !16707)
  %i.gi = load ptr, ptr %i.an, align 8, !tbaa !8394, !noalias !16710, !nonnull !552, !align !674
  store ptr %i.gi, ptr %4, align 8, !tbaa !1033, !alias.scope !16710
  store <2 x ptr> %i.az, ptr %i.ba, align 8, !tbaa !533, !alias.scope !16710
  store i32 %i.bj, ptr %i.bb, align 8, !tbaa !8647, !alias.scope !16710
  call void @_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(28) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread72

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEERKT_.exit.thread72: ; preds = %bb.q, %bb.n, %bb.y, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_itemEv.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gj = trunc nsw i64 %indvars.iv.next to i32
  %i.gk = icmp eq i32 %i.ao, %i.gj
  br i1 %i.gk, label %._crit_edge, label %bb.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.5106) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.5108, align 8           ; 6 uses
  %6 = alloca %class.anon.5107, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16711

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS4_10VectorExecENS0_9TimestampEEESC_NS0_3MapISD_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSK_NS0_5ArrayISD_EEEEEJSK_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS4_12VectorReaderISK_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSX_S11_EUlS11_E_ZNKSR_IS16_EEvSX_S11_EUlS11_E0_EEvRKNS0_17SelectivityVectorES11_S13_EUlS11_E_EEvPKmiibS11_EUlimE_ZNS3_IS1C_EEvS1E_iibS11_EUliE_EEviiS11_S13_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EEEEEJSJ_SM_EEEE8applyUdfIZNKSP_7iterateIJNS3_12VectorReaderISJ_EENSS_ISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSQ_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_EUlS10_E_EEvPKmiibS10_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::exec::ArrayView.3071", align 8 ; 5 uses
  %4 = alloca %"class.facebook::velox::exec::MapView.3070", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !16712, !range !551, !noundef !552
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16714
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !612
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit47, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit
  %.057 = phi i64 [ %i.k, %.preheader ], [ %i.ev, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapExceptPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EEEEEJSH_SK_EEEE8applyUdfIZNKSN_7iterateIJNS1_12VectorReaderISH_EENSQ_ISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSO_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_ENKUlSY_E_clIiEEDaSY_.exit ] ; 3 uses
  %i.t = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.057, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 6 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !16663 ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !16665, !nonnull !552, !align !674 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16666, !nonnull !552, !align !674 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 %i.v, ptr %i.z, align 8, !tbaa !953
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16669, !nonnull !552, !align !674 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !16660, !noalias !16715
  %i.ae = sext i32 %i.v to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16673, !noalias !16715, !nonnull !552, !align !674 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !16674, !noalias !16715, !nonnull !552, !align !674 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !16718
  call void @llvm.experimental.noalias.scope.decl(metadata !16721)
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !10949, !noalias !16721, !nonnull !552, !align !674 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !2366, !range !551, !noalias !16721, !noundef !552
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.noexc16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !2372, !range !551, !noalias !16721, !noundef !552
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2373, !noalias !16721
  br label %.noexc16

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2377, !noalias !16721
  %i.au = shl nsw i64 %i.ae, 2
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3, !noalias !16721
  br label %.noexc16

.noexc16:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.aw, %bb.e ], [ %i.ar, %bb.d ], [ %i.v, %bb.b ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 272
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 280
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 256
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !10915, !noalias !16721
  %i.bb = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3, !noalias !16721
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 264
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10918, !noalias !16721
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bb
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3, !noalias !16721
  store ptr %i.ax, ptr %4, align 8, !tbaa !10950, !alias.scope !16721
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !10952, !alias.scope !16721
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EENSL_ISI_EEEEEJSJ_SM_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS3_12VectorReaderISJ_EENST_ISM_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSY_S12_EUlS12_E_ZNKSR_IS17_EEvSY_S12_EUlS12_E0_EEvRKS1_S12_S14_EUlS12_E_EEvS12_:bb.a
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !17
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ey, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !17
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.fa, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.fb = load ptr, ptr %i.ao, align 8, !tbaa !21557, !nonnull !552, !align !674
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !21558, !nonnull !552, !align !674 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !541
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(200) %i.fd)
          to label %.noexc43 unwind label %.loopexit53, !inline_history !10905

.loopexit:                                        ; preds = %bb.x, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #42
          to label %bb.am unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %.body
  %i.fh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.fi = icmp eq i32 %i.ej, %i.fh
  br i1 %i.fi, label %bb.z, label %.loopexit51

bb.z:                                             ; preds = %bb.y
  %i.fj = call ptr @__cxa_begin_catch(ptr %i.ei) #34 ; 0 uses
  %i.fk = load ptr, ptr %i.ao, align 8, !tbaa !21557, !nonnull !552, !align !674
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !21558, !nonnull !552, !align !674 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !541
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(200) %i.fm)
          to label %.noexc37 unwind label %bb.ac, !inline_history !10905

.noexc37:                                         ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !10894 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !953
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !541
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 144
  %i.fw = load ptr, ptr %i.fv, align 8
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(94) %i.fr, i32 noundef %i.ft, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EENSH_ISE_EEEEEJSF_SI_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISF_EENSP_ISI_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_ENKUlSY_E0_clIiEEDaSY_.exit7 unwind label %bb.ac, !inline_history !10905

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EENSH_ISE_EEEEEJSF_SI_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISF_EENSP_ISI_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_ENKUlSY_E0_clIiEEDaSY_.exit7: ; preds = %.noexc37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EENSH_ISE_EEEEEJSF_SI_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISF_EENSP_ISI_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_ENKUlSY_E0_clIiEEDaSY_.exit7
  %i.fx = load ptr, ptr %6, align 8, !tbaa !910
  %.not.i40 = icmp eq ptr %i.fx, null
  br i1 %.not.i40, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EENSJ_ISG_EEEEEJSH_SK_SL_EEEE8applyUdfIZNKSO_7iterateIJNS1_12VectorReaderISH_EENSR_ISK_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSP_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_ENKUlS10_E_clIiEEDaS10_.exit

bb.ac:                                            ; preds = %.noexc37, %bb.z
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EENSH_ISE_EEEEEJSF_SI_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISF_EENSP_ISI_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_ENKUlSY_E0_clIiEEDaSY_.exit7
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %6, align 8, !tbaa !910
  %.not.i41 = icmp eq ptr %i.ga, null
  br i1 %.not.i41, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %i.fz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42 ], [ %i.fy, %bb.ac ]
  invoke void @__cxa_end_catch()
          to label %.loopexit51 unwind label %bb.al

.loopexit53:                                      ; preds = %tailrecurse.i.i.i.i.3, %.noexc43
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.noexc43:                                         ; preds = %tailrecurse.i.i.i.i.3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !10894 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !953
  %i.gf = load ptr, ptr %i.gc, align 8, !tbaa !541
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 144
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(94) %i.gc, i32 noundef %i.ge, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EENSH_ISE_EEEEEJSF_SI_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISF_EENSP_ISI_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_ENKUlSY_E0_clIiEEDaSY_.exit unwind label %.loopexit53, !inline_history !10905

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EENSH_ISE_EEEEEJSF_SI_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISF_EENSP_ISI_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_ENKUlSY_E0_clIiEEDaSY_.exit: ; preds = %.noexc43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EENSH_ISE_EEEEEJSF_SI_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISF_EENSP_ISI_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_ENKUlSY_E0_clIiEEDaSY_.exit
  %i.gi = load ptr, ptr %7, align 8, !tbaa !910
  %.not.i46 = icmp eq ptr %i.gi, null
  br i1 %.not.i46, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EENSJ_ISG_EEEEEJSH_SK_SL_EEEE8applyUdfIZNKSO_7iterateIJNS1_12VectorReaderISH_EENSR_ISK_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSP_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_ENKUlS10_E_clIiEEDaS10_.exit

bb.ai:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSF_NS0_5ArrayIS8_EENSH_ISE_EEEEEJSF_SI_SJ_EEEE8applyUdfIZNKSM_7iterateIJNS1_12VectorReaderISF_EENSP_ISI_EENSP_ISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_ENKUlSY_E0_clIiEEDaSY_.exit
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load ptr, ptr %7, align 8, !tbaa !910
  %.not.i48 = icmp eq ptr %i.gk, null
  br i1 %.not.i48, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit53, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49
  %.pn16.i = phi { ptr, i32 } [ %i.gj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49 ], [ %lpad.loopexit, %.loopexit53 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit51 unwind label %bb.al

.loopexit51:                                      ; preds = %bb.y, %bb.ak, %bb.af
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.af ], [ %.pn16.i, %bb.ak ], [ %eh.lpad-body, %bb.y ]
  resume { ptr, i32 } %.merged.i

bb.al:                                            ; preds = %bb.ak, %bb.af
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #43
  unreachable

bb.am:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EENSJ_ISG_EEEEEJSH_SK_SL_EEEE8applyUdfIZNKSO_7iterateIJNS1_12VectorReaderISH_EENSR_ISK_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSP_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_ENKUlS10_E_clIiEEDaS10_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit50, label %bb.i, !llvm.loop !21560

bb.an:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.gn = load ptr, ptr %0, align 8, !tbaa !1034
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !1415
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !1417
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSJ_NS0_5ArrayISC_EENSL_ISI_EEEEEJSJ_SM_SN_EEEE8applyUdfIZNKSQ_7iterateIJNS3_12VectorReaderISJ_EENST_ISM_EENST_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSY_S12_EUlS12_E_ZNKSR_IS17_EEvSY_S12_EUlS12_E0_EEvRKNS0_17SelectivityVectorES12_S14_EUlS12_E_EEvPKmiibS12_(ptr noundef %i.gn, i32 noundef %i.gp, i32 noundef %i.gr, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.6792) align 8 %1)
  br label %.loopexit50

.loopexit50:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MapAppendPrimitiveFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEENS0_15ConstantCheckerIJSH_NS0_5ArrayISA_EENSJ_ISG_EEEEEJSH_SK_SL_EEEE8applyUdfIZNKSO_7iterateIJNS1_12VectorReaderISH_EENSR_ISK_EENSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSW_S10_EUlS10_E_ZNKSP_IS15_EEvSW_S10_EUlS10_E0_EEvRKNS0_17SelectivityVectorES10_S12_ENKUlS10_E_clIiEEDaS10_.exit, %bb.h, %bb.an
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions26MapAppendPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE4callERNS3_9MapWriterIS5_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES5_SB_EERKNS3_9ArrayViewILb1ES5_EERKNSI_ILb1ESB_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.4284", align 8   ; 4 uses
  %6 = alloca %"struct.std::pair.4284", align 8   ; 3 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.478", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.facebook::velox::util::floating_point::HashSetNaNAware.4262", align 8 ; 12 uses
  %10 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Timestamp, facebook::velox::Generic<facebook::velox::TypeVariable<1>>>::Element", align 8 ; 9 uses
  %11 = alloca %"class.facebook::velox::util::floating_point::HashSetNaNAware.4262", align 8 ; 10 uses
  %12 = alloca %"struct.facebook::velox::Timestamp", align 8 ; 7 uses
  %13 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %14 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10979 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12080 ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b, !prof !741

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !21561
  store i32 %i.b, ptr %7, align 16, !tbaa !17, !noalias !21561
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.d, ptr %i.e, align 16, !tbaa !17, !noalias !21561
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.266, i64 60, i64 17, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !21561
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions26MapAppendPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE4callERNS3_9MapWriterIS5_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES5_SB_EERKNS3_9ArrayViewILb1ES5_EERKNSI_ILb1ESB_EEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.266) #42
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %8, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !17
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.cq

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %9, align 8, !tbaa !14266
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !10953, !noalias !21564 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10954, !noalias !21564 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !10950, !noalias !21564
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10952, !noalias !21564
  %i.t = add nsw i32 %i.p, %i.n
  %i.u = icmp eq i32 %i.p, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.y = sext i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !21567)
  call void @llvm.experimental.noalias.scope.decl(metadata !21570)
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !10992, !noalias !21573, !nonnull !552, !align !674 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2367, !noalias !21573
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 58
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !2366, !range !551, !noalias !21573, !noundef !552
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ae, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 59
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !2372, !range !551, !noalias !21573, !noundef !552
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2373, !noalias !21573
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2377, !noalias !21573
  %i.an = shl nsw i64 %indvars.iv, 2
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3, !noalias !21573
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.f ]
  %i.aq = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.aq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !612, !noalias !21573 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !612, !noalias !21573 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %10, align 8, !alias.scope !21573
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.v, align 8, !alias.scope !21573
  store ptr %i.s, ptr %i.w, align 8, !alias.scope !21573
  store i64 %indvars.iv, ptr %i.x, align 8, !alias.scope !21573
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !21574
  %i.as = xor i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.at = mul i64 %i.as, -7070675565921424023     ; 2 uses
  %i.au = lshr i64 %i.at, 47
  %i.av = xor i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.au
  %i.aw = xor i64 %i.av, %i.at
  %i.ax = mul i64 %i.aw, -7070675565921424023     ; 2 uses
  %i.ay = lshr i64 %i.ax, 47
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, -7070675565921424023     ; 2 uses
  %i.bb = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ba) ; 2 uses
  %i.bc = lshr i64 %i.bb, 24
  %i.bd = or i64 %i.bc, 128
  %i.be = add i64 %i.ba, %i.bb
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.4284") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %i.be, i64 %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !21574
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bf = trunc nsw i64 %indvars.iv.next to i32
  %i.bg = icmp eq i32 %i.t, %i.bf
  br i1 %i.bg, label %._crit_edge.loopexit, label %bb.f

bb.l:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.cp

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i32, ptr %i.a, align 4, !tbaa !10979, !noalias !21577
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.bi = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %11, align 8, !tbaa !14266
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !10981, !noalias !21580
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = icmp eq i32 %i.bi, 0
  br i1 %i.bn, label %._crit_edge337, label %.lr.ph336

.lr.ph336:                                        ; preds = %._crit_edge
  %i.bo = load i32, ptr %i.bk, align 8, !tbaa !10991, !noalias !21580 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.br = sext i32 %i.bo to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph336, %bb.ah
  %i.bs = phi i32 [ %i.bi, %.lr.ph336 ], [ %i.gm, %bb.ah ]
  %i.bt = phi i32 [ %i.bo, %.lr.ph336 ], [ %i.gn, %bb.ah ]
  %indvars.iv349 = phi i64 [ %i.br, %.lr.ph336 ], [ %indvars.iv.next350, %bb.ah ] ; 6 uses
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !10992, !nonnull !552, !align !674 ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bu, i64 58
  %.pre362 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !2366, !range !551 ; 2 uses
  br i1 %.not.i.i.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = trunc nuw i8 %.pre362 to i1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 57
  %i.bz = load i8, ptr %i.by, align 1, !range !551
  %i.ca = trunc nuw i8 %i.bz to i1
  %or.cond.i.i.i = select i1 %i.bx, i1 true, i1 %i.ca
  br i1 %or.cond.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = lshr i64 %indvars.iv349, 6
  %i.cc = and i64 %i.cb, 67108863
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !612
  %i.cf = and i64 %indvars.iv349, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 59
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = load i64, ptr %i.bw, align 8, !tbaa !612
  %i.cm = and i64 %i.cl, 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !2377
  %i.cp = shl nsw i64 %indvars.iv349, 2
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 6
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !612
  %i.cw = and i64 %i.cs, 63
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cx, %i.cv
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.in = phi i64 [ %i.ch, %bb.o ], [ %i.cm, %bb.q ], [ %i.cy, %bb.r ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.ah, label %.thread

.thread:                                          ; preds = %bb.m, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2367
  %i.db = trunc nuw i8 %.pre362 to i1
  %i.dc = trunc nsw i64 %indvars.iv349 to i32
  br i1 %i.db, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bu, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !2373
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !2377
  %i.dk = shl nsw i64 %indvars.iv349, 2
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.thread
  %.0.i.i.i.i = phi i32 [ %i.dm, %bb.v ], [ %i.dh, %bb.u ], [ %i.dc, %.thread ]
  %i.dn = sext i32 %.0.i.i.i.i to i64
  %i.do = getelementptr inbounds [16 x i8], ptr %i.da, i64 %i.dn ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.do, align 8, !tbaa !612 ; 7 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !612 ; 5 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %12, align 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %15, align 8
  %i.dp = load i64, ptr %i.l, align 8, !tbaa !1394 ; 2 uses
  %i.dq = lshr i64 %i.dp, 8
  switch i64 %i.dq, label %.noexc78 [
    i64 0, label %.thread300
    i64 1, label %.noexc
  ]

.noexc:                                           ; preds = %bb.w
  %i.dr = load i64, ptr %i.bp, align 8, !tbaa !14320
  %i.ds = and i64 %i.dr, -16
  %i.dt = inttoptr i64 %i.ds to ptr               ; 2 uses
  %i.du = load i64, ptr %i.dt, align 16, !tbaa !7893
  %i.dv = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = icmp eq i64 %.sroa.2.0.copyload.i.i.i, %i.dx
  %i.dz = select i1 %i.dv, i1 %i.dy, i1 false
  br i1 %i.dz, label %.thread309, label %.thread300

.noexc78:                                         ; preds = %bb.w
  %i.ea = xor i64 %.sroa.2.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i
  %i.eb = mul i64 %i.ea, -7070675565921424023     ; 2 uses
  %i.ec = lshr i64 %i.eb, 47
  %i.ed = xor i64 %.sroa.0.0.copyload.i.i.i, %i.ec
  %i.ee = xor i64 %i.ed, %i.eb
  %i.ef = mul i64 %i.ee, -7070675565921424023     ; 2 uses
  %i.eg = lshr i64 %i.ef, 47
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = mul i64 %i.eh, -7070675565921424023     ; 2 uses
  %i.ej = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ei) ; 2 uses
  %i.ek = lshr i64 %i.ej, 24
  %i.el = or i64 %i.ek, 128                       ; 2 uses
  %i.em = add i64 %i.ej, %i.ei
  %i.en = shl nuw nsw i64 %i.el, 1
  %i.eo = or disjoint i64 %i.en, 1
  %i.ep = trunc nuw i64 %i.el to i8
  %i.eq = insertelement <16 x i8> poison, i8 %i.ep, i64 0
  %i.er = shufflevector <16 x i8> %i.eq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.es = and i64 %i.dp, 255                      ; 2 uses
  %i.et = shl nuw i64 1, %i.es
  %i.eu = load ptr, ptr %9, align 8, !tbaa !14266
  br label %.noexc80

.noexc80:                                         ; preds = %.noexc78, %.noexc83
  %.0.i.i333 = phi i64 [ %i.em, %.noexc78 ], [ %i.ft, %.noexc83 ] ; 2 uses
  %.023.i.i332 = phi i64 [ %i.et, %.noexc78 ], [ %i.fs, %.noexc83 ]
  %i.ev = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i333, i64 range(i64 0, 256) %i.es)
  %i.ew = getelementptr inbounds nuw [256 x i8], ptr %i.eu, i64 %i.ev ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ey, i32 0, i32 3, i32 1)
  %i.ez = load <16 x i8>, ptr %i.ew, align 16     ; 2 uses
  %i.fa = icmp eq <16 x i8> %i.ez, %i.er
  %i.fb = bitcast <16 x i1> %i.fa to i16
  %i.fc = and i16 %i.fb, 16383
  %i.fd = zext nneg i16 %i.fc to i32
  %i.fe = icmp ne ptr %i.ew, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ff = extractelement <16 x i8> %i.ez, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.noexc82, %.noexc80
  %.sroa.0279.0 = phi i32 [ %i.fd, %.noexc80 ], [ %i.fi, %.noexc82 ] ; 4 uses
  %.not329 = icmp eq i32 %.sroa.0279.0, 0
  br i1 %.not329, label %bb.x, label %.noexc82

.noexc82:                                         ; preds = %.critedge.i.i
  %i.fg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0279.0, i1 true)
  %i.fh = add nsw i32 %.sroa.0279.0, -1
  %i.fi = and i32 %i.fh, %.sroa.0279.0
  %i.fj = zext nneg i32 %i.fg to i64
  call void @llvm.assume(i1 %i.fe)
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fj ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !7893
  %i.fm = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = icmp eq i64 %.sroa.2.0.copyload.i.i.i, %i.fo
  %i.fq = select i1 %i.fm, i1 %i.fp, i1 false
  br i1 %i.fq, label %.thread309, label %.critedge.i.i, !prof !741, !llvm.loop !14314

bb.x:                                             ; preds = %.critedge.i.i
  %i.fr = icmp eq i8 %i.ff, 0
  br i1 %i.fr, label %.thread300, label %.noexc83, !prof !741

.noexc83:                                         ; preds = %bb.x
  %i.fs = add i64 %.023.i.i332, -1                ; 2 uses
  %i.ft = add i64 %i.eo, %.0.i.i333
  %.not.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i, label %.thread300, label %.noexc80, !llvm.loop !14315

.thread309:                                       ; preds = %.noexc, %.noexc82
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions26MapAppendPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE4callERNS3_9MapWriterIS5_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES5_SB_EERKNS3_9ArrayViewILb1ES5_EERKNSI_ILb1ESB_EEE18veloxCheckFailArgs_1, ptr noundef nonnull @.str.268) #42
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread309
  unreachable

bb.z:                                             ; preds = %.thread309
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.thread300:                                       ; preds = %bb.x, %.noexc83, %.noexc, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !21583
  %i.fv = xor i64 %.sroa.2.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i
  %i.fw = mul i64 %i.fv, -7070675565921424023     ; 2 uses
  %i.fx = lshr i64 %i.fw, 47
  %i.fy = xor i64 %.sroa.0.0.copyload.i.i.i, %i.fx
  %i.fz = xor i64 %i.fy, %i.fw
  %i.ga = mul i64 %i.fz, -7070675565921424023     ; 2 uses
  %i.gb = lshr i64 %i.ga, 47
  %i.gc = xor i64 %i.gb, %i.ga
  %i.gd = mul i64 %i.gc, -7070675565921424023     ; 2 uses
  %i.ge = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gd) ; 2 uses
  %i.gf = lshr i64 %i.ge, 24
  %i.gg = or i64 %i.gf, 128
  %i.gh = add i64 %i.ge, %i.gd
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.4284") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 %i.gh, i64 %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %.thread300
  %i.gi = load i8, ptr %i.bq, align 8, !tbaa !526, !range !551, !noalias !21586, !noundef !552
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !21583
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.af, label %bb.ab, !prof !741

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions26MapAppendPrimitiveFunctionINS0_4exec10VectorExecENS0_9TimestampEE4callERNS3_9MapWriterIS5_NS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEERKNS3_7MapViewILb1ES5_SB_EERKNS3_9ArrayViewILb1ES5_EERKNSI_ILb1ESB_EEE18veloxCheckFailArgs_2, ptr noundef nonnull @.str.270) #42
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %.thread300
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %.pre363 = load i32, ptr %i.bk, align 8, !tbaa !10991, !noalias !21577
  %.pre364 = load i32, ptr %i.a, align 4, !tbaa !10979, !noalias !21577
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.z
  %.pn65 = phi { ptr, i32 } [ %i.fu, %bb.z ], [ %i.gl, %bb.ae ], [ %i.gk, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.co

bb.ah:                                            ; preds = %bb.s, %bb.af
  %i.gm = phi i32 [ %i.bs, %bb.s ], [ %.pre364, %bb.af ] ; 3 uses
  %i.gn = phi i32 [ %i.bt, %bb.s ], [ %.pre363, %bb.af ] ; 2 uses
  %indvars.iv.next350 = add nsw i64 %indvars.iv349, 1 ; 2 uses
  %i.go = add nsw i32 %i.gm, %i.gn
  %i.gp = trunc nsw i64 %indvars.iv.next350 to i32
  %i.gq = icmp eq i32 %i.go, %i.gp
  br i1 %i.gq, label %._crit_edge337, label %bb.m, !llvm.loop !21589

._crit_edge337:                                   ; preds = %bb.ah, %._crit_edge
  %i.gr = phi i32 [ 0, %._crit_edge ], [ %i.gm, %bb.ah ]
  %i.gs = load i32, ptr %i.m, align 8, !tbaa !10953, !noalias !21590 ; 2 uses
  %i.gt = load i32, ptr %i.o, align 4, !tbaa !10954, !noalias !21590 ; 2 uses
  %i.gu = load ptr, ptr %2, align 8, !tbaa !10950, !noalias !21590
  %i.gv = load ptr, ptr %i.r, align 8, !tbaa !10952, !noalias !21590 ; 3 uses
  %i.gw = add nsw i32 %i.gt, %i.gs
  %i.gx = icmp eq i32 %i.gt, 0
  br i1 %i.gx, label %._crit_edge341, label %.lr.ph340

.lr.ph340:                                        ; preds = %._crit_edge337
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, <2 x i64> <i64 8, i64 56>
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.hh = sext i32 %i.gs to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph340, %bb.bc
  %indvars.iv352 = phi i64 [ %i.hh, %.lr.ph340 ], [ %indvars.iv.next353, %bb.bc ] ; 6 uses
  %i.hi = load ptr, ptr %i.gu, align 8, !tbaa !10992, !noalias !21593, !nonnull !552, !align !674 ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !2367, !noalias !21593
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 58
  %i.hm = load i8, ptr %i.hl, align 2, !tbaa !2366, !range !551, !noalias !21593, !noundef !552
  %i.hn = trunc nuw i8 %i.hm to i1
  %i.ho = trunc nsw i64 %indvars.iv352 to i32     ; 2 uses
  br i1 %i.hn, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 59
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !2372, !range !551, !noalias !21593, !noundef !552
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !2373, !noalias !21593
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !2377, !noalias !21593
  %i.hw = shl nsw i64 %indvars.iv352, 2
  %i.hx = getelementptr inbounds i8, ptr %i.hv, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !3, !noalias !21593
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai
  %.0.i.i.i.i.i.i.i108 = phi i32 [ %i.hy, %bb.al ], [ %i.ht, %bb.ak ], [ %i.ho, %bb.ai ]
  %i.hz = sext i32 %.0.i.i.i.i.i.i.i108 to i64
  %i.ia = getelementptr inbounds [16 x i8], ptr %i.hk, i64 %i.hz ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i109 = load i64, ptr %i.ia, align 8, !tbaa !612, !noalias !21593 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i110 = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i111 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i110, align 8, !tbaa !612, !noalias !21593 ; 2 uses
  %i.ib = load ptr, ptr %i.gv, align 8, !tbaa !8394, !nonnull !552, !align !674 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !2365 ; 4 uses
  %.not.i.i.i113 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i113, label %.thread323, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 58
  %i.if = load i8, ptr %i.ie, align 2, !tbaa !2366, !range !551, !noundef !552
  %i.ig = trunc nuw i8 %i.if to i1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 57
  %i.ii = load i8, ptr %i.ih, align 1, !range !551
  %i.ij = trunc nuw i8 %i.ii to i1
  %or.cond.i.i.i114 = select i1 %i.ig, i1 true, i1 %i.ij
  br i1 %or.cond.i.i.i114, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ik = lshr i64 %indvars.iv352, 6
  %i.il = and i64 %i.ik, 67108863
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.il
  %i.in = load i64, ptr %i.im, align 8, !tbaa !612
  %i.io = and i64 %indvars.iv352, 63
  %i.ip = shl nuw i64 1, %i.io
  %i.iq = and i64 %i.in, %i.ip
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ib, i64 59
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !2372, !range !551, !noundef !552
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.iu = load i64, ptr %i.id, align 8, !tbaa !612
  %i.iv = and i64 %i.iu, 1
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !2377
  %i.iy = shl nsw i64 %indvars.iv352, 2
  %i.iz = getelementptr inbounds i8, ptr %i.ix, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !3
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = lshr i64 %i.jb, 6
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !612
  %i.jf = and i64 %i.jb, 63
  %i.jg = shl nuw i64 1, %i.jf
  %i.jh = and i64 %i.jg, %i.je
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %.0.i.i.i116.in = phi i64 [ %i.iq, %bb.ao ], [ %i.iv, %bb.aq ], [ %i.jh, %bb.ar ]
  %.0.i.i.i116.not = icmp eq i64 %.0.i.i.i116.in, 0
  br i1 %.0.i.i.i116.not, label %bb.at, label %.thread323

bb.at:                                            ; preds = %bb.as
  %i.ji = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.au unwind label %bb.av     ; 2 uses

bb.au:                                            ; preds = %bb.at
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i109, ptr %i.ji, align 8, !tbaa !612
  %.sroa.6205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i111, ptr %.sroa.6205.0..sroa_idx, align 8, !tbaa !612
  br label %bb.bc

bb.av:                                            ; preds = %bb.at
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.thread323:                                       ; preds = %bb.am, %bb.as
  %i.jk = load i32, ptr %i.gy, align 8, !tbaa !10889, !noalias !21598 ; 2 uses
  %i.jl = add nsw i32 %i.jk, 1                    ; 2 uses
  %i.jm = load i8, ptr %i.gz, align 1, !tbaa !10902, !range !551, !noalias !21598, !noundef !552
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.aw, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.aw:                                            ; preds = %.thread323
  %i.jo = load ptr, ptr %i.ha, align 8, !tbaa !10903, !noalias !21598 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !541, !noalias !21598
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !21598
  invoke void %i.jr(ptr noundef nonnull align 8 dereferenceable(96) %i.jo, i1 noundef zeroext true)
end_hunk_3
