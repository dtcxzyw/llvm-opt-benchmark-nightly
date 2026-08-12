inline.NumInlined: 6848
inline.NumDeleted: 2229
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZZN8facebook5velox9functions12_GLOBAL__N_110applyTypedILNS0_8TypeKindE7EEEvRKNS0_17SelectivityVectorERNS0_13DecodedVectorES9_S9_RNS0_4exec7EvalCtxERNS0_10FlatVectorIbEEbENKUlT_E0_clIiEEDaSG_:bb.a
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.af, %bb.d ], [ %i.ab, %bb.c ], [ %1, %bb.a ]
  %i.ag = sext i32 %.0.i.i to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8 ; 8 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40 ; 5 uses
  %.not37 = icmp sgt i32 %i.k, 0
  br i1 %.not37, label %.lr.ph, label %.critedge75

.lr.ph:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1933, !nonnull !80, !align !281 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !340 ; 4 uses
  %.not.i = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 59 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 4 ; 4 uses
  %i.as = load i8, ptr %i.ap, align 2, !tbaa !341, !range !79, !noundef !80
  %i.at = trunc nuw i8 %i.as to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !370
  %i.av = sext i32 %i.p to i64
  %wide.trip.count94 = zext nneg i32 %i.k to i64
  %i.aw = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ax = add nsw i64 %i.aw, -4
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us, %.lr.ph.split.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.ay = add nsw i64 %indvars.iv91, %i.av        ; 2 uses
  %i.az = trunc nsw i64 %i.ay to i32
  br i1 %i.at, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ba = load i8, ptr %i.am, align 1, !tbaa !342, !range !79, !noundef !80
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !320
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ay
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !41
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us

bb.g:                                             ; preds = %bb.e
  %i.bf = load i32, ptr %i.aq, align 8, !tbaa !371
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us: ; preds = %bb.g, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i17.us = phi i32 [ %i.be, %bb.f ], [ %i.bf, %bb.g ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.bg = sext i32 %.0.i.i17.us to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.au, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload.i18.us = load i64, ptr %i.bh, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i19.us = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.2.0.copyload.i20.us = load ptr, ptr %.sroa.2.0..sroa_idx.i19.us, align 8, !tbaa !40 ; 2 uses
  %.not.i.i24.us = icmp eq i64 %.sroa.0.0.copyload.i18.us, %.sroa.0.0.copyload.i
  %i.bi = trunc i64 %.sroa.0.0.copyload.i18.us to i32 ; 2 uses
  br i1 %.not.i.i24.us, label %bb.h, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us
  %i.bj = icmp ult i32 %i.bi, 13
  br i1 %i.bj, label %bb.i, label %.split33.us

.split33.us:                                      ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i20.us, i64 4
  %bcmp.i.i.us = tail call i32 @bcmp(ptr nonnull %i.bk, ptr nonnull %i.ar, i64 %i.ax)
  %i.bl = icmp eq i32 %bcmp.i.i.us, 0
  br i1 %i.bl, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us

bb.i:                                             ; preds = %bb.h
  %i.bm = icmp samesign ult i32 %i.bi, 5
  %i.bn = icmp eq ptr %.sroa.2.0.copyload.i20.us, %.sroa.2.0.copyload.i
  %or.cond.us = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond.us, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us: ; preds = %bb.i, %.split33.us, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %.critedge75, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !1934

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.bp = load i8, ptr %i.bo, align 1, !range !79
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i = select i1 %i.at, i1 true, i1 %i.bq
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.br = sext i32 %i.p to i64
  %wide.trip.count89 = zext nneg i32 %i.k to i64
  %i.bs = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.bt = add nsw i64 %i.bs, -4
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52
  %indvars.iv87 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next88, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52 ] ; 2 uses
  %.01638.us41 = phi i1 [ false, %.split.us.preheader ], [ %.1.us53, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52 ] ; 3 uses
  %i.bu = add nsw i64 %indvars.iv87, %i.br        ; 4 uses
  %i.bv = lshr i64 %i.bu, 6
  %i.bw = and i64 %i.bv, 67108863
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !142
  %i.bz = and i64 %i.bu, 63
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = and i64 %i.by, %i.ca
  %.not.i.i.us = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.us, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us42

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us42: ; preds = %.split.us
  %i.cc = trunc nsw i64 %i.bu to i32
  %i.cd = load ptr, ptr %i.ao, align 8, !tbaa !370
  br i1 %i.at, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us42
  %i.ce = load i8, ptr %i.am, align 1, !tbaa !342, !range !79, !noundef !80
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %i.an, align 8, !tbaa !320
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.bu
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !41
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43

bb.l:                                             ; preds = %bb.j
  %i.cj = load i32, ptr %i.aq, align 8, !tbaa !371
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43: ; preds = %bb.l, %bb.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us42
  %.0.i.i17.us44 = phi i32 [ %i.ci, %bb.k ], [ %i.cj, %bb.l ], [ %i.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us42 ]
  %i.ck = sext i32 %.0.i.i17.us44 to i64
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.cd, i64 %i.ck ; 2 uses
  %.sroa.0.0.copyload.i18.us45 = load i64, ptr %i.cl, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i19.us46 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.2.0.copyload.i20.us47 = load ptr, ptr %.sroa.2.0..sroa_idx.i19.us46, align 8, !tbaa !40 ; 2 uses
  %.not.i.i24.us48 = icmp eq i64 %.sroa.0.0.copyload.i18.us45, %.sroa.0.0.copyload.i
  %i.cm = trunc i64 %.sroa.0.0.copyload.i18.us45 to i32 ; 2 uses
  br i1 %.not.i.i24.us48, label %bb.m, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43
  %i.cn = icmp ult i32 %i.cm, 13
  br i1 %i.cn, label %bb.n, label %.split33.us49

.split33.us49:                                    ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i20.us47, i64 4
  %bcmp.i.i.us50 = tail call i32 @bcmp(ptr nonnull %i.co, ptr nonnull %i.ar, i64 %i.bt)
  %i.cp = icmp eq i32 %bcmp.i.i.us50, 0
  br i1 %i.cp, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52

bb.n:                                             ; preds = %bb.m
  %i.cq = icmp samesign ult i32 %i.cm, 5
  %i.cr = icmp eq ptr %.sroa.2.0.copyload.i20.us47, %.sroa.2.0.copyload.i
  %or.cond.us51 = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond.us51, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52: ; preds = %bb.n, %.split33.us49, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43, %.split.us
  %.1.us53 = phi i1 [ %.01638.us41, %bb.n ], [ %.01638.us41, %.split33.us49 ], [ true, %.split.us ], [ %.01638.us41, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43 ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count89
  br i1 %exitcond90.not, label %.critedge, label %.split.us, !llvm.loop !1934

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.cs = load i8, ptr %i.am, align 1, !tbaa !342, !range !79, !noundef !80
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.cu = load i64, ptr %i.al, align 8, !tbaa !142
  %i.cv = and i64 %i.cu, 1
  %.not.i6.i.us = icmp eq i64 %i.cv, 0
  br i1 %.not.i6.i.us, label %.critedge76, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  %i.cw = load ptr, ptr %i.ao, align 8, !tbaa !370
  %wide.trip.count85 = zext nneg i32 %i.k to i64
  %i.cx = load i32, ptr %i.aq, align 8, !tbaa !371
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  %.sroa.0.0.copyload.i18.us62 = load i64, ptr %i.cz, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i19.us63 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.2.0.copyload.i20.us64 = load ptr, ptr %.sroa.2.0..sroa_idx.i19.us63, align 8, !tbaa !40 ; 2 uses
  %.not.i.i24.us65 = icmp eq i64 %.sroa.0.0.copyload.i18.us62, %.sroa.0.0.copyload.i
  %i.da = trunc i64 %.sroa.0.0.copyload.i18.us62 to i32 ; 2 uses
  %i.db = icmp ult i32 %i.da, 13
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i20.us64, i64 4
  %i.dd = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.de = add nsw i64 %i.dd, -4
  %i.df = icmp samesign ult i32 %i.da, 5
  %i.dg = icmp eq ptr %.sroa.2.0.copyload.i20.us64, %.sroa.2.0.copyload.i
  %or.cond.us68 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %.not.i.i24.us65, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us60, label %.critedge75

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us60: ; preds = %.lr.ph.split.split.split.us.split, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69 ], [ 0, %.lr.ph.split.split.split.us.split ]
  br i1 %i.db, label %bb.o, label %.split33.us66

.split33.us66:                                    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us60
  %bcmp.i.i.us67 = tail call i32 @bcmp(ptr nonnull %i.dc, ptr nonnull %i.ar, i64 %i.de)
  %i.dh = icmp eq i32 %bcmp.i.i.us67, 0
  br i1 %i.dh, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us60
  br i1 %or.cond.us68, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69: ; preds = %bb.o, %.split33.us66
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %.critedge75, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us60, !llvm.loop !1934

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !320
  %i.dj = sext i32 %i.p to i64
  %wide.trip.count = zext nneg i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.di, i64 %i.dj
  %i.dk = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.dl = add nsw i64 %i.dk, -4
  br label %.split29

.split29:                                         ; preds = %.lr.ph.split.split.split, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split ], [ %indvars.iv.next, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31 ] ; 2 uses
  %.01638 = phi i1 [ false, %.lr.ph.split.split.split ], [ %.1, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dm = load i32, ptr %gep, align 4, !tbaa !41  ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = lshr i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !142
  %i.dr = and i64 %i.dn, 63
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.dq
  %.not.i7.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i7.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23: ; preds = %.split29
  %i.du = load ptr, ptr %i.ao, align 8, !tbaa !370
  %i.dv = sext i32 %i.dm to i64
  %i.dw = getelementptr inbounds [16 x i8], ptr %i.du, i64 %i.dv ; 2 uses
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.dw, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.2.0.copyload.i20 = load ptr, ptr %.sroa.2.0..sroa_idx.i19, align 8, !tbaa !40 ; 2 uses
  %.not.i.i24 = icmp eq i64 %.sroa.0.0.copyload.i18, %.sroa.0.0.copyload.i
  %i.dx = trunc i64 %.sroa.0.0.copyload.i18 to i32 ; 2 uses
  br i1 %.not.i.i24, label %bb.p, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23
  %i.dy = icmp ult i32 %i.dx, 13
  br i1 %i.dy, label %bb.q, label %.split33

bb.q:                                             ; preds = %bb.p
  %i.dz = icmp samesign ult i32 %i.dx, 5
  %i.ea = icmp eq ptr %.sroa.2.0.copyload.i20, %.sroa.2.0.copyload.i
  %or.cond = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31

.split33:                                         ; preds = %bb.p
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i20, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.eb, ptr nonnull %i.ar, i64 %i.dl)
  %i.ec = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ec, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread: ; preds = %.split33, %bb.q, %.split33.us66, %bb.o, %bb.n, %.split33.us49, %.split33.us, %bb.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1935, !nonnull !80, !align !281
  tail call void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ee, i32 noundef %1, i1 noundef zeroext true)
  br label %bb.s

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31: ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23, %.split33, %.split29
  %.1 = phi i1 [ %.01638, %bb.q ], [ %.01638, %.split33 ], [ %.01638, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23 ], [ true, %.split29 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.split29, !llvm.loop !1934

.critedge:                                        ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52
  %.016.lcssa = phi i1 [ %.1.us53, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52 ], [ %.1, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31 ]
  br i1 %.016.lcssa, label %.critedge76, label %.critedge75

.critedge76:                                      ; preds = %.lr.ph.split.split.split.us, %.critedge
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1935, !nonnull !80, !align !281 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !239
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.eg, i32 noundef %i.ej, i1 noundef zeroext true)
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !351 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 44
  %i.em = load i8, ptr %i.el, align 4, !tbaa !352
  %i.en = and i8 %i.em, 2
  %.not.i3.i = icmp eq i8 %i.en, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit, label %bb.r, !prof !75

bb.r:                                             ; preds = %.critedge76
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #36
  unreachable

_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit: ; preds = %.critedge76
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !357
  %i.eq = zext i32 %1 to i64                      ; 2 uses
  %i.er = lshr i64 %i.eq, 3
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !40
  %i.eu = and i64 %i.eq, 7
  %i.ev = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !40
  %i.ex = and i8 %i.ew, %i.et
  store i8 %i.ex, ptr %i.es, align 1, !tbaa !40
  br label %bb.s

.critedge75:                                      ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us, %.lr.ph.split.split.split.us.split, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, %.critedge
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !1935, !nonnull !80, !align !281
  tail call void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ez, i32 noundef %1, i1 noundef zeroext false)
  br label %bb.s

bb.s:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, %_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit, %.critedge75
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_110applyTypedILNS0_8TypeKindE8EEEvRKNS0_17SelectivityVectorERNS0_13DecodedVectorES9_S9_RNS0_4exec7EvalCtxERNS0_10FlatVectorIbEEbENKUlT_E0_clIiEEDaSG_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1936, !nonnull !80, !align !281
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1938, !nonnull !80, !align !281
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !318
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1939, !nonnull !80, !align !281
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !318
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1940, !nonnull !80, !align !281 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !370
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 58
  %i.v = load i8, ptr %i.u, align 2, !tbaa !341, !range !79, !noundef !80
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 59
  %i.y = load i8, ptr %i.x, align 1, !tbaa !342, !range !79, !noundef !80
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !371
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !320
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.f
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.af, %bb.d ], [ %i.ab, %bb.c ], [ %1, %bb.a ]
  %i.ag = sext i32 %.0.i.i to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8 ; 8 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40 ; 5 uses
  %.not37 = icmp sgt i32 %i.k, 0
  br i1 %.not37, label %.lr.ph, label %.critedge75

.lr.ph:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1941, !nonnull !80, !align !281 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !340 ; 4 uses
  %.not.i = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 59 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 4 ; 4 uses
  %i.as = load i8, ptr %i.ap, align 2, !tbaa !341, !range !79, !noundef !80
  %i.at = trunc nuw i8 %i.as to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !370
  %i.av = sext i32 %i.p to i64
  %wide.trip.count94 = zext nneg i32 %i.k to i64
  %i.aw = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ax = add nsw i64 %i.aw, -4
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us, %.lr.ph.split.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.ay = add nsw i64 %indvars.iv91, %i.av        ; 2 uses
  %i.az = trunc nsw i64 %i.ay to i32
  br i1 %i.at, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ba = load i8, ptr %i.am, align 1, !tbaa !342, !range !79, !noundef !80
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !320
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ay
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !41
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us

bb.g:                                             ; preds = %bb.e
  %i.bf = load i32, ptr %i.aq, align 8, !tbaa !371
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us: ; preds = %bb.g, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i17.us = phi i32 [ %i.be, %bb.f ], [ %i.bf, %bb.g ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.bg = sext i32 %.0.i.i17.us to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.au, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload.i18.us = load i64, ptr %i.bh, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i19.us = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.2.0.copyload.i20.us = load ptr, ptr %.sroa.2.0..sroa_idx.i19.us, align 8, !tbaa !40 ; 2 uses
  %.not.i.i24.us = icmp eq i64 %.sroa.0.0.copyload.i18.us, %.sroa.0.0.copyload.i
  %i.bi = trunc i64 %.sroa.0.0.copyload.i18.us to i32 ; 2 uses
  br i1 %.not.i.i24.us, label %bb.h, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us
  %i.bj = icmp ult i32 %i.bi, 13
  br i1 %i.bj, label %bb.i, label %.split33.us

.split33.us:                                      ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i20.us, i64 4
  %bcmp.i.i.us = tail call i32 @bcmp(ptr nonnull %i.bk, ptr nonnull %i.ar, i64 %i.ax)
  %i.bl = icmp eq i32 %bcmp.i.i.us, 0
  br i1 %i.bl, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us

bb.i:                                             ; preds = %bb.h
  %i.bm = icmp samesign ult i32 %i.bi, 5
  %i.bn = icmp eq ptr %.sroa.2.0.copyload.i20.us, %.sroa.2.0.copyload.i
  %or.cond.us = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond.us, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us: ; preds = %bb.i, %.split33.us, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %.critedge75, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !1942

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.bp = load i8, ptr %i.bo, align 1, !range !79
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i = select i1 %i.at, i1 true, i1 %i.bq
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.br = sext i32 %i.p to i64
  %wide.trip.count89 = zext nneg i32 %i.k to i64
  %i.bs = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.bt = add nsw i64 %i.bs, -4
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52
  %indvars.iv87 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next88, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52 ] ; 2 uses
  %.01638.us41 = phi i1 [ false, %.split.us.preheader ], [ %.1.us53, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52 ] ; 3 uses
  %i.bu = add nsw i64 %indvars.iv87, %i.br        ; 4 uses
  %i.bv = lshr i64 %i.bu, 6
  %i.bw = and i64 %i.bv, 67108863
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !142
  %i.bz = and i64 %i.bu, 63
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = and i64 %i.by, %i.ca
  %.not.i.i.us = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.us, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us42

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us42: ; preds = %.split.us
  %i.cc = trunc nsw i64 %i.bu to i32
  %i.cd = load ptr, ptr %i.ao, align 8, !tbaa !370
  br i1 %i.at, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us42
  %i.ce = load i8, ptr %i.am, align 1, !tbaa !342, !range !79, !noundef !80
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %i.an, align 8, !tbaa !320
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.bu
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !41
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43

bb.l:                                             ; preds = %bb.j
  %i.cj = load i32, ptr %i.aq, align 8, !tbaa !371
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43: ; preds = %bb.l, %bb.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us42
  %.0.i.i17.us44 = phi i32 [ %i.ci, %bb.k ], [ %i.cj, %bb.l ], [ %i.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us42 ]
  %i.ck = sext i32 %.0.i.i17.us44 to i64
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.cd, i64 %i.ck ; 2 uses
  %.sroa.0.0.copyload.i18.us45 = load i64, ptr %i.cl, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i19.us46 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.2.0.copyload.i20.us47 = load ptr, ptr %.sroa.2.0..sroa_idx.i19.us46, align 8, !tbaa !40 ; 2 uses
  %.not.i.i24.us48 = icmp eq i64 %.sroa.0.0.copyload.i18.us45, %.sroa.0.0.copyload.i
  %i.cm = trunc i64 %.sroa.0.0.copyload.i18.us45 to i32 ; 2 uses
  br i1 %.not.i.i24.us48, label %bb.m, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43
  %i.cn = icmp ult i32 %i.cm, 13
  br i1 %i.cn, label %bb.n, label %.split33.us49

.split33.us49:                                    ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i20.us47, i64 4
  %bcmp.i.i.us50 = tail call i32 @bcmp(ptr nonnull %i.co, ptr nonnull %i.ar, i64 %i.bt)
  %i.cp = icmp eq i32 %bcmp.i.i.us50, 0
  br i1 %i.cp, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52

bb.n:                                             ; preds = %bb.m
  %i.cq = icmp samesign ult i32 %i.cm, 5
  %i.cr = icmp eq ptr %.sroa.2.0.copyload.i20.us47, %.sroa.2.0.copyload.i
  %or.cond.us51 = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond.us51, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52: ; preds = %bb.n, %.split33.us49, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43, %.split.us
  %.1.us53 = phi i1 [ %.01638.us41, %bb.n ], [ %.01638.us41, %.split33.us49 ], [ true, %.split.us ], [ %.01638.us41, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us43 ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count89
  br i1 %exitcond90.not, label %.critedge, label %.split.us, !llvm.loop !1942

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.cs = load i8, ptr %i.am, align 1, !tbaa !342, !range !79, !noundef !80
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.cu = load i64, ptr %i.al, align 8, !tbaa !142
  %i.cv = and i64 %i.cu, 1
  %.not.i6.i.us = icmp eq i64 %i.cv, 0
  br i1 %.not.i6.i.us, label %.critedge76, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  %i.cw = load ptr, ptr %i.ao, align 8, !tbaa !370
  %wide.trip.count85 = zext nneg i32 %i.k to i64
  %i.cx = load i32, ptr %i.aq, align 8, !tbaa !371
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  %.sroa.0.0.copyload.i18.us62 = load i64, ptr %i.cz, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i19.us63 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.2.0.copyload.i20.us64 = load ptr, ptr %.sroa.2.0..sroa_idx.i19.us63, align 8, !tbaa !40 ; 2 uses
  %.not.i.i24.us65 = icmp eq i64 %.sroa.0.0.copyload.i18.us62, %.sroa.0.0.copyload.i
  %i.da = trunc i64 %.sroa.0.0.copyload.i18.us62 to i32 ; 2 uses
  %i.db = icmp ult i32 %i.da, 13
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i20.us64, i64 4
  %i.dd = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.de = add nsw i64 %i.dd, -4
  %i.df = icmp samesign ult i32 %i.da, 5
  %i.dg = icmp eq ptr %.sroa.2.0.copyload.i20.us64, %.sroa.2.0.copyload.i
  %or.cond.us68 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %.not.i.i24.us65, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us60, label %.critedge75

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us60: ; preds = %.lr.ph.split.split.split.us.split, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69 ], [ 0, %.lr.ph.split.split.split.us.split ]
  br i1 %i.db, label %bb.o, label %.split33.us66

.split33.us66:                                    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us60
  %bcmp.i.i.us67 = tail call i32 @bcmp(ptr nonnull %i.dc, ptr nonnull %i.ar, i64 %i.de)
  %i.dh = icmp eq i32 %bcmp.i.i.us67, 0
  br i1 %i.dh, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us60
  br i1 %or.cond.us68, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69: ; preds = %bb.o, %.split33.us66
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %.critedge75, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23.us60, !llvm.loop !1942

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !320
  %i.dj = sext i32 %i.p to i64
  %wide.trip.count = zext nneg i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.di, i64 %i.dj
  %i.dk = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.dl = add nsw i64 %i.dk, -4
  br label %.split29

.split29:                                         ; preds = %.lr.ph.split.split.split, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split ], [ %indvars.iv.next, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31 ] ; 2 uses
  %.01638 = phi i1 [ false, %.lr.ph.split.split.split ], [ %.1, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dm = load i32, ptr %gep, align 4, !tbaa !41  ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = lshr i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !142
  %i.dr = and i64 %i.dn, 63
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.dq
  %.not.i7.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i7.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23: ; preds = %.split29
  %i.du = load ptr, ptr %i.ao, align 8, !tbaa !370
  %i.dv = sext i32 %i.dm to i64
  %i.dw = getelementptr inbounds [16 x i8], ptr %i.du, i64 %i.dv ; 2 uses
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.dw, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.2.0.copyload.i20 = load ptr, ptr %.sroa.2.0..sroa_idx.i19, align 8, !tbaa !40 ; 2 uses
  %.not.i.i24 = icmp eq i64 %.sroa.0.0.copyload.i18, %.sroa.0.0.copyload.i
  %i.dx = trunc i64 %.sroa.0.0.copyload.i18 to i32 ; 2 uses
  br i1 %.not.i.i24, label %bb.p, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23
  %i.dy = icmp ult i32 %i.dx, 13
  br i1 %i.dy, label %bb.q, label %.split33

bb.q:                                             ; preds = %bb.p
  %i.dz = icmp samesign ult i32 %i.dx, 5
  %i.ea = icmp eq ptr %.sroa.2.0.copyload.i20, %.sroa.2.0.copyload.i
  %or.cond = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31

.split33:                                         ; preds = %bb.p
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i20, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.eb, ptr nonnull %i.ar, i64 %i.dl)
  %i.ec = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ec, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread: ; preds = %.split33, %bb.q, %.split33.us66, %bb.o, %bb.n, %.split33.us49, %.split33.us, %bb.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1943, !nonnull !80, !align !281
  tail call void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ee, i32 noundef %1, i1 noundef zeroext true)
  br label %bb.s

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31: ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23, %.split33, %.split29
  %.1 = phi i1 [ %.01638, %bb.q ], [ %.01638, %.split33 ], [ %.01638, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit23 ], [ true, %.split29 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.split29, !llvm.loop !1942

.critedge:                                        ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52
  %.016.lcssa = phi i1 [ %.1.us53, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us52 ], [ %.1, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31 ]
  br i1 %.016.lcssa, label %.critedge76, label %.critedge75

.critedge76:                                      ; preds = %.lr.ph.split.split.split.us, %.critedge
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1943, !nonnull !80, !align !281 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !239
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.eg, i32 noundef %i.ej, i1 noundef zeroext true)
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !351 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 44
  %i.em = load i8, ptr %i.el, align 4, !tbaa !352
  %i.en = and i8 %i.em, 2
  %.not.i3.i = icmp eq i8 %i.en, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit, label %bb.r, !prof !75

bb.r:                                             ; preds = %.critedge76
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #36
  unreachable

_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit: ; preds = %.critedge76
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !357
  %i.eq = zext i32 %1 to i64                      ; 2 uses
  %i.er = lshr i64 %i.eq, 3
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !40
  %i.eu = and i64 %i.eq, 7
  %i.ev = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !40
  %i.ex = and i8 %i.ew, %i.et
  store i8 %i.ex, ptr %i.es, align 1, !tbaa !40
  br label %bb.s

.critedge75:                                      ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us69, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread31.us, %.lr.ph.split.split.split.us.split, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, %.critedge
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !1943, !nonnull !80, !align !281
  tail call void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ez, i32 noundef %1, i1 noundef zeroext false)
  br label %bb.s

bb.s:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread, %_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit, %.critedge75
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_110applyTypedILNS0_8TypeKindE9EEEvRKNS0_17SelectivityVectorERNS0_13DecodedVectorES9_S9_RNS0_4exec7EvalCtxERNS0_10FlatVectorIbEEbENKUlT_E0_clIiEEDaSG_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1944, !nonnull !80, !align !281
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1946, !nonnull !80, !align !281
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !318
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1947, !nonnull !80, !align !281
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !318
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1948, !nonnull !80, !align !281 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !370
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 58
  %i.v = load i8, ptr %i.u, align 2, !tbaa !341, !range !79, !noundef !80
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 59
  %i.y = load i8, ptr %i.x, align 1, !tbaa !342, !range !79, !noundef !80
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !371
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !320
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.f
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.af, %bb.d ], [ %i.ab, %bb.c ], [ %1, %bb.a ]
  %i.ag = sext i32 %.0.i.i to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8, !tbaa !142 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !142 ; 5 uses
  %.not32 = icmp sgt i32 %i.k, 0
  br i1 %.not32, label %.lr.ph, label %.critedge78

.lr.ph:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1949, !nonnull !80, !align !281 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !340 ; 4 uses
  %.not.i = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 59 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 3 uses
  %i.ar = load i8, ptr %i.ap, align 2, !tbaa !341, !range !79, !noundef !80
  %i.as = trunc nuw i8 %i.ar to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !370 ; 2 uses
  br i1 %i.as, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.au = sext i32 %i.p to i64
  %wide.trip.count112 = zext nneg i32 %i.k to i64
  %invariant.gep120 = getelementptr [16 x i8], ptr %i.at, i64 %i.au
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %bb.e
  %indvars.iv109 = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next110, %bb.e ] ; 2 uses
  %gep121 = getelementptr [16 x i8], ptr %invariant.gep120, i64 %indvars.iv109 ; 2 uses
  %.sroa.0.0.copyload.i21.us.us = load i64, ptr %gep121, align 8, !tbaa !142
  %.sroa.2.0..sroa_idx.i22.us.us = getelementptr inbounds nuw i8, ptr %gep121, i64 8
  %.sroa.2.0.copyload.i23.us.us = load i64, ptr %.sroa.2.0..sroa_idx.i22.us.us, align 8, !tbaa !142
  %i.av = icmp eq i64 %.sroa.0.0.copyload.i21.us.us, %.sroa.0.0.copyload.i
  %i.aw = icmp eq i64 %.sroa.2.0.copyload.i23.us.us, %.sroa.2.0.copyload.i
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.split36.us, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %.critedge78, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !1950

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ay = load i8, ptr %i.am, align 1, !tbaa !342, !range !79, !noundef !80
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = sext i32 %i.p to i64
  %wide.trip.count107 = zext nneg i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %bb.g, %.lr.ph.split.us.split
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %bb.g ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  br i1 %i.az, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit26.us, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !320
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %indvars.iv104
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.ba
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit26.us

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit26.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, %bb.f
  %.0.i.i20.us.in = phi ptr [ %i.bd, %bb.f ], [ %i.aq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %.0.i.i20.us = load i32, ptr %.0.i.i20.us.in, align 4, !tbaa !41
  %i.be = sext i32 %.0.i.i20.us to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.be ; 2 uses
  %.sroa.0.0.copyload.i21.us = load i64, ptr %i.bf, align 8, !tbaa !142
  %.sroa.2.0..sroa_idx.i22.us = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.2.0.copyload.i23.us = load i64, ptr %.sroa.2.0..sroa_idx.i22.us, align 8, !tbaa !142
  %i.bg = icmp eq i64 %.sroa.0.0.copyload.i21.us, %.sroa.0.0.copyload.i
  %i.bh = icmp eq i64 %.sroa.2.0.copyload.i23.us, %.sroa.2.0.copyload.i
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %.split36.us, label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit26.us
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %.critedge78, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !1950

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.bk = load i8, ptr %i.bj, align 1, !range !79
  %i.bl = trunc nuw i8 %i.bk to i1
  %or.cond.i = select i1 %i.as, i1 true, i1 %i.bl
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.bm = sext i32 %i.p to i64
  %wide.trip.count102 = zext nneg i32 %i.k to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.k
  %indvars.iv100 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next101, %bb.k ] ; 2 uses
  %.01633.us38 = phi i1 [ false, %.split.us.preheader ], [ %.1.us45, %bb.k ]
  %i.bn = add nsw i64 %indvars.iv100, %i.bm       ; 4 uses
  %i.bo = lshr i64 %i.bn, 6
  %i.bp = and i64 %i.bo, 67108863
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !142
  %i.bs = and i64 %i.bn, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = and i64 %i.br, %i.bt
  %.not.i.i.us = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.us, label %bb.k, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us39

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us39: ; preds = %.split.us
  %i.bv = trunc nsw i64 %i.bn to i32
  %i.bw = load ptr, ptr %i.ao, align 8, !tbaa !370
  br i1 %i.as, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit26.us40, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us39
  %i.bx = load i8, ptr %i.am, align 1, !tbaa !342, !range !79, !noundef !80
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load ptr, ptr %i.an, align 8, !tbaa !320
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.bn
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit26.us40

bb.j:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.aq, align 8, !tbaa !371
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit26.us40

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit26.us40: ; preds = %bb.j, %bb.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us39
  %.0.i.i20.us41 = phi i32 [ %i.cb, %bb.i ], [ %i.cc, %bb.j ], [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us39 ]
  %i.cd = sext i32 %.0.i.i20.us41 to i64
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.cd ; 2 uses
  %.sroa.0.0.copyload.i21.us42 = load i64, ptr %i.ce, align 8, !tbaa !142
  %.sroa.2.0..sroa_idx.i22.us43 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.2.0.copyload.i23.us44 = load i64, ptr %.sroa.2.0..sroa_idx.i22.us43, align 8, !tbaa !142
  %i.cf = icmp eq i64 %.sroa.0.0.copyload.i21.us42, %.sroa.0.0.copyload.i
  %i.cg = icmp eq i64 %.sroa.2.0.copyload.i23.us44, %.sroa.2.0.copyload.i
  %i.ch = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %i.ch, label %.split36.us, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit26.us40, %.split.us
end_hunk_0
