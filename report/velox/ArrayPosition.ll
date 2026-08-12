inline.NumInlined: 10110
inline.NumDeleted: 2827
loop-unroll.NumCompletelyUnrolled: 120
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZZN8facebook5velox9functions12_GLOBAL__N_120applyTypedFirstMatchILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_13DecodedVectorERKSB_SE_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSI_:bb.a
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !333
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.f
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !42
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.af, %bb.d ], [ %i.ab, %bb.c ], [ %1, %bb.a ]
  %i.ag = sext i32 %.0.i.i to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8 ; 8 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !31 ; 5 uses
  %i.ai = icmp sgt i32 %i.k, 0
  br i1 %i.ai, label %.lr.ph, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.lr.ph:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3520, !nonnull !76, !align !277 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !339 ; 4 uses
  %.not.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 59 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 4 ; 4 uses
  %i.at = load i8, ptr %i.aq, align 2, !tbaa !340, !range !75, !noundef !76
  %i.au = trunc nuw i8 %i.at to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !489
  %i.aw = sext i32 %i.p to i64
  %wide.trip.count106 = zext nneg i32 %i.k to i64
  %i.ax = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ay = add nsw i64 %i.ax, -4
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %.critedge.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.az = add nsw i64 %indvars.iv103, %i.aw       ; 2 uses
  %i.ba = trunc nsw i64 %i.az to i32
  br i1 %i.au, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.bb = load i8, ptr %i.an, align 1, !tbaa !341, !range !75, !noundef !76
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !333
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !42
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us

bb.g:                                             ; preds = %bb.e
  %i.bg = load i32, ptr %i.ar, align 8, !tbaa !490
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us: ; preds = %bb.g, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i15.us = phi i32 [ %i.bf, %bb.f ], [ %i.bg, %bb.g ], [ %i.ba, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.bh = sext i32 %.0.i.i15.us to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.bh ; 2 uses
  %.sroa.0.0.copyload.i16.us = load i64, ptr %i.bi, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i17.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.2.0.copyload.i18.us = load ptr, ptr %.sroa.2.0..sroa_idx.i17.us, align 8, !tbaa !31 ; 2 uses
  %.not.i.i22.us = icmp eq i64 %.sroa.0.0.copyload.i16.us, %.sroa.0.0.copyload.i
  %i.bj = trunc i64 %.sroa.0.0.copyload.i16.us to i32 ; 2 uses
  br i1 %.not.i.i22.us, label %bb.h, label %.critedge.us

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us
  %i.bk = icmp ult i32 %i.bj, 13
  br i1 %i.bk, label %bb.i, label %.split37.us

.split37.us:                                      ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i18.us, i64 4
  %bcmp.i.i.us = tail call i32 @bcmp(ptr nonnull %i.bl, ptr nonnull %i.as, i64 %i.ay)
  %i.bm = icmp eq i32 %bcmp.i.i.us, 0
  br i1 %i.bm, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us

bb.i:                                             ; preds = %bb.h
  %i.bn = icmp samesign ult i32 %i.bj, 5
  %i.bo = icmp eq ptr %.sroa.2.0.copyload.i18.us, %.sroa.2.0.copyload.i
  %or.cond.us = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond.us, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us

.critedge.us:                                     ; preds = %bb.i, %.split37.us, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3521

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 57
  %i.bq = load i8, ptr %i.bp, align 1, !range !75
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i = select i1 %i.au, i1 true, i1 %i.br
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.bs = sext i32 %i.p to i64
  %wide.trip.count101 = zext nneg i32 %i.k to i64
  %i.bt = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.bu = add nsw i64 %i.bt, -4
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us55
  %indvars.iv98 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next99, %.critedge.us55 ] ; 4 uses
  %i.bv = add nsw i64 %indvars.iv98, %i.bs        ; 4 uses
  %i.bw = lshr i64 %i.bv, 6
  %i.bx = and i64 %i.bw, 67108863
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !139
  %i.ca = and i64 %i.bv, 63
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = and i64 %i.bz, %i.cb
  %.not.i.i.us = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.us, label %.critedge.us55, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45: ; preds = %.split.us
  %i.cd = trunc nsw i64 %i.bv to i32
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !489
  br i1 %i.au, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %i.cf = load i8, ptr %i.an, align 1, !tbaa !341, !range !75, !noundef !76
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = load ptr, ptr %i.ao, align 8, !tbaa !333
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !42
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46

bb.l:                                             ; preds = %bb.j
  %i.ck = load i32, ptr %i.ar, align 8, !tbaa !490
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46: ; preds = %bb.l, %bb.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %.0.i.i15.us47 = phi i32 [ %i.cj, %bb.k ], [ %i.ck, %bb.l ], [ %i.cd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45 ]
  %i.cl = sext i32 %.0.i.i15.us47 to i64
  %i.cm = getelementptr inbounds [16 x i8], ptr %i.ce, i64 %i.cl ; 2 uses
  %.sroa.0.0.copyload.i16.us48 = load i64, ptr %i.cm, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i17.us49 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.2.0.copyload.i18.us50 = load ptr, ptr %.sroa.2.0..sroa_idx.i17.us49, align 8, !tbaa !31 ; 2 uses
  %.not.i.i22.us51 = icmp eq i64 %.sroa.0.0.copyload.i16.us48, %.sroa.0.0.copyload.i
  %i.cn = trunc i64 %.sroa.0.0.copyload.i16.us48 to i32 ; 2 uses
  br i1 %.not.i.i22.us51, label %bb.m, label %.critedge.us55

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46
  %i.co = icmp ult i32 %i.cn, 13
  br i1 %i.co, label %bb.n, label %.split37.us52

.split37.us52:                                    ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i18.us50, i64 4
  %bcmp.i.i.us53 = tail call i32 @bcmp(ptr nonnull %i.cp, ptr nonnull %i.as, i64 %i.bu)
  %i.cq = icmp eq i32 %bcmp.i.i.us53, 0
  br i1 %i.cq, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us55

bb.n:                                             ; preds = %bb.m
  %i.cr = icmp samesign ult i32 %i.cn, 5
  %i.cs = icmp eq ptr %.sroa.2.0.copyload.i18.us50, %.sroa.2.0.copyload.i
  %or.cond.us54 = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.us54, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us55

.critedge.us55:                                   ; preds = %bb.n, %.split37.us52, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46, %.split.us
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %.split.us, !llvm.loop !3521

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ct = load i8, ptr %i.an, align 1, !tbaa !341, !range !75, !noundef !76
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.cv = load i64, ptr %i.am, align 8, !tbaa !139
  %i.cw = and i64 %i.cv, 1
  %.not.i6.i.us = icmp eq i64 %i.cw, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  %i.cx = load ptr, ptr %i.ap, align 8, !tbaa !489
  %wide.trip.count96 = zext nneg i32 %i.k to i64
  %i.cy = load i32, ptr %i.ar, align 8, !tbaa !490
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.cz ; 2 uses
  %.sroa.0.0.copyload.i16.us64 = load i64, ptr %i.da, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i17.us65 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.2.0.copyload.i18.us66 = load ptr, ptr %.sroa.2.0..sroa_idx.i17.us65, align 8, !tbaa !31 ; 2 uses
  %.not.i.i22.us67 = icmp eq i64 %.sroa.0.0.copyload.i16.us64, %.sroa.0.0.copyload.i
  %i.db = trunc i64 %.sroa.0.0.copyload.i16.us64 to i32 ; 2 uses
  %i.dc = icmp ult i32 %i.db, 13
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i18.us66, i64 4
  %i.de = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.df = add nsw i64 %i.de, -4
  %i.dg = icmp samesign ult i32 %i.db, 5
  %i.dh = icmp eq ptr %.sroa.2.0.copyload.i18.us66, %.sroa.2.0.copyload.i
  %or.cond.us70 = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %.not.i.i22.us67, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us62, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us62: ; preds = %.lr.ph.split.split.split.us.split, %.critedge.us71
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %.critedge.us71 ], [ 0, %.lr.ph.split.split.split.us.split ] ; 3 uses
  br i1 %i.dc, label %bb.o, label %.split37.us68

.split37.us68:                                    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us62
  %bcmp.i.i.us69 = tail call i32 @bcmp(ptr nonnull %i.dd, ptr nonnull %i.as, i64 %i.df)
  %i.di = icmp eq i32 %bcmp.i.i.us69, 0
  br i1 %i.di, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us71

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us62
  br i1 %or.cond.us70, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us71

.critedge.us71:                                   ; preds = %bb.o, %.split37.us68
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us62, !llvm.loop !3521

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.dj = load ptr, ptr %i.ao, align 8, !tbaa !333
  %i.dk = sext i32 %i.p to i64
  %wide.trip.count = zext nneg i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dl = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.dm = add nsw i64 %i.dl, -4
  br label %.split33

.split33:                                         ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dn = load i32, ptr %gep, align 4, !tbaa !42  ; 2 uses
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = lshr i64 %i.do, 6
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !139
  %i.ds = and i64 %i.do, 63
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = and i64 %i.dt, %i.dr
  %.not.i7.i = icmp eq i64 %i.du, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21: ; preds = %.split33
  %i.dv = load ptr, ptr %i.ap, align 8, !tbaa !489
  %i.dw = sext i32 %i.dn to i64
  %i.dx = getelementptr inbounds [16 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %.sroa.0.0.copyload.i16 = load i64, ptr %i.dx, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.2.0.copyload.i18 = load ptr, ptr %.sroa.2.0..sroa_idx.i17, align 8, !tbaa !31 ; 2 uses
  %.not.i.i22 = icmp eq i64 %.sroa.0.0.copyload.i16, %.sroa.0.0.copyload.i
  %i.dy = trunc i64 %.sroa.0.0.copyload.i16 to i32 ; 2 uses
  br i1 %.not.i.i22, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21
  %i.dz = icmp ult i32 %i.dy, 13
  br i1 %i.dz, label %bb.q, label %.split37

bb.q:                                             ; preds = %bb.p
  %i.ea = icmp samesign ult i32 %i.dy, 5
  %i.eb = icmp eq ptr %.sroa.2.0.copyload.i18, %.sroa.2.0.copyload.i
  %or.cond = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge

.split37:                                         ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i18, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ec, ptr nonnull %i.as, i64 %i.dm)
  %i.ed = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ed, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread: ; preds = %.split37, %bb.q, %.split37.us68, %bb.o, %bb.n, %.split37.us52, %.split37.us, %bb.i
  %.us-phi.in = phi i64 [ %indvars.iv93, %.split37.us68 ], [ %indvars.iv103, %.split37.us ], [ %indvars.iv98, %bb.n ], [ %indvars.iv103, %bb.i ], [ %indvars.iv98, %.split37.us52 ], [ %indvars.iv93, %bb.o ], [ %indvars.iv, %bb.q ], [ %indvars.iv, %.split37 ] ; 2 uses
  %.us-phi = trunc i64 %.us-phi.in to i32         ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !3522, !nonnull !76, !align !277 ; 5 uses
  %i.eg = add nuw i64 %.us-phi.in, 1
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 144 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !343 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.r, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.r:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread
  %i.el = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ef) ; 0 uses
  %.pre.i = load ptr, ptr %i.ei, align 8, !tbaa !343
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.r, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread
  %i.em = phi ptr [ %i.ej, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread ], [ %.pre.i, %bb.r ]
  %i.en = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.f
  store i64 %i.eh, ptr %i.en, align 8, !tbaa !139
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !364
  %.not.i24 = icmp eq ptr %i.ep, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.s

bb.s:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !226
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ef, i32 noundef %i.er, i1 noundef zeroext true)
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !364 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 44
  %i.eu = load i8, ptr %i.et, align 4, !tbaa !365
  %i.ev = and i8 %i.eu, 2
  %.not.i3.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.t, !prof !71

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !370
  %i.ey = lshr i32 %1, 3
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ez ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !31
  %i.fc = trunc i32 %1 to i8
  %i.fd = and i8 %i.fc, 7
  %i.fe = shl nuw i8 1, %i.fd
  %i.ff = or i8 %i.fb, %i.fe
  store i8 %i.ff, ptr %i.fa, align 1, !tbaa !31
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21, %.split33, %.split37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %.split33, !llvm.loop !3521

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.041 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ 0, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit ]
  %i.fg = icmp eq i32 %.041, %i.k
  br i1 %i.fg, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit30

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread: ; preds = %.critedge, %.critedge.us71, %.critedge.us55, %.critedge.us, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !3522, !nonnull !76, !align !277 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 144 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !343 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.u, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i25

bb.u:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread
  %i.fm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fi) ; 0 uses
  %.pre.i29 = load ptr, ptr %i.fj, align 8, !tbaa !343
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i25

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i25: ; preds = %bb.u, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread
  %i.fn = phi ptr [ %i.fk, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread ], [ %.pre.i29, %bb.u ]
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.f
  store i64 0, ptr %i.fo, align 8, !tbaa !139
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !364
  %.not.i26 = icmp eq ptr %i.fq, null
  br i1 %.not.i26, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit30, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i25
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !226
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.fi, i32 noundef %i.fs, i1 noundef zeroext true)
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !364 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 44
  %i.fv = load i8, ptr %i.fu, align 4, !tbaa !365
  %i.fw = and i8 %i.fv, 2
  %.not.i3.i27 = icmp eq i8 %i.fw, 0
  br i1 %.not.i3.i27, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i28, label %bb.w, !prof !71

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i28: ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !370
  %i.fz = lshr i32 %1, 3
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ga ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !31
  %i.gd = trunc i32 %1 to i8
  %i.ge = and i8 %i.gd, 7
  %i.gf = shl nuw i8 1, %i.ge
  %i.gg = or i8 %i.gc, %i.gf
  store i8 %i.gg, ptr %i.gb, align 1, !tbaa !31
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit30

_ZN8facebook5velox10FlatVectorIlE3setEil.exit30:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i28, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i25, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_120applyTypedFirstMatchILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_13DecodedVectorERKSB_SE_RNS0_10FlatVectorIlEEENKUlT_E_clIiEEDaSI_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3523, !nonnull !76, !align !277
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !331
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3525, !nonnull !76, !align !277
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !331
  %i.f = sext i32 %1 to i64                       ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42   ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3526, !nonnull !76, !align !277
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !331
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3527, !nonnull !76, !align !277
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2814
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3528, !nonnull !76, !align !277 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !139  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = sext i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %i.k to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.t, i64 %i.y
  %i.z = and i64 %i.w, 4294967295
  %i.aa = add nsw i64 %i.z, -4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread19
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread19 ] ; 4 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.ab = load i64, ptr %gep, align 8             ; 2 uses
  %.not.i.i = icmp eq i64 %i.ab, %i.w
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread19

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i32 %i.ac, 13
  br i1 %i.ad, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp samesign ult i32 %i.ac, 5
  br i1 %i.ae, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit

.split:                                           ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.aj, i64 %i.aa)
  %i.ak = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ak, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread19

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !139
  %i.an = load i64, ptr %i.x, align 8, !tbaa !139
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread19

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread: ; preds = %bb.d, %.split, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !3529, !nonnull !76, !align !277 ; 5 uses
  %i.as = add nuw i64 %indvars.iv, 1
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 144 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !343 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.e, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.e:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread
  %i.ax = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ar) ; 0 uses
  %.pre.i = load ptr, ptr %i.au, align 8, !tbaa !343
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.e, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread
  %i.ay = phi ptr [ %i.av, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread ], [ %.pre.i, %bb.e ]
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.f
  store i64 %i.at, ptr %i.az, align 8, !tbaa !139
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !364
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !226
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ar, i32 noundef %i.bd, i1 noundef zeroext true)
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !364 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !365
  %i.bh = and i8 %i.bg, 2
  %.not.i3.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.g, !prof !71

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !370
  %i.bk = lshr i32 %1, 3
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !31
  %i.bo = trunc i32 %1 to i8
  %i.bp = and i8 %i.bo, 7
  %i.bq = shl nuw i8 1, %i.bp
  %i.br = or i8 %i.bn, %i.bq
  store i8 %i.br, ptr %i.bm, align 1, !tbaa !31
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread19: ; preds = %bb.b, %.split, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %bb.b, !llvm.loop !3530

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %bb.a, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.022 = phi i32 [ %i.ap, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %i.ap, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ 0, %bb.a ]
  %i.bs = icmp eq i32 %.022, %i.k
  br i1 %i.bs, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit17

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread19, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !3529, !nonnull !76, !align !277 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 144 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !343 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.h, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i12

bb.h:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread
  %i.by = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.bu) ; 0 uses
  %.pre.i16 = load ptr, ptr %i.bv, align 8, !tbaa !343
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i12
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox9functions12_GLOBAL__N_120applyTypedFirstMatchILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_13DecodedVectorERKSB_SE_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSI_:bb.a
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !333
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.f
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !42
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.af, %bb.d ], [ %i.ab, %bb.c ], [ %1, %bb.a ]
  %i.ag = sext i32 %.0.i.i to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8 ; 8 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !31 ; 5 uses
  %i.ai = icmp sgt i32 %i.k, 0
  br i1 %i.ai, label %.lr.ph, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.lr.ph:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3536, !nonnull !76, !align !277 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !339 ; 4 uses
  %.not.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 59 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 4 ; 4 uses
  %i.at = load i8, ptr %i.aq, align 2, !tbaa !340, !range !75, !noundef !76
  %i.au = trunc nuw i8 %i.at to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !489
  %i.aw = sext i32 %i.p to i64
  %wide.trip.count106 = zext nneg i32 %i.k to i64
  %i.ax = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ay = add nsw i64 %i.ax, -4
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %.critedge.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.az = add nsw i64 %indvars.iv103, %i.aw       ; 2 uses
  %i.ba = trunc nsw i64 %i.az to i32
  br i1 %i.au, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.bb = load i8, ptr %i.an, align 1, !tbaa !341, !range !75, !noundef !76
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !333
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !42
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us

bb.g:                                             ; preds = %bb.e
  %i.bg = load i32, ptr %i.ar, align 8, !tbaa !490
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us: ; preds = %bb.g, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i15.us = phi i32 [ %i.bf, %bb.f ], [ %i.bg, %bb.g ], [ %i.ba, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.bh = sext i32 %.0.i.i15.us to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.bh ; 2 uses
  %.sroa.0.0.copyload.i16.us = load i64, ptr %i.bi, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i17.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.2.0.copyload.i18.us = load ptr, ptr %.sroa.2.0..sroa_idx.i17.us, align 8, !tbaa !31 ; 2 uses
  %.not.i.i22.us = icmp eq i64 %.sroa.0.0.copyload.i16.us, %.sroa.0.0.copyload.i
  %i.bj = trunc i64 %.sroa.0.0.copyload.i16.us to i32 ; 2 uses
  br i1 %.not.i.i22.us, label %bb.h, label %.critedge.us

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us
  %i.bk = icmp ult i32 %i.bj, 13
  br i1 %i.bk, label %bb.i, label %.split37.us

.split37.us:                                      ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i18.us, i64 4
  %bcmp.i.i.us = tail call i32 @bcmp(ptr nonnull %i.bl, ptr nonnull %i.as, i64 %i.ay)
  %i.bm = icmp eq i32 %bcmp.i.i.us, 0
  br i1 %i.bm, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us

bb.i:                                             ; preds = %bb.h
  %i.bn = icmp samesign ult i32 %i.bj, 5
  %i.bo = icmp eq ptr %.sroa.2.0.copyload.i18.us, %.sroa.2.0.copyload.i
  %or.cond.us = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond.us, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us

.critedge.us:                                     ; preds = %bb.i, %.split37.us, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3537

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 57
  %i.bq = load i8, ptr %i.bp, align 1, !range !75
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i = select i1 %i.au, i1 true, i1 %i.br
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.bs = sext i32 %i.p to i64
  %wide.trip.count101 = zext nneg i32 %i.k to i64
  %i.bt = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.bu = add nsw i64 %i.bt, -4
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us55
  %indvars.iv98 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next99, %.critedge.us55 ] ; 4 uses
  %i.bv = add nsw i64 %indvars.iv98, %i.bs        ; 4 uses
  %i.bw = lshr i64 %i.bv, 6
  %i.bx = and i64 %i.bw, 67108863
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !139
  %i.ca = and i64 %i.bv, 63
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = and i64 %i.bz, %i.cb
  %.not.i.i.us = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.us, label %.critedge.us55, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45: ; preds = %.split.us
  %i.cd = trunc nsw i64 %i.bv to i32
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !489
  br i1 %i.au, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %i.cf = load i8, ptr %i.an, align 1, !tbaa !341, !range !75, !noundef !76
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = load ptr, ptr %i.ao, align 8, !tbaa !333
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !42
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46

bb.l:                                             ; preds = %bb.j
  %i.ck = load i32, ptr %i.ar, align 8, !tbaa !490
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46: ; preds = %bb.l, %bb.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %.0.i.i15.us47 = phi i32 [ %i.cj, %bb.k ], [ %i.ck, %bb.l ], [ %i.cd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45 ]
  %i.cl = sext i32 %.0.i.i15.us47 to i64
  %i.cm = getelementptr inbounds [16 x i8], ptr %i.ce, i64 %i.cl ; 2 uses
  %.sroa.0.0.copyload.i16.us48 = load i64, ptr %i.cm, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i17.us49 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.2.0.copyload.i18.us50 = load ptr, ptr %.sroa.2.0..sroa_idx.i17.us49, align 8, !tbaa !31 ; 2 uses
  %.not.i.i22.us51 = icmp eq i64 %.sroa.0.0.copyload.i16.us48, %.sroa.0.0.copyload.i
  %i.cn = trunc i64 %.sroa.0.0.copyload.i16.us48 to i32 ; 2 uses
  br i1 %.not.i.i22.us51, label %bb.m, label %.critedge.us55

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46
  %i.co = icmp ult i32 %i.cn, 13
  br i1 %i.co, label %bb.n, label %.split37.us52

.split37.us52:                                    ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i18.us50, i64 4
  %bcmp.i.i.us53 = tail call i32 @bcmp(ptr nonnull %i.cp, ptr nonnull %i.as, i64 %i.bu)
  %i.cq = icmp eq i32 %bcmp.i.i.us53, 0
  br i1 %i.cq, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us55

bb.n:                                             ; preds = %bb.m
  %i.cr = icmp samesign ult i32 %i.cn, 5
  %i.cs = icmp eq ptr %.sroa.2.0.copyload.i18.us50, %.sroa.2.0.copyload.i
  %or.cond.us54 = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.us54, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us55

.critedge.us55:                                   ; preds = %bb.n, %.split37.us52, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us46, %.split.us
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %.split.us, !llvm.loop !3537

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ct = load i8, ptr %i.an, align 1, !tbaa !341, !range !75, !noundef !76
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.cv = load i64, ptr %i.am, align 8, !tbaa !139
  %i.cw = and i64 %i.cv, 1
  %.not.i6.i.us = icmp eq i64 %i.cw, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  %i.cx = load ptr, ptr %i.ap, align 8, !tbaa !489
  %wide.trip.count96 = zext nneg i32 %i.k to i64
  %i.cy = load i32, ptr %i.ar, align 8, !tbaa !490
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.cz ; 2 uses
  %.sroa.0.0.copyload.i16.us64 = load i64, ptr %i.da, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i17.us65 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.2.0.copyload.i18.us66 = load ptr, ptr %.sroa.2.0..sroa_idx.i17.us65, align 8, !tbaa !31 ; 2 uses
  %.not.i.i22.us67 = icmp eq i64 %.sroa.0.0.copyload.i16.us64, %.sroa.0.0.copyload.i
  %i.db = trunc i64 %.sroa.0.0.copyload.i16.us64 to i32 ; 2 uses
  %i.dc = icmp ult i32 %i.db, 13
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i18.us66, i64 4
  %i.de = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.df = add nsw i64 %i.de, -4
  %i.dg = icmp samesign ult i32 %i.db, 5
  %i.dh = icmp eq ptr %.sroa.2.0.copyload.i18.us66, %.sroa.2.0.copyload.i
  %or.cond.us70 = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %.not.i.i22.us67, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us62, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us62: ; preds = %.lr.ph.split.split.split.us.split, %.critedge.us71
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %.critedge.us71 ], [ 0, %.lr.ph.split.split.split.us.split ] ; 3 uses
  br i1 %i.dc, label %bb.o, label %.split37.us68

.split37.us68:                                    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us62
  %bcmp.i.i.us69 = tail call i32 @bcmp(ptr nonnull %i.dd, ptr nonnull %i.as, i64 %i.df)
  %i.di = icmp eq i32 %bcmp.i.i.us69, 0
  br i1 %i.di, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us71

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us62
  br i1 %or.cond.us70, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge.us71

.critedge.us71:                                   ; preds = %bb.o, %.split37.us68
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21.us62, !llvm.loop !3537

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.dj = load ptr, ptr %i.ao, align 8, !tbaa !333
  %i.dk = sext i32 %i.p to i64
  %wide.trip.count = zext nneg i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dl = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.dm = add nsw i64 %i.dl, -4
  br label %.split33

.split33:                                         ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dn = load i32, ptr %gep, align 4, !tbaa !42  ; 2 uses
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = lshr i64 %i.do, 6
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !139
  %i.ds = and i64 %i.do, 63
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = and i64 %i.dt, %i.dr
  %.not.i7.i = icmp eq i64 %i.du, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21: ; preds = %.split33
  %i.dv = load ptr, ptr %i.ap, align 8, !tbaa !489
  %i.dw = sext i32 %i.dn to i64
  %i.dx = getelementptr inbounds [16 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %.sroa.0.0.copyload.i16 = load i64, ptr %i.dx, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.2.0.copyload.i18 = load ptr, ptr %.sroa.2.0..sroa_idx.i17, align 8, !tbaa !31 ; 2 uses
  %.not.i.i22 = icmp eq i64 %.sroa.0.0.copyload.i16, %.sroa.0.0.copyload.i
  %i.dy = trunc i64 %.sroa.0.0.copyload.i16 to i32 ; 2 uses
  br i1 %.not.i.i22, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21
  %i.dz = icmp ult i32 %i.dy, 13
  br i1 %i.dz, label %bb.q, label %.split37

bb.q:                                             ; preds = %bb.p
  %i.ea = icmp samesign ult i32 %i.dy, 5
  %i.eb = icmp eq ptr %.sroa.2.0.copyload.i18, %.sroa.2.0.copyload.i
  %or.cond = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge

.split37:                                         ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i18, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ec, ptr nonnull %i.as, i64 %i.dm)
  %i.ed = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ed, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %.critedge

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread: ; preds = %.split37, %bb.q, %.split37.us68, %bb.o, %bb.n, %.split37.us52, %.split37.us, %bb.i
  %.us-phi.in = phi i64 [ %indvars.iv93, %.split37.us68 ], [ %indvars.iv103, %.split37.us ], [ %indvars.iv98, %bb.n ], [ %indvars.iv103, %bb.i ], [ %indvars.iv98, %.split37.us52 ], [ %indvars.iv93, %bb.o ], [ %indvars.iv, %bb.q ], [ %indvars.iv, %.split37 ] ; 2 uses
  %.us-phi = trunc i64 %.us-phi.in to i32         ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !3538, !nonnull !76, !align !277 ; 5 uses
  %i.eg = add nuw i64 %.us-phi.in, 1
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 144 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !343 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.r, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.r:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread
  %i.el = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ef) ; 0 uses
  %.pre.i = load ptr, ptr %i.ei, align 8, !tbaa !343
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.r, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread
  %i.em = phi ptr [ %i.ej, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread ], [ %.pre.i, %bb.r ]
  %i.en = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.f
  store i64 %i.eh, ptr %i.en, align 8, !tbaa !139
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !364
  %.not.i24 = icmp eq ptr %i.ep, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.s

bb.s:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !226
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ef, i32 noundef %i.er, i1 noundef zeroext true)
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !364 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 44
  %i.eu = load i8, ptr %i.et, align 4, !tbaa !365
  %i.ev = and i8 %i.eu, 2
  %.not.i3.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.t, !prof !71

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !370
  %i.ey = lshr i32 %1, 3
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ez ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !31
  %i.fc = trunc i32 %1 to i8
  %i.fd = and i8 %i.fc, 7
  %i.fe = shl nuw i8 1, %i.fd
  %i.ff = or i8 %i.fb, %i.fe
  store i8 %i.ff, ptr %i.fa, align 1, !tbaa !31
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit21, %.split33, %.split37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %.split33, !llvm.loop !3537

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.041 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ 0, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit ]
  %i.fg = icmp eq i32 %.041, %i.k
  br i1 %i.fg, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit30

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread: ; preds = %.critedge, %.critedge.us71, %.critedge.us55, %.critedge.us, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !3538, !nonnull !76, !align !277 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 144 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !343 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.u, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i25

bb.u:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread
  %i.fm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fi) ; 0 uses
  %.pre.i29 = load ptr, ptr %i.fj, align 8, !tbaa !343
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i25

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i25: ; preds = %bb.u, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread
  %i.fn = phi ptr [ %i.fk, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread ], [ %.pre.i29, %bb.u ]
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.f
  store i64 0, ptr %i.fo, align 8, !tbaa !139
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !364
  %.not.i26 = icmp eq ptr %i.fq, null
  br i1 %.not.i26, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit30, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i25
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !226
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.fi, i32 noundef %i.fs, i1 noundef zeroext true)
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !364 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 44
  %i.fv = load i8, ptr %i.fu, align 4, !tbaa !365
  %i.fw = and i8 %i.fv, 2
  %.not.i3.i27 = icmp eq i8 %i.fw, 0
  br i1 %.not.i3.i27, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i28, label %bb.w, !prof !71

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i28: ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !370
  %i.fz = lshr i32 %1, 3
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ga ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !31
  %i.gd = trunc i32 %1 to i8
  %i.ge = and i8 %i.gd, 7
  %i.gf = shl nuw i8 1, %i.ge
  %i.gg = or i8 %i.gc, %i.gf
  store i8 %i.gg, ptr %i.gb, align 1, !tbaa !31
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit30

_ZN8facebook5velox10FlatVectorIlE3setEil.exit30:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i28, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i25, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_120applyTypedFirstMatchILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_13DecodedVectorERKSB_SE_RNS0_10FlatVectorIlEEENKUlT_E_clIiEEDaSI_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3539, !nonnull !76, !align !277
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !331
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3542, !nonnull !76, !align !277
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !331
  %i.f = sext i32 %1 to i64                       ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42   ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3543, !nonnull !76, !align !277
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !331
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3544, !nonnull !76, !align !277
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2840
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3545, !nonnull !76, !align !277
  %i.w = load <2 x i64>, ptr %i.v, align 8
  %i.x = sext i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %i.k to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.t, i64 %i.x
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.y = load <2 x i64>, ptr %gep, align 8
  %i.z = icmp eq <2 x i64> %i.y, %i.w             ; 2 uses
  %i.aa = extractelement <2 x i1> %i.z, i64 0
  %i.ab = extractelement <2 x i1> %i.z, i64 1
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3546, !nonnull !76, !align !277 ; 5 uses
  %i.ag = add nuw i64 %indvars.iv, 1
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 144 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !343 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.d, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.af) ; 0 uses
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !343
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.d, %bb.c
  %i.am = phi ptr [ %i.aj, %bb.c ], [ %.pre.i, %bb.d ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.f
  store i64 %i.ah, ptr %i.an, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !364
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !226
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.af, i32 noundef %i.ar, i1 noundef zeroext true)
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !364 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 44
  %i.au = load i8, ptr %i.at, align 4, !tbaa !365
  %i.av = and i8 %i.au, 2
  %.not.i3.i = icmp eq i8 %i.av, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.f, !prof !71

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !370
  %i.ay = lshr i32 %1, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !31
  %i.bc = trunc i32 %1 to i8
  %i.bd = and i8 %i.bc, 7
  %i.be = shl nuw i8 1, %i.bd
  %i.bf = or i8 %i.bb, %i.be
  store i8 %i.bf, ptr %i.ba, align 1, !tbaa !31
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

bb.g:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %bb.b, !llvm.loop !3547

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %bb.a, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.022 = phi i32 [ %i.ad, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %i.ad, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ 0, %bb.a ]
  %i.bg = icmp eq i32 %.022, %i.k
  br i1 %i.bg, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit20

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread: ; preds = %bb.g, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3546, !nonnull !76, !align !277 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !343 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.h, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i15

bb.h:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread
  %i.bm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.bi) ; 0 uses
  %.pre.i19 = load ptr, ptr %i.bj, align 8, !tbaa !343
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i15

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i15: ; preds = %bb.h, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread
  %i.bn = phi ptr [ %i.bk, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.thread ], [ %.pre.i19, %bb.h ]
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.f
  store i64 0, ptr %i.bo, align 8, !tbaa !139
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !364
  %.not.i16 = icmp eq ptr %i.bq, null
  br i1 %.not.i16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit20, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !226
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.bi, i32 noundef %i.bs, i1 noundef zeroext true)
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !364 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !365
  %i.bw = and i8 %i.bv, 2
  %.not.i3.i17 = icmp eq i8 %i.bw, 0
  br i1 %.not.i3.i17, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i18, label %bb.j, !prof !71

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i18: ; preds = %bb.i
end_hunk_1
