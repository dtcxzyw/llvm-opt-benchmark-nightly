Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOverload?download=true
inline.NumInlined: 15476
inline.NumDeleted: 6061
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZL20IsStandardConversionRN5clang4SemaEPNS_4ExprENS_8QualTypeEbRNS_26StandardConversionSequenceEbb:bb.a
  %i.nb = tail call noundef zeroext i1 @_ZNK5clang4Type16isArithmeticTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ml) #28
  br i1 %i.nb, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.bn, %bb.br
  %i.nc = load ptr, ptr %i.iq, align 16, !tbaa !74
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %.sroa.0.0.copyload.i.i.i.i407 = load i64, ptr %i.nd, align 8, !tbaa !75
  %i.ne = and i64 %.sroa.0.0.copyload.i.i.i.i407, -16
  %i.nf = inttoptr i64 %i.ne to ptr
  %i.ng = load ptr, ptr %i.nf, align 16, !tbaa !74
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load i8, ptr %i.nh, align 16
  %i.nj = icmp eq i8 %i.ni, 14
  br i1 %i.nj, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.nk = load ptr, ptr %i.ij, align 16, !tbaa !74
  %i.nl = tail call noundef zeroext i1 @_ZNK5clang4Type16isArithmeticTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.nk) #28
  br i1 %i.nl, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %i.nm = load i64, ptr %4, align 8
  %i.nn = and i64 %i.nm, -65281
  %i.no = or disjoint i64 %i.nn, 5632
  store i64 %i.no, ptr %4, align 8
  %i.np = load ptr, ptr %i.iq, align 16, !tbaa !74 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %.sroa.0.0.copyload.i.i410 = load i64, ptr %i.nq, align 8, !tbaa !75
  %i.nr = and i64 %.sroa.0.0.copyload.i.i410, 15
  %.not.i411 = icmp eq i64 %i.nr, 0
  br i1 %.not.i411, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit415, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ns = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %2) #28
  %i.nt = extractvalue { ptr, i64 } %i.ns, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit415

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit415: ; preds = %bb.bu, %bb.bv
  %.sroa.03.0.in.in.i412 = phi ptr [ %i.nt, %bb.bv ], [ %i.np, %bb.bu ]
  %.sroa.03.0.in.i413 = ptrtoint ptr %.sroa.03.0.in.in.i412 to i64
  %.sroa.03.0.i414 = and i64 %.sroa.03.0.in.i413, -8
  store i64 %.sroa.03.0.i414, ptr %8, align 8, !tbaa !75
  br label %bb.dt

bb.bw:                                            ; preds = %bb.bt, %bb.bs
  %i.nu = tail call fastcc noundef zeroext i1 @_ZL25IsFloatingPointConversionRN5clang4SemaENS_8QualTypeES2_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.041.0.copyload, i64 %2)
  br i1 %i.nu, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.nv = load i64, ptr %4, align 8
  %i.nw = and i64 %i.nv, -65281
  %i.nx = or disjoint i64 %i.nw, 2560
  store i64 %i.nx, ptr %4, align 8
  %i.ny = load ptr, ptr %i.iq, align 16, !tbaa !74 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %.sroa.0.0.copyload.i.i417 = load i64, ptr %i.nz, align 8, !tbaa !75
  %i.oa = and i64 %.sroa.0.0.copyload.i.i417, 15
  %.not.i418 = icmp eq i64 %i.oa, 0
  br i1 %.not.i418, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit422, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ob = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %2) #28
  %i.oc = extractvalue { ptr, i64 } %i.ob, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit422

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit422: ; preds = %bb.bx, %bb.by
  %.sroa.03.0.in.in.i419 = phi ptr [ %i.oc, %bb.by ], [ %i.ny, %bb.bx ]
  %.sroa.03.0.in.i420 = ptrtoint ptr %.sroa.03.0.in.in.i419 to i64
  %.sroa.03.0.i421 = and i64 %.sroa.03.0.in.i420, -8
  store i64 %.sroa.03.0.i421, ptr %8, align 8, !tbaa !75
  br label %bb.dt

bb.bz:                                            ; preds = %bb.bw
  %i.od = load ptr, ptr %i.ij, align 16, !tbaa !74
  %i.oe = tail call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.od) #28
  br i1 %i.oe, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.of = load ptr, ptr %i.iq, align 16, !tbaa !74
  %i.og = load ptr, ptr %i.aj, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.oh = tail call noundef zeroext i1 @_ZNK5clang4Type14isIntegralTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %i.of, ptr noundef nonnull align 8 dereferenceable(23904) %i.og) #28
  br i1 %i.oh, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.oi = load ptr, ptr %i.ij, align 16, !tbaa !74
  %i.oj = tail call noundef zeroext i1 @_ZNK5clang4Type35isIntegralOrUnscopedEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.oi) #28
  br i1 %i.oj, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.ok = load ptr, ptr %i.iq, align 16, !tbaa !74
  %i.ol = tail call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ok) #28
  br i1 %i.ol, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %i.om = load i64, ptr %4, align 8
  %i.on = and i64 %i.om, -65281
  %i.oo = or disjoint i64 %i.on, 3072
  store i64 %i.oo, ptr %4, align 8
  %i.op = load ptr, ptr %i.iq, align 16, !tbaa !74 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.sroa.0.0.copyload.i.i428 = load i64, ptr %i.oq, align 8, !tbaa !75
  %i.or = and i64 %.sroa.0.0.copyload.i.i428, 15
  %.not.i429 = icmp eq i64 %i.or, 0
  br i1 %.not.i429, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit433, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.os = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %2) #28
  %i.ot = extractvalue { ptr, i64 } %i.os, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit433

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit433: ; preds = %bb.cd, %bb.ce
  %.sroa.03.0.in.in.i430 = phi ptr [ %i.ot, %bb.ce ], [ %i.op, %bb.cd ]
  %.sroa.03.0.in.i431 = ptrtoint ptr %.sroa.03.0.in.in.i430 to i64
  %.sroa.03.0.i432 = and i64 %.sroa.03.0.in.i431, -8
  store i64 %.sroa.03.0.i432, ptr %8, align 8, !tbaa !75
  br label %bb.dt

bb.cf:                                            ; preds = %bb.cc, %bb.cb
  %i.ou = call noundef zeroext i1 @_ZN5clang4Sema24IsBlockPointerConversionENS_8QualTypeES1_RS1_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.041.0.copyload, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br i1 %i.ou, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ov = load i64, ptr %4, align 8
  %i.ow = and i64 %i.ov, -65281
  %i.ox = or disjoint i64 %i.ow, 5888
  store i64 %i.ox, ptr %4, align 8
  br label %bb.dt

bb.ch:                                            ; preds = %bb.cf
  br i1 %6, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !1368
  %.sroa.039.0.copyload = load i64, ptr %8, align 8, !tbaa !75
  %i.pa = call noundef zeroext i1 @_ZN5clang8SemaObjC25isObjCWritebackConversionENS_8QualTypeES1_RS1_(ptr noundef nonnull align 8 dereferenceable(328) %i.oz, i64 %.sroa.039.0.copyload, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  br i1 %i.pa, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.pb = load i64, ptr %4, align 8
  %i.pc = and i64 %i.pb, -65281
  %i.pd = or disjoint i64 %i.pc, 6400
  store i64 %i.pd, ptr %4, align 8
  br label %bb.dt

bb.ck:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.037.0.copyload = load i64, ptr %8, align 8, !tbaa !75
  %i.pe = call noundef zeroext i1 @_ZN5clang4Sema19IsPointerConversionEPNS_4ExprENS_8QualTypeES3_bRS3_Rb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i64 %.sroa.037.0.copyload, i64 %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.pe, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.pf = load i64, ptr %4, align 8
  %i.pg = load i8, ptr %i.a, align 1, !tbaa !1250, !range !86, !noundef !87
  %i.ph = zext nneg i8 %i.pg to i64
  %i.pi = shl nuw nsw i64 %i.ph, 34
  %i.pj = and i64 %i.pf, -17179934465
  %i.pk = or disjoint i64 %i.pj, %i.pi
  %i.pl = or disjoint i64 %i.pk, 3328
  store i64 %i.pl, ptr %4, align 8
  %.0.copyload.i.i.i.i.i434 = load i64, ptr %8, align 8 ; 2 uses
  %i.pm = and i64 %.0.copyload.i.i.i.i.i434, -16
  %i.pn = inttoptr i64 %i.pm to ptr
  %i.po = load ptr, ptr %i.pn, align 16, !tbaa !74 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %.sroa.0.0.copyload.i.i435 = load i64, ptr %i.pp, align 8, !tbaa !75
  %i.pq = and i64 %.sroa.0.0.copyload.i.i435, 15
  %.not.i436 = icmp eq i64 %i.pq, 0
  br i1 %.not.i436, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit440, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pr = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.0.copyload.i.i.i.i.i434) #28
  %i.ps = extractvalue { ptr, i64 } %i.pr, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit440

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit440: ; preds = %bb.cl, %bb.cm
  %.sroa.03.0.in.in.i437 = phi ptr [ %i.ps, %bb.cm ], [ %i.po, %bb.cl ]
  %.sroa.03.0.in.i438 = ptrtoint ptr %.sroa.03.0.in.in.i437 to i64
  %.sroa.03.0.i439 = and i64 %.sroa.03.0.in.i438, -8
  store i64 %.sroa.03.0.i439, ptr %8, align 8, !tbaa !75
  br label %bb.dt

bb.cn:                                            ; preds = %bb.ck
  %.sroa.034.0.copyload = load i64, ptr %8, align 8, !tbaa !75
  %i.pt = call noundef zeroext i1 @_ZN5clang4Sema25IsMemberPointerConversionEPNS_4ExprENS_8QualTypeES3_bRS3_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i64 %.sroa.034.0.copyload, i64 %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br i1 %i.pt, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.pu = load i64, ptr %4, align 8
  %i.pv = and i64 %i.pu, -65281
  %i.pw = or disjoint i64 %i.pv, 3584
  store i64 %i.pw, ptr %4, align 8
  br label %bb.dt

bb.cp:                                            ; preds = %bb.cn
  %.sroa.032.0.copyload = load i64, ptr %8, align 8, !tbaa !75
  %i.px = call fastcc noundef zeroext i1 @_ZL18IsVectorConversionRN5clang4SemaENS_8QualTypeES2_RNS_22ImplicitConversionKindES4_PNS_4ExprEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.032.0.copyload, i64 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull %1, i1 noundef zeroext %3, i1 noundef zeroext %5)
  br i1 %i.px, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.py = load i32, ptr %i.b, align 4, !tbaa !1809
  %i.pz = shl i32 %i.py, 8
  %i.qa = and i32 %i.pz, 65280
  %i.qb = load i32, ptr %i.c, align 4, !tbaa !1809
  %i.qc = shl i32 %i.qb, 16
  %13 = or disjoint i32 %i.qa, %i.qc
  %14 = lshr exact i32 %13, 8
  %15 = trunc i32 %14 to i16
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i16 %15, ptr %16, align 1
  %i.qd = load ptr, ptr %i.iq, align 16, !tbaa !74 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %.sroa.0.0.copyload.i.i442 = load i64, ptr %i.qe, align 8, !tbaa !75
  %i.qf = and i64 %.sroa.0.0.copyload.i.i442, 15
  %.not.i443 = icmp eq i64 %i.qf, 0
  br i1 %.not.i443, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit447, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qg = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %2) #28
  %i.qh = extractvalue { ptr, i64 } %i.qg, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit447

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit447: ; preds = %bb.cq, %bb.cr
  %.sroa.03.0.in.in.i444 = phi ptr [ %i.qh, %bb.cr ], [ %i.qd, %bb.cq ]
  %.sroa.03.0.in.i445 = ptrtoint ptr %.sroa.03.0.in.in.i444 to i64
  %.sroa.03.0.i446 = and i64 %.sroa.03.0.in.i445, -8
  store i64 %.sroa.03.0.i446, ptr %8, align 8, !tbaa !75
  br label %bb.dt

bb.cs:                                            ; preds = %bb.cp
  %.sroa.029.0.copyload = load i64, ptr %8, align 8, !tbaa !75
  %i.qi = call fastcc noundef zeroext i1 @_ZL18IsMatrixConversionRN5clang4SemaENS_8QualTypeES2_RNS_22ImplicitConversionKindES4_PNS_4ExprEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.029.0.copyload, i64 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull %1)
  br i1 %i.qi, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.qj = load i32, ptr %i.b, align 4, !tbaa !1809
  %i.qk = shl i32 %i.qj, 8
  %i.ql = and i32 %i.qk, 65280
  %i.qm = load i32, ptr %i.c, align 4, !tbaa !1809
  %i.qn = shl i32 %i.qm, 16
  %17 = or disjoint i32 %i.ql, %i.qn
  %18 = lshr exact i32 %17, 8
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i16 %19, ptr %20, align 1
  %i.qo = load ptr, ptr %i.iq, align 16, !tbaa !74 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %.sroa.0.0.copyload.i.i449 = load i64, ptr %i.qp, align 8, !tbaa !75
  %i.qq = and i64 %.sroa.0.0.copyload.i.i449, 15
  %.not.i450 = icmp eq i64 %i.qq, 0
  br i1 %.not.i450, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit454, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qr = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %2) #28
  %i.qs = extractvalue { ptr, i64 } %i.qr, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit454

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit454: ; preds = %bb.ct, %bb.cu
  %.sroa.03.0.in.in.i451 = phi ptr [ %i.qs, %bb.cu ], [ %i.qo, %bb.ct ]
  %.sroa.03.0.in.i452 = ptrtoint ptr %.sroa.03.0.in.in.i451 to i64
  %.sroa.03.0.i453 = and i64 %.sroa.03.0.in.i452, -8
  store i64 %.sroa.03.0.i453, ptr %8, align 8, !tbaa !75
  br label %bb.dt

bb.cv:                                            ; preds = %bb.cs
  %i.qt = load ptr, ptr %i.l, align 8, !tbaa !1252, !nonnull !87, !align !500
  %i.qu = load i64, ptr %i.qt, align 8
  %i.qv = and i64 %i.qu, 4096
  %.not274 = icmp eq i64 %i.qv, 0
  br i1 %.not274, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.qw = load ptr, ptr %i.aj, align 8, !tbaa !1228, !nonnull !87, !align !500
  %.sroa.025.0.copyload = load i64, ptr %8, align 8, !tbaa !75
  %i.qx = call noundef zeroext i1 @_ZN5clang10ASTContext18typesAreCompatibleENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %i.qw, i64 %2, i64 %.sroa.025.0.copyload, i1 noundef zeroext false) #28
  br i1 %i.qx, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.qy = load i64, ptr %4, align 8
  %i.qz = and i64 %i.qy, -65281
  %i.ra = or disjoint i64 %i.qz, 4096
  store i64 %i.ra, ptr %4, align 8
  %i.rb = load ptr, ptr %i.iq, align 16, !tbaa !74 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %.sroa.0.0.copyload.i.i456 = load i64, ptr %i.rc, align 8, !tbaa !75
  %i.rd = and i64 %.sroa.0.0.copyload.i.i456, 15
  %.not.i457 = icmp eq i64 %i.rd, 0
  br i1 %.not.i457, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit461, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.re = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %2) #28
  %i.rf = extractvalue { ptr, i64 } %i.re, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit461

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit461: ; preds = %bb.cx, %bb.cy
  %.sroa.03.0.in.in.i458 = phi ptr [ %i.rf, %bb.cy ], [ %i.rb, %bb.cx ]
  %.sroa.03.0.in.i459 = ptrtoint ptr %.sroa.03.0.in.in.i458 to i64
  %.sroa.03.0.i460 = and i64 %.sroa.03.0.in.i459, -8
  store i64 %.sroa.03.0.i460, ptr %8, align 8, !tbaa !75
  br label %bb.dt

bb.cz:                                            ; preds = %bb.cw, %bb.cv
  %i.rg = call fastcc noundef zeroext i1 @_ZL36IsTransparentUnionStandardConversionRN5clang4SemaEPNS_4ExprERNS_8QualTypeEbRNS_26StandardConversionSequenceEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i1 noundef zeroext %5)
  br i1 %i.rg, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.rh = load i64, ptr %4, align 8
  %i.ri = and i64 %i.rh, -65281
  %i.rj = or disjoint i64 %i.ri, 6144
  store i64 %i.rj, ptr %4, align 8
  %i.rk = load i64, ptr %7, align 8, !tbaa !75    ; 2 uses
  store i64 %i.rk, ptr %8, align 8, !tbaa !75
  br label %bb.dt

bb.db:                                            ; preds = %bb.cz
  %.sroa.023.0.copyload = load i64, ptr %7, align 8, !tbaa !75 ; 12 uses
  %i.rl = call fastcc noundef zeroext i1 @_ZL19tryAtomicConversionRN5clang4SemaEPNS_4ExprENS_8QualTypeEbRNS_26StandardConversionSequenceEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i64 %.sroa.023.0.copyload, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i1 noundef zeroext %5)
  br i1 %i.rl, label %bb.ef, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rm = call fastcc noundef zeroext i1 @_ZL33tryOverflowBehaviorTypeConversionRN5clang4SemaEPNS_4ExprENS_8QualTypeEbRNS_26StandardConversionSequenceEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i64 %.sroa.023.0.copyload, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i1 noundef zeroext %5)
  br i1 %i.rm, label %bb.ef, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rn = and i64 %.sroa.023.0.copyload, -16
  %i.ro = inttoptr i64 %i.rn to ptr               ; 5 uses
  %i.rp = load ptr, ptr %i.ro, align 16, !tbaa !74
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.rq, align 8, !tbaa !75
  %i.rr = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.rs = inttoptr i64 %i.rr to ptr
  %i.rt = load ptr, ptr %i.rs, align 16, !tbaa !74 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 16 ; 2 uses
  %i.rv = load i8, ptr %i.ru, align 16
  %i.rw = icmp eq i8 %i.rv, 13
  %.not7.i.i = icmp ne ptr %i.rt, null
  %.not.not.not.i.i = and i1 %.not7.i.i, %i.rw
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type8isEventTEv.exit, label %.critedge282.thread

_ZNK5clang4Type8isEventTEv.exit:                  ; preds = %bb.dd
  %i.rx = load i32, ptr %i.ru, align 16
  %i.ry = and i32 %i.rx, 536346624
  %i.rz = icmp eq i32 %i.ry, 267386880
  br i1 %i.rz, label %bb.de, label %.critedge282.thread

bb.de:                                            ; preds = %_ZNK5clang4Type8isEventTEv.exit
  %i.sa = load ptr, ptr %i.aj, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.sb = call noundef zeroext i1 @_ZNK5clang4Expr21isIntegerConstantExprERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.sa) #28
  br i1 %i.sb, label %bb.df, label %.critedge282.thread

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.sc = load ptr, ptr %i.aj, align 8, !tbaa !1228, !nonnull !87, !align !500
  call void @_ZNK5clang4Expr21EvaluateKnownConstIntERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.sc) #28
  %i.sd = call noundef zeroext i1 @_ZNK4llvm6APSInteqEl(ptr noundef nonnull align 8 dereferenceable(13) %10, i64 noundef 0)
  %i.se = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !91
  %i.sg = icmp ugt i32 %i.sf, 64
  br i1 %i.sg, label %bb.dg, label %.critedge282

bb.dg:                                            ; preds = %bb.df
  %i.sh = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %.critedge282, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZdaPv(ptr noundef nonnull %i.sh) #30
  br label %.critedge282

.critedge282:                                     ; preds = %bb.dh, %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %i.sd, label %bb.di, label %.critedge282.thread

bb.di:                                            ; preds = %.critedge282
  %i.sj = load i64, ptr %4, align 8
  %i.sk = and i64 %i.sj, -65281
  %i.sl = or disjoint i64 %i.sk, 6656
  store i64 %i.sl, ptr %4, align 8
  store i64 %.sroa.023.0.copyload, ptr %8, align 8, !tbaa !75
  br label %bb.dt

.critedge282.thread:                              ; preds = %bb.de, %_ZNK5clang4Type8isEventTEv.exit, %bb.dd, %.critedge282
  %i.sm = load ptr, ptr %i.ro, align 16, !tbaa !74
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i465 = load i64, ptr %i.sn, align 8, !tbaa !75
  %i.so = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i465, -16
  %i.sp = inttoptr i64 %i.so to ptr
  %i.sq = load ptr, ptr %i.sp, align 16, !tbaa !74 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16 ; 2 uses
  %i.ss = load i8, ptr %i.sr, align 16
  %i.st = icmp eq i8 %i.ss, 13
  %.not7.i.i466 = icmp ne ptr %i.sq, null
  %.not.not.not.i.i467 = and i1 %.not7.i.i466, %i.st
  br i1 %.not.not.not.i.i467, label %_ZNK5clang4Type8isQueueTEv.exit, label %.critedge284.thread

_ZNK5clang4Type8isQueueTEv.exit:                  ; preds = %.critedge282.thread
  %i.su = load i32, ptr %i.sr, align 16
  %i.sv = and i32 %i.su, 536346624
  %i.sw = icmp eq i32 %i.sv, 268435456
  br i1 %i.sw, label %bb.dj, label %.critedge284.thread

bb.dj:                                            ; preds = %_ZNK5clang4Type8isQueueTEv.exit
  %i.sx = load ptr, ptr %i.aj, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.sy = call noundef zeroext i1 @_ZNK5clang4Expr21isIntegerConstantExprERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.sx) #28
  br i1 %i.sy, label %bb.dk, label %.critedge284.thread

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.sz = load ptr, ptr %i.aj, align 8, !tbaa !1228, !nonnull !87, !align !500
  call void @_ZNK5clang4Expr21EvaluateKnownConstIntERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.sz) #28
  %i.ta = call noundef zeroext i1 @_ZNK4llvm6APSInteqEl(ptr noundef nonnull align 8 dereferenceable(13) %11, i64 noundef 0)
  %i.tb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !91
  %i.td = icmp ugt i32 %i.tc, 64
  br i1 %i.td, label %bb.dl, label %.critedge284

bb.dl:                                            ; preds = %bb.dk
  %i.te = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.tf = icmp eq ptr %i.te, null
  br i1 %i.tf, label %.critedge284, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @_ZdaPv(ptr noundef nonnull %i.te) #30
  br label %.critedge284

.critedge284:                                     ; preds = %bb.dm, %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br i1 %i.ta, label %bb.dn, label %.critedge284.thread

bb.dn:                                            ; preds = %.critedge284
  %i.tg = load i64, ptr %4, align 8
  %i.th = and i64 %i.tg, -65281
  %i.ti = or disjoint i64 %i.th, 6912
  store i64 %i.ti, ptr %4, align 8
  store i64 %.sroa.023.0.copyload, ptr %8, align 8, !tbaa !75
  br label %bb.dt

.critedge284.thread:                              ; preds = %bb.dj, %_ZNK5clang4Type8isQueueTEv.exit, %.critedge282.thread, %.critedge284
  %i.tj = load ptr, ptr %i.ro, align 16, !tbaa !74
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i471 = load i64, ptr %i.tk, align 8, !tbaa !75
  %i.tl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i471, -16
  %i.tm = inttoptr i64 %i.tl to ptr               ; 3 uses
  %i.tn = load ptr, ptr %i.tm, align 16, !tbaa !74 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16 ; 2 uses
end_hunk_0
