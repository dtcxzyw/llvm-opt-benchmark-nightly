Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@_ZN5mlkem12_GLOBAL__N_124mlkem_decap_no_self_testILi3EEEvPhPKhPKNS0_11private_keyIXT_EEE:vector.ph
  %i.e = call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_113vector_decodeILi3EEEiPNS0_6vectorIXT_EEEPKhi(ptr noundef nonnull %5, ptr noundef readonly %1, i32 noundef 10) ; 0 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !tbaa !639
  %i.g = zext <8 x i16> %wide.load to <8 x i32>
  %i.h = mul nuw nsw <8 x i32> %i.g, splat (i32 3329) ; 2 uses
  %i.i = lshr <8 x i32> %i.h, splat (i32 10)
  %i.j = lshr <8 x i32> %i.h, splat (i32 9)
  %i.k = and <8 x i32> %i.j, splat (i32 1)
  %i.l = add nuw nsw <8 x i32> %i.k, %i.i
  %i.m = trunc <8 x i32> %i.l to <8 x i16>
  store <8 x i16> %i.m, ptr %i.f, align 2, !tbaa !639
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, 256
  br i1 %i.n, label %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i.i, label %vector.body, !llvm.loop !1260

_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i.i: ; preds = %vector.body
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 512
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i.i
  %index27 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i.i ], [ %index.next29, %vector.body26 ] ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %index27 ; 2 uses
  %wide.load28 = load <8 x i16>, ptr %i.p, align 2, !tbaa !639
  %i.q = zext <8 x i16> %wide.load28 to <8 x i32>
  %i.r = mul nuw nsw <8 x i32> %i.q, splat (i32 3329) ; 2 uses
  %i.s = lshr <8 x i32> %i.r, splat (i32 10)
  %i.t = lshr <8 x i32> %i.r, splat (i32 9)
  %i.u = and <8 x i32> %i.t, splat (i32 1)
  %i.v = add nuw nsw <8 x i32> %i.u, %i.s
  %i.w = trunc <8 x i32> %i.v to <8 x i16>
  store <8 x i16> %i.w, ptr %i.p, align 2, !tbaa !639
  %index.next29 = add nuw i64 %index27, 8         ; 2 uses
  %i.x = icmp eq i64 %index.next29, 256
  br i1 %i.x, label %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.1.i.i, label %vector.body26, !llvm.loop !1261

_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.1.i.i: ; preds = %vector.body26
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 1024
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.1.i.i
  %index33 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.1.i.i ], [ %index.next35, %vector.body32 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %index33 ; 2 uses
  %wide.load34 = load <8 x i16>, ptr %i.z, align 2, !tbaa !639
  %i.aa = zext <8 x i16> %wide.load34 to <8 x i32>
  %i.ab = mul nuw nsw <8 x i32> %i.aa, splat (i32 3329) ; 2 uses
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 10)
  %i.ad = lshr <8 x i32> %i.ab, splat (i32 9)
  %i.ae = and <8 x i32> %i.ad, splat (i32 1)
  %i.af = add nuw nsw <8 x i32> %i.ae, %i.ac
  %i.ag = trunc <8 x i32> %i.af to <8 x i16>
  store <8 x i16> %i.ag, ptr %i.z, align 2, !tbaa !639
  %index.next35 = add nuw i64 %index33, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next35, 256
  br i1 %i.ah, label %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi3EEEvPNS0_6vectorIXT_EEEi.exit.i, label %vector.body32, !llvm.loop !1262

_ZN5mlkem12_GLOBAL__N_117vector_decompressILi3EEEvPNS0_6vectorIXT_EEEi.exit.i: ; preds = %vector.body32
  call fastcc void @_ZN5mlkem12_GLOBAL__N_110vector_nttILi3EEEvPNS0_6vectorIXT_EEE(ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 960
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi3EEEvPNS0_6vectorIXT_EEEi.exit.i
  %indvars.iv.i.i = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi3EEEvPNS0_6vectorIXT_EEEi.exit.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %.03354.i.i = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi3EEEvPNS0_6vectorIXT_EEEi.exit.i ], [ %i.ax, %bb.e ]
  %.03553.i.i = phi i8 [ 0, %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi3EEEvPNS0_6vectorIXT_EEEi.exit.i ], [ %i.az, %bb.e ]
  %.04152.i.i = phi ptr [ %i.ai, %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi3EEEvPNS0_6vectorIXT_EEEi.exit.i ], [ %.243.i.i, %bb.e ]
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %.preheader.i.i
  %.02951.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.ba, %bb.c ] ; 3 uses
  %.03050.i.i = phi i16 [ 0, %.preheader.i.i ], [ %i.aw, %bb.c ]
  %.13449.i.i = phi i32 [ %.03354.i.i, %.preheader.i.i ], [ %i.ax, %bb.c ] ; 2 uses
  %.13648.i.i = phi i8 [ %.03553.i.i, %.preheader.i.i ], [ %i.az, %bb.c ]
  %.14247.i.i = phi ptr [ %.04152.i.i, %.preheader.i.i ], [ %.243.i.i, %bb.c ] ; 3 uses
  %i.aj = icmp eq i32 %.13449.i.i, 0
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = load i8, ptr %.14247.i.i, align 1, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.14247.i.i, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.243.i.i = phi ptr [ %i.al, %bb.b ], [ %.14247.i.i, %bb.a ] ; 2 uses
  %.237.i.i = phi i8 [ %i.ak, %bb.b ], [ %.13648.i.i, %bb.a ] ; 2 uses
  %.2.i.i = phi i32 [ 8, %bb.b ], [ %.13449.i.i, %bb.a ] ; 2 uses
  %i.am = sub nsw i32 4, %.02951.i.i
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %.2.i.i) ; 4 uses
  %i.an = zext i8 %.237.i.i to i32
  %i.ao = sext i32 %spec.select.i.i to i64
  %i.ap = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = and i8 %i.ar, %.237.i.i
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, %.02951.i.i
  %i.av = trunc i32 %i.au to i16
  %i.aw = or i16 %.03050.i.i, %i.av               ; 3 uses
  %i.ax = sub nsw i32 %.2.i.i, %spec.select.i.i   ; 2 uses
  %i.ay = lshr i32 %i.an, %spec.select.i.i
  %i.az = trunc nuw nsw i32 %i.ay to i8           ; 2 uses
  %i.ba = add nsw i32 %spec.select.i.i, %.02951.i.i ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %bb.a, label %bb.d, !llvm.loop !1263

bb.d:                                             ; preds = %bb.c
  %i.bc = icmp ugt i16 %i.aw, 3328
  %i.bd = zext i1 %i.bc to i32
  %i.be = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bd) #38, !srcloc !367
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %bb.e, label %vector.body38.preheader

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.i.i
  store i16 %i.aw, ptr %i.bf, align 2, !tbaa !639
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.i.i, label %vector.body38.preheader, label %.preheader.i.i, !llvm.loop !1264

vector.body38.preheader:                          ; preds = %bb.d, %bb.e
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38.preheader, %vector.body38
  %index39 = phi i64 [ %index.next41, %vector.body38 ], [ 0, %vector.body38.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index39 ; 2 uses
  %wide.load40 = load <8 x i16>, ptr %i.bg, align 2, !tbaa !639
  %i.bh = zext <8 x i16> %wide.load40 to <8 x i32>
  %i.bi = mul nuw nsw <8 x i32> %i.bh, splat (i32 3329) ; 2 uses
  %i.bj = lshr <8 x i32> %i.bi, splat (i32 4)
  %i.bk = lshr <8 x i32> %i.bi, splat (i32 3)
  %i.bl = and <8 x i32> %i.bk, splat (i32 1)
  %i.bm = add nuw nsw <8 x i32> %i.bl, %i.bj
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  store <8 x i16> %i.bn, ptr %i.bg, align 2, !tbaa !639
  %index.next41 = add nuw i64 %index39, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next41, 256
  br i1 %i.bo, label %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i, label %vector.body38, !llvm.loop !1265

_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i: ; preds = %vector.body38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 6208
  call fastcc void @_ZN5mlkem12_GLOBAL__N_120scalar_inner_productILi3EEEvPNS0_6scalarEPKNS0_6vectorIXT_EEES7_(ptr noundef %7, ptr noundef nonnull readonly %i.bp, ptr noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge48.i.i, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i
  %.03550.i.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i ], [ %i.bq, %._crit_edge48.i.i ]
  %.03649.i.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i ], [ %.pre.i.i, %._crit_edge48.i.i ] ; 3 uses
  %i.bq = lshr i32 %.03550.i.i, 1                 ; 3 uses
  %.not.i6.i = icmp eq i32 %i.bq, 0
  %.pre.i.i = shl i32 %.03649.i.i, 1              ; 4 uses
  br i1 %.not.i6.i, label %._crit_edge48.i.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %bb.f
  %i.br = zext i32 %.pre.i.i to i64               ; 4 uses
  %i.bs = sext i32 %.03649.i.i to i64             ; 2 uses
  %i.bt = zext nneg i32 %i.bq to i64              ; 2 uses
  %invariant.gep68.i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.bt
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %7, i64 %i.bs ; 2 uses
  %i.bu = shl nuw nsw i64 %i.br, 1
  %i.bv = shl nuw nsw i64 %i.bs, 1                ; 2 uses
  %i.bw = getelementptr i8, ptr %7, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 2
  %i.by = getelementptr i8, ptr %7, i64 %i.bv
  br label %.lr.ph.preheader.i.i

._crit_edge48.i.i:                                ; preds = %._crit_edge.i.i, %bb.f
  %i.bz = icmp slt i32 %.pre.i.i, 256
  br i1 %i.bz, label %bb.f, label %vector.body57, !llvm.loop !1266

vector.body57:                                    ; preds = %._crit_edge48.i.i, %vector.body57
  %index58 = phi i64 [ %index.next60, %vector.body57 ], [ 0, %._crit_edge48.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index58 ; 2 uses
  %wide.load59 = load <8 x i16>, ptr %i.ca, align 2, !tbaa !639
  %i.cb = zext <8 x i16> %wide.load59 to <8 x i32>
  %i.cc = mul nuw nsw <8 x i32> %i.cb, splat (i32 3303) ; 2 uses
  %i.cd = zext nneg <8 x i32> %i.cc to <8 x i64>
  %i.ce = mul nuw nsw <8 x i64> %i.cd, splat (i64 5039)
  %i.cf = lshr <8 x i64> %i.ce, splat (i64 24)
  %i.cg = trunc nuw nsw <8 x i64> %i.cf to <8 x i32>
  %i.ch = mul nuw <8 x i32> %i.cg, splat (i32 62207)
  %i.ci = add nuw <8 x i32> %i.ch, %i.cc
  %i.cj = trunc <8 x i32> %i.ci to <8 x i16>      ; 2 uses
  %i.ck = add <8 x i16> %i.cj, splat (i16 -3329)  ; 2 uses
  %i.cl = icmp slt <8 x i16> %i.ck, zeroinitializer
  %i.cm = select <8 x i1> %i.cl, <8 x i16> %i.cj, <8 x i16> zeroinitializer
  %i.cn = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ck, <8 x i16> zeroinitializer)
  %i.co = or <8 x i16> %i.cm, %i.cn
  store <8 x i16> %i.co, ptr %i.ca, align 2, !tbaa !639
  %index.next60 = add nuw i64 %index58, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next60, 256
  br i1 %i.cp, label %vector.body64, label %vector.body57, !llvm.loop !1267

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i, %.lr.ph47.i.i
  %indvars.iv57.i.i = phi i64 [ 0, %.lr.ph47.i.i ], [ %indvars.iv.next58.i.i, %._crit_edge.i.i ] ; 5 uses
  %indvars.iv55.i.i = phi i32 [ %.03649.i.i, %.lr.ph47.i.i ], [ %indvars.iv.next56.i.i, %._crit_edge.i.i ] ; 3 uses
  %indvars.iv.i7.i = phi i64 [ 0, %.lr.ph47.i.i ], [ %indvars.iv.next.i9.i, %._crit_edge.i.i ] ; 5 uses
  %gep69.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.i, i64 %indvars.iv57.i.i
  %i.cq = load i16, ptr %gep69.i.i, align 2, !tbaa !639
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  %wide.trip.count.i.i = zext i32 %indvars.iv55.i.i to i64 ; 2 uses
  %8 = mul i64 %indvars.iv57.i.i, %i.br
  %i.cs = sub i64 %wide.trip.count.i.i, %8        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.ct = mul i64 %i.bu, %indvars.iv57.i.i        ; 4 uses
  %scevgep46 = getelementptr i8, ptr %i.bx, i64 %i.ct
  %i.cu = mul i64 %indvars.iv57.i.i, %i.br
  %i.cv = xor i64 %i.cu, -1
  %i.cw = zext nneg i32 %indvars.iv55.i.i to i64
  %i.cx = add i64 %i.cv, %i.cw
  %i.cy = shl nsw i64 %i.cx, 1                    ; 2 uses
  %scevgep47 = getelementptr i8, ptr %scevgep46, i64 %i.cy
  %scevgep45 = getelementptr i8, ptr %i.by, i64 %i.ct
  %i.cz = getelementptr i8, ptr %7, i64 %i.ct
  %scevgep43 = getelementptr i8, ptr %i.cz, i64 2
  %scevgep44 = getelementptr i8, ptr %scevgep43, i64 %i.cy
  %scevgep = getelementptr nuw i8, ptr %7, i64 %i.ct
  %bound0 = icmp ult ptr %scevgep, %scevgep47
  %bound1 = icmp ult ptr %scevgep45, %scevgep44
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph48

vector.ph48:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, -8                      ; 3 uses
  %i.da = add i64 %indvars.iv.i7.i, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph48
  %index50 = phi i64 [ 0, %vector.ph48 ], [ %index.next53, %vector.body49 ] ; 2 uses
  %i.db = add nuw i64 %indvars.iv.i7.i, %index50  ; 2 uses
  %i.dc = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %i.db ; 2 uses
  %wide.load51 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !639, !alias.scope !1268 ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %i.db ; 2 uses
  %wide.load52 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !639, !alias.scope !1271, !noalias !1268 ; 2 uses
  %i.de = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.df = zext <8 x i16> %wide.load52 to <8 x i32>
  %i.dg = add <8 x i16> %wide.load52, %wide.load51 ; 2 uses
  %i.dh = add <8 x i16> %i.dg, splat (i16 -3329)  ; 2 uses
  %i.di = icmp slt <8 x i16> %i.dh, zeroinitializer
  %i.dj = select <8 x i1> %i.di, <8 x i16> %i.dg, <8 x i16> zeroinitializer
  %i.dk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dh, <8 x i16> zeroinitializer)
  %i.dl = or <8 x i16> %i.dj, %i.dk
  store <8 x i16> %i.dl, ptr %i.dd, align 2, !tbaa !639, !alias.scope !1271, !noalias !1268
  %i.dm = sub nsw <8 x i32> %i.df, %i.de
  %i.dn = add nsw <8 x i32> %i.dm, splat (i32 3329)
  %i.do = mul <8 x i32> %i.dn, %broadcast.splat   ; 2 uses
  %i.dp = zext <8 x i32> %i.do to <8 x i64>
  %i.dq = mul nuw nsw <8 x i64> %i.dp, splat (i64 5039)
  %i.dr = lshr <8 x i64> %i.dq, splat (i64 24)
  %i.ds = trunc nuw nsw <8 x i64> %i.dr to <8 x i32>
  %i.dt = mul <8 x i32> %i.ds, splat (i32 62207)
  %i.du = add <8 x i32> %i.dt, %i.do
  %i.dv = trunc <8 x i32> %i.du to <8 x i16>      ; 2 uses
  %i.dw = add <8 x i16> %i.dv, splat (i16 -3329)  ; 2 uses
  %i.dx = icmp slt <8 x i16> %i.dw, zeroinitializer
  %i.dy = select <8 x i1> %i.dx, <8 x i16> %i.dv, <8 x i16> zeroinitializer
  %i.dz = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dw, <8 x i16> zeroinitializer)
  %i.ea = or <8 x i16> %i.dy, %i.dz
  store <8 x i16> %i.ea, ptr %i.dc, align 2, !tbaa !639, !alias.scope !1268
  %index.next53 = add nuw i64 %index50, 8         ; 2 uses
  %i.eb = icmp eq i64 %index.next53, %n.vec
  br i1 %i.eb, label %middle.block54, label %vector.body49, !llvm.loop !1273

middle.block54:                                   ; preds = %vector.body49
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block54
  %indvars.iv52.i.i.ph = phi i64 [ %indvars.iv.i7.i, %vector.memcheck ], [ %indvars.iv.i7.i, %.lr.ph.preheader.i.i ], [ %i.da, %middle.block54 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block54
  %indvars.iv.next.i9.i = add nuw nsw i64 %indvars.iv.i7.i, %i.br
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next56.i.i = add i32 %indvars.iv55.i.i, %.pre.i.i
  %exitcond63.not.i.i = icmp eq i64 %indvars.iv.next58.i.i, %i.bt
  br i1 %exitcond63.not.i.i, label %._crit_edge48.i.i, label %.lr.ph.preheader.i.i, !llvm.loop !1274

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %.lr.ph.i.i ], [ %indvars.iv52.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %gep.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv52.i.i ; 2 uses
  %i.ec = load i16, ptr %gep.i.i, align 2, !tbaa !639 ; 2 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv52.i.i ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !639 ; 2 uses
  %i.ef = zext i16 %i.ec to i32
  %i.eg = zext i16 %i.ee to i32
  %i.eh = add i16 %i.ee, %i.ec                    ; 2 uses
  %i.ei = add i16 %i.eh, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.ei, 0
  %i.ej = select i1 %isneg.i.i.i, i16 %i.eh, i16 0
  %i.ek = tail call i16 @llvm.smax.i16(i16 %i.ei, i16 0)
  %i.el = or i16 %i.ej, %i.ek
  store i16 %i.el, ptr %i.ed, align 2, !tbaa !639
  %reass.sub = sub nsw i32 %i.eg, %i.ef
  %i.em = add nsw i32 %reass.sub, 3329
  %i.en = mul i32 %i.em, %i.cr                    ; 2 uses
  %i.eo = zext i32 %i.en to i64
  %i.ep = mul nuw nsw i64 %i.eo, 5039
  %i.eq = lshr i64 %i.ep, 24
  %i.er = trunc nuw nsw i64 %i.eq to i32
  %.neg.i.i.i = mul i32 %i.er, 62207
  %i.es = add i32 %.neg.i.i.i, %i.en
  %i.et = trunc i32 %i.es to i16                  ; 2 uses
  %i.eu = add i16 %i.et, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.eu, 0
  %i.ev = select i1 %isneg.i.i.i.i, i16 %i.et, i16 0
  %i.ew = tail call i16 @llvm.smax.i16(i16 %i.eu, i16 0)
  %i.ex = or i16 %i.ev, %i.ew
  store i16 %i.ex, ptr %gep.i.i, align 2, !tbaa !639
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond.not.i8.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i8.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1275

vector.body64:                                    ; preds = %vector.body57, %vector.body64
  %index65 = phi i64 [ %index.next70, %vector.body64 ], [ 0, %vector.body57 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index65 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load66 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !639
  %wide.load67 = load <8 x i16>, ptr %i.ez, align 2, !tbaa !639
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index65 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load68 = load <8 x i16>, ptr %i.fa, align 2, !tbaa !639
  %wide.load69 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !639
  %i.fc = sub <8 x i16> %wide.load66, %wide.load68 ; 3 uses
  %i.fd = sub <8 x i16> %wide.load67, %wide.load69 ; 3 uses
  %i.fe = add <8 x i16> %i.fc, splat (i16 3329)
  %i.ff = add <8 x i16> %i.fd, splat (i16 3329)
  %i.fg = icmp slt <8 x i16> %i.fc, zeroinitializer
  %i.fh = icmp slt <8 x i16> %i.fd, zeroinitializer
  %i.fi = select <8 x i1> %i.fg, <8 x i16> %i.fe, <8 x i16> zeroinitializer
  %i.fj = select <8 x i1> %i.fh, <8 x i16> %i.ff, <8 x i16> zeroinitializer
  %i.fk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fc, <8 x i16> zeroinitializer)
  %i.fl = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fd, <8 x i16> zeroinitializer)
  %i.fm = or <8 x i16> %i.fi, %i.fk
  %i.fn = or <8 x i16> %i.fj, %i.fl
  store <8 x i16> %i.fm, ptr %i.ey, align 2, !tbaa !639
  store <8 x i16> %i.fn, ptr %i.ez, align 2, !tbaa !639
  %index.next70 = add nuw i64 %index65, 16        ; 2 uses
  %i.fo = icmp eq i64 %index.next70, 256
  br i1 %i.fo, label %vector.body74, label %vector.body64, !llvm.loop !1276

vector.body74:                                    ; preds = %vector.body64, %vector.body74
  %index75 = phi i64 [ %index.next77, %vector.body74 ], [ 0, %vector.body64 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index75 ; 2 uses
  %wide.load76 = load <8 x i16>, ptr %i.fp, align 2, !tbaa !639
  %i.fq = zext <8 x i16> %wide.load76 to <8 x i32> ; 2 uses
  %i.fr = shl nuw nsw <8 x i32> %i.fq, splat (i32 1)
  %i.fs = mul nuw nsw <8 x i32> %i.fq, splat (i32 10078)
  %i.ft = lshr <8 x i32> %i.fs, splat (i32 24)    ; 2 uses
  %i.fu = mul nsw <8 x i32> %i.ft, splat (i32 -3329)
  %i.fv = add nsw <8 x i32> %i.fu, %i.fr          ; 2 uses
  %i.fw = icmp ugt <8 x i32> %i.fv, splat (i32 1664)
  %i.fx = icmp ugt <8 x i32> %i.fv, splat (i32 4993)
  %i.fy = trunc <8 x i32> %i.ft to <8 x i1>
  %i.fz = xor <8 x i1> %i.fw, %i.fy
  %i.ga = xor <8 x i1> %i.fx, %i.fz
  %i.gb = zext <8 x i1> %i.ga to <8 x i16>
  store <8 x i16> %i.gb, ptr %i.fp, align 2, !tbaa !639
  %index.next77 = add nuw i64 %index75, 8         ; 2 uses
  %i.gc = icmp eq i64 %index.next77, 256
  br i1 %i.gc, label %vector.body81, label %vector.body74, !llvm.loop !1277

vector.body81:                                    ; preds = %vector.body74, %vector.body81
  %index82 = phi i64 [ %index.next83, %vector.body81 ], [ 0, %vector.body74 ] ; 3 uses
  %i.gd = shl nuw i64 %index82, 3                 ; 8 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 %index82
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gd ; 8 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gd ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gd ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gd ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gd ; 8 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gd ; 8 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 80
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gd ; 8 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gd ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 112
  %i.gu = load i16, ptr %i.gf, align 2, !tbaa !639
  %i.gv = load i16, ptr %i.gh, align 2, !tbaa !639
  %i.gw = load i16, ptr %i.gj, align 2, !tbaa !639
  %i.gx = load i16, ptr %i.gl, align 2, !tbaa !639
  %i.gy = load i16, ptr %i.gn, align 2, !tbaa !639
  %i.gz = load i16, ptr %i.gp, align 2, !tbaa !639
  %i.ha = load i16, ptr %i.gr, align 2, !tbaa !639
  %i.hb = load i16, ptr %i.gt, align 2, !tbaa !639
  %i.hc = insertelement <8 x i16> poison, i16 %i.gu, i64 0
  %i.hd = insertelement <8 x i16> %i.hc, i16 %i.gv, i64 1
  %i.he = insertelement <8 x i16> %i.hd, i16 %i.gw, i64 2
  %i.hf = insertelement <8 x i16> %i.he, i16 %i.gx, i64 3
  %i.hg = insertelement <8 x i16> %i.hf, i16 %i.gy, i64 4
  %i.hh = insertelement <8 x i16> %i.hg, i16 %i.gz, i64 5
  %i.hi = insertelement <8 x i16> %i.hh, i16 %i.ha, i64 6
  %i.hj = insertelement <8 x i16> %i.hi, i16 %i.hb, i64 7
end_hunk_0
begin_hunk_1_@_ZN5mlkem12_GLOBAL__N_124mlkem_decap_no_self_testILi4EEEvPhPKhPKNS0_11private_keyIXT_EEE:vector.ph
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 512
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i.i
  %index27 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i.i ], [ %index.next29, %vector.body26 ] ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %index27 ; 2 uses
  %wide.load28 = load <8 x i16>, ptr %i.p, align 2, !tbaa !639
  %i.q = zext <8 x i16> %wide.load28 to <8 x i32>
  %i.r = mul nuw nsw <8 x i32> %i.q, splat (i32 3329) ; 2 uses
  %i.s = lshr <8 x i32> %i.r, splat (i32 11)
  %i.t = lshr <8 x i32> %i.r, splat (i32 10)
  %i.u = and <8 x i32> %i.t, splat (i32 1)
  %i.v = add nuw nsw <8 x i32> %i.u, %i.s
  %i.w = trunc <8 x i32> %i.v to <8 x i16>
  store <8 x i16> %i.w, ptr %i.p, align 2, !tbaa !639
  %index.next29 = add nuw i64 %index27, 8         ; 2 uses
  %i.x = icmp eq i64 %index.next29, 256
  br i1 %i.x, label %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.1.i.i, label %vector.body26, !llvm.loop !1280

_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.1.i.i: ; preds = %vector.body26
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 1024
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.1.i.i
  %index33 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.1.i.i ], [ %index.next35, %vector.body32 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %index33 ; 2 uses
  %wide.load34 = load <8 x i16>, ptr %i.z, align 2, !tbaa !639
  %i.aa = zext <8 x i16> %wide.load34 to <8 x i32>
  %i.ab = mul nuw nsw <8 x i32> %i.aa, splat (i32 3329) ; 2 uses
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 11)
  %i.ad = lshr <8 x i32> %i.ab, splat (i32 10)
  %i.ae = and <8 x i32> %i.ad, splat (i32 1)
  %i.af = add nuw nsw <8 x i32> %i.ae, %i.ac
  %i.ag = trunc <8 x i32> %i.af to <8 x i16>
  store <8 x i16> %i.ag, ptr %i.z, align 2, !tbaa !639
  %index.next35 = add nuw i64 %index33, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next35, 256
  br i1 %i.ah, label %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.2.i.i, label %vector.body32, !llvm.loop !1281

_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.2.i.i: ; preds = %vector.body32
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 1536
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.2.i.i
  %index39 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.2.i.i ], [ %index.next41, %vector.body38 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %index39 ; 2 uses
  %wide.load40 = load <8 x i16>, ptr %i.aj, align 2, !tbaa !639
  %i.ak = zext <8 x i16> %wide.load40 to <8 x i32>
  %i.al = mul nuw nsw <8 x i32> %i.ak, splat (i32 3329) ; 2 uses
  %i.am = lshr <8 x i32> %i.al, splat (i32 11)
  %i.an = lshr <8 x i32> %i.al, splat (i32 10)
  %i.ao = and <8 x i32> %i.an, splat (i32 1)
  %i.ap = add nuw nsw <8 x i32> %i.ao, %i.am
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  store <8 x i16> %i.aq, ptr %i.aj, align 2, !tbaa !639
  %index.next41 = add nuw i64 %index39, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next41, 256
  br i1 %i.ar, label %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi4EEEvPNS0_6vectorIXT_EEEi.exit.i, label %vector.body38, !llvm.loop !1282

_ZN5mlkem12_GLOBAL__N_117vector_decompressILi4EEEvPNS0_6vectorIXT_EEEi.exit.i: ; preds = %vector.body38
  call fastcc void @_ZN5mlkem12_GLOBAL__N_110vector_nttILi4EEEvPNS0_6vectorIXT_EEE(ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1408
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi4EEEvPNS0_6vectorIXT_EEEi.exit.i
  %indvars.iv.i.i = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi4EEEvPNS0_6vectorIXT_EEEi.exit.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %.03354.i.i = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi4EEEvPNS0_6vectorIXT_EEEi.exit.i ], [ %i.bh, %bb.e ]
  %.03553.i.i = phi i8 [ 0, %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi4EEEvPNS0_6vectorIXT_EEEi.exit.i ], [ %i.bj, %bb.e ]
  %.04152.i.i = phi ptr [ %i.as, %_ZN5mlkem12_GLOBAL__N_117vector_decompressILi4EEEvPNS0_6vectorIXT_EEEi.exit.i ], [ %.243.i.i, %bb.e ]
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %.preheader.i.i
  %.02951.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.bk, %bb.c ] ; 3 uses
  %.03050.i.i = phi i16 [ 0, %.preheader.i.i ], [ %i.bg, %bb.c ]
  %.13449.i.i = phi i32 [ %.03354.i.i, %.preheader.i.i ], [ %i.bh, %bb.c ] ; 2 uses
  %.13648.i.i = phi i8 [ %.03553.i.i, %.preheader.i.i ], [ %i.bj, %bb.c ]
  %.14247.i.i = phi ptr [ %.04152.i.i, %.preheader.i.i ], [ %.243.i.i, %bb.c ] ; 3 uses
  %i.at = icmp eq i32 %.13449.i.i, 0
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = load i8, ptr %.14247.i.i, align 1, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.14247.i.i, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.243.i.i = phi ptr [ %i.av, %bb.b ], [ %.14247.i.i, %bb.a ] ; 2 uses
  %.237.i.i = phi i8 [ %i.au, %bb.b ], [ %.13648.i.i, %bb.a ] ; 2 uses
  %.2.i.i = phi i32 [ 8, %bb.b ], [ %.13449.i.i, %bb.a ] ; 2 uses
  %i.aw = sub nsw i32 5, %.02951.i.i
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %.2.i.i) ; 4 uses
  %i.ax = zext i8 %.237.i.i to i32
  %i.ay = sext i32 %spec.select.i.i to i64
  %i.az = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bc = and i8 %i.bb, %.237.i.i
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, %.02951.i.i
  %i.bf = trunc i32 %i.be to i16
  %i.bg = or i16 %.03050.i.i, %i.bf               ; 3 uses
  %i.bh = sub nsw i32 %.2.i.i, %spec.select.i.i   ; 2 uses
  %i.bi = lshr i32 %i.ax, %spec.select.i.i
  %i.bj = trunc nuw nsw i32 %i.bi to i8           ; 2 uses
  %i.bk = add nsw i32 %spec.select.i.i, %.02951.i.i ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 5
  br i1 %i.bl, label %bb.a, label %bb.d, !llvm.loop !1263

bb.d:                                             ; preds = %bb.c
  %i.bm = icmp ugt i16 %i.bg, 3328
  %i.bn = zext i1 %i.bm to i32
  %i.bo = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bn) #38, !srcloc !367
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %bb.e, label %vector.body44.preheader

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.i.i
  store i16 %i.bg, ptr %i.bp, align 2, !tbaa !639
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.i.i, label %vector.body44.preheader, label %.preheader.i.i, !llvm.loop !1264

vector.body44.preheader:                          ; preds = %bb.d, %bb.e
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44.preheader, %vector.body44
  %index45 = phi i64 [ %index.next47, %vector.body44 ], [ 0, %vector.body44.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index45 ; 2 uses
  %wide.load46 = load <8 x i16>, ptr %i.bq, align 2, !tbaa !639
  %i.br = zext <8 x i16> %wide.load46 to <8 x i32>
  %i.bs = mul nuw nsw <8 x i32> %i.br, splat (i32 3329) ; 2 uses
  %i.bt = lshr <8 x i32> %i.bs, splat (i32 5)
  %i.bu = lshr <8 x i32> %i.bs, splat (i32 4)
  %i.bv = and <8 x i32> %i.bu, splat (i32 1)
  %i.bw = add nuw nsw <8 x i32> %i.bv, %i.bt
  %i.bx = trunc <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %i.bq, align 2, !tbaa !639
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next47, 256
  br i1 %i.by, label %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i, label %vector.body44, !llvm.loop !1283

_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i: ; preds = %vector.body44
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 10304
  call fastcc void @_ZN5mlkem12_GLOBAL__N_120scalar_inner_productILi4EEEvPNS0_6scalarEPKNS0_6vectorIXT_EEES7_(ptr noundef %7, ptr noundef nonnull readonly %i.bz, ptr noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge48.i.i, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i
  %.03550.i.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i ], [ %i.ca, %._crit_edge48.i.i ]
  %.03649.i.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i ], [ %.pre.i.i, %._crit_edge48.i.i ] ; 3 uses
  %i.ca = lshr i32 %.03550.i.i, 1                 ; 3 uses
  %.not.i6.i = icmp eq i32 %i.ca, 0
  %.pre.i.i = shl i32 %.03649.i.i, 1              ; 4 uses
  br i1 %.not.i6.i, label %._crit_edge48.i.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %bb.f
  %i.cb = zext i32 %.pre.i.i to i64               ; 4 uses
  %i.cc = sext i32 %.03649.i.i to i64             ; 2 uses
  %i.cd = zext nneg i32 %i.ca to i64              ; 2 uses
  %invariant.gep68.i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.cd
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %7, i64 %i.cc ; 2 uses
  %i.ce = shl nuw nsw i64 %i.cb, 1
  %i.cf = shl nuw nsw i64 %i.cc, 1                ; 2 uses
  %i.cg = getelementptr i8, ptr %7, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 2
  %i.ci = getelementptr i8, ptr %7, i64 %i.cf
  br label %.lr.ph.preheader.i.i

._crit_edge48.i.i:                                ; preds = %._crit_edge.i.i, %bb.f
  %i.cj = icmp slt i32 %.pre.i.i, 256
  br i1 %i.cj, label %bb.f, label %vector.body63, !llvm.loop !1266

vector.body63:                                    ; preds = %._crit_edge48.i.i, %vector.body63
  %index64 = phi i64 [ %index.next66, %vector.body63 ], [ 0, %._crit_edge48.i.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index64 ; 2 uses
  %wide.load65 = load <8 x i16>, ptr %i.ck, align 2, !tbaa !639
  %i.cl = zext <8 x i16> %wide.load65 to <8 x i32>
  %i.cm = mul nuw nsw <8 x i32> %i.cl, splat (i32 3303) ; 2 uses
  %i.cn = zext nneg <8 x i32> %i.cm to <8 x i64>
  %i.co = mul nuw nsw <8 x i64> %i.cn, splat (i64 5039)
  %i.cp = lshr <8 x i64> %i.co, splat (i64 24)
  %i.cq = trunc nuw nsw <8 x i64> %i.cp to <8 x i32>
  %i.cr = mul nuw <8 x i32> %i.cq, splat (i32 62207)
  %i.cs = add nuw <8 x i32> %i.cr, %i.cm
  %i.ct = trunc <8 x i32> %i.cs to <8 x i16>      ; 2 uses
  %i.cu = add <8 x i16> %i.ct, splat (i16 -3329)  ; 2 uses
  %i.cv = icmp slt <8 x i16> %i.cu, zeroinitializer
  %i.cw = select <8 x i1> %i.cv, <8 x i16> %i.ct, <8 x i16> zeroinitializer
  %i.cx = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cu, <8 x i16> zeroinitializer)
  %i.cy = or <8 x i16> %i.cw, %i.cx
  store <8 x i16> %i.cy, ptr %i.ck, align 2, !tbaa !639
  %index.next66 = add nuw i64 %index64, 8         ; 2 uses
  %i.cz = icmp eq i64 %index.next66, 256
  br i1 %i.cz, label %vector.body70, label %vector.body63, !llvm.loop !1284

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i, %.lr.ph47.i.i
  %indvars.iv57.i.i = phi i64 [ 0, %.lr.ph47.i.i ], [ %indvars.iv.next58.i.i, %._crit_edge.i.i ] ; 5 uses
  %indvars.iv55.i.i = phi i32 [ %.03649.i.i, %.lr.ph47.i.i ], [ %indvars.iv.next56.i.i, %._crit_edge.i.i ] ; 3 uses
  %indvars.iv.i7.i = phi i64 [ 0, %.lr.ph47.i.i ], [ %indvars.iv.next.i9.i, %._crit_edge.i.i ] ; 5 uses
  %gep69.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.i, i64 %indvars.iv57.i.i
  %i.da = load i16, ptr %gep69.i.i, align 2, !tbaa !639
  %i.db = zext i16 %i.da to i32                   ; 2 uses
  %wide.trip.count.i.i = zext i32 %indvars.iv55.i.i to i64 ; 2 uses
  %8 = mul i64 %indvars.iv57.i.i, %i.cb
  %i.dc = sub i64 %wide.trip.count.i.i, %8        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dc, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.dd = mul i64 %i.ce, %indvars.iv57.i.i        ; 4 uses
  %scevgep52 = getelementptr i8, ptr %i.ch, i64 %i.dd
  %i.de = mul i64 %indvars.iv57.i.i, %i.cb
  %i.df = xor i64 %i.de, -1
  %i.dg = zext nneg i32 %indvars.iv55.i.i to i64
  %i.dh = add i64 %i.df, %i.dg
  %i.di = shl nsw i64 %i.dh, 1                    ; 2 uses
  %scevgep53 = getelementptr i8, ptr %scevgep52, i64 %i.di
  %scevgep51 = getelementptr i8, ptr %i.ci, i64 %i.dd
  %i.dj = getelementptr i8, ptr %7, i64 %i.dd
  %scevgep49 = getelementptr i8, ptr %i.dj, i64 2
  %scevgep50 = getelementptr i8, ptr %scevgep49, i64 %i.di
  %scevgep = getelementptr nuw i8, ptr %7, i64 %i.dd
  %bound0 = icmp ult ptr %scevgep, %scevgep53
  %bound1 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph54

vector.ph54:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %i.dc, -8                      ; 3 uses
  %i.dk = add i64 %indvars.iv.i7.i, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.db, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph54
  %index56 = phi i64 [ 0, %vector.ph54 ], [ %index.next59, %vector.body55 ] ; 2 uses
  %i.dl = add nuw i64 %indvars.iv.i7.i, %index56  ; 2 uses
  %i.dm = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %i.dl ; 2 uses
  %wide.load57 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !639, !alias.scope !1285 ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %i.dl ; 2 uses
  %wide.load58 = load <8 x i16>, ptr %i.dn, align 2, !tbaa !639, !alias.scope !1288, !noalias !1285 ; 2 uses
  %i.do = zext <8 x i16> %wide.load57 to <8 x i32>
  %i.dp = zext <8 x i16> %wide.load58 to <8 x i32>
  %i.dq = add <8 x i16> %wide.load58, %wide.load57 ; 2 uses
  %i.dr = add <8 x i16> %i.dq, splat (i16 -3329)  ; 2 uses
  %i.ds = icmp slt <8 x i16> %i.dr, zeroinitializer
  %i.dt = select <8 x i1> %i.ds, <8 x i16> %i.dq, <8 x i16> zeroinitializer
  %i.du = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dr, <8 x i16> zeroinitializer)
  %i.dv = or <8 x i16> %i.dt, %i.du
  store <8 x i16> %i.dv, ptr %i.dn, align 2, !tbaa !639, !alias.scope !1288, !noalias !1285
  %i.dw = sub nsw <8 x i32> %i.dp, %i.do
  %i.dx = add nsw <8 x i32> %i.dw, splat (i32 3329)
  %i.dy = mul <8 x i32> %i.dx, %broadcast.splat   ; 2 uses
  %i.dz = zext <8 x i32> %i.dy to <8 x i64>
  %i.ea = mul nuw nsw <8 x i64> %i.dz, splat (i64 5039)
  %i.eb = lshr <8 x i64> %i.ea, splat (i64 24)
  %i.ec = trunc nuw nsw <8 x i64> %i.eb to <8 x i32>
  %i.ed = mul <8 x i32> %i.ec, splat (i32 62207)
  %i.ee = add <8 x i32> %i.ed, %i.dy
  %i.ef = trunc <8 x i32> %i.ee to <8 x i16>      ; 2 uses
  %i.eg = add <8 x i16> %i.ef, splat (i16 -3329)  ; 2 uses
  %i.eh = icmp slt <8 x i16> %i.eg, zeroinitializer
  %i.ei = select <8 x i1> %i.eh, <8 x i16> %i.ef, <8 x i16> zeroinitializer
  %i.ej = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.eg, <8 x i16> zeroinitializer)
  %i.ek = or <8 x i16> %i.ei, %i.ej
  store <8 x i16> %i.ek, ptr %i.dm, align 2, !tbaa !639, !alias.scope !1285
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.el = icmp eq i64 %index.next59, %n.vec
  br i1 %i.el, label %middle.block60, label %vector.body55, !llvm.loop !1290

middle.block60:                                   ; preds = %vector.body55
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block60
  %indvars.iv52.i.i.ph = phi i64 [ %indvars.iv.i7.i, %vector.memcheck ], [ %indvars.iv.i7.i, %.lr.ph.preheader.i.i ], [ %i.dk, %middle.block60 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block60
  %indvars.iv.next.i9.i = add nuw nsw i64 %indvars.iv.i7.i, %i.cb
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next56.i.i = add i32 %indvars.iv55.i.i, %.pre.i.i
  %exitcond63.not.i.i = icmp eq i64 %indvars.iv.next58.i.i, %i.cd
  br i1 %exitcond63.not.i.i, label %._crit_edge48.i.i, label %.lr.ph.preheader.i.i, !llvm.loop !1274

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %.lr.ph.i.i ], [ %indvars.iv52.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %gep.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv52.i.i ; 2 uses
  %i.em = load i16, ptr %gep.i.i, align 2, !tbaa !639 ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv52.i.i ; 2 uses
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !639 ; 2 uses
  %i.ep = zext i16 %i.em to i32
  %i.eq = zext i16 %i.eo to i32
  %i.er = add i16 %i.eo, %i.em                    ; 2 uses
  %i.es = add i16 %i.er, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.es, 0
  %i.et = select i1 %isneg.i.i.i, i16 %i.er, i16 0
  %i.eu = tail call i16 @llvm.smax.i16(i16 %i.es, i16 0)
  %i.ev = or i16 %i.et, %i.eu
  store i16 %i.ev, ptr %i.en, align 2, !tbaa !639
  %reass.sub = sub nsw i32 %i.eq, %i.ep
  %i.ew = add nsw i32 %reass.sub, 3329
  %i.ex = mul i32 %i.ew, %i.db                    ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = mul nuw nsw i64 %i.ey, 5039
  %i.fa = lshr i64 %i.ez, 24
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %.neg.i.i.i = mul i32 %i.fb, 62207
  %i.fc = add i32 %.neg.i.i.i, %i.ex
  %i.fd = trunc i32 %i.fc to i16                  ; 2 uses
  %i.fe = add i16 %i.fd, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.fe, 0
  %i.ff = select i1 %isneg.i.i.i.i, i16 %i.fd, i16 0
  %i.fg = tail call i16 @llvm.smax.i16(i16 %i.fe, i16 0)
  %i.fh = or i16 %i.ff, %i.fg
  store i16 %i.fh, ptr %gep.i.i, align 2, !tbaa !639
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond.not.i8.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i8.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1291

vector.body70:                                    ; preds = %vector.body63, %vector.body70
  %index71 = phi i64 [ %index.next76, %vector.body70 ], [ 0, %vector.body63 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index71 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %wide.load72 = load <8 x i16>, ptr %i.fi, align 2, !tbaa !639
  %wide.load73 = load <8 x i16>, ptr %i.fj, align 2, !tbaa !639
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index71 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load74 = load <8 x i16>, ptr %i.fk, align 2, !tbaa !639
  %wide.load75 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !639
  %i.fm = sub <8 x i16> %wide.load72, %wide.load74 ; 3 uses
  %i.fn = sub <8 x i16> %wide.load73, %wide.load75 ; 3 uses
  %i.fo = add <8 x i16> %i.fm, splat (i16 3329)
  %i.fp = add <8 x i16> %i.fn, splat (i16 3329)
  %i.fq = icmp slt <8 x i16> %i.fm, zeroinitializer
  %i.fr = icmp slt <8 x i16> %i.fn, zeroinitializer
  %i.fs = select <8 x i1> %i.fq, <8 x i16> %i.fo, <8 x i16> zeroinitializer
  %i.ft = select <8 x i1> %i.fr, <8 x i16> %i.fp, <8 x i16> zeroinitializer
  %i.fu = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fm, <8 x i16> zeroinitializer)
  %i.fv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fn, <8 x i16> zeroinitializer)
  %i.fw = or <8 x i16> %i.fs, %i.fu
  %i.fx = or <8 x i16> %i.ft, %i.fv
  store <8 x i16> %i.fw, ptr %i.fi, align 2, !tbaa !639
  store <8 x i16> %i.fx, ptr %i.fj, align 2, !tbaa !639
  %index.next76 = add nuw i64 %index71, 16        ; 2 uses
  %i.fy = icmp eq i64 %index.next76, 256
  br i1 %i.fy, label %vector.body80, label %vector.body70, !llvm.loop !1292

vector.body80:                                    ; preds = %vector.body70, %vector.body80
  %index81 = phi i64 [ %index.next83, %vector.body80 ], [ 0, %vector.body70 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index81 ; 2 uses
  %wide.load82 = load <8 x i16>, ptr %i.fz, align 2, !tbaa !639
  %i.ga = zext <8 x i16> %wide.load82 to <8 x i32> ; 2 uses
  %i.gb = shl nuw nsw <8 x i32> %i.ga, splat (i32 1)
  %i.gc = mul nuw nsw <8 x i32> %i.ga, splat (i32 10078)
  %i.gd = lshr <8 x i32> %i.gc, splat (i32 24)    ; 2 uses
  %i.ge = mul nsw <8 x i32> %i.gd, splat (i32 -3329)
  %i.gf = add nsw <8 x i32> %i.ge, %i.gb          ; 2 uses
  %i.gg = icmp ugt <8 x i32> %i.gf, splat (i32 1664)
  %i.gh = icmp ugt <8 x i32> %i.gf, splat (i32 4993)
  %i.gi = trunc <8 x i32> %i.gd to <8 x i1>
  %i.gj = xor <8 x i1> %i.gg, %i.gi
  %i.gk = xor <8 x i1> %i.gh, %i.gj
  %i.gl = zext <8 x i1> %i.gk to <8 x i16>
  store <8 x i16> %i.gl, ptr %i.fz, align 2, !tbaa !639
  %index.next83 = add nuw i64 %index81, 8         ; 2 uses
  %i.gm = icmp eq i64 %index.next83, 256
  br i1 %i.gm, label %vector.body87, label %vector.body80, !llvm.loop !1293

vector.body87:                                    ; preds = %vector.body80, %vector.body87
  %index88 = phi i64 [ %index.next89, %vector.body87 ], [ 0, %vector.body80 ] ; 3 uses
  %i.gn = shl nuw i64 %index88, 3                 ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 %index88
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gn ; 8 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gn ; 8 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gn ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gn ; 8 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gn ; 8 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gn ; 8 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 80
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gn ; 8 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 96
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gn ; 8 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 112
  %i.he = load i16, ptr %i.gp, align 2, !tbaa !639
  %i.hf = load i16, ptr %i.gr, align 2, !tbaa !639
  %i.hg = load i16, ptr %i.gt, align 2, !tbaa !639
  %i.hh = load i16, ptr %i.gv, align 2, !tbaa !639
  %i.hi = load i16, ptr %i.gx, align 2, !tbaa !639
  %i.hj = load i16, ptr %i.gz, align 2, !tbaa !639
  %i.hk = load i16, ptr %i.hb, align 2, !tbaa !639
  %i.hl = load i16, ptr %i.hd, align 2, !tbaa !639
  %i.hm = insertelement <8 x i16> poison, i16 %i.he, i64 0
  %i.hn = insertelement <8 x i16> %i.hm, i16 %i.hf, i64 1
  %i.ho = insertelement <8 x i16> %i.hn, i16 %i.hg, i64 2
  %i.hp = insertelement <8 x i16> %i.ho, i16 %i.hh, i64 3
  %i.hq = insertelement <8 x i16> %i.hp, i16 %i.hi, i64 4
  %i.hr = insertelement <8 x i16> %i.hq, i16 %i.hj, i64 5
  %i.hs = insertelement <8 x i16> %i.hr, i16 %i.hk, i64 6
  %i.ht = insertelement <8 x i16> %i.hs, i16 %i.hl, i64 7
end_hunk_1
begin_hunk_2_@_ZN5mlkem12_GLOBAL__N_111encrypt_cpaILi3EEEvPhPKNS0_10public_keyIXT_EEEPKhS8_:bb.a
  %i.ic = add <8 x i16> %wide.load103, %wide.load ; 2 uses
  %i.id = add <8 x i16> %wide.load104, %wide.load102 ; 2 uses
  %i.ie = add <8 x i16> %i.ic, splat (i16 -3329)  ; 2 uses
  %i.if = add <8 x i16> %i.id, splat (i16 -3329)  ; 2 uses
  %i.ig = icmp slt <8 x i16> %i.ie, zeroinitializer
  %i.ih = icmp slt <8 x i16> %i.if, zeroinitializer
  %i.ii = select <8 x i1> %i.ig, <8 x i16> %i.ic, <8 x i16> zeroinitializer
  %i.ij = select <8 x i1> %i.ih, <8 x i16> %i.id, <8 x i16> zeroinitializer
  %i.ik = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ie, <8 x i16> zeroinitializer)
  %i.il = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.if, <8 x i16> zeroinitializer)
  %i.im = or <8 x i16> %i.ii, %i.ik
  %i.in = or <8 x i16> %i.ij, %i.il
  store <8 x i16> %i.im, ptr %i.hy, align 2, !tbaa !639
  store <8 x i16> %i.in, ptr %i.hz, align 2, !tbaa !639
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.io = icmp eq i64 %index.next, 256
  br i1 %i.io, label %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.2.i, label %vector.body, !llvm.loop !1797

_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.2.i: ; preds = %vector.body
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i, label %_ZN5mlkem12_GLOBAL__N_111matrix_multILi3EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EEEPKS3_.exit, label %.preheader.i, !llvm.loop !1798

_ZN5mlkem12_GLOBAL__N_111matrix_multILi3EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EEEPKS3_.exit: ; preds = %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.2.i, %._crit_edge48.i.i
  %.03550.i.i = phi i32 [ %i.ip, %._crit_edge48.i.i ], [ 128, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.2.i ]
  %.03649.i.i = phi i32 [ %.pre.i.i, %._crit_edge48.i.i ], [ 2, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.2.i ] ; 3 uses
  %i.ip = lshr i32 %.03550.i.i, 1                 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ip, 0
  %.pre.i.i = shl i32 %.03649.i.i, 1              ; 3 uses
  br i1 %.not.i.i, label %._crit_edge48.i.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %_ZN5mlkem12_GLOBAL__N_111matrix_multILi3EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EEEPKS3_.exit
  %i.iq = zext i32 %.pre.i.i to i64               ; 2 uses
  %i.ir = sext i32 %.03649.i.i to i64             ; 4 uses
  %i.is = zext nneg i32 %i.ip to i64              ; 2 uses
  %invariant.gep68.i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.is
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %8, i64 %i.ir ; 2 uses
  %min.iters.check = icmp ult i32 %.03649.i.i, 8
  %n.vec = and i64 %i.ir, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ir
  br label %.lr.ph.preheader.i.i

._crit_edge48.i.i:                                ; preds = %._crit_edge.i.i, %_ZN5mlkem12_GLOBAL__N_111matrix_multILi3EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EEEPKS3_.exit
  %i.it = icmp slt i32 %.pre.i.i, 256
  br i1 %i.it, label %_ZN5mlkem12_GLOBAL__N_111matrix_multILi3EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EEEPKS3_.exit, label %vector.body168, !llvm.loop !1266

vector.body168:                                   ; preds = %._crit_edge48.i.i, %vector.body168
  %index169 = phi i64 [ %index.next171, %vector.body168 ], [ 0, %._crit_edge48.i.i ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index169 ; 2 uses
  %wide.load170 = load <8 x i16>, ptr %i.iu, align 2, !tbaa !639
  %i.iv = zext <8 x i16> %wide.load170 to <8 x i32>
  %i.iw = mul nuw nsw <8 x i32> %i.iv, splat (i32 3303) ; 2 uses
  %i.ix = zext nneg <8 x i32> %i.iw to <8 x i64>
  %i.iy = mul nuw nsw <8 x i64> %i.ix, splat (i64 5039)
  %i.iz = lshr <8 x i64> %i.iy, splat (i64 24)
  %i.ja = trunc nuw nsw <8 x i64> %i.iz to <8 x i32>
  %i.jb = mul nuw <8 x i32> %i.ja, splat (i32 62207)
  %i.jc = add nuw <8 x i32> %i.jb, %i.iw
  %i.jd = trunc <8 x i32> %i.jc to <8 x i16>      ; 2 uses
  %i.je = add <8 x i16> %i.jd, splat (i16 -3329)  ; 2 uses
  %i.jf = icmp slt <8 x i16> %i.je, zeroinitializer
  %i.jg = select <8 x i1> %i.jf, <8 x i16> %i.jd, <8 x i16> zeroinitializer
  %i.jh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.je, <8 x i16> zeroinitializer)
  %i.ji = or <8 x i16> %i.jg, %i.jh
  store <8 x i16> %i.ji, ptr %i.iu, align 2, !tbaa !639
  %index.next171 = add nuw i64 %index169, 8       ; 2 uses
  %i.jj = icmp eq i64 %index.next171, 256
  br i1 %i.jj, label %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.i, label %vector.body168, !llvm.loop !1799

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i, %.lr.ph47.i.i
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i15, %._crit_edge.i.i ], [ %i.ir, %.lr.ph47.i.i ] ; 2 uses
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i ] ; 2 uses
  %indvars.iv.i.i9 = phi i64 [ %indvars.iv.next.i.i14, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i ] ; 4 uses
  %gep69.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.i, i64 %indvars.iv57.i.i
  %i.jk = load i16, ptr %gep69.i.i, align 2, !tbaa !639
  %i.jl = zext i16 %i.jk to i32                   ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph.preheader.i.i
  %i.jm = add i64 %indvars.iv.i.i9, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.jl, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph159
  %index161 = phi i64 [ 0, %vector.ph159 ], [ %index.next164, %vector.body160 ] ; 2 uses
  %i.jn = add nuw i64 %indvars.iv.i.i9, %index161 ; 2 uses
  %i.jo = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %i.jn ; 2 uses
  %wide.load162 = load <8 x i16>, ptr %i.jo, align 2, !tbaa !639 ; 2 uses
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.jn ; 2 uses
  %wide.load163 = load <8 x i16>, ptr %i.jp, align 2, !tbaa !639 ; 2 uses
  %i.jq = zext <8 x i16> %wide.load162 to <8 x i32>
  %i.jr = zext <8 x i16> %wide.load163 to <8 x i32>
  %i.js = add <8 x i16> %wide.load163, %wide.load162 ; 2 uses
  %i.jt = add <8 x i16> %i.js, splat (i16 -3329)  ; 2 uses
  %i.ju = icmp slt <8 x i16> %i.jt, zeroinitializer
  %i.jv = select <8 x i1> %i.ju, <8 x i16> %i.js, <8 x i16> zeroinitializer
  %i.jw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jt, <8 x i16> zeroinitializer)
  %i.jx = or <8 x i16> %i.jv, %i.jw
  store <8 x i16> %i.jx, ptr %i.jp, align 2, !tbaa !639
  %i.jy = sub nsw <8 x i32> %i.jr, %i.jq
  %i.jz = add nsw <8 x i32> %i.jy, splat (i32 3329)
  %i.ka = mul <8 x i32> %i.jz, %broadcast.splat   ; 2 uses
  %i.kb = zext <8 x i32> %i.ka to <8 x i64>
  %i.kc = mul nuw nsw <8 x i64> %i.kb, splat (i64 5039)
  %i.kd = lshr <8 x i64> %i.kc, splat (i64 24)
  %i.ke = trunc nuw nsw <8 x i64> %i.kd to <8 x i32>
  %i.kf = mul <8 x i32> %i.ke, splat (i32 62207)
  %i.kg = add <8 x i32> %i.kf, %i.ka
  %i.kh = trunc <8 x i32> %i.kg to <8 x i16>      ; 2 uses
  %i.ki = add <8 x i16> %i.kh, splat (i16 -3329)  ; 2 uses
  %i.kj = icmp slt <8 x i16> %i.ki, zeroinitializer
  %i.kk = select <8 x i1> %i.kj, <8 x i16> %i.kh, <8 x i16> zeroinitializer
  %i.kl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ki, <8 x i16> zeroinitializer)
  %i.km = or <8 x i16> %i.kk, %i.kl
  store <8 x i16> %i.km, ptr %i.jo, align 2, !tbaa !639
  %index.next164 = add nuw i64 %index161, 8       ; 2 uses
  %i.kn = icmp eq i64 %index.next164, %n.vec
  br i1 %i.kn, label %middle.block165, label %vector.body160, !llvm.loop !1800

middle.block165:                                  ; preds = %vector.body160
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block165
  %indvars.iv52.i.i.ph = phi i64 [ %indvars.iv.i.i9, %.lr.ph.preheader.i.i ], [ %i.jm, %middle.block165 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block165
  %indvars.iv.next.i.i14 = add nuw nsw i64 %indvars.iv.i.i9, %i.iq
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i8, %i.iq
  %exitcond63.not.i.i = icmp eq i64 %indvars.iv.next58.i.i, %i.is
  br i1 %exitcond63.not.i.i, label %._crit_edge48.i.i, label %.lr.ph.preheader.i.i, !llvm.loop !1274

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %.lr.ph.i.i ], [ %indvars.iv52.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %gep.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv52.i.i ; 2 uses
  %i.ko = load i16, ptr %gep.i.i, align 2, !tbaa !639 ; 2 uses
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv52.i.i ; 2 uses
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !639 ; 2 uses
  %i.kr = zext i16 %i.ko to i32
  %i.ks = zext i16 %i.kq to i32
  %i.kt = add i16 %i.kq, %i.ko                    ; 2 uses
  %i.ku = add i16 %i.kt, -3329                    ; 2 uses
  %isneg.i.i.i10 = icmp slt i16 %i.ku, 0
  %i.kv = select i1 %isneg.i.i.i10, i16 %i.kt, i16 0
  %i.kw = tail call i16 @llvm.smax.i16(i16 %i.ku, i16 0)
  %i.kx = or i16 %i.kv, %i.kw
  store i16 %i.kx, ptr %i.kp, align 2, !tbaa !639
  %reass.sub = sub nsw i32 %i.ks, %i.kr
  %i.ky = add nsw i32 %reass.sub, 3329
  %i.kz = mul i32 %i.ky, %i.jl                    ; 2 uses
  %i.la = zext i32 %i.kz to i64
  %i.lb = mul nuw nsw i64 %i.la, 5039
  %i.lc = lshr i64 %i.lb, 24
  %i.ld = trunc nuw nsw i64 %i.lc to i32
  %.neg.i.i.i11 = mul i32 %i.ld, 62207
  %i.le = add i32 %.neg.i.i.i11, %i.kz
  %i.lf = trunc i32 %i.le to i16                  ; 2 uses
  %i.lg = add i16 %i.lf, -3329                    ; 2 uses
  %isneg.i.i.i.i12 = icmp slt i16 %i.lg, 0
  %i.lh = select i1 %isneg.i.i.i.i12, i16 %i.lf, i16 0
  %i.li = tail call i16 @llvm.smax.i16(i16 %i.lg, i16 0)
  %i.lj = or i16 %i.lh, %i.li
  store i16 %i.lj, ptr %gep.i.i, align 2, !tbaa !639
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond.not.i.i13 = icmp eq i64 %indvars.iv.next53.i.i, %indvars.iv.i8
  br i1 %exitcond.not.i.i13, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1801

_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.i: ; preds = %vector.body168
  %i.lk = getelementptr inbounds nuw i8, ptr %8, i64 512 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge48.i.1.i, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.i
  %.03550.i.1.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.i ], [ %i.ll, %._crit_edge48.i.1.i ]
  %.03649.i.1.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.i ], [ %.pre.i.1.i, %._crit_edge48.i.1.i ] ; 3 uses
  %i.ll = lshr i32 %.03550.i.1.i, 1               ; 3 uses
  %.not.i.1.i = icmp eq i32 %i.ll, 0
  %.pre.i.1.i = shl i32 %.03649.i.1.i, 1          ; 4 uses
  br i1 %.not.i.1.i, label %._crit_edge48.i.1.i, label %.lr.ph47.i.1.i

.lr.ph47.i.1.i:                                   ; preds = %bb.b
  %i.lm = zext i32 %.pre.i.1.i to i64             ; 4 uses
  %i.ln = sext i32 %.03649.i.1.i to i64           ; 2 uses
  %i.lo = zext nneg i32 %i.ll to i64              ; 2 uses
  %invariant.gep68.i.1.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.lo
  %invariant.gep.i.1.i = getelementptr [2 x i8], ptr %i.lk, i64 %i.ln ; 2 uses
  %i.lp = shl nuw nsw i64 %i.lm, 1
  %i.lq = shl nuw nsw i64 %i.ln, 1                ; 2 uses
  %i.lr = getelementptr i8, ptr %8, i64 %i.lq
  %i.ls = getelementptr i8, ptr %i.lr, i64 514
  %i.lt = getelementptr i8, ptr %8, i64 %i.lq
  %i.lu = getelementptr i8, ptr %i.lt, i64 512
  br label %.lr.ph.preheader.i.1.i

.lr.ph.preheader.i.1.i:                           ; preds = %._crit_edge.i.1.i, %.lr.ph47.i.1.i
  %indvars.iv57.i.1.i = phi i64 [ 0, %.lr.ph47.i.1.i ], [ %indvars.iv.next58.i.1.i, %._crit_edge.i.1.i ] ; 5 uses
  %indvars.iv55.i.1.i = phi i32 [ %.03649.i.1.i, %.lr.ph47.i.1.i ], [ %indvars.iv.next56.i.1.i, %._crit_edge.i.1.i ] ; 3 uses
  %indvars.iv.i.1.i16 = phi i64 [ 0, %.lr.ph47.i.1.i ], [ %indvars.iv.next.i.1.i21, %._crit_edge.i.1.i ] ; 5 uses
  %gep69.i.1.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.1.i, i64 %indvars.iv57.i.1.i
  %i.lv = load i16, ptr %gep69.i.1.i, align 2, !tbaa !639
  %i.lw = zext i16 %i.lv to i32                   ; 2 uses
  %wide.trip.count.i.1.i = zext i32 %indvars.iv55.i.1.i to i64 ; 2 uses
  %11 = mul i64 %indvars.iv57.i.1.i, %i.lm
  %i.lx = sub i64 %wide.trip.count.i.1.i, %11     ; 3 uses
  %min.iters.check179 = icmp ult i64 %i.lx, 8
  br i1 %min.iters.check179, label %.lr.ph.i.1.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.1.i
  %i.ly = mul i64 %i.lp, %indvars.iv57.i.1.i      ; 4 uses
  %scevgep176 = getelementptr i8, ptr %i.ls, i64 %i.ly
  %i.lz = mul i64 %indvars.iv57.i.1.i, %i.lm
  %i.ma = xor i64 %i.lz, -1
  %i.mb = zext nneg i32 %indvars.iv55.i.1.i to i64
  %i.mc = add i64 %i.ma, %i.mb
  %i.md = shl nsw i64 %i.mc, 1                    ; 2 uses
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.md
  %scevgep175 = getelementptr i8, ptr %i.lu, i64 %i.ly
  %i.me = getelementptr i8, ptr %8, i64 %i.ly
  %scevgep173 = getelementptr i8, ptr %i.me, i64 514
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.md
  %i.mf = getelementptr i8, ptr %8, i64 %i.ly
  %scevgep = getelementptr i8, ptr %i.mf, i64 512
  %bound0 = icmp ult ptr %scevgep, %scevgep177
  %bound1 = icmp ult ptr %scevgep175, %scevgep174
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.1.i.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %vector.memcheck
  %n.vec181 = and i64 %i.lx, -8                   ; 3 uses
  %i.mg = add i64 %indvars.iv.i.1.i16, %n.vec181
  %broadcast.splatinsert182 = insertelement <8 x i32> poison, i32 %i.lw, i64 0
  %broadcast.splat183 = shufflevector <8 x i32> %broadcast.splatinsert182, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph180
  %index185 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body184 ] ; 2 uses
  %i.mh = add nuw i64 %indvars.iv.i.1.i16, %index185 ; 2 uses
  %i.mi = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %i.mh ; 2 uses
  %wide.load186 = load <8 x i16>, ptr %i.mi, align 2, !tbaa !639, !alias.scope !1802 ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %i.mh ; 2 uses
  %wide.load187 = load <8 x i16>, ptr %i.mj, align 2, !tbaa !639, !alias.scope !1805, !noalias !1802 ; 2 uses
  %i.mk = zext <8 x i16> %wide.load186 to <8 x i32>
  %i.ml = zext <8 x i16> %wide.load187 to <8 x i32>
  %i.mm = add <8 x i16> %wide.load187, %wide.load186 ; 2 uses
  %i.mn = add <8 x i16> %i.mm, splat (i16 -3329)  ; 2 uses
  %i.mo = icmp slt <8 x i16> %i.mn, zeroinitializer
  %i.mp = select <8 x i1> %i.mo, <8 x i16> %i.mm, <8 x i16> zeroinitializer
  %i.mq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mn, <8 x i16> zeroinitializer)
  %i.mr = or <8 x i16> %i.mp, %i.mq
  store <8 x i16> %i.mr, ptr %i.mj, align 2, !tbaa !639, !alias.scope !1805, !noalias !1802
  %i.ms = sub nsw <8 x i32> %i.ml, %i.mk
  %i.mt = add nsw <8 x i32> %i.ms, splat (i32 3329)
  %i.mu = mul <8 x i32> %i.mt, %broadcast.splat183 ; 2 uses
  %i.mv = zext <8 x i32> %i.mu to <8 x i64>
  %i.mw = mul nuw nsw <8 x i64> %i.mv, splat (i64 5039)
  %i.mx = lshr <8 x i64> %i.mw, splat (i64 24)
  %i.my = trunc nuw nsw <8 x i64> %i.mx to <8 x i32>
  %i.mz = mul <8 x i32> %i.my, splat (i32 62207)
  %i.na = add <8 x i32> %i.mz, %i.mu
  %i.nb = trunc <8 x i32> %i.na to <8 x i16>      ; 2 uses
  %i.nc = add <8 x i16> %i.nb, splat (i16 -3329)  ; 2 uses
  %i.nd = icmp slt <8 x i16> %i.nc, zeroinitializer
  %i.ne = select <8 x i1> %i.nd, <8 x i16> %i.nb, <8 x i16> zeroinitializer
  %i.nf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nc, <8 x i16> zeroinitializer)
  %i.ng = or <8 x i16> %i.ne, %i.nf
  store <8 x i16> %i.ng, ptr %i.mi, align 2, !tbaa !639, !alias.scope !1802
  %index.next188 = add nuw i64 %index185, 8       ; 2 uses
  %i.nh = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.nh, label %middle.block189, label %vector.body184, !llvm.loop !1807

middle.block189:                                  ; preds = %vector.body184
  %cmp.n190 = icmp eq i64 %i.lx, %n.vec181
  br i1 %cmp.n190, label %._crit_edge.i.1.i, label %.lr.ph.i.1.i.preheader

.lr.ph.i.1.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.preheader.i.1.i, %middle.block189
  %indvars.iv52.i.1.i.ph = phi i64 [ %indvars.iv.i.1.i16, %vector.memcheck ], [ %indvars.iv.i.1.i16, %.lr.ph.preheader.i.1.i ], [ %i.mg, %middle.block189 ]
  br label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.1.i.preheader, %.lr.ph.i.1.i
  %indvars.iv52.i.1.i = phi i64 [ %indvars.iv.next53.i.1.i, %.lr.ph.i.1.i ], [ %indvars.iv52.i.1.i.ph, %.lr.ph.i.1.i.preheader ] ; 3 uses
  %gep.i.1.i = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.ni = load i16, ptr %gep.i.1.i, align 2, !tbaa !639 ; 2 uses
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !639 ; 2 uses
  %i.nl = zext i16 %i.ni to i32
  %i.nm = zext i16 %i.nk to i32
  %i.nn = add i16 %i.nk, %i.ni                    ; 2 uses
  %i.no = add i16 %i.nn, -3329                    ; 2 uses
  %isneg.i.i.1.i17 = icmp slt i16 %i.no, 0
  %i.np = select i1 %isneg.i.i.1.i17, i16 %i.nn, i16 0
  %i.nq = tail call i16 @llvm.smax.i16(i16 %i.no, i16 0)
  %i.nr = or i16 %i.np, %i.nq
  store i16 %i.nr, ptr %i.nj, align 2, !tbaa !639
  %reass.sub93 = sub nsw i32 %i.nm, %i.nl
  %i.ns = add nsw i32 %reass.sub93, 3329
  %i.nt = mul i32 %i.ns, %i.lw                    ; 2 uses
  %i.nu = zext i32 %i.nt to i64
  %i.nv = mul nuw nsw i64 %i.nu, 5039
  %i.nw = lshr i64 %i.nv, 24
  %i.nx = trunc nuw nsw i64 %i.nw to i32
  %.neg.i.i.1.i18 = mul i32 %i.nx, 62207
  %i.ny = add i32 %.neg.i.i.1.i18, %i.nt
  %i.nz = trunc i32 %i.ny to i16                  ; 2 uses
  %i.oa = add i16 %i.nz, -3329                    ; 2 uses
  %isneg.i.i.i.1.i19 = icmp slt i16 %i.oa, 0
  %i.ob = select i1 %isneg.i.i.i.1.i19, i16 %i.nz, i16 0
  %i.oc = tail call i16 @llvm.smax.i16(i16 %i.oa, i16 0)
  %i.od = or i16 %i.ob, %i.oc
  store i16 %i.od, ptr %gep.i.1.i, align 2, !tbaa !639
  %indvars.iv.next53.i.1.i = add nuw nsw i64 %indvars.iv52.i.1.i, 1 ; 2 uses
  %exitcond.not.i.1.i20 = icmp eq i64 %indvars.iv.next53.i.1.i, %wide.trip.count.i.1.i
  br i1 %exitcond.not.i.1.i20, label %._crit_edge.i.1.i, label %.lr.ph.i.1.i, !llvm.loop !1808

._crit_edge.i.1.i:                                ; preds = %.lr.ph.i.1.i, %middle.block189
  %indvars.iv.next.i.1.i21 = add nuw nsw i64 %indvars.iv.i.1.i16, %i.lm
  %indvars.iv.next58.i.1.i = add nuw nsw i64 %indvars.iv57.i.1.i, 1 ; 2 uses
  %indvars.iv.next56.i.1.i = add i32 %indvars.iv55.i.1.i, %.pre.i.1.i
  %exitcond63.not.i.1.i = icmp eq i64 %indvars.iv.next58.i.1.i, %i.lo
  br i1 %exitcond63.not.i.1.i, label %._crit_edge48.i.1.i, label %.lr.ph.preheader.i.1.i, !llvm.loop !1274

._crit_edge48.i.1.i:                              ; preds = %._crit_edge.i.1.i, %bb.b
  %i.oe = icmp slt i32 %.pre.i.1.i, 256
  br i1 %i.oe, label %bb.b, label %vector.body194, !llvm.loop !1266

vector.body194:                                   ; preds = %._crit_edge48.i.1.i, %vector.body194
  %index195 = phi i64 [ %index.next197, %vector.body194 ], [ 0, %._crit_edge48.i.1.i ] ; 2 uses
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %index195 ; 2 uses
  %wide.load196 = load <8 x i16>, ptr %i.of, align 2, !tbaa !639
  %i.og = zext <8 x i16> %wide.load196 to <8 x i32>
  %i.oh = mul nuw nsw <8 x i32> %i.og, splat (i32 3303) ; 2 uses
  %i.oi = zext nneg <8 x i32> %i.oh to <8 x i64>
  %i.oj = mul nuw nsw <8 x i64> %i.oi, splat (i64 5039)
  %i.ok = lshr <8 x i64> %i.oj, splat (i64 24)
  %i.ol = trunc nuw nsw <8 x i64> %i.ok to <8 x i32>
  %i.om = mul nuw <8 x i32> %i.ol, splat (i32 62207)
  %i.on = add nuw <8 x i32> %i.om, %i.oh
  %i.oo = trunc <8 x i32> %i.on to <8 x i16>      ; 2 uses
  %i.op = add <8 x i16> %i.oo, splat (i16 -3329)  ; 2 uses
  %i.oq = icmp slt <8 x i16> %i.op, zeroinitializer
  %i.or = select <8 x i1> %i.oq, <8 x i16> %i.oo, <8 x i16> zeroinitializer
  %i.os = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.op, <8 x i16> zeroinitializer)
  %i.ot = or <8 x i16> %i.or, %i.os
  store <8 x i16> %i.ot, ptr %i.of, align 2, !tbaa !639
  %index.next197 = add nuw i64 %index195, 8       ; 2 uses
  %i.ou = icmp eq i64 %index.next197, 256
  br i1 %i.ou, label %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i, label %vector.body194, !llvm.loop !1809

_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i: ; preds = %vector.body194
  %i.ov = getelementptr inbounds nuw i8, ptr %8, i64 1024 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge48.i.2.i, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i
  %.03550.i.2.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i ], [ %i.ow, %._crit_edge48.i.2.i ]
  %.03649.i.2.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i ], [ %.pre.i.2.i, %._crit_edge48.i.2.i ] ; 3 uses
  %i.ow = lshr i32 %.03550.i.2.i, 1               ; 3 uses
  %.not.i.2.i = icmp eq i32 %i.ow, 0
  %.pre.i.2.i = shl i32 %.03649.i.2.i, 1          ; 4 uses
  br i1 %.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph47.i.2.i

.lr.ph47.i.2.i:                                   ; preds = %bb.c
  %i.ox = zext i32 %.pre.i.2.i to i64             ; 4 uses
  %i.oy = sext i32 %.03649.i.2.i to i64           ; 2 uses
  %i.oz = zext nneg i32 %i.ow to i64              ; 2 uses
  %invariant.gep68.i.2.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.oz
  %invariant.gep.i.2.i = getelementptr [2 x i8], ptr %i.ov, i64 %i.oy ; 2 uses
  %i.pa = shl nuw nsw i64 %i.ox, 1
  %i.pb = shl nuw nsw i64 %i.oy, 1                ; 2 uses
  %i.pc = getelementptr i8, ptr %8, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 1026
  %i.pe = getelementptr i8, ptr %8, i64 %i.pb
  %i.pf = getelementptr i8, ptr %i.pe, i64 1024
  br label %.lr.ph.preheader.i.2.i

.lr.ph.preheader.i.2.i:                           ; preds = %._crit_edge.i.2.i, %.lr.ph47.i.2.i
  %indvars.iv57.i.2.i = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next58.i.2.i, %._crit_edge.i.2.i ] ; 5 uses
  %indvars.iv55.i.2.i = phi i32 [ %.03649.i.2.i, %.lr.ph47.i.2.i ], [ %indvars.iv.next56.i.2.i, %._crit_edge.i.2.i ] ; 3 uses
  %indvars.iv.i.2.i22 = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next.i.2.i27, %._crit_edge.i.2.i ] ; 5 uses
  %gep69.i.2.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.2.i, i64 %indvars.iv57.i.2.i
  %i.pg = load i16, ptr %gep69.i.2.i, align 2, !tbaa !639
  %i.ph = zext i16 %i.pg to i32                   ; 2 uses
  %wide.trip.count.i.2.i = zext i32 %indvars.iv55.i.2.i to i64 ; 2 uses
  %12 = mul i64 %indvars.iv57.i.2.i, %i.ox
  %i.pi = sub i64 %wide.trip.count.i.2.i, %12     ; 3 uses
  %min.iters.check210 = icmp ult i64 %i.pi, 8
  br i1 %min.iters.check210, label %.lr.ph.i.2.i.preheader, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.preheader.i.2.i
  %i.pj = mul i64 %i.pa, %indvars.iv57.i.2.i      ; 4 uses
  %scevgep204 = getelementptr i8, ptr %i.pd, i64 %i.pj
  %i.pk = mul i64 %indvars.iv57.i.2.i, %i.ox
  %i.pl = xor i64 %i.pk, -1
  %i.pm = zext nneg i32 %indvars.iv55.i.2.i to i64
  %i.pn = add i64 %i.pl, %i.pm
  %i.po = shl nsw i64 %i.pn, 1                    ; 2 uses
  %scevgep205 = getelementptr i8, ptr %scevgep204, i64 %i.po
  %scevgep203 = getelementptr i8, ptr %i.pf, i64 %i.pj
  %i.pp = getelementptr i8, ptr %8, i64 %i.pj
  %scevgep201 = getelementptr i8, ptr %i.pp, i64 1026
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.po
  %i.pq = getelementptr i8, ptr %8, i64 %i.pj
  %scevgep200 = getelementptr i8, ptr %i.pq, i64 1024
  %bound0206 = icmp ult ptr %scevgep200, %scevgep205
  %bound1207 = icmp ult ptr %scevgep203, %scevgep202
  %found.conflict208 = and i1 %bound0206, %bound1207
  br i1 %found.conflict208, label %.lr.ph.i.2.i.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck199
  %n.vec212 = and i64 %i.pi, -8                   ; 3 uses
  %i.pr = add i64 %indvars.iv.i.2.i22, %n.vec212
  %broadcast.splatinsert213 = insertelement <8 x i32> poison, i32 %i.ph, i64 0
  %broadcast.splat214 = shufflevector <8 x i32> %broadcast.splatinsert213, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph211
  %index216 = phi i64 [ 0, %vector.ph211 ], [ %index.next219, %vector.body215 ] ; 2 uses
  %i.ps = add nuw i64 %indvars.iv.i.2.i22, %index216 ; 2 uses
  %i.pt = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %i.ps ; 2 uses
  %wide.load217 = load <8 x i16>, ptr %i.pt, align 2, !tbaa !639, !alias.scope !1810 ; 2 uses
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %i.ps ; 2 uses
  %wide.load218 = load <8 x i16>, ptr %i.pu, align 2, !tbaa !639, !alias.scope !1813, !noalias !1810 ; 2 uses
  %i.pv = zext <8 x i16> %wide.load217 to <8 x i32>
  %i.pw = zext <8 x i16> %wide.load218 to <8 x i32>
  %i.px = add <8 x i16> %wide.load218, %wide.load217 ; 2 uses
  %i.py = add <8 x i16> %i.px, splat (i16 -3329)  ; 2 uses
  %i.pz = icmp slt <8 x i16> %i.py, zeroinitializer
  %i.qa = select <8 x i1> %i.pz, <8 x i16> %i.px, <8 x i16> zeroinitializer
  %i.qb = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.py, <8 x i16> zeroinitializer)
  %i.qc = or <8 x i16> %i.qa, %i.qb
  store <8 x i16> %i.qc, ptr %i.pu, align 2, !tbaa !639, !alias.scope !1813, !noalias !1810
  %i.qd = sub nsw <8 x i32> %i.pw, %i.pv
  %i.qe = add nsw <8 x i32> %i.qd, splat (i32 3329)
  %i.qf = mul <8 x i32> %i.qe, %broadcast.splat214 ; 2 uses
  %i.qg = zext <8 x i32> %i.qf to <8 x i64>
  %i.qh = mul nuw nsw <8 x i64> %i.qg, splat (i64 5039)
  %i.qi = lshr <8 x i64> %i.qh, splat (i64 24)
  %i.qj = trunc nuw nsw <8 x i64> %i.qi to <8 x i32>
  %i.qk = mul <8 x i32> %i.qj, splat (i32 62207)
  %i.ql = add <8 x i32> %i.qk, %i.qf
  %i.qm = trunc <8 x i32> %i.ql to <8 x i16>      ; 2 uses
  %i.qn = add <8 x i16> %i.qm, splat (i16 -3329)  ; 2 uses
  %i.qo = icmp slt <8 x i16> %i.qn, zeroinitializer
  %i.qp = select <8 x i1> %i.qo, <8 x i16> %i.qm, <8 x i16> zeroinitializer
  %i.qq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qn, <8 x i16> zeroinitializer)
  %i.qr = or <8 x i16> %i.qp, %i.qq
  store <8 x i16> %i.qr, ptr %i.pt, align 2, !tbaa !639, !alias.scope !1810
  %index.next219 = add nuw i64 %index216, 8       ; 2 uses
  %i.qs = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.qs, label %middle.block220, label %vector.body215, !llvm.loop !1815

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %i.pi, %n.vec212
  br i1 %cmp.n221, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i.preheader

.lr.ph.i.2.i.preheader:                           ; preds = %vector.memcheck199, %.lr.ph.preheader.i.2.i, %middle.block220
  %indvars.iv52.i.2.i.ph = phi i64 [ %indvars.iv.i.2.i22, %vector.memcheck199 ], [ %indvars.iv.i.2.i22, %.lr.ph.preheader.i.2.i ], [ %i.pr, %middle.block220 ]
  br label %.lr.ph.i.2.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.2.i.preheader, %.lr.ph.i.2.i
  %indvars.iv52.i.2.i = phi i64 [ %indvars.iv.next53.i.2.i, %.lr.ph.i.2.i ], [ %indvars.iv52.i.2.i.ph, %.lr.ph.i.2.i.preheader ] ; 3 uses
  %gep.i.2.i = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.qt = load i16, ptr %gep.i.2.i, align 2, !tbaa !639 ; 2 uses
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !639 ; 2 uses
  %i.qw = zext i16 %i.qt to i32
  %i.qx = zext i16 %i.qv to i32
  %i.qy = add i16 %i.qv, %i.qt                    ; 2 uses
  %i.qz = add i16 %i.qy, -3329                    ; 2 uses
  %isneg.i.i.2.i23 = icmp slt i16 %i.qz, 0
  %i.ra = select i1 %isneg.i.i.2.i23, i16 %i.qy, i16 0
  %i.rb = tail call i16 @llvm.smax.i16(i16 %i.qz, i16 0)
  %i.rc = or i16 %i.ra, %i.rb
  store i16 %i.rc, ptr %i.qu, align 2, !tbaa !639
  %reass.sub94 = sub nsw i32 %i.qx, %i.qw
  %i.rd = add nsw i32 %reass.sub94, 3329
  %i.re = mul i32 %i.rd, %i.ph                    ; 2 uses
  %i.rf = zext i32 %i.re to i64
  %i.rg = mul nuw nsw i64 %i.rf, 5039
  %i.rh = lshr i64 %i.rg, 24
  %i.ri = trunc nuw nsw i64 %i.rh to i32
  %.neg.i.i.2.i24 = mul i32 %i.ri, 62207
  %i.rj = add i32 %.neg.i.i.2.i24, %i.re
  %i.rk = trunc i32 %i.rj to i16                  ; 2 uses
  %i.rl = add i16 %i.rk, -3329                    ; 2 uses
  %isneg.i.i.i.2.i25 = icmp slt i16 %i.rl, 0
  %i.rm = select i1 %isneg.i.i.i.2.i25, i16 %i.rk, i16 0
  %i.rn = tail call i16 @llvm.smax.i16(i16 %i.rl, i16 0)
  %i.ro = or i16 %i.rm, %i.rn
  store i16 %i.ro, ptr %gep.i.2.i, align 2, !tbaa !639
  %indvars.iv.next53.i.2.i = add nuw nsw i64 %indvars.iv52.i.2.i, 1 ; 2 uses
  %exitcond.not.i.2.i26 = icmp eq i64 %indvars.iv.next53.i.2.i, %wide.trip.count.i.2.i
  br i1 %exitcond.not.i.2.i26, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i, !llvm.loop !1816

._crit_edge.i.2.i:                                ; preds = %.lr.ph.i.2.i, %middle.block220
  %indvars.iv.next.i.2.i27 = add nuw nsw i64 %indvars.iv.i.2.i22, %i.ox
  %indvars.iv.next58.i.2.i = add nuw nsw i64 %indvars.iv57.i.2.i, 1 ; 2 uses
  %indvars.iv.next56.i.2.i = add i32 %indvars.iv55.i.2.i, %.pre.i.2.i
  %exitcond63.not.i.2.i = icmp eq i64 %indvars.iv.next58.i.2.i, %i.oz
  br i1 %exitcond63.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph.preheader.i.2.i, !llvm.loop !1274

._crit_edge48.i.2.i:                              ; preds = %._crit_edge.i.2.i, %bb.c
  %i.rp = icmp slt i32 %.pre.i.2.i, 256
  br i1 %i.rp, label %bb.c, label %vector.body225, !llvm.loop !1266

vector.body225:                                   ; preds = %._crit_edge48.i.2.i, %vector.body225
  %index226 = phi i64 [ %index.next228, %vector.body225 ], [ 0, %._crit_edge48.i.2.i ] ; 2 uses
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %index226 ; 2 uses
  %wide.load227 = load <8 x i16>, ptr %i.rq, align 2, !tbaa !639
  %i.rr = zext <8 x i16> %wide.load227 to <8 x i32>
  %i.rs = mul nuw nsw <8 x i32> %i.rr, splat (i32 3303) ; 2 uses
  %i.rt = zext nneg <8 x i32> %i.rs to <8 x i64>
  %i.ru = mul nuw nsw <8 x i64> %i.rt, splat (i64 5039)
  %i.rv = lshr <8 x i64> %i.ru, splat (i64 24)
  %i.rw = trunc nuw nsw <8 x i64> %i.rv to <8 x i32>
  %i.rx = mul nuw <8 x i32> %i.rw, splat (i32 62207)
  %i.ry = add nuw <8 x i32> %i.rx, %i.rs
  %i.rz = trunc <8 x i32> %i.ry to <8 x i16>      ; 2 uses
  %i.sa = add <8 x i16> %i.rz, splat (i16 -3329)  ; 2 uses
  %i.sb = icmp slt <8 x i16> %i.sa, zeroinitializer
  %i.sc = select <8 x i1> %i.sb, <8 x i16> %i.rz, <8 x i16> zeroinitializer
  %i.sd = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sa, <8 x i16> zeroinitializer)
  %i.se = or <8 x i16> %i.sc, %i.sd
  store <8 x i16> %i.se, ptr %i.rq, align 2, !tbaa !639
  %index.next228 = add nuw i64 %index226, 8       ; 2 uses
  %i.sf = icmp eq i64 %index.next228, 256
  br i1 %i.sf, label %vector.body232, label %vector.body225, !llvm.loop !1817

vector.body232:                                   ; preds = %vector.body225, %vector.body232
  %index233 = phi i64 [ %index.next238, %vector.body232 ], [ 0, %vector.body225 ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index233 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16 ; 2 uses
  %wide.load234 = load <8 x i16>, ptr %i.sg, align 2, !tbaa !639
  %wide.load235 = load <8 x i16>, ptr %i.sh, align 2, !tbaa !639
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index233 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %wide.load236 = load <8 x i16>, ptr %i.si, align 2, !tbaa !639
  %wide.load237 = load <8 x i16>, ptr %i.sj, align 2, !tbaa !639
  %i.sk = add <8 x i16> %wide.load236, %wide.load234 ; 2 uses
  %i.sl = add <8 x i16> %wide.load237, %wide.load235 ; 2 uses
  %i.sm = add <8 x i16> %i.sk, splat (i16 -3329)  ; 2 uses
  %i.sn = add <8 x i16> %i.sl, splat (i16 -3329)  ; 2 uses
  %i.so = icmp slt <8 x i16> %i.sm, zeroinitializer
  %i.sp = icmp slt <8 x i16> %i.sn, zeroinitializer
  %i.sq = select <8 x i1> %i.so, <8 x i16> %i.sk, <8 x i16> zeroinitializer
  %i.sr = select <8 x i1> %i.sp, <8 x i16> %i.sl, <8 x i16> zeroinitializer
  %i.ss = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sm, <8 x i16> zeroinitializer)
  %i.st = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sn, <8 x i16> zeroinitializer)
  %i.su = or <8 x i16> %i.sq, %i.ss
  %i.sv = or <8 x i16> %i.sr, %i.st
  store <8 x i16> %i.su, ptr %i.sg, align 2, !tbaa !639
  store <8 x i16> %i.sv, ptr %i.sh, align 2, !tbaa !639
  %index.next238 = add nuw i64 %index233, 16      ; 2 uses
  %i.sw = icmp eq i64 %index.next238, 256
  br i1 %i.sw, label %vector.body242, label %vector.body232, !llvm.loop !1818

vector.body242:                                   ; preds = %vector.body232, %vector.body242
  %index243 = phi i64 [ %index.next248, %vector.body242 ], [ 0, %vector.body232 ] ; 3 uses
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %index243 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16 ; 2 uses
  %wide.load244 = load <8 x i16>, ptr %i.sx, align 2, !tbaa !639
  %wide.load245 = load <8 x i16>, ptr %i.sy, align 2, !tbaa !639
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index243 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %wide.load246 = load <8 x i16>, ptr %i.sz, align 2, !tbaa !639
  %wide.load247 = load <8 x i16>, ptr %i.ta, align 2, !tbaa !639
  %i.tb = add <8 x i16> %wide.load246, %wide.load244 ; 2 uses
  %i.tc = add <8 x i16> %wide.load247, %wide.load245 ; 2 uses
  %i.td = add <8 x i16> %i.tb, splat (i16 -3329)  ; 2 uses
  %i.te = add <8 x i16> %i.tc, splat (i16 -3329)  ; 2 uses
  %i.tf = icmp slt <8 x i16> %i.td, zeroinitializer
  %i.tg = icmp slt <8 x i16> %i.te, zeroinitializer
  %i.th = select <8 x i1> %i.tf, <8 x i16> %i.tb, <8 x i16> zeroinitializer
  %i.ti = select <8 x i1> %i.tg, <8 x i16> %i.tc, <8 x i16> zeroinitializer
  %i.tj = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.td, <8 x i16> zeroinitializer)
  %i.tk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.te, <8 x i16> zeroinitializer)
  %i.tl = or <8 x i16> %i.th, %i.tj
  %i.tm = or <8 x i16> %i.ti, %i.tk
  store <8 x i16> %i.tl, ptr %i.sx, align 2, !tbaa !639
  store <8 x i16> %i.tm, ptr %i.sy, align 2, !tbaa !639
  %index.next248 = add nuw i64 %index243, 16      ; 2 uses
  %i.tn = icmp eq i64 %index.next248, 256
  br i1 %i.tn, label %vector.body252, label %vector.body242, !llvm.loop !1819

vector.body252:                                   ; preds = %vector.body242, %vector.body252
  %index253 = phi i64 [ %index.next258, %vector.body252 ], [ 0, %vector.body242 ] ; 3 uses
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %index253 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16 ; 2 uses
  %wide.load254 = load <8 x i16>, ptr %i.to, align 2, !tbaa !639
  %wide.load255 = load <8 x i16>, ptr %i.tp, align 2, !tbaa !639
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %index253 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %wide.load256 = load <8 x i16>, ptr %i.tq, align 2, !tbaa !639
  %wide.load257 = load <8 x i16>, ptr %i.tr, align 2, !tbaa !639
  %i.ts = add <8 x i16> %wide.load256, %wide.load254 ; 2 uses
  %i.tt = add <8 x i16> %wide.load257, %wide.load255 ; 2 uses
  %i.tu = add <8 x i16> %i.ts, splat (i16 -3329)  ; 2 uses
  %i.tv = add <8 x i16> %i.tt, splat (i16 -3329)  ; 2 uses
  %i.tw = icmp slt <8 x i16> %i.tu, zeroinitializer
  %i.tx = icmp slt <8 x i16> %i.tv, zeroinitializer
  %i.ty = select <8 x i1> %i.tw, <8 x i16> %i.ts, <8 x i16> zeroinitializer
  %i.tz = select <8 x i1> %i.tx, <8 x i16> %i.tt, <8 x i16> zeroinitializer
  %i.ua = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tu, <8 x i16> zeroinitializer)
  %i.ub = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tv, <8 x i16> zeroinitializer)
  %i.uc = or <8 x i16> %i.ty, %i.ua
  %i.ud = or <8 x i16> %i.tz, %i.ub
  store <8 x i16> %i.uc, ptr %i.to, align 2, !tbaa !639
  store <8 x i16> %i.ud, ptr %i.tp, align 2, !tbaa !639
  %index.next258 = add nuw i64 %index253, 16      ; 2 uses
  %i.ue = icmp eq i64 %index.next258, 256
  br i1 %i.ue, label %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit, label %vector.body252, !llvm.loop !1820

_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit: ; preds = %vector.body252
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call fastcc void @_ZN5mlkem12_GLOBAL__N_120scalar_inner_productILi3EEEvPNS0_6scalarEPKNS0_6vectorIXT_EEES7_(ptr noundef %9, ptr noundef %1, ptr noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge48.i, %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit
  %.03550.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit ], [ %i.uf, %._crit_edge48.i ]
  %.03649.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit ], [ %.pre.i, %._crit_edge48.i ] ; 3 uses
  %i.uf = lshr i32 %.03550.i, 1                   ; 3 uses
  %.not.i = icmp eq i32 %i.uf, 0
  %.pre.i = shl i32 %.03649.i, 1                  ; 4 uses
  br i1 %.not.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.d
  %i.ug = zext i32 %.pre.i to i64                 ; 4 uses
  %i.uh = sext i32 %.03649.i to i64               ; 2 uses
  %i.ui = zext nneg i32 %i.uf to i64              ; 2 uses
  %invariant.gep68.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.ui
  %invariant.gep.i = getelementptr [2 x i8], ptr %9, i64 %i.uh ; 2 uses
  %i.uj = shl nuw nsw i64 %i.ug, 1
  %i.uk = shl nuw nsw i64 %i.uh, 1                ; 2 uses
  %i.ul = getelementptr i8, ptr %9, i64 %i.uk
  %i.um = getelementptr i8, ptr %i.ul, i64 2
  %i.un = getelementptr i8, ptr %9, i64 %i.uk
  br label %.lr.ph.preheader.i

._crit_edge48.i:                                  ; preds = %._crit_edge.i, %bb.d
  %i.uo = icmp slt i32 %.pre.i, 256
  br i1 %i.uo, label %bb.d, label %vector.body286, !llvm.loop !1266

vector.body286:                                   ; preds = %._crit_edge48.i, %vector.body286
  %index287 = phi i64 [ %index.next289, %vector.body286 ], [ 0, %._crit_edge48.i ] ; 2 uses
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index287 ; 2 uses
  %wide.load288 = load <8 x i16>, ptr %i.up, align 2, !tbaa !639
  %i.uq = zext <8 x i16> %wide.load288 to <8 x i32>
  %i.ur = mul nuw nsw <8 x i32> %i.uq, splat (i32 3303) ; 2 uses
  %i.us = zext nneg <8 x i32> %i.ur to <8 x i64>
  %i.ut = mul nuw nsw <8 x i64> %i.us, splat (i64 5039)
  %i.uu = lshr <8 x i64> %i.ut, splat (i64 24)
  %i.uv = trunc nuw nsw <8 x i64> %i.uu to <8 x i32>
  %i.uw = mul nuw <8 x i32> %i.uv, splat (i32 62207)
  %i.ux = add nuw <8 x i32> %i.uw, %i.ur
  %i.uy = trunc <8 x i32> %i.ux to <8 x i16>      ; 2 uses
  %i.uz = add <8 x i16> %i.uy, splat (i16 -3329)  ; 2 uses
  %i.va = icmp slt <8 x i16> %i.uz, zeroinitializer
  %i.vb = select <8 x i1> %i.va, <8 x i16> %i.uy, <8 x i16> zeroinitializer
  %i.vc = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.uz, <8 x i16> zeroinitializer)
  %i.vd = or <8 x i16> %i.vb, %i.vc
  store <8 x i16> %i.vd, ptr %i.up, align 2, !tbaa !639
  %index.next289 = add nuw i64 %index287, 8       ; 2 uses
  %i.ve = icmp eq i64 %index.next289, 256
  br i1 %i.ve, label %vector.body293, label %vector.body286, !llvm.loop !1821

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph47.i
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next58.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv55.i = phi i32 [ %.03649.i, %.lr.ph47.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next.i47, %._crit_edge.i ] ; 5 uses
  %gep69.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i, i64 %indvars.iv57.i
  %i.vf = load i16, ptr %gep69.i, align 2, !tbaa !639
  %i.vg = zext i16 %i.vf to i32                   ; 2 uses
  %wide.trip.count.i = zext i32 %indvars.iv55.i to i64 ; 2 uses
  %13 = mul i64 %indvars.iv57.i, %i.ug
  %i.vh = sub i64 %wide.trip.count.i, %13         ; 3 uses
  %min.iters.check271 = icmp ult i64 %i.vh, 8
  br i1 %min.iters.check271, label %.lr.ph.i.preheader, label %vector.memcheck260

vector.memcheck260:                               ; preds = %.lr.ph.preheader.i
  %i.vi = mul i64 %i.uj, %indvars.iv57.i          ; 4 uses
  %scevgep265 = getelementptr i8, ptr %i.um, i64 %i.vi
  %i.vj = mul i64 %indvars.iv57.i, %i.ug
  %i.vk = xor i64 %i.vj, -1
  %i.vl = zext nneg i32 %indvars.iv55.i to i64
  %i.vm = add i64 %i.vk, %i.vl
  %i.vn = shl nsw i64 %i.vm, 1                    ; 2 uses
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.vn
  %scevgep264 = getelementptr i8, ptr %i.un, i64 %i.vi
  %i.vo = getelementptr i8, ptr %9, i64 %i.vi
  %scevgep262 = getelementptr i8, ptr %i.vo, i64 2
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %i.vn
  %scevgep261 = getelementptr nuw i8, ptr %9, i64 %i.vi
  %bound0267 = icmp ult ptr %scevgep261, %scevgep266
  %bound1268 = icmp ult ptr %scevgep264, %scevgep263
  %found.conflict269 = and i1 %bound0267, %bound1268
  br i1 %found.conflict269, label %.lr.ph.i.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %vector.memcheck260
  %n.vec273 = and i64 %i.vh, -8                   ; 3 uses
  %i.vp = add i64 %indvars.iv.i43, %n.vec273
  %broadcast.splatinsert274 = insertelement <8 x i32> poison, i32 %i.vg, i64 0
  %broadcast.splat275 = shufflevector <8 x i32> %broadcast.splatinsert274, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph272
  %index277 = phi i64 [ 0, %vector.ph272 ], [ %index.next280, %vector.body276 ] ; 2 uses
  %i.vq = add nuw i64 %indvars.iv.i43, %index277  ; 2 uses
  %i.vr = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.vq ; 2 uses
  %wide.load278 = load <8 x i16>, ptr %i.vr, align 2, !tbaa !639, !alias.scope !1822 ; 2 uses
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %i.vq ; 2 uses
  %wide.load279 = load <8 x i16>, ptr %i.vs, align 2, !tbaa !639, !alias.scope !1825, !noalias !1822 ; 2 uses
  %i.vt = zext <8 x i16> %wide.load278 to <8 x i32>
  %i.vu = zext <8 x i16> %wide.load279 to <8 x i32>
  %i.vv = add <8 x i16> %wide.load279, %wide.load278 ; 2 uses
  %i.vw = add <8 x i16> %i.vv, splat (i16 -3329)  ; 2 uses
  %i.vx = icmp slt <8 x i16> %i.vw, zeroinitializer
  %i.vy = select <8 x i1> %i.vx, <8 x i16> %i.vv, <8 x i16> zeroinitializer
  %i.vz = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vw, <8 x i16> zeroinitializer)
  %i.wa = or <8 x i16> %i.vy, %i.vz
  store <8 x i16> %i.wa, ptr %i.vs, align 2, !tbaa !639, !alias.scope !1825, !noalias !1822
  %i.wb = sub nsw <8 x i32> %i.vu, %i.vt
  %i.wc = add nsw <8 x i32> %i.wb, splat (i32 3329)
  %i.wd = mul <8 x i32> %i.wc, %broadcast.splat275 ; 2 uses
  %i.we = zext <8 x i32> %i.wd to <8 x i64>
  %i.wf = mul nuw nsw <8 x i64> %i.we, splat (i64 5039)
  %i.wg = lshr <8 x i64> %i.wf, splat (i64 24)
  %i.wh = trunc nuw nsw <8 x i64> %i.wg to <8 x i32>
  %i.wi = mul <8 x i32> %i.wh, splat (i32 62207)
  %i.wj = add <8 x i32> %i.wi, %i.wd
  %i.wk = trunc <8 x i32> %i.wj to <8 x i16>      ; 2 uses
  %i.wl = add <8 x i16> %i.wk, splat (i16 -3329)  ; 2 uses
  %i.wm = icmp slt <8 x i16> %i.wl, zeroinitializer
  %i.wn = select <8 x i1> %i.wm, <8 x i16> %i.wk, <8 x i16> zeroinitializer
  %i.wo = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wl, <8 x i16> zeroinitializer)
  %i.wp = or <8 x i16> %i.wn, %i.wo
  store <8 x i16> %i.wp, ptr %i.vr, align 2, !tbaa !639, !alias.scope !1822
  %index.next280 = add nuw i64 %index277, 8       ; 2 uses
  %i.wq = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.wq, label %middle.block281, label %vector.body276, !llvm.loop !1827

middle.block281:                                  ; preds = %vector.body276
  %cmp.n282 = icmp eq i64 %i.vh, %n.vec273
  br i1 %cmp.n282, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck260, %.lr.ph.preheader.i, %middle.block281
  %indvars.iv52.i.ph = phi i64 [ %indvars.iv.i43, %vector.memcheck260 ], [ %indvars.iv.i43, %.lr.ph.preheader.i ], [ %i.vp, %middle.block281 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block281
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i43, %i.ug
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %indvars.iv.next56.i = add i32 %indvars.iv55.i, %.pre.i
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next58.i, %i.ui
  br i1 %exitcond63.not.i, label %._crit_edge48.i, label %.lr.ph.preheader.i, !llvm.loop !1274

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %.lr.ph.i ], [ %indvars.iv52.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv52.i ; 2 uses
  %i.wr = load i16, ptr %gep.i, align 2, !tbaa !639 ; 2 uses
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv52.i ; 2 uses
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !639 ; 2 uses
  %i.wu = zext i16 %i.wr to i32
  %i.wv = zext i16 %i.wt to i32
  %i.ww = add i16 %i.wt, %i.wr                    ; 2 uses
  %i.wx = add i16 %i.ww, -3329                    ; 2 uses
  %isneg.i.i = icmp slt i16 %i.wx, 0
  %i.wy = select i1 %isneg.i.i, i16 %i.ww, i16 0
  %i.wz = tail call i16 @llvm.smax.i16(i16 %i.wx, i16 0)
  %i.xa = or i16 %i.wy, %i.wz
  store i16 %i.xa, ptr %i.ws, align 2, !tbaa !639
  %reass.sub95 = sub nsw i32 %i.wv, %i.wu
  %i.xb = add nsw i32 %reass.sub95, 3329
  %i.xc = mul i32 %i.xb, %i.vg                    ; 2 uses
  %i.xd = zext i32 %i.xc to i64
  %i.xe = mul nuw nsw i64 %i.xd, 5039
  %i.xf = lshr i64 %i.xe, 24
  %i.xg = trunc nuw nsw i64 %i.xf to i32
  %.neg.i.i = mul i32 %i.xg, 62207
  %i.xh = add i32 %.neg.i.i, %i.xc
  %i.xi = trunc i32 %i.xh to i16                  ; 2 uses
  %i.xj = add i16 %i.xi, -3329                    ; 2 uses
  %isneg.i.i.i45 = icmp slt i16 %i.xj, 0
  %i.xk = select i1 %isneg.i.i.i45, i16 %i.xi, i16 0
  %i.xl = tail call i16 @llvm.smax.i16(i16 %i.xj, i16 0)
  %i.xm = or i16 %i.xk, %i.xl
  store i16 %i.xm, ptr %gep.i, align 2, !tbaa !639
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i46, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1828

vector.body293:                                   ; preds = %vector.body286, %vector.body293
  %index294 = phi i64 [ %index.next299, %vector.body293 ], [ 0, %vector.body286 ] ; 3 uses
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index294 ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16 ; 2 uses
  %wide.load295 = load <8 x i16>, ptr %i.xn, align 2, !tbaa !639
  %wide.load296 = load <8 x i16>, ptr %i.xo, align 2, !tbaa !639
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index294 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %wide.load297 = load <8 x i16>, ptr %i.xp, align 2, !tbaa !639
  %wide.load298 = load <8 x i16>, ptr %i.xq, align 2, !tbaa !639
  %i.xr = add <8 x i16> %wide.load297, %wide.load295 ; 2 uses
  %i.xs = add <8 x i16> %wide.load298, %wide.load296 ; 2 uses
  %i.xt = add <8 x i16> %i.xr, splat (i16 -3329)  ; 2 uses
  %i.xu = add <8 x i16> %i.xs, splat (i16 -3329)  ; 2 uses
  %i.xv = icmp slt <8 x i16> %i.xt, zeroinitializer
  %i.xw = icmp slt <8 x i16> %i.xu, zeroinitializer
  %i.xx = select <8 x i1> %i.xv, <8 x i16> %i.xr, <8 x i16> zeroinitializer
  %i.xy = select <8 x i1> %i.xw, <8 x i16> %i.xs, <8 x i16> zeroinitializer
  %i.xz = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xt, <8 x i16> zeroinitializer)
  %i.ya = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xu, <8 x i16> zeroinitializer)
  %i.yb = or <8 x i16> %i.xx, %i.xz
  %i.yc = or <8 x i16> %i.xy, %i.ya
  store <8 x i16> %i.yb, ptr %i.xn, align 2, !tbaa !639
  store <8 x i16> %i.yc, ptr %i.xo, align 2, !tbaa !639
  %index.next299 = add nuw i64 %index294, 16      ; 2 uses
  %i.yd = icmp eq i64 %index.next299, 256
  br i1 %i.yd, label %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit, label %vector.body293, !llvm.loop !1829

_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit: ; preds = %vector.body293
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit
  %index304 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit ], [ %index.next307, %vector.body303 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index304
  %wide.load305 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !13 ; 8 uses
  %i.ye = and <8 x i8> %wide.load305, splat (i8 1)
  %i.yf = zext nneg <8 x i8> %i.ye to <8 x i16>
  %.idx = shl nuw i64 %index304, 4
  %i.yg = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  %i.yh = lshr <8 x i8> %wide.load305, splat (i8 1)
  %i.yi = and <8 x i8> %i.yh, splat (i8 1)
  %i.yj = zext nneg <8 x i8> %i.yi to <8 x i16>
  %i.yk = lshr <8 x i8> %wide.load305, splat (i8 2)
  %i.yl = and <8 x i8> %i.yk, splat (i8 1)
  %i.ym = zext nneg <8 x i8> %i.yl to <8 x i16>
  %i.yn = lshr <8 x i8> %wide.load305, splat (i8 3)
  %i.yo = and <8 x i8> %i.yn, splat (i8 1)
  %i.yp = zext nneg <8 x i8> %i.yo to <8 x i16>
  %i.yq = lshr <8 x i8> %wide.load305, splat (i8 4)
  %i.yr = and <8 x i8> %i.yq, splat (i8 1)
  %i.ys = zext nneg <8 x i8> %i.yr to <8 x i16>
  %i.yt = lshr <8 x i8> %wide.load305, splat (i8 5)
  %i.yu = and <8 x i8> %i.yt, splat (i8 1)
  %i.yv = zext nneg <8 x i8> %i.yu to <8 x i16>
  %i.yw = lshr <8 x i8> %wide.load305, splat (i8 6)
  %i.yx = and <8 x i8> %i.yw, splat (i8 1)
  %i.yy = zext nneg <8 x i8> %i.yx to <8 x i16>
  %i.yz = lshr <8 x i8> %wide.load305, splat (i8 7)
  %i.za = zext nneg <8 x i8> %i.yz to <8 x i16>
  %i.zb = shufflevector <8 x i16> %i.yf, <8 x i16> %i.yj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zc = shufflevector <8 x i16> %i.ym, <8 x i16> %i.yp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zd = shufflevector <8 x i16> %i.ys, <8 x i16> %i.yv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ze = shufflevector <8 x i16> %i.yy, <8 x i16> %i.za, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zf = shufflevector <16 x i16> %i.zb, <16 x i16> %i.zc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zg = shufflevector <16 x i16> %i.zd, <16 x i16> %i.ze, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec306 = shufflevector <32 x i16> %i.zf, <32 x i16> %i.zg, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec306, ptr %i.yg, align 2, !tbaa !639
  %index.next307 = add nuw i64 %index304, 8       ; 2 uses
  %i.zh = icmp eq i64 %index.next307, 32
  br i1 %i.zh, label %vector.body311, label %vector.body303, !llvm.loop !1830

vector.body311:                                   ; preds = %vector.body303, %vector.body311
  %index312 = phi i64 [ %index.next314, %vector.body311 ], [ 0, %vector.body303 ] ; 2 uses
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %index312 ; 2 uses
  %wide.load313 = load <8 x i16>, ptr %i.zi, align 2, !tbaa !639
  %i.zj = zext <8 x i16> %wide.load313 to <8 x i32>
  %i.zk = mul nuw nsw <8 x i32> %i.zj, splat (i32 3329) ; 2 uses
  %i.zl = and <8 x i32> %i.zk, splat (i32 1)
  %i.zm = lshr <8 x i32> %i.zk, splat (i32 1)
  %i.zn = add nuw nsw <8 x i32> %i.zl, %i.zm
  %i.zo = trunc <8 x i32> %i.zn to <8 x i16>
  store <8 x i16> %i.zo, ptr %i.zi, align 2, !tbaa !639
  %index.next314 = add nuw i64 %index312, 8       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5mlkem12_GLOBAL__N_111encrypt_cpaILi4EEEvPhPKNS0_10public_keyIXT_EEEPKhS8_:bb.a
  %i.lf = add <8 x i16> %wide.load123, %wide.load ; 2 uses
  %i.lg = add <8 x i16> %wide.load124, %wide.load122 ; 2 uses
  %i.lh = add <8 x i16> %i.lf, splat (i16 -3329)  ; 2 uses
  %i.li = add <8 x i16> %i.lg, splat (i16 -3329)  ; 2 uses
  %i.lj = icmp slt <8 x i16> %i.lh, zeroinitializer
  %i.lk = icmp slt <8 x i16> %i.li, zeroinitializer
  %i.ll = select <8 x i1> %i.lj, <8 x i16> %i.lf, <8 x i16> zeroinitializer
  %i.lm = select <8 x i1> %i.lk, <8 x i16> %i.lg, <8 x i16> zeroinitializer
  %i.ln = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lh, <8 x i16> zeroinitializer)
  %i.lo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.li, <8 x i16> zeroinitializer)
  %i.lp = or <8 x i16> %i.ll, %i.ln
  %i.lq = or <8 x i16> %i.lm, %i.lo
  store <8 x i16> %i.lp, ptr %i.lb, align 2, !tbaa !639
  store <8 x i16> %i.lq, ptr %i.lc, align 2, !tbaa !639
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lr = icmp eq i64 %index.next, 256
  br i1 %i.lr, label %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.3.i, label %vector.body, !llvm.loop !1850

_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.3.i: ; preds = %vector.body
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %_ZN5mlkem12_GLOBAL__N_111matrix_multILi4EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EEEPKS3_.exit, label %.preheader.i, !llvm.loop !1851

_ZN5mlkem12_GLOBAL__N_111matrix_multILi4EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EEEPKS3_.exit: ; preds = %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.3.i, %._crit_edge48.i.i
  %.03550.i.i = phi i32 [ %i.ls, %._crit_edge48.i.i ], [ 128, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.3.i ]
  %.03649.i.i = phi i32 [ %.pre.i.i, %._crit_edge48.i.i ], [ 2, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.3.i ] ; 3 uses
  %i.ls = lshr i32 %.03550.i.i, 1                 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ls, 0
  %.pre.i.i = shl i32 %.03649.i.i, 1              ; 3 uses
  br i1 %.not.i.i, label %._crit_edge48.i.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %_ZN5mlkem12_GLOBAL__N_111matrix_multILi4EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EEEPKS3_.exit
  %i.lt = zext i32 %.pre.i.i to i64               ; 2 uses
  %i.lu = sext i32 %.03649.i.i to i64             ; 4 uses
  %i.lv = zext nneg i32 %i.ls to i64              ; 2 uses
  %invariant.gep68.i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.lv
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %8, i64 %i.lu ; 2 uses
  %min.iters.check = icmp ult i32 %.03649.i.i, 8
  %n.vec = and i64 %i.lu, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.lu
  br label %.lr.ph.preheader.i.i

._crit_edge48.i.i:                                ; preds = %._crit_edge.i.i, %_ZN5mlkem12_GLOBAL__N_111matrix_multILi4EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EEEPKS3_.exit
  %i.lw = icmp slt i32 %.pre.i.i, 256
  br i1 %i.lw, label %_ZN5mlkem12_GLOBAL__N_111matrix_multILi4EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EEEPKS3_.exit, label %vector.body210, !llvm.loop !1266

vector.body210:                                   ; preds = %._crit_edge48.i.i, %vector.body210
  %index211 = phi i64 [ %index.next213, %vector.body210 ], [ 0, %._crit_edge48.i.i ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index211 ; 2 uses
  %wide.load212 = load <8 x i16>, ptr %i.lx, align 2, !tbaa !639
  %i.ly = zext <8 x i16> %wide.load212 to <8 x i32>
  %i.lz = mul nuw nsw <8 x i32> %i.ly, splat (i32 3303) ; 2 uses
  %i.ma = zext nneg <8 x i32> %i.lz to <8 x i64>
  %i.mb = mul nuw nsw <8 x i64> %i.ma, splat (i64 5039)
  %i.mc = lshr <8 x i64> %i.mb, splat (i64 24)
  %i.md = trunc nuw nsw <8 x i64> %i.mc to <8 x i32>
  %i.me = mul nuw <8 x i32> %i.md, splat (i32 62207)
  %i.mf = add nuw <8 x i32> %i.me, %i.lz
  %i.mg = trunc <8 x i32> %i.mf to <8 x i16>      ; 2 uses
  %i.mh = add <8 x i16> %i.mg, splat (i16 -3329)  ; 2 uses
  %i.mi = icmp slt <8 x i16> %i.mh, zeroinitializer
  %i.mj = select <8 x i1> %i.mi, <8 x i16> %i.mg, <8 x i16> zeroinitializer
  %i.mk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mh, <8 x i16> zeroinitializer)
  %i.ml = or <8 x i16> %i.mj, %i.mk
  store <8 x i16> %i.ml, ptr %i.lx, align 2, !tbaa !639
  %index.next213 = add nuw i64 %index211, 8       ; 2 uses
  %i.mm = icmp eq i64 %index.next213, 256
  br i1 %i.mm, label %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.i, label %vector.body210, !llvm.loop !1852

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i, %.lr.ph47.i.i
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i15, %._crit_edge.i.i ], [ %i.lu, %.lr.ph47.i.i ] ; 2 uses
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i ] ; 2 uses
  %indvars.iv.i.i9 = phi i64 [ %indvars.iv.next.i.i14, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i ] ; 4 uses
  %gep69.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.i, i64 %indvars.iv57.i.i
  %i.mn = load i16, ptr %gep69.i.i, align 2, !tbaa !639
  %i.mo = zext i16 %i.mn to i32                   ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph.preheader.i.i
  %i.mp = add i64 %indvars.iv.i.i9, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.mo, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph201
  %index203 = phi i64 [ 0, %vector.ph201 ], [ %index.next206, %vector.body202 ] ; 2 uses
  %i.mq = add nuw i64 %indvars.iv.i.i9, %index203 ; 2 uses
  %i.mr = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %i.mq ; 2 uses
  %wide.load204 = load <8 x i16>, ptr %i.mr, align 2, !tbaa !639 ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.mq ; 2 uses
  %wide.load205 = load <8 x i16>, ptr %i.ms, align 2, !tbaa !639 ; 2 uses
  %i.mt = zext <8 x i16> %wide.load204 to <8 x i32>
  %i.mu = zext <8 x i16> %wide.load205 to <8 x i32>
  %i.mv = add <8 x i16> %wide.load205, %wide.load204 ; 2 uses
  %i.mw = add <8 x i16> %i.mv, splat (i16 -3329)  ; 2 uses
  %i.mx = icmp slt <8 x i16> %i.mw, zeroinitializer
  %i.my = select <8 x i1> %i.mx, <8 x i16> %i.mv, <8 x i16> zeroinitializer
  %i.mz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mw, <8 x i16> zeroinitializer)
  %i.na = or <8 x i16> %i.my, %i.mz
  store <8 x i16> %i.na, ptr %i.ms, align 2, !tbaa !639
  %i.nb = sub nsw <8 x i32> %i.mu, %i.mt
  %i.nc = add nsw <8 x i32> %i.nb, splat (i32 3329)
  %i.nd = mul <8 x i32> %i.nc, %broadcast.splat   ; 2 uses
  %i.ne = zext <8 x i32> %i.nd to <8 x i64>
  %i.nf = mul nuw nsw <8 x i64> %i.ne, splat (i64 5039)
  %i.ng = lshr <8 x i64> %i.nf, splat (i64 24)
  %i.nh = trunc nuw nsw <8 x i64> %i.ng to <8 x i32>
  %i.ni = mul <8 x i32> %i.nh, splat (i32 62207)
  %i.nj = add <8 x i32> %i.ni, %i.nd
  %i.nk = trunc <8 x i32> %i.nj to <8 x i16>      ; 2 uses
  %i.nl = add <8 x i16> %i.nk, splat (i16 -3329)  ; 2 uses
  %i.nm = icmp slt <8 x i16> %i.nl, zeroinitializer
  %i.nn = select <8 x i1> %i.nm, <8 x i16> %i.nk, <8 x i16> zeroinitializer
  %i.no = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nl, <8 x i16> zeroinitializer)
  %i.np = or <8 x i16> %i.nn, %i.no
  store <8 x i16> %i.np, ptr %i.mr, align 2, !tbaa !639
  %index.next206 = add nuw i64 %index203, 8       ; 2 uses
  %i.nq = icmp eq i64 %index.next206, %n.vec
  br i1 %i.nq, label %middle.block207, label %vector.body202, !llvm.loop !1853

middle.block207:                                  ; preds = %vector.body202
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block207
  %indvars.iv52.i.i.ph = phi i64 [ %indvars.iv.i.i9, %.lr.ph.preheader.i.i ], [ %i.mp, %middle.block207 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block207
  %indvars.iv.next.i.i14 = add nuw nsw i64 %indvars.iv.i.i9, %i.lt
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i8, %i.lt
  %exitcond63.not.i.i = icmp eq i64 %indvars.iv.next58.i.i, %i.lv
  br i1 %exitcond63.not.i.i, label %._crit_edge48.i.i, label %.lr.ph.preheader.i.i, !llvm.loop !1274

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %.lr.ph.i.i ], [ %indvars.iv52.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %gep.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv52.i.i ; 2 uses
  %i.nr = load i16, ptr %gep.i.i, align 2, !tbaa !639 ; 2 uses
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv52.i.i ; 2 uses
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !639 ; 2 uses
  %i.nu = zext i16 %i.nr to i32
  %i.nv = zext i16 %i.nt to i32
  %i.nw = add i16 %i.nt, %i.nr                    ; 2 uses
  %i.nx = add i16 %i.nw, -3329                    ; 2 uses
  %isneg.i.i.i10 = icmp slt i16 %i.nx, 0
  %i.ny = select i1 %isneg.i.i.i10, i16 %i.nw, i16 0
  %i.nz = tail call i16 @llvm.smax.i16(i16 %i.nx, i16 0)
  %i.oa = or i16 %i.ny, %i.nz
  store i16 %i.oa, ptr %i.ns, align 2, !tbaa !639
  %reass.sub = sub nsw i32 %i.nv, %i.nu
  %i.ob = add nsw i32 %reass.sub, 3329
  %i.oc = mul i32 %i.ob, %i.mo                    ; 2 uses
  %i.od = zext i32 %i.oc to i64
  %i.oe = mul nuw nsw i64 %i.od, 5039
  %i.of = lshr i64 %i.oe, 24
  %i.og = trunc nuw nsw i64 %i.of to i32
  %.neg.i.i.i11 = mul i32 %i.og, 62207
  %i.oh = add i32 %.neg.i.i.i11, %i.oc
  %i.oi = trunc i32 %i.oh to i16                  ; 2 uses
  %i.oj = add i16 %i.oi, -3329                    ; 2 uses
  %isneg.i.i.i.i12 = icmp slt i16 %i.oj, 0
  %i.ok = select i1 %isneg.i.i.i.i12, i16 %i.oi, i16 0
  %i.ol = tail call i16 @llvm.smax.i16(i16 %i.oj, i16 0)
  %i.om = or i16 %i.ok, %i.ol
  store i16 %i.om, ptr %gep.i.i, align 2, !tbaa !639
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond.not.i.i13 = icmp eq i64 %indvars.iv.next53.i.i, %indvars.iv.i8
  br i1 %exitcond.not.i.i13, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1854

_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.i: ; preds = %vector.body210
  %i.on = getelementptr inbounds nuw i8, ptr %8, i64 512 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge48.i.1.i, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.i
  %.03550.i.1.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.i ], [ %i.oo, %._crit_edge48.i.1.i ]
  %.03649.i.1.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.i ], [ %.pre.i.1.i, %._crit_edge48.i.1.i ] ; 3 uses
  %i.oo = lshr i32 %.03550.i.1.i, 1               ; 3 uses
  %.not.i.1.i = icmp eq i32 %i.oo, 0
  %.pre.i.1.i = shl i32 %.03649.i.1.i, 1          ; 4 uses
  br i1 %.not.i.1.i, label %._crit_edge48.i.1.i, label %.lr.ph47.i.1.i

.lr.ph47.i.1.i:                                   ; preds = %bb.b
  %i.op = zext i32 %.pre.i.1.i to i64             ; 4 uses
  %i.oq = sext i32 %.03649.i.1.i to i64           ; 2 uses
  %i.or = zext nneg i32 %i.oo to i64              ; 2 uses
  %invariant.gep68.i.1.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.or
  %invariant.gep.i.1.i = getelementptr [2 x i8], ptr %i.on, i64 %i.oq ; 2 uses
  %i.os = shl nuw nsw i64 %i.op, 1
  %i.ot = shl nuw nsw i64 %i.oq, 1                ; 2 uses
  %i.ou = getelementptr i8, ptr %8, i64 %i.ot
  %i.ov = getelementptr i8, ptr %i.ou, i64 514
  %i.ow = getelementptr i8, ptr %8, i64 %i.ot
  %i.ox = getelementptr i8, ptr %i.ow, i64 512
  br label %.lr.ph.preheader.i.1.i

.lr.ph.preheader.i.1.i:                           ; preds = %._crit_edge.i.1.i, %.lr.ph47.i.1.i
  %indvars.iv57.i.1.i = phi i64 [ 0, %.lr.ph47.i.1.i ], [ %indvars.iv.next58.i.1.i, %._crit_edge.i.1.i ] ; 5 uses
  %indvars.iv55.i.1.i = phi i32 [ %.03649.i.1.i, %.lr.ph47.i.1.i ], [ %indvars.iv.next56.i.1.i, %._crit_edge.i.1.i ] ; 3 uses
  %indvars.iv.i.1.i16 = phi i64 [ 0, %.lr.ph47.i.1.i ], [ %indvars.iv.next.i.1.i21, %._crit_edge.i.1.i ] ; 5 uses
  %gep69.i.1.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.1.i, i64 %indvars.iv57.i.1.i
  %i.oy = load i16, ptr %gep69.i.1.i, align 2, !tbaa !639
  %i.oz = zext i16 %i.oy to i32                   ; 2 uses
  %wide.trip.count.i.1.i = zext i32 %indvars.iv55.i.1.i to i64 ; 2 uses
  %11 = mul i64 %indvars.iv57.i.1.i, %i.op
  %i.pa = sub i64 %wide.trip.count.i.1.i, %11     ; 3 uses
  %min.iters.check221 = icmp ult i64 %i.pa, 8
  br i1 %min.iters.check221, label %.lr.ph.i.1.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.1.i
  %i.pb = mul i64 %i.os, %indvars.iv57.i.1.i      ; 4 uses
  %scevgep218 = getelementptr i8, ptr %i.ov, i64 %i.pb
  %i.pc = mul i64 %indvars.iv57.i.1.i, %i.op
  %i.pd = xor i64 %i.pc, -1
  %i.pe = zext nneg i32 %indvars.iv55.i.1.i to i64
  %i.pf = add i64 %i.pd, %i.pe
  %i.pg = shl nsw i64 %i.pf, 1                    ; 2 uses
  %scevgep219 = getelementptr i8, ptr %scevgep218, i64 %i.pg
  %scevgep217 = getelementptr i8, ptr %i.ox, i64 %i.pb
  %i.ph = getelementptr i8, ptr %8, i64 %i.pb
  %scevgep215 = getelementptr i8, ptr %i.ph, i64 514
  %scevgep216 = getelementptr i8, ptr %scevgep215, i64 %i.pg
  %i.pi = getelementptr i8, ptr %8, i64 %i.pb
  %scevgep = getelementptr i8, ptr %i.pi, i64 512
  %bound0 = icmp ult ptr %scevgep, %scevgep219
  %bound1 = icmp ult ptr %scevgep217, %scevgep216
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.1.i.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck
  %n.vec223 = and i64 %i.pa, -8                   ; 3 uses
  %i.pj = add i64 %indvars.iv.i.1.i16, %n.vec223
  %broadcast.splatinsert224 = insertelement <8 x i32> poison, i32 %i.oz, i64 0
  %broadcast.splat225 = shufflevector <8 x i32> %broadcast.splatinsert224, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph222
  %index227 = phi i64 [ 0, %vector.ph222 ], [ %index.next230, %vector.body226 ] ; 2 uses
  %i.pk = add nuw i64 %indvars.iv.i.1.i16, %index227 ; 2 uses
  %i.pl = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %i.pk ; 2 uses
  %wide.load228 = load <8 x i16>, ptr %i.pl, align 2, !tbaa !639, !alias.scope !1855 ; 2 uses
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %i.pk ; 2 uses
  %wide.load229 = load <8 x i16>, ptr %i.pm, align 2, !tbaa !639, !alias.scope !1858, !noalias !1855 ; 2 uses
  %i.pn = zext <8 x i16> %wide.load228 to <8 x i32>
  %i.po = zext <8 x i16> %wide.load229 to <8 x i32>
  %i.pp = add <8 x i16> %wide.load229, %wide.load228 ; 2 uses
  %i.pq = add <8 x i16> %i.pp, splat (i16 -3329)  ; 2 uses
  %i.pr = icmp slt <8 x i16> %i.pq, zeroinitializer
  %i.ps = select <8 x i1> %i.pr, <8 x i16> %i.pp, <8 x i16> zeroinitializer
  %i.pt = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.pq, <8 x i16> zeroinitializer)
  %i.pu = or <8 x i16> %i.ps, %i.pt
  store <8 x i16> %i.pu, ptr %i.pm, align 2, !tbaa !639, !alias.scope !1858, !noalias !1855
  %i.pv = sub nsw <8 x i32> %i.po, %i.pn
  %i.pw = add nsw <8 x i32> %i.pv, splat (i32 3329)
  %i.px = mul <8 x i32> %i.pw, %broadcast.splat225 ; 2 uses
  %i.py = zext <8 x i32> %i.px to <8 x i64>
  %i.pz = mul nuw nsw <8 x i64> %i.py, splat (i64 5039)
  %i.qa = lshr <8 x i64> %i.pz, splat (i64 24)
  %i.qb = trunc nuw nsw <8 x i64> %i.qa to <8 x i32>
  %i.qc = mul <8 x i32> %i.qb, splat (i32 62207)
  %i.qd = add <8 x i32> %i.qc, %i.px
  %i.qe = trunc <8 x i32> %i.qd to <8 x i16>      ; 2 uses
  %i.qf = add <8 x i16> %i.qe, splat (i16 -3329)  ; 2 uses
  %i.qg = icmp slt <8 x i16> %i.qf, zeroinitializer
  %i.qh = select <8 x i1> %i.qg, <8 x i16> %i.qe, <8 x i16> zeroinitializer
  %i.qi = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qf, <8 x i16> zeroinitializer)
  %i.qj = or <8 x i16> %i.qh, %i.qi
  store <8 x i16> %i.qj, ptr %i.pl, align 2, !tbaa !639, !alias.scope !1855
  %index.next230 = add nuw i64 %index227, 8       ; 2 uses
  %i.qk = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.qk, label %middle.block231, label %vector.body226, !llvm.loop !1860

middle.block231:                                  ; preds = %vector.body226
  %cmp.n232 = icmp eq i64 %i.pa, %n.vec223
  br i1 %cmp.n232, label %._crit_edge.i.1.i, label %.lr.ph.i.1.i.preheader

.lr.ph.i.1.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.preheader.i.1.i, %middle.block231
  %indvars.iv52.i.1.i.ph = phi i64 [ %indvars.iv.i.1.i16, %vector.memcheck ], [ %indvars.iv.i.1.i16, %.lr.ph.preheader.i.1.i ], [ %i.pj, %middle.block231 ]
  br label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.1.i.preheader, %.lr.ph.i.1.i
  %indvars.iv52.i.1.i = phi i64 [ %indvars.iv.next53.i.1.i, %.lr.ph.i.1.i ], [ %indvars.iv52.i.1.i.ph, %.lr.ph.i.1.i.preheader ] ; 3 uses
  %gep.i.1.i = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.ql = load i16, ptr %gep.i.1.i, align 2, !tbaa !639 ; 2 uses
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !639 ; 2 uses
  %i.qo = zext i16 %i.ql to i32
  %i.qp = zext i16 %i.qn to i32
  %i.qq = add i16 %i.qn, %i.ql                    ; 2 uses
  %i.qr = add i16 %i.qq, -3329                    ; 2 uses
  %isneg.i.i.1.i17 = icmp slt i16 %i.qr, 0
  %i.qs = select i1 %isneg.i.i.1.i17, i16 %i.qq, i16 0
  %i.qt = tail call i16 @llvm.smax.i16(i16 %i.qr, i16 0)
  %i.qu = or i16 %i.qs, %i.qt
  store i16 %i.qu, ptr %i.qm, align 2, !tbaa !639
  %reass.sub111 = sub nsw i32 %i.qp, %i.qo
  %i.qv = add nsw i32 %reass.sub111, 3329
  %i.qw = mul i32 %i.qv, %i.oz                    ; 2 uses
  %i.qx = zext i32 %i.qw to i64
  %i.qy = mul nuw nsw i64 %i.qx, 5039
  %i.qz = lshr i64 %i.qy, 24
  %i.ra = trunc nuw nsw i64 %i.qz to i32
  %.neg.i.i.1.i18 = mul i32 %i.ra, 62207
  %i.rb = add i32 %.neg.i.i.1.i18, %i.qw
  %i.rc = trunc i32 %i.rb to i16                  ; 2 uses
  %i.rd = add i16 %i.rc, -3329                    ; 2 uses
  %isneg.i.i.i.1.i19 = icmp slt i16 %i.rd, 0
  %i.re = select i1 %isneg.i.i.i.1.i19, i16 %i.rc, i16 0
  %i.rf = tail call i16 @llvm.smax.i16(i16 %i.rd, i16 0)
  %i.rg = or i16 %i.re, %i.rf
  store i16 %i.rg, ptr %gep.i.1.i, align 2, !tbaa !639
  %indvars.iv.next53.i.1.i = add nuw nsw i64 %indvars.iv52.i.1.i, 1 ; 2 uses
  %exitcond.not.i.1.i20 = icmp eq i64 %indvars.iv.next53.i.1.i, %wide.trip.count.i.1.i
  br i1 %exitcond.not.i.1.i20, label %._crit_edge.i.1.i, label %.lr.ph.i.1.i, !llvm.loop !1861

._crit_edge.i.1.i:                                ; preds = %.lr.ph.i.1.i, %middle.block231
  %indvars.iv.next.i.1.i21 = add nuw nsw i64 %indvars.iv.i.1.i16, %i.op
  %indvars.iv.next58.i.1.i = add nuw nsw i64 %indvars.iv57.i.1.i, 1 ; 2 uses
  %indvars.iv.next56.i.1.i = add i32 %indvars.iv55.i.1.i, %.pre.i.1.i
  %exitcond63.not.i.1.i = icmp eq i64 %indvars.iv.next58.i.1.i, %i.or
  br i1 %exitcond63.not.i.1.i, label %._crit_edge48.i.1.i, label %.lr.ph.preheader.i.1.i, !llvm.loop !1274

._crit_edge48.i.1.i:                              ; preds = %._crit_edge.i.1.i, %bb.b
  %i.rh = icmp slt i32 %.pre.i.1.i, 256
  br i1 %i.rh, label %bb.b, label %vector.body236, !llvm.loop !1266

vector.body236:                                   ; preds = %._crit_edge48.i.1.i, %vector.body236
  %index237 = phi i64 [ %index.next239, %vector.body236 ], [ 0, %._crit_edge48.i.1.i ] ; 2 uses
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %index237 ; 2 uses
  %wide.load238 = load <8 x i16>, ptr %i.ri, align 2, !tbaa !639
  %i.rj = zext <8 x i16> %wide.load238 to <8 x i32>
  %i.rk = mul nuw nsw <8 x i32> %i.rj, splat (i32 3303) ; 2 uses
  %i.rl = zext nneg <8 x i32> %i.rk to <8 x i64>
  %i.rm = mul nuw nsw <8 x i64> %i.rl, splat (i64 5039)
  %i.rn = lshr <8 x i64> %i.rm, splat (i64 24)
  %i.ro = trunc nuw nsw <8 x i64> %i.rn to <8 x i32>
  %i.rp = mul nuw <8 x i32> %i.ro, splat (i32 62207)
  %i.rq = add nuw <8 x i32> %i.rp, %i.rk
  %i.rr = trunc <8 x i32> %i.rq to <8 x i16>      ; 2 uses
  %i.rs = add <8 x i16> %i.rr, splat (i16 -3329)  ; 2 uses
  %i.rt = icmp slt <8 x i16> %i.rs, zeroinitializer
  %i.ru = select <8 x i1> %i.rt, <8 x i16> %i.rr, <8 x i16> zeroinitializer
  %i.rv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rs, <8 x i16> zeroinitializer)
  %i.rw = or <8 x i16> %i.ru, %i.rv
  store <8 x i16> %i.rw, ptr %i.ri, align 2, !tbaa !639
  %index.next239 = add nuw i64 %index237, 8       ; 2 uses
  %i.rx = icmp eq i64 %index.next239, 256
  br i1 %i.rx, label %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i, label %vector.body236, !llvm.loop !1862

_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i: ; preds = %vector.body236
  %i.ry = getelementptr inbounds nuw i8, ptr %8, i64 1024 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge48.i.2.i, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i
  %.03550.i.2.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i ], [ %i.rz, %._crit_edge48.i.2.i ]
  %.03649.i.2.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i ], [ %.pre.i.2.i, %._crit_edge48.i.2.i ] ; 3 uses
  %i.rz = lshr i32 %.03550.i.2.i, 1               ; 3 uses
  %.not.i.2.i = icmp eq i32 %i.rz, 0
  %.pre.i.2.i = shl i32 %.03649.i.2.i, 1          ; 4 uses
  br i1 %.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph47.i.2.i

.lr.ph47.i.2.i:                                   ; preds = %bb.c
  %i.sa = zext i32 %.pre.i.2.i to i64             ; 4 uses
  %i.sb = sext i32 %.03649.i.2.i to i64           ; 2 uses
  %i.sc = zext nneg i32 %i.rz to i64              ; 2 uses
  %invariant.gep68.i.2.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.sc
  %invariant.gep.i.2.i = getelementptr [2 x i8], ptr %i.ry, i64 %i.sb ; 2 uses
  %i.sd = shl nuw nsw i64 %i.sa, 1
  %i.se = shl nuw nsw i64 %i.sb, 1                ; 2 uses
  %i.sf = getelementptr i8, ptr %8, i64 %i.se
  %i.sg = getelementptr i8, ptr %i.sf, i64 1026
  %i.sh = getelementptr i8, ptr %8, i64 %i.se
  %i.si = getelementptr i8, ptr %i.sh, i64 1024
  br label %.lr.ph.preheader.i.2.i

.lr.ph.preheader.i.2.i:                           ; preds = %._crit_edge.i.2.i, %.lr.ph47.i.2.i
  %indvars.iv57.i.2.i = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next58.i.2.i, %._crit_edge.i.2.i ] ; 5 uses
  %indvars.iv55.i.2.i = phi i32 [ %.03649.i.2.i, %.lr.ph47.i.2.i ], [ %indvars.iv.next56.i.2.i, %._crit_edge.i.2.i ] ; 3 uses
  %indvars.iv.i.2.i22 = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next.i.2.i27, %._crit_edge.i.2.i ] ; 5 uses
  %gep69.i.2.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.2.i, i64 %indvars.iv57.i.2.i
  %i.sj = load i16, ptr %gep69.i.2.i, align 2, !tbaa !639
  %i.sk = zext i16 %i.sj to i32                   ; 2 uses
  %wide.trip.count.i.2.i = zext i32 %indvars.iv55.i.2.i to i64 ; 2 uses
  %12 = mul i64 %indvars.iv57.i.2.i, %i.sa
  %i.sl = sub i64 %wide.trip.count.i.2.i, %12     ; 3 uses
  %min.iters.check252 = icmp ult i64 %i.sl, 8
  br i1 %min.iters.check252, label %.lr.ph.i.2.i.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.lr.ph.preheader.i.2.i
  %i.sm = mul i64 %i.sd, %indvars.iv57.i.2.i      ; 4 uses
  %scevgep246 = getelementptr i8, ptr %i.sg, i64 %i.sm
  %i.sn = mul i64 %indvars.iv57.i.2.i, %i.sa
  %i.so = xor i64 %i.sn, -1
  %i.sp = zext nneg i32 %indvars.iv55.i.2.i to i64
  %i.sq = add i64 %i.so, %i.sp
  %i.sr = shl nsw i64 %i.sq, 1                    ; 2 uses
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %i.sr
  %scevgep245 = getelementptr i8, ptr %i.si, i64 %i.sm
  %i.ss = getelementptr i8, ptr %8, i64 %i.sm
  %scevgep243 = getelementptr i8, ptr %i.ss, i64 1026
  %scevgep244 = getelementptr i8, ptr %scevgep243, i64 %i.sr
  %i.st = getelementptr i8, ptr %8, i64 %i.sm
  %scevgep242 = getelementptr i8, ptr %i.st, i64 1024
  %bound0248 = icmp ult ptr %scevgep242, %scevgep247
  %bound1249 = icmp ult ptr %scevgep245, %scevgep244
  %found.conflict250 = and i1 %bound0248, %bound1249
  br i1 %found.conflict250, label %.lr.ph.i.2.i.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck241
  %n.vec254 = and i64 %i.sl, -8                   ; 3 uses
  %i.su = add i64 %indvars.iv.i.2.i22, %n.vec254
  %broadcast.splatinsert255 = insertelement <8 x i32> poison, i32 %i.sk, i64 0
  %broadcast.splat256 = shufflevector <8 x i32> %broadcast.splatinsert255, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph253
  %index258 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body257 ] ; 2 uses
  %i.sv = add nuw i64 %indvars.iv.i.2.i22, %index258 ; 2 uses
  %i.sw = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %i.sv ; 2 uses
  %wide.load259 = load <8 x i16>, ptr %i.sw, align 2, !tbaa !639, !alias.scope !1863 ; 2 uses
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.ry, i64 %i.sv ; 2 uses
  %wide.load260 = load <8 x i16>, ptr %i.sx, align 2, !tbaa !639, !alias.scope !1866, !noalias !1863 ; 2 uses
  %i.sy = zext <8 x i16> %wide.load259 to <8 x i32>
  %i.sz = zext <8 x i16> %wide.load260 to <8 x i32>
  %i.ta = add <8 x i16> %wide.load260, %wide.load259 ; 2 uses
  %i.tb = add <8 x i16> %i.ta, splat (i16 -3329)  ; 2 uses
  %i.tc = icmp slt <8 x i16> %i.tb, zeroinitializer
  %i.td = select <8 x i1> %i.tc, <8 x i16> %i.ta, <8 x i16> zeroinitializer
  %i.te = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tb, <8 x i16> zeroinitializer)
  %i.tf = or <8 x i16> %i.td, %i.te
  store <8 x i16> %i.tf, ptr %i.sx, align 2, !tbaa !639, !alias.scope !1866, !noalias !1863
  %i.tg = sub nsw <8 x i32> %i.sz, %i.sy
  %i.th = add nsw <8 x i32> %i.tg, splat (i32 3329)
  %i.ti = mul <8 x i32> %i.th, %broadcast.splat256 ; 2 uses
  %i.tj = zext <8 x i32> %i.ti to <8 x i64>
  %i.tk = mul nuw nsw <8 x i64> %i.tj, splat (i64 5039)
  %i.tl = lshr <8 x i64> %i.tk, splat (i64 24)
  %i.tm = trunc nuw nsw <8 x i64> %i.tl to <8 x i32>
  %i.tn = mul <8 x i32> %i.tm, splat (i32 62207)
  %i.to = add <8 x i32> %i.tn, %i.ti
  %i.tp = trunc <8 x i32> %i.to to <8 x i16>      ; 2 uses
  %i.tq = add <8 x i16> %i.tp, splat (i16 -3329)  ; 2 uses
  %i.tr = icmp slt <8 x i16> %i.tq, zeroinitializer
  %i.ts = select <8 x i1> %i.tr, <8 x i16> %i.tp, <8 x i16> zeroinitializer
  %i.tt = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tq, <8 x i16> zeroinitializer)
  %i.tu = or <8 x i16> %i.ts, %i.tt
  store <8 x i16> %i.tu, ptr %i.sw, align 2, !tbaa !639, !alias.scope !1863
  %index.next261 = add nuw i64 %index258, 8       ; 2 uses
  %i.tv = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.tv, label %middle.block262, label %vector.body257, !llvm.loop !1868

middle.block262:                                  ; preds = %vector.body257
  %cmp.n263 = icmp eq i64 %i.sl, %n.vec254
  br i1 %cmp.n263, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i.preheader

.lr.ph.i.2.i.preheader:                           ; preds = %vector.memcheck241, %.lr.ph.preheader.i.2.i, %middle.block262
  %indvars.iv52.i.2.i.ph = phi i64 [ %indvars.iv.i.2.i22, %vector.memcheck241 ], [ %indvars.iv.i.2.i22, %.lr.ph.preheader.i.2.i ], [ %i.su, %middle.block262 ]
  br label %.lr.ph.i.2.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.2.i.preheader, %.lr.ph.i.2.i
  %indvars.iv52.i.2.i = phi i64 [ %indvars.iv.next53.i.2.i, %.lr.ph.i.2.i ], [ %indvars.iv52.i.2.i.ph, %.lr.ph.i.2.i.preheader ] ; 3 uses
  %gep.i.2.i = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.tw = load i16, ptr %gep.i.2.i, align 2, !tbaa !639 ; 2 uses
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.ry, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.ty = load i16, ptr %i.tx, align 2, !tbaa !639 ; 2 uses
  %i.tz = zext i16 %i.tw to i32
  %i.ua = zext i16 %i.ty to i32
  %i.ub = add i16 %i.ty, %i.tw                    ; 2 uses
  %i.uc = add i16 %i.ub, -3329                    ; 2 uses
  %isneg.i.i.2.i23 = icmp slt i16 %i.uc, 0
  %i.ud = select i1 %isneg.i.i.2.i23, i16 %i.ub, i16 0
  %i.ue = tail call i16 @llvm.smax.i16(i16 %i.uc, i16 0)
  %i.uf = or i16 %i.ud, %i.ue
  store i16 %i.uf, ptr %i.tx, align 2, !tbaa !639
  %reass.sub112 = sub nsw i32 %i.ua, %i.tz
  %i.ug = add nsw i32 %reass.sub112, 3329
  %i.uh = mul i32 %i.ug, %i.sk                    ; 2 uses
  %i.ui = zext i32 %i.uh to i64
  %i.uj = mul nuw nsw i64 %i.ui, 5039
  %i.uk = lshr i64 %i.uj, 24
  %i.ul = trunc nuw nsw i64 %i.uk to i32
  %.neg.i.i.2.i24 = mul i32 %i.ul, 62207
  %i.um = add i32 %.neg.i.i.2.i24, %i.uh
  %i.un = trunc i32 %i.um to i16                  ; 2 uses
  %i.uo = add i16 %i.un, -3329                    ; 2 uses
  %isneg.i.i.i.2.i25 = icmp slt i16 %i.uo, 0
  %i.up = select i1 %isneg.i.i.i.2.i25, i16 %i.un, i16 0
  %i.uq = tail call i16 @llvm.smax.i16(i16 %i.uo, i16 0)
  %i.ur = or i16 %i.up, %i.uq
  store i16 %i.ur, ptr %gep.i.2.i, align 2, !tbaa !639
  %indvars.iv.next53.i.2.i = add nuw nsw i64 %indvars.iv52.i.2.i, 1 ; 2 uses
  %exitcond.not.i.2.i26 = icmp eq i64 %indvars.iv.next53.i.2.i, %wide.trip.count.i.2.i
  br i1 %exitcond.not.i.2.i26, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i, !llvm.loop !1869

._crit_edge.i.2.i:                                ; preds = %.lr.ph.i.2.i, %middle.block262
  %indvars.iv.next.i.2.i27 = add nuw nsw i64 %indvars.iv.i.2.i22, %i.sa
  %indvars.iv.next58.i.2.i = add nuw nsw i64 %indvars.iv57.i.2.i, 1 ; 2 uses
  %indvars.iv.next56.i.2.i = add i32 %indvars.iv55.i.2.i, %.pre.i.2.i
  %exitcond63.not.i.2.i = icmp eq i64 %indvars.iv.next58.i.2.i, %i.sc
  br i1 %exitcond63.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph.preheader.i.2.i, !llvm.loop !1274

._crit_edge48.i.2.i:                              ; preds = %._crit_edge.i.2.i, %bb.c
  %i.us = icmp slt i32 %.pre.i.2.i, 256
  br i1 %i.us, label %bb.c, label %vector.body267, !llvm.loop !1266

vector.body267:                                   ; preds = %._crit_edge48.i.2.i, %vector.body267
  %index268 = phi i64 [ %index.next270, %vector.body267 ], [ 0, %._crit_edge48.i.2.i ] ; 2 uses
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.ry, i64 %index268 ; 2 uses
  %wide.load269 = load <8 x i16>, ptr %i.ut, align 2, !tbaa !639
  %i.uu = zext <8 x i16> %wide.load269 to <8 x i32>
  %i.uv = mul nuw nsw <8 x i32> %i.uu, splat (i32 3303) ; 2 uses
  %i.uw = zext nneg <8 x i32> %i.uv to <8 x i64>
  %i.ux = mul nuw nsw <8 x i64> %i.uw, splat (i64 5039)
  %i.uy = lshr <8 x i64> %i.ux, splat (i64 24)
  %i.uz = trunc nuw nsw <8 x i64> %i.uy to <8 x i32>
  %i.va = mul nuw <8 x i32> %i.uz, splat (i32 62207)
  %i.vb = add nuw <8 x i32> %i.va, %i.uv
  %i.vc = trunc <8 x i32> %i.vb to <8 x i16>      ; 2 uses
  %i.vd = add <8 x i16> %i.vc, splat (i16 -3329)  ; 2 uses
  %i.ve = icmp slt <8 x i16> %i.vd, zeroinitializer
  %i.vf = select <8 x i1> %i.ve, <8 x i16> %i.vc, <8 x i16> zeroinitializer
  %i.vg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vd, <8 x i16> zeroinitializer)
  %i.vh = or <8 x i16> %i.vf, %i.vg
  store <8 x i16> %i.vh, ptr %i.ut, align 2, !tbaa !639
  %index.next270 = add nuw i64 %index268, 8       ; 2 uses
  %i.vi = icmp eq i64 %index.next270, 256
  br i1 %i.vi, label %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.2.i, label %vector.body267, !llvm.loop !1870

_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.2.i: ; preds = %vector.body267
  %i.vj = getelementptr inbounds nuw i8, ptr %8, i64 1536 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge48.i.3.i, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.2.i
  %.03550.i.3.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.2.i ], [ %i.vk, %._crit_edge48.i.3.i ]
  %.03649.i.3.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.2.i ], [ %.pre.i.3.i, %._crit_edge48.i.3.i ] ; 3 uses
  %i.vk = lshr i32 %.03550.i.3.i, 1               ; 3 uses
  %.not.i.3.i = icmp eq i32 %i.vk, 0
  %.pre.i.3.i = shl i32 %.03649.i.3.i, 1          ; 4 uses
  br i1 %.not.i.3.i, label %._crit_edge48.i.3.i, label %.lr.ph47.i.3.i

.lr.ph47.i.3.i:                                   ; preds = %bb.d
  %i.vl = zext i32 %.pre.i.3.i to i64             ; 4 uses
  %i.vm = sext i32 %.03649.i.3.i to i64           ; 2 uses
  %i.vn = zext nneg i32 %i.vk to i64              ; 2 uses
  %invariant.gep68.i.3.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.vn
  %invariant.gep.i.3.i = getelementptr [2 x i8], ptr %i.vj, i64 %i.vm ; 2 uses
  %i.vo = shl nuw nsw i64 %i.vl, 1
  %i.vp = shl nuw nsw i64 %i.vm, 1                ; 2 uses
  %i.vq = getelementptr i8, ptr %8, i64 %i.vp
  %i.vr = getelementptr i8, ptr %i.vq, i64 1538
  %i.vs = getelementptr i8, ptr %8, i64 %i.vp
  %i.vt = getelementptr i8, ptr %i.vs, i64 1536
  br label %.lr.ph.preheader.i.3.i

.lr.ph.preheader.i.3.i:                           ; preds = %._crit_edge.i.3.i, %.lr.ph47.i.3.i
  %indvars.iv57.i.3.i = phi i64 [ 0, %.lr.ph47.i.3.i ], [ %indvars.iv.next58.i.3.i, %._crit_edge.i.3.i ] ; 5 uses
  %indvars.iv55.i.3.i = phi i32 [ %.03649.i.3.i, %.lr.ph47.i.3.i ], [ %indvars.iv.next56.i.3.i, %._crit_edge.i.3.i ] ; 3 uses
  %indvars.iv.i.3.i28 = phi i64 [ 0, %.lr.ph47.i.3.i ], [ %indvars.iv.next.i.3.i33, %._crit_edge.i.3.i ] ; 5 uses
  %gep69.i.3.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.3.i, i64 %indvars.iv57.i.3.i
  %i.vu = load i16, ptr %gep69.i.3.i, align 2, !tbaa !639
  %i.vv = zext i16 %i.vu to i32                   ; 2 uses
  %wide.trip.count.i.3.i = zext i32 %indvars.iv55.i.3.i to i64 ; 2 uses
  %13 = mul i64 %indvars.iv57.i.3.i, %i.vl
  %i.vw = sub i64 %wide.trip.count.i.3.i, %13     ; 3 uses
  %min.iters.check283 = icmp ult i64 %i.vw, 8
  br i1 %min.iters.check283, label %.lr.ph.i.3.i.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph.preheader.i.3.i
  %i.vx = mul i64 %i.vo, %indvars.iv57.i.3.i      ; 4 uses
  %scevgep277 = getelementptr i8, ptr %i.vr, i64 %i.vx
  %i.vy = mul i64 %indvars.iv57.i.3.i, %i.vl
  %i.vz = xor i64 %i.vy, -1
  %i.wa = zext nneg i32 %indvars.iv55.i.3.i to i64
  %i.wb = add i64 %i.vz, %i.wa
  %i.wc = shl nsw i64 %i.wb, 1                    ; 2 uses
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.wc
  %scevgep276 = getelementptr i8, ptr %i.vt, i64 %i.vx
  %i.wd = getelementptr i8, ptr %8, i64 %i.vx
  %scevgep274 = getelementptr i8, ptr %i.wd, i64 1538
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.wc
  %i.we = getelementptr i8, ptr %8, i64 %i.vx
  %scevgep273 = getelementptr i8, ptr %i.we, i64 1536
  %bound0279 = icmp ult ptr %scevgep273, %scevgep278
  %bound1280 = icmp ult ptr %scevgep276, %scevgep275
  %found.conflict281 = and i1 %bound0279, %bound1280
  br i1 %found.conflict281, label %.lr.ph.i.3.i.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck272
  %n.vec285 = and i64 %i.vw, -8                   ; 3 uses
  %i.wf = add i64 %indvars.iv.i.3.i28, %n.vec285
  %broadcast.splatinsert286 = insertelement <8 x i32> poison, i32 %i.vv, i64 0
  %broadcast.splat287 = shufflevector <8 x i32> %broadcast.splatinsert286, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph284
  %index289 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body288 ] ; 2 uses
  %i.wg = add nuw i64 %indvars.iv.i.3.i28, %index289 ; 2 uses
  %i.wh = getelementptr [2 x i8], ptr %invariant.gep.i.3.i, i64 %i.wg ; 2 uses
  %wide.load290 = load <8 x i16>, ptr %i.wh, align 2, !tbaa !639, !alias.scope !1871 ; 2 uses
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.vj, i64 %i.wg ; 2 uses
  %wide.load291 = load <8 x i16>, ptr %i.wi, align 2, !tbaa !639, !alias.scope !1874, !noalias !1871 ; 2 uses
  %i.wj = zext <8 x i16> %wide.load290 to <8 x i32>
  %i.wk = zext <8 x i16> %wide.load291 to <8 x i32>
  %i.wl = add <8 x i16> %wide.load291, %wide.load290 ; 2 uses
  %i.wm = add <8 x i16> %i.wl, splat (i16 -3329)  ; 2 uses
  %i.wn = icmp slt <8 x i16> %i.wm, zeroinitializer
  %i.wo = select <8 x i1> %i.wn, <8 x i16> %i.wl, <8 x i16> zeroinitializer
  %i.wp = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wm, <8 x i16> zeroinitializer)
  %i.wq = or <8 x i16> %i.wo, %i.wp
  store <8 x i16> %i.wq, ptr %i.wi, align 2, !tbaa !639, !alias.scope !1874, !noalias !1871
  %i.wr = sub nsw <8 x i32> %i.wk, %i.wj
  %i.ws = add nsw <8 x i32> %i.wr, splat (i32 3329)
  %i.wt = mul <8 x i32> %i.ws, %broadcast.splat287 ; 2 uses
  %i.wu = zext <8 x i32> %i.wt to <8 x i64>
  %i.wv = mul nuw nsw <8 x i64> %i.wu, splat (i64 5039)
  %i.ww = lshr <8 x i64> %i.wv, splat (i64 24)
  %i.wx = trunc nuw nsw <8 x i64> %i.ww to <8 x i32>
  %i.wy = mul <8 x i32> %i.wx, splat (i32 62207)
  %i.wz = add <8 x i32> %i.wy, %i.wt
  %i.xa = trunc <8 x i32> %i.wz to <8 x i16>      ; 2 uses
  %i.xb = add <8 x i16> %i.xa, splat (i16 -3329)  ; 2 uses
  %i.xc = icmp slt <8 x i16> %i.xb, zeroinitializer
  %i.xd = select <8 x i1> %i.xc, <8 x i16> %i.xa, <8 x i16> zeroinitializer
  %i.xe = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xb, <8 x i16> zeroinitializer)
  %i.xf = or <8 x i16> %i.xd, %i.xe
  store <8 x i16> %i.xf, ptr %i.wh, align 2, !tbaa !639, !alias.scope !1871
  %index.next292 = add nuw i64 %index289, 8       ; 2 uses
  %i.xg = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.xg, label %middle.block293, label %vector.body288, !llvm.loop !1876

middle.block293:                                  ; preds = %vector.body288
  %cmp.n294 = icmp eq i64 %i.vw, %n.vec285
  br i1 %cmp.n294, label %._crit_edge.i.3.i, label %.lr.ph.i.3.i.preheader

.lr.ph.i.3.i.preheader:                           ; preds = %vector.memcheck272, %.lr.ph.preheader.i.3.i, %middle.block293
  %indvars.iv52.i.3.i.ph = phi i64 [ %indvars.iv.i.3.i28, %vector.memcheck272 ], [ %indvars.iv.i.3.i28, %.lr.ph.preheader.i.3.i ], [ %i.wf, %middle.block293 ]
  br label %.lr.ph.i.3.i

.lr.ph.i.3.i:                                     ; preds = %.lr.ph.i.3.i.preheader, %.lr.ph.i.3.i
  %indvars.iv52.i.3.i = phi i64 [ %indvars.iv.next53.i.3.i, %.lr.ph.i.3.i ], [ %indvars.iv52.i.3.i.ph, %.lr.ph.i.3.i.preheader ] ; 3 uses
  %gep.i.3.i = getelementptr [2 x i8], ptr %invariant.gep.i.3.i, i64 %indvars.iv52.i.3.i ; 2 uses
  %i.xh = load i16, ptr %gep.i.3.i, align 2, !tbaa !639 ; 2 uses
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.vj, i64 %indvars.iv52.i.3.i ; 2 uses
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !639 ; 2 uses
  %i.xk = zext i16 %i.xh to i32
  %i.xl = zext i16 %i.xj to i32
  %i.xm = add i16 %i.xj, %i.xh                    ; 2 uses
  %i.xn = add i16 %i.xm, -3329                    ; 2 uses
  %isneg.i.i.3.i29 = icmp slt i16 %i.xn, 0
  %i.xo = select i1 %isneg.i.i.3.i29, i16 %i.xm, i16 0
  %i.xp = tail call i16 @llvm.smax.i16(i16 %i.xn, i16 0)
  %i.xq = or i16 %i.xo, %i.xp
  store i16 %i.xq, ptr %i.xi, align 2, !tbaa !639
  %reass.sub113 = sub nsw i32 %i.xl, %i.xk
  %i.xr = add nsw i32 %reass.sub113, 3329
  %i.xs = mul i32 %i.xr, %i.vv                    ; 2 uses
  %i.xt = zext i32 %i.xs to i64
  %i.xu = mul nuw nsw i64 %i.xt, 5039
  %i.xv = lshr i64 %i.xu, 24
  %i.xw = trunc nuw nsw i64 %i.xv to i32
  %.neg.i.i.3.i30 = mul i32 %i.xw, 62207
  %i.xx = add i32 %.neg.i.i.3.i30, %i.xs
  %i.xy = trunc i32 %i.xx to i16                  ; 2 uses
  %i.xz = add i16 %i.xy, -3329                    ; 2 uses
  %isneg.i.i.i.3.i31 = icmp slt i16 %i.xz, 0
  %i.ya = select i1 %isneg.i.i.i.3.i31, i16 %i.xy, i16 0
  %i.yb = tail call i16 @llvm.smax.i16(i16 %i.xz, i16 0)
  %i.yc = or i16 %i.ya, %i.yb
  store i16 %i.yc, ptr %gep.i.3.i, align 2, !tbaa !639
  %indvars.iv.next53.i.3.i = add nuw nsw i64 %indvars.iv52.i.3.i, 1 ; 2 uses
  %exitcond.not.i.3.i32 = icmp eq i64 %indvars.iv.next53.i.3.i, %wide.trip.count.i.3.i
  br i1 %exitcond.not.i.3.i32, label %._crit_edge.i.3.i, label %.lr.ph.i.3.i, !llvm.loop !1877

._crit_edge.i.3.i:                                ; preds = %.lr.ph.i.3.i, %middle.block293
  %indvars.iv.next.i.3.i33 = add nuw nsw i64 %indvars.iv.i.3.i28, %i.vl
  %indvars.iv.next58.i.3.i = add nuw nsw i64 %indvars.iv57.i.3.i, 1 ; 2 uses
  %indvars.iv.next56.i.3.i = add i32 %indvars.iv55.i.3.i, %.pre.i.3.i
  %exitcond63.not.i.3.i = icmp eq i64 %indvars.iv.next58.i.3.i, %i.vn
  br i1 %exitcond63.not.i.3.i, label %._crit_edge48.i.3.i, label %.lr.ph.preheader.i.3.i, !llvm.loop !1274

._crit_edge48.i.3.i:                              ; preds = %._crit_edge.i.3.i, %bb.d
  %i.yd = icmp slt i32 %.pre.i.3.i, 256
  br i1 %i.yd, label %bb.d, label %vector.body298, !llvm.loop !1266

vector.body298:                                   ; preds = %._crit_edge48.i.3.i, %vector.body298
  %index299 = phi i64 [ %index.next301, %vector.body298 ], [ 0, %._crit_edge48.i.3.i ] ; 2 uses
  %i.ye = getelementptr inbounds nuw [2 x i8], ptr %i.vj, i64 %index299 ; 2 uses
  %wide.load300 = load <8 x i16>, ptr %i.ye, align 2, !tbaa !639
  %i.yf = zext <8 x i16> %wide.load300 to <8 x i32>
  %i.yg = mul nuw nsw <8 x i32> %i.yf, splat (i32 3303) ; 2 uses
  %i.yh = zext nneg <8 x i32> %i.yg to <8 x i64>
  %i.yi = mul nuw nsw <8 x i64> %i.yh, splat (i64 5039)
  %i.yj = lshr <8 x i64> %i.yi, splat (i64 24)
  %i.yk = trunc nuw nsw <8 x i64> %i.yj to <8 x i32>
  %i.yl = mul nuw <8 x i32> %i.yk, splat (i32 62207)
  %i.ym = add nuw <8 x i32> %i.yl, %i.yg
  %i.yn = trunc <8 x i32> %i.ym to <8 x i16>      ; 2 uses
  %i.yo = add <8 x i16> %i.yn, splat (i16 -3329)  ; 2 uses
  %i.yp = icmp slt <8 x i16> %i.yo, zeroinitializer
  %i.yq = select <8 x i1> %i.yp, <8 x i16> %i.yn, <8 x i16> zeroinitializer
  %i.yr = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yo, <8 x i16> zeroinitializer)
  %i.ys = or <8 x i16> %i.yq, %i.yr
  store <8 x i16> %i.ys, ptr %i.ye, align 2, !tbaa !639
  %index.next301 = add nuw i64 %index299, 8       ; 2 uses
  %i.yt = icmp eq i64 %index.next301, 256
  br i1 %i.yt, label %vector.body305, label %vector.body298, !llvm.loop !1878

vector.body305:                                   ; preds = %vector.body298, %vector.body305
  %index306 = phi i64 [ %index.next311, %vector.body305 ], [ 0, %vector.body298 ] ; 3 uses
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index306 ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16 ; 2 uses
  %wide.load307 = load <8 x i16>, ptr %i.yu, align 2, !tbaa !639
  %wide.load308 = load <8 x i16>, ptr %i.yv, align 2, !tbaa !639
  %i.yw = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index306 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %wide.load309 = load <8 x i16>, ptr %i.yw, align 2, !tbaa !639
  %wide.load310 = load <8 x i16>, ptr %i.yx, align 2, !tbaa !639
  %i.yy = add <8 x i16> %wide.load309, %wide.load307 ; 2 uses
  %i.yz = add <8 x i16> %wide.load310, %wide.load308 ; 2 uses
  %i.za = add <8 x i16> %i.yy, splat (i16 -3329)  ; 2 uses
  %i.zb = add <8 x i16> %i.yz, splat (i16 -3329)  ; 2 uses
  %i.zc = icmp slt <8 x i16> %i.za, zeroinitializer
  %i.zd = icmp slt <8 x i16> %i.zb, zeroinitializer
  %i.ze = select <8 x i1> %i.zc, <8 x i16> %i.yy, <8 x i16> zeroinitializer
  %i.zf = select <8 x i1> %i.zd, <8 x i16> %i.yz, <8 x i16> zeroinitializer
  %i.zg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.za, <8 x i16> zeroinitializer)
  %i.zh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zb, <8 x i16> zeroinitializer)
  %i.zi = or <8 x i16> %i.ze, %i.zg
  %i.zj = or <8 x i16> %i.zf, %i.zh
  store <8 x i16> %i.zi, ptr %i.yu, align 2, !tbaa !639
  store <8 x i16> %i.zj, ptr %i.yv, align 2, !tbaa !639
  %index.next311 = add nuw i64 %index306, 16      ; 2 uses
  %i.zk = icmp eq i64 %index.next311, 256
  br i1 %i.zk, label %vector.body315, label %vector.body305, !llvm.loop !1879

vector.body315:                                   ; preds = %vector.body305, %vector.body315
  %index316 = phi i64 [ %index.next321, %vector.body315 ], [ 0, %vector.body305 ] ; 3 uses
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %index316 ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16 ; 2 uses
  %wide.load317 = load <8 x i16>, ptr %i.zl, align 2, !tbaa !639
  %wide.load318 = load <8 x i16>, ptr %i.zm, align 2, !tbaa !639
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %index316 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %wide.load319 = load <8 x i16>, ptr %i.zn, align 2, !tbaa !639
  %wide.load320 = load <8 x i16>, ptr %i.zo, align 2, !tbaa !639
  %i.zp = add <8 x i16> %wide.load319, %wide.load317 ; 2 uses
  %i.zq = add <8 x i16> %wide.load320, %wide.load318 ; 2 uses
  %i.zr = add <8 x i16> %i.zp, splat (i16 -3329)  ; 2 uses
  %i.zs = add <8 x i16> %i.zq, splat (i16 -3329)  ; 2 uses
  %i.zt = icmp slt <8 x i16> %i.zr, zeroinitializer
  %i.zu = icmp slt <8 x i16> %i.zs, zeroinitializer
  %i.zv = select <8 x i1> %i.zt, <8 x i16> %i.zp, <8 x i16> zeroinitializer
  %i.zw = select <8 x i1> %i.zu, <8 x i16> %i.zq, <8 x i16> zeroinitializer
  %i.zx = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zr, <8 x i16> zeroinitializer)
  %i.zy = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zs, <8 x i16> zeroinitializer)
  %i.zz = or <8 x i16> %i.zv, %i.zx
  %i.aaa = or <8 x i16> %i.zw, %i.zy
  store <8 x i16> %i.zz, ptr %i.zl, align 2, !tbaa !639
  store <8 x i16> %i.aaa, ptr %i.zm, align 2, !tbaa !639
  %index.next321 = add nuw i64 %index316, 16      ; 2 uses
  %i.aab = icmp eq i64 %index.next321, 256
  br i1 %i.aab, label %vector.body325, label %vector.body315, !llvm.loop !1880

vector.body325:                                   ; preds = %vector.body315, %vector.body325
  %index326 = phi i64 [ %index.next331, %vector.body325 ], [ 0, %vector.body315 ] ; 3 uses
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %i.ry, i64 %index326 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 16 ; 2 uses
  %wide.load327 = load <8 x i16>, ptr %i.aac, align 2, !tbaa !639
  %wide.load328 = load <8 x i16>, ptr %i.aad, align 2, !tbaa !639
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index326 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %wide.load329 = load <8 x i16>, ptr %i.aae, align 2, !tbaa !639
  %wide.load330 = load <8 x i16>, ptr %i.aaf, align 2, !tbaa !639
  %i.aag = add <8 x i16> %wide.load329, %wide.load327 ; 2 uses
  %i.aah = add <8 x i16> %wide.load330, %wide.load328 ; 2 uses
  %i.aai = add <8 x i16> %i.aag, splat (i16 -3329) ; 2 uses
  %i.aaj = add <8 x i16> %i.aah, splat (i16 -3329) ; 2 uses
  %i.aak = icmp slt <8 x i16> %i.aai, zeroinitializer
  %i.aal = icmp slt <8 x i16> %i.aaj, zeroinitializer
  %i.aam = select <8 x i1> %i.aak, <8 x i16> %i.aag, <8 x i16> zeroinitializer
  %i.aan = select <8 x i1> %i.aal, <8 x i16> %i.aah, <8 x i16> zeroinitializer
  %i.aao = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aai, <8 x i16> zeroinitializer)
  %i.aap = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aaj, <8 x i16> zeroinitializer)
  %i.aaq = or <8 x i16> %i.aam, %i.aao
  %i.aar = or <8 x i16> %i.aan, %i.aap
  store <8 x i16> %i.aaq, ptr %i.aac, align 2, !tbaa !639
  store <8 x i16> %i.aar, ptr %i.aad, align 2, !tbaa !639
  %index.next331 = add nuw i64 %index326, 16      ; 2 uses
  %i.aas = icmp eq i64 %index.next331, 256
  br i1 %i.aas, label %vector.body335, label %vector.body325, !llvm.loop !1881

vector.body335:                                   ; preds = %vector.body325, %vector.body335
  %index336 = phi i64 [ %index.next341, %vector.body335 ], [ 0, %vector.body325 ] ; 3 uses
  %i.aat = getelementptr inbounds nuw [2 x i8], ptr %i.vj, i64 %index336 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16 ; 2 uses
  %wide.load337 = load <8 x i16>, ptr %i.aat, align 2, !tbaa !639
  %wide.load338 = load <8 x i16>, ptr %i.aau, align 2, !tbaa !639
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index336 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %wide.load339 = load <8 x i16>, ptr %i.aav, align 2, !tbaa !639
  %wide.load340 = load <8 x i16>, ptr %i.aaw, align 2, !tbaa !639
  %i.aax = add <8 x i16> %wide.load339, %wide.load337 ; 2 uses
  %i.aay = add <8 x i16> %wide.load340, %wide.load338 ; 2 uses
  %i.aaz = add <8 x i16> %i.aax, splat (i16 -3329) ; 2 uses
  %i.aba = add <8 x i16> %i.aay, splat (i16 -3329) ; 2 uses
  %i.abb = icmp slt <8 x i16> %i.aaz, zeroinitializer
  %i.abc = icmp slt <8 x i16> %i.aba, zeroinitializer
  %i.abd = select <8 x i1> %i.abb, <8 x i16> %i.aax, <8 x i16> zeroinitializer
  %i.abe = select <8 x i1> %i.abc, <8 x i16> %i.aay, <8 x i16> zeroinitializer
  %i.abf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aaz, <8 x i16> zeroinitializer)
  %i.abg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aba, <8 x i16> zeroinitializer)
  %i.abh = or <8 x i16> %i.abd, %i.abf
  %i.abi = or <8 x i16> %i.abe, %i.abg
  store <8 x i16> %i.abh, ptr %i.aat, align 2, !tbaa !639
  store <8 x i16> %i.abi, ptr %i.aau, align 2, !tbaa !639
  %index.next341 = add nuw i64 %index336, 16      ; 2 uses
  %i.abj = icmp eq i64 %index.next341, 256
  br i1 %i.abj, label %_ZN5mlkem12_GLOBAL__N_110vector_addILi4EEEvPNS0_6vectorIXT_EEEPKS3_.exit, label %vector.body335, !llvm.loop !1882

_ZN5mlkem12_GLOBAL__N_110vector_addILi4EEEvPNS0_6vectorIXT_EEEPKS3_.exit: ; preds = %vector.body335
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call fastcc void @_ZN5mlkem12_GLOBAL__N_120scalar_inner_productILi4EEEvPNS0_6scalarEPKNS0_6vectorIXT_EEES7_(ptr noundef %9, ptr noundef %1, ptr noundef %5)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge48.i, %_ZN5mlkem12_GLOBAL__N_110vector_addILi4EEEvPNS0_6vectorIXT_EEEPKS3_.exit
  %.03550.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_110vector_addILi4EEEvPNS0_6vectorIXT_EEEPKS3_.exit ], [ %i.abk, %._crit_edge48.i ]
  %.03649.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_110vector_addILi4EEEvPNS0_6vectorIXT_EEEPKS3_.exit ], [ %.pre.i, %._crit_edge48.i ] ; 3 uses
  %i.abk = lshr i32 %.03550.i, 1                  ; 3 uses
  %.not.i = icmp eq i32 %i.abk, 0
  %.pre.i = shl i32 %.03649.i, 1                  ; 4 uses
  br i1 %.not.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.e
  %i.abl = zext i32 %.pre.i to i64                ; 4 uses
  %i.abm = sext i32 %.03649.i to i64              ; 2 uses
  %i.abn = zext nneg i32 %i.abk to i64            ; 2 uses
  %invariant.gep68.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.abn
  %invariant.gep.i = getelementptr [2 x i8], ptr %9, i64 %i.abm ; 2 uses
  %i.abo = shl nuw nsw i64 %i.abl, 1
  %i.abp = shl nuw nsw i64 %i.abm, 1              ; 2 uses
  %i.abq = getelementptr i8, ptr %9, i64 %i.abp
  %i.abr = getelementptr i8, ptr %i.abq, i64 2
  %i.abs = getelementptr i8, ptr %9, i64 %i.abp
  br label %.lr.ph.preheader.i

._crit_edge48.i:                                  ; preds = %._crit_edge.i, %bb.e
  %i.abt = icmp slt i32 %.pre.i, 256
  br i1 %i.abt, label %bb.e, label %vector.body369, !llvm.loop !1266

vector.body369:                                   ; preds = %._crit_edge48.i, %vector.body369
  %index370 = phi i64 [ %index.next372, %vector.body369 ], [ 0, %._crit_edge48.i ] ; 2 uses
  %i.abu = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index370 ; 2 uses
  %wide.load371 = load <8 x i16>, ptr %i.abu, align 2, !tbaa !639
  %i.abv = zext <8 x i16> %wide.load371 to <8 x i32>
  %i.abw = mul nuw nsw <8 x i32> %i.abv, splat (i32 3303) ; 2 uses
  %i.abx = zext nneg <8 x i32> %i.abw to <8 x i64>
  %i.aby = mul nuw nsw <8 x i64> %i.abx, splat (i64 5039)
  %i.abz = lshr <8 x i64> %i.aby, splat (i64 24)
  %i.aca = trunc nuw nsw <8 x i64> %i.abz to <8 x i32>
  %i.acb = mul nuw <8 x i32> %i.aca, splat (i32 62207)
  %i.acc = add nuw <8 x i32> %i.acb, %i.abw
  %i.acd = trunc <8 x i32> %i.acc to <8 x i16>    ; 2 uses
  %i.ace = add <8 x i16> %i.acd, splat (i16 -3329) ; 2 uses
  %i.acf = icmp slt <8 x i16> %i.ace, zeroinitializer
  %i.acg = select <8 x i1> %i.acf, <8 x i16> %i.acd, <8 x i16> zeroinitializer
  %i.ach = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ace, <8 x i16> zeroinitializer)
  %i.aci = or <8 x i16> %i.acg, %i.ach
  store <8 x i16> %i.aci, ptr %i.abu, align 2, !tbaa !639
  %index.next372 = add nuw i64 %index370, 8       ; 2 uses
  %i.acj = icmp eq i64 %index.next372, 256
  br i1 %i.acj, label %vector.body376, label %vector.body369, !llvm.loop !1883

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph47.i
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next58.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv55.i = phi i32 [ %.03649.i, %.lr.ph47.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next.i58, %._crit_edge.i ] ; 5 uses
  %gep69.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i, i64 %indvars.iv57.i
  %i.ack = load i16, ptr %gep69.i, align 2, !tbaa !639
  %i.acl = zext i16 %i.ack to i32                 ; 2 uses
  %wide.trip.count.i = zext i32 %indvars.iv55.i to i64 ; 2 uses
  %14 = mul i64 %indvars.iv57.i, %i.abl
  %i.acm = sub i64 %wide.trip.count.i, %14        ; 3 uses
  %min.iters.check354 = icmp ult i64 %i.acm, 8
  br i1 %min.iters.check354, label %.lr.ph.i.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %.lr.ph.preheader.i
  %i.acn = mul i64 %i.abo, %indvars.iv57.i        ; 4 uses
  %scevgep348 = getelementptr i8, ptr %i.abr, i64 %i.acn
  %i.aco = mul i64 %indvars.iv57.i, %i.abl
  %i.acp = xor i64 %i.aco, -1
  %i.acq = zext nneg i32 %indvars.iv55.i to i64
  %i.acr = add i64 %i.acp, %i.acq
  %i.acs = shl nsw i64 %i.acr, 1                  ; 2 uses
  %scevgep349 = getelementptr i8, ptr %scevgep348, i64 %i.acs
  %scevgep347 = getelementptr i8, ptr %i.abs, i64 %i.acn
  %i.act = getelementptr i8, ptr %9, i64 %i.acn
  %scevgep345 = getelementptr i8, ptr %i.act, i64 2
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %i.acs
  %scevgep344 = getelementptr nuw i8, ptr %9, i64 %i.acn
  %bound0350 = icmp ult ptr %scevgep344, %scevgep349
  %bound1351 = icmp ult ptr %scevgep347, %scevgep346
  %found.conflict352 = and i1 %bound0350, %bound1351
  br i1 %found.conflict352, label %.lr.ph.i.preheader, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck343
  %n.vec356 = and i64 %i.acm, -8                  ; 3 uses
  %i.acu = add i64 %indvars.iv.i54, %n.vec356
  %broadcast.splatinsert357 = insertelement <8 x i32> poison, i32 %i.acl, i64 0
  %broadcast.splat358 = shufflevector <8 x i32> %broadcast.splatinsert357, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph355
  %index360 = phi i64 [ 0, %vector.ph355 ], [ %index.next363, %vector.body359 ] ; 2 uses
  %i.acv = add nuw i64 %indvars.iv.i54, %index360 ; 2 uses
  %i.acw = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.acv ; 2 uses
  %wide.load361 = load <8 x i16>, ptr %i.acw, align 2, !tbaa !639, !alias.scope !1884 ; 2 uses
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %i.acv ; 2 uses
  %wide.load362 = load <8 x i16>, ptr %i.acx, align 2, !tbaa !639, !alias.scope !1887, !noalias !1884 ; 2 uses
  %i.acy = zext <8 x i16> %wide.load361 to <8 x i32>
  %i.acz = zext <8 x i16> %wide.load362 to <8 x i32>
  %i.ada = add <8 x i16> %wide.load362, %wide.load361 ; 2 uses
  %i.adb = add <8 x i16> %i.ada, splat (i16 -3329) ; 2 uses
  %i.adc = icmp slt <8 x i16> %i.adb, zeroinitializer
  %i.add = select <8 x i1> %i.adc, <8 x i16> %i.ada, <8 x i16> zeroinitializer
  %i.ade = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.adb, <8 x i16> zeroinitializer)
  %i.adf = or <8 x i16> %i.add, %i.ade
  store <8 x i16> %i.adf, ptr %i.acx, align 2, !tbaa !639, !alias.scope !1887, !noalias !1884
  %i.adg = sub nsw <8 x i32> %i.acz, %i.acy
  %i.adh = add nsw <8 x i32> %i.adg, splat (i32 3329)
  %i.adi = mul <8 x i32> %i.adh, %broadcast.splat358 ; 2 uses
  %i.adj = zext <8 x i32> %i.adi to <8 x i64>
  %i.adk = mul nuw nsw <8 x i64> %i.adj, splat (i64 5039)
  %i.adl = lshr <8 x i64> %i.adk, splat (i64 24)
  %i.adm = trunc nuw nsw <8 x i64> %i.adl to <8 x i32>
  %i.adn = mul <8 x i32> %i.adm, splat (i32 62207)
  %i.ado = add <8 x i32> %i.adn, %i.adi
  %i.adp = trunc <8 x i32> %i.ado to <8 x i16>    ; 2 uses
  %i.adq = add <8 x i16> %i.adp, splat (i16 -3329) ; 2 uses
  %i.adr = icmp slt <8 x i16> %i.adq, zeroinitializer
  %i.ads = select <8 x i1> %i.adr, <8 x i16> %i.adp, <8 x i16> zeroinitializer
  %i.adt = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.adq, <8 x i16> zeroinitializer)
  %i.adu = or <8 x i16> %i.ads, %i.adt
  store <8 x i16> %i.adu, ptr %i.acw, align 2, !tbaa !639, !alias.scope !1884
  %index.next363 = add nuw i64 %index360, 8       ; 2 uses
  %i.adv = icmp eq i64 %index.next363, %n.vec356
  br i1 %i.adv, label %middle.block364, label %vector.body359, !llvm.loop !1889

middle.block364:                                  ; preds = %vector.body359
  %cmp.n365 = icmp eq i64 %i.acm, %n.vec356
  br i1 %cmp.n365, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck343, %.lr.ph.preheader.i, %middle.block364
  %indvars.iv52.i.ph = phi i64 [ %indvars.iv.i54, %vector.memcheck343 ], [ %indvars.iv.i54, %.lr.ph.preheader.i ], [ %i.acu, %middle.block364 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block364
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i54, %i.abl
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %indvars.iv.next56.i = add i32 %indvars.iv55.i, %.pre.i
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next58.i, %i.abn
  br i1 %exitcond63.not.i, label %._crit_edge48.i, label %.lr.ph.preheader.i, !llvm.loop !1274

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %.lr.ph.i ], [ %indvars.iv52.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv52.i ; 2 uses
  %i.adw = load i16, ptr %gep.i, align 2, !tbaa !639 ; 2 uses
  %i.adx = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv52.i ; 2 uses
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !639 ; 2 uses
  %i.adz = zext i16 %i.adw to i32
  %i.aea = zext i16 %i.ady to i32
  %i.aeb = add i16 %i.ady, %i.adw                 ; 2 uses
  %i.aec = add i16 %i.aeb, -3329                  ; 2 uses
  %isneg.i.i = icmp slt i16 %i.aec, 0
  %i.aed = select i1 %isneg.i.i, i16 %i.aeb, i16 0
  %i.aee = tail call i16 @llvm.smax.i16(i16 %i.aec, i16 0)
  %i.aef = or i16 %i.aed, %i.aee
  store i16 %i.aef, ptr %i.adx, align 2, !tbaa !639
  %reass.sub114 = sub nsw i32 %i.aea, %i.adz
  %i.aeg = add nsw i32 %reass.sub114, 3329
  %i.aeh = mul i32 %i.aeg, %i.acl                 ; 2 uses
  %i.aei = zext i32 %i.aeh to i64
  %i.aej = mul nuw nsw i64 %i.aei, 5039
  %i.aek = lshr i64 %i.aej, 24
  %i.ael = trunc nuw nsw i64 %i.aek to i32
  %.neg.i.i = mul i32 %i.ael, 62207
  %i.aem = add i32 %.neg.i.i, %i.aeh
  %i.aen = trunc i32 %i.aem to i16                ; 2 uses
  %i.aeo = add i16 %i.aen, -3329                  ; 2 uses
  %isneg.i.i.i56 = icmp slt i16 %i.aeo, 0
  %i.aep = select i1 %isneg.i.i.i56, i16 %i.aen, i16 0
  %i.aeq = tail call i16 @llvm.smax.i16(i16 %i.aeo, i16 0)
  %i.aer = or i16 %i.aep, %i.aeq
  store i16 %i.aer, ptr %gep.i, align 2, !tbaa !639
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i57, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1890

vector.body376:                                   ; preds = %vector.body369, %vector.body376
  %index377 = phi i64 [ %index.next382, %vector.body376 ], [ 0, %vector.body369 ] ; 3 uses
  %i.aes = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index377 ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 16 ; 2 uses
  %wide.load378 = load <8 x i16>, ptr %i.aes, align 2, !tbaa !639
  %wide.load379 = load <8 x i16>, ptr %i.aet, align 2, !tbaa !639
  %i.aeu = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index377 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %wide.load380 = load <8 x i16>, ptr %i.aeu, align 2, !tbaa !639
  %wide.load381 = load <8 x i16>, ptr %i.aev, align 2, !tbaa !639
  %i.aew = add <8 x i16> %wide.load380, %wide.load378 ; 2 uses
  %i.aex = add <8 x i16> %wide.load381, %wide.load379 ; 2 uses
  %i.aey = add <8 x i16> %i.aew, splat (i16 -3329) ; 2 uses
  %i.aez = add <8 x i16> %i.aex, splat (i16 -3329) ; 2 uses
  %i.afa = icmp slt <8 x i16> %i.aey, zeroinitializer
  %i.afb = icmp slt <8 x i16> %i.aez, zeroinitializer
  %i.afc = select <8 x i1> %i.afa, <8 x i16> %i.aew, <8 x i16> zeroinitializer
  %i.afd = select <8 x i1> %i.afb, <8 x i16> %i.aex, <8 x i16> zeroinitializer
  %i.afe = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aey, <8 x i16> zeroinitializer)
  %i.aff = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aez, <8 x i16> zeroinitializer)
  %i.afg = or <8 x i16> %i.afc, %i.afe
  %i.afh = or <8 x i16> %i.afd, %i.aff
  store <8 x i16> %i.afg, ptr %i.aes, align 2, !tbaa !639
  store <8 x i16> %i.afh, ptr %i.aet, align 2, !tbaa !639
  %index.next382 = add nuw i64 %index377, 16      ; 2 uses
  %i.afi = icmp eq i64 %index.next382, 256
  br i1 %i.afi, label %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit, label %vector.body376, !llvm.loop !1891

_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit: ; preds = %vector.body376
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  br label %vector.body386

vector.body386:                                   ; preds = %vector.body386, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit
  %index387 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit ], [ %index.next390, %vector.body386 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index387
  %wide.load388 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !13 ; 8 uses
  %i.afj = and <8 x i8> %wide.load388, splat (i8 1)
  %i.afk = zext nneg <8 x i8> %i.afj to <8 x i16>
  %.idx = shl nuw i64 %index387, 4
  %i.afl = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  %i.afm = lshr <8 x i8> %wide.load388, splat (i8 1)
  %i.afn = and <8 x i8> %i.afm, splat (i8 1)
  %i.afo = zext nneg <8 x i8> %i.afn to <8 x i16>
  %i.afp = lshr <8 x i8> %wide.load388, splat (i8 2)
  %i.afq = and <8 x i8> %i.afp, splat (i8 1)
  %i.afr = zext nneg <8 x i8> %i.afq to <8 x i16>
  %i.afs = lshr <8 x i8> %wide.load388, splat (i8 3)
  %i.aft = and <8 x i8> %i.afs, splat (i8 1)
  %i.afu = zext nneg <8 x i8> %i.aft to <8 x i16>
  %i.afv = lshr <8 x i8> %wide.load388, splat (i8 4)
  %i.afw = and <8 x i8> %i.afv, splat (i8 1)
  %i.afx = zext nneg <8 x i8> %i.afw to <8 x i16>
  %i.afy = lshr <8 x i8> %wide.load388, splat (i8 5)
  %i.afz = and <8 x i8> %i.afy, splat (i8 1)
  %i.aga = zext nneg <8 x i8> %i.afz to <8 x i16>
  %i.agb = lshr <8 x i8> %wide.load388, splat (i8 6)
  %i.agc = and <8 x i8> %i.agb, splat (i8 1)
  %i.agd = zext nneg <8 x i8> %i.agc to <8 x i16>
  %i.age = lshr <8 x i8> %wide.load388, splat (i8 7)
  %i.agf = zext nneg <8 x i8> %i.age to <8 x i16>
  %i.agg = shufflevector <8 x i16> %i.afk, <8 x i16> %i.afo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agh = shufflevector <8 x i16> %i.afr, <8 x i16> %i.afu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agi = shufflevector <8 x i16> %i.afx, <8 x i16> %i.aga, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agj = shufflevector <8 x i16> %i.agd, <8 x i16> %i.agf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agk = shufflevector <16 x i16> %i.agg, <16 x i16> %i.agh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.agl = shufflevector <16 x i16> %i.agi, <16 x i16> %i.agj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec389 = shufflevector <32 x i16> %i.agk, <32 x i16> %i.agl, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec389, ptr %i.afl, align 2, !tbaa !639
  %index.next390 = add nuw i64 %index387, 8       ; 2 uses
  %i.agm = icmp eq i64 %index.next390, 32
  br i1 %i.agm, label %vector.body394, label %vector.body386, !llvm.loop !1892

vector.body394:                                   ; preds = %vector.body386, %vector.body394
  %index395 = phi i64 [ %index.next397, %vector.body394 ], [ 0, %vector.body386 ] ; 2 uses
  %i.agn = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %index395 ; 2 uses
  %wide.load396 = load <8 x i16>, ptr %i.agn, align 2, !tbaa !639
  %i.ago = zext <8 x i16> %wide.load396 to <8 x i32>
  %i.agp = mul nuw nsw <8 x i32> %i.ago, splat (i32 3329) ; 2 uses
  %i.agq = and <8 x i32> %i.agp, splat (i32 1)
  %i.agr = lshr <8 x i32> %i.agp, splat (i32 1)
  %i.ags = add nuw nsw <8 x i32> %i.agq, %i.agr
  %i.agt = trunc <8 x i32> %i.ags to <8 x i16>
  store <8 x i16> %i.agt, ptr %i.agn, align 2, !tbaa !639
  %index.next397 = add nuw i64 %index395, 8       ; 2 uses
end_hunk_3
