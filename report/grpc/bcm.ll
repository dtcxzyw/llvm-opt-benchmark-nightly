Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@_ZN5mlkem12_GLOBAL__N_124mlkem_decap_no_self_testILi3EEEvPhPKhPKNS0_11private_keyIXT_EEE:vector.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
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
  %8 = load i16, ptr %gep69.i.i, align 2, !tbaa !639
  %9 = zext i16 %8 to i32                         ; 2 uses
  %wide.trip.count.i.i = zext i32 %indvars.iv55.i.i to i64 ; 2 uses
  %10 = mul i64 %indvars.iv57.i.i, %i.br
  %11 = sub i64 %wide.trip.count.i.i, %10         ; 3 uses
  %min.iters.check = icmp ult i64 %11, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.cq = mul i64 %i.bu, %indvars.iv57.i.i        ; 4 uses
  %scevgep46 = getelementptr i8, ptr %i.bx, i64 %i.cq
  %i.cr = mul i64 %indvars.iv57.i.i, %i.br
  %i.cs = xor i64 %i.cr, -1
  %i.ct = zext nneg i32 %indvars.iv55.i.i to i64
  %i.cu = add i64 %i.cs, %i.ct
  %i.cv = shl nsw i64 %i.cu, 1                    ; 2 uses
  %scevgep47 = getelementptr i8, ptr %scevgep46, i64 %i.cv
  %scevgep45 = getelementptr i8, ptr %i.by, i64 %i.cq
  %i.cw = getelementptr i8, ptr %7, i64 %i.cq
  %scevgep43 = getelementptr i8, ptr %i.cw, i64 2
  %scevgep44 = getelementptr i8, ptr %scevgep43, i64 %i.cv
  %scevgep = getelementptr nuw i8, ptr %7, i64 %i.cq
  %bound0 = icmp ult ptr %scevgep, %scevgep47
  %bound1 = icmp ult ptr %scevgep45, %scevgep44
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph48

vector.ph48:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %11, -8                        ; 3 uses
  %i.cx = add i64 %indvars.iv.i7.i, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %9, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph48
  %index50 = phi i64 [ 0, %vector.ph48 ], [ %index.next53, %vector.body49 ] ; 2 uses
  %i.cy = add nuw i64 %indvars.iv.i7.i, %index50  ; 2 uses
  %i.cz = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %i.cy ; 2 uses
  %wide.load51 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !639, !alias.scope !1268 ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %i.cy ; 2 uses
  %wide.load52 = load <8 x i16>, ptr %i.da, align 2, !tbaa !639, !alias.scope !1271, !noalias !1268 ; 2 uses
  %i.db = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.dc = zext <8 x i16> %wide.load52 to <8 x i32>
  %i.dd = add <8 x i16> %wide.load52, %wide.load51 ; 2 uses
  %i.de = add <8 x i16> %i.dd, splat (i16 -3329)  ; 2 uses
  %i.df = icmp slt <8 x i16> %i.de, zeroinitializer
  %i.dg = select <8 x i1> %i.df, <8 x i16> %i.dd, <8 x i16> zeroinitializer
  %i.dh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.de, <8 x i16> zeroinitializer)
  %i.di = or <8 x i16> %i.dg, %i.dh
  store <8 x i16> %i.di, ptr %i.da, align 2, !tbaa !639, !alias.scope !1271, !noalias !1268
  %i.dj = sub nsw <8 x i32> %i.dc, %i.db
  %i.dk = add nsw <8 x i32> %i.dj, splat (i32 3329)
  %i.dl = mul <8 x i32> %i.dk, %broadcast.splat   ; 2 uses
  %i.dm = zext <8 x i32> %i.dl to <8 x i64>
  %i.dn = mul nuw nsw <8 x i64> %i.dm, splat (i64 5039)
  %i.do = lshr <8 x i64> %i.dn, splat (i64 24)
  %i.dp = trunc nuw nsw <8 x i64> %i.do to <8 x i32>
  %i.dq = mul <8 x i32> %i.dp, splat (i32 62207)
  %i.dr = add <8 x i32> %i.dq, %i.dl
  %i.ds = trunc <8 x i32> %i.dr to <8 x i16>      ; 2 uses
  %i.dt = add <8 x i16> %i.ds, splat (i16 -3329)  ; 2 uses
  %i.du = icmp slt <8 x i16> %i.dt, zeroinitializer
  %i.dv = select <8 x i1> %i.du, <8 x i16> %i.ds, <8 x i16> zeroinitializer
  %i.dw = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dt, <8 x i16> zeroinitializer)
  %i.dx = or <8 x i16> %i.dv, %i.dw
  store <8 x i16> %i.dx, ptr %i.cz, align 2, !tbaa !639, !alias.scope !1268
  %index.next53 = add nuw i64 %index50, 8         ; 2 uses
  %i.dy = icmp eq i64 %index.next53, %n.vec
  br i1 %i.dy, label %middle.block54, label %vector.body49, !llvm.loop !1273

middle.block54:                                   ; preds = %vector.body49
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block54
  %indvars.iv52.i.i.ph = phi i64 [ %indvars.iv.i7.i, %vector.memcheck ], [ %indvars.iv.i7.i, %.lr.ph.preheader.i.i ], [ %i.cx, %middle.block54 ]
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
  %i.dz = load i16, ptr %gep.i.i, align 2, !tbaa !639 ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv52.i.i ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !639 ; 2 uses
  %i.ec = zext i16 %i.dz to i32
  %i.ed = zext i16 %i.eb to i32
  %i.ee = add i16 %i.eb, %i.dz                    ; 2 uses
  %i.ef = add i16 %i.ee, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.ef, 0
  %i.eg = select i1 %isneg.i.i.i, i16 %i.ee, i16 0
  %i.eh = tail call i16 @llvm.smax.i16(i16 %i.ef, i16 0)
  %i.ei = or i16 %i.eg, %i.eh
  store i16 %i.ei, ptr %i.ea, align 2, !tbaa !639
  %reass.sub = sub nsw i32 %i.ed, %i.ec
  %i.ej = add nsw i32 %reass.sub, 3329
  %i.ek = mul i32 %i.ej, %9                       ; 2 uses
  %i.el = zext i32 %i.ek to i64
  %i.em = mul nuw nsw i64 %i.el, 5039
  %i.en = lshr i64 %i.em, 24
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %.neg.i.i.i = mul i32 %i.eo, 62207
  %i.ep = add i32 %.neg.i.i.i, %i.ek
  %i.eq = trunc i32 %i.ep to i16                  ; 2 uses
  %i.er = add i16 %i.eq, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.er, 0
  %i.es = select i1 %isneg.i.i.i.i, i16 %i.eq, i16 0
  %i.et = tail call i16 @llvm.smax.i16(i16 %i.er, i16 0)
  %i.eu = or i16 %i.es, %i.et
  store i16 %i.eu, ptr %gep.i.i, align 2, !tbaa !639
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond.not.i8.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i8.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1275

vector.body64:                                    ; preds = %vector.body57, %vector.body64
  %index65 = phi i64 [ %index.next70, %vector.body64 ], [ 0, %vector.body57 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index65 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %wide.load66 = load <8 x i16>, ptr %i.ev, align 2, !tbaa !639
  %wide.load67 = load <8 x i16>, ptr %i.ew, align 2, !tbaa !639
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index65 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load68 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !639
  %wide.load69 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !639
  %i.ez = sub <8 x i16> %wide.load66, %wide.load68 ; 3 uses
  %i.fa = sub <8 x i16> %wide.load67, %wide.load69 ; 3 uses
  %i.fb = add <8 x i16> %i.ez, splat (i16 3329)
  %i.fc = add <8 x i16> %i.fa, splat (i16 3329)
  %i.fd = icmp slt <8 x i16> %i.ez, zeroinitializer
  %i.fe = icmp slt <8 x i16> %i.fa, zeroinitializer
  %i.ff = select <8 x i1> %i.fd, <8 x i16> %i.fb, <8 x i16> zeroinitializer
  %i.fg = select <8 x i1> %i.fe, <8 x i16> %i.fc, <8 x i16> zeroinitializer
  %i.fh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ez, <8 x i16> zeroinitializer)
  %i.fi = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fa, <8 x i16> zeroinitializer)
  %i.fj = or <8 x i16> %i.ff, %i.fh
  %i.fk = or <8 x i16> %i.fg, %i.fi
  store <8 x i16> %i.fj, ptr %i.ev, align 2, !tbaa !639
  store <8 x i16> %i.fk, ptr %i.ew, align 2, !tbaa !639
  %index.next70 = add nuw i64 %index65, 16        ; 2 uses
  %i.fl = icmp eq i64 %index.next70, 256
  br i1 %i.fl, label %vector.body74, label %vector.body64, !llvm.loop !1276

vector.body74:                                    ; preds = %vector.body64, %vector.body74
  %index75 = phi i64 [ %index.next77, %vector.body74 ], [ 0, %vector.body64 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index75 ; 2 uses
  %wide.load76 = load <8 x i16>, ptr %i.fm, align 2, !tbaa !639
  %i.fn = zext <8 x i16> %wide.load76 to <8 x i32> ; 2 uses
  %i.fo = shl nuw nsw <8 x i32> %i.fn, splat (i32 1)
  %i.fp = mul nuw nsw <8 x i32> %i.fn, splat (i32 10078)
  %i.fq = lshr <8 x i32> %i.fp, splat (i32 24)    ; 2 uses
  %i.fr = mul nsw <8 x i32> %i.fq, splat (i32 -3329)
  %i.fs = add nsw <8 x i32> %i.fr, %i.fo          ; 2 uses
  %i.ft = icmp ugt <8 x i32> %i.fs, splat (i32 1664)
  %i.fu = icmp ugt <8 x i32> %i.fs, splat (i32 4993)
  %i.fv = trunc <8 x i32> %i.fq to <8 x i1>
  %i.fw = xor <8 x i1> %i.ft, %i.fv
  %i.fx = xor <8 x i1> %i.fu, %i.fw
  %i.fy = zext <8 x i1> %i.fx to <8 x i16>
  store <8 x i16> %i.fy, ptr %i.fm, align 2, !tbaa !639
  %index.next77 = add nuw i64 %index75, 8         ; 2 uses
  %i.fz = icmp eq i64 %index.next77, 256
  br i1 %i.fz, label %vector.body81, label %vector.body74, !llvm.loop !1277

vector.body81:                                    ; preds = %vector.body74, %vector.body81
  %index82 = phi i64 [ %index.next83, %vector.body81 ], [ 0, %vector.body74 ] ; 3 uses
  %i.ga = shl nuw i64 %index82, 3                 ; 8 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 %index82
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ga ; 8 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ga ; 8 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ga ; 8 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ga ; 8 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ga ; 8 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ga ; 8 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 80
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ga ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ga ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 112
  %i.gr = load i16, ptr %i.gc, align 2, !tbaa !639
  %i.gs = load i16, ptr %i.ge, align 2, !tbaa !639
  %i.gt = load i16, ptr %i.gg, align 2, !tbaa !639
  %i.gu = load i16, ptr %i.gi, align 2, !tbaa !639
  %i.gv = load i16, ptr %i.gk, align 2, !tbaa !639
  %i.gw = load i16, ptr %i.gm, align 2, !tbaa !639
  %i.gx = load i16, ptr %i.go, align 2, !tbaa !639
  %i.gy = load i16, ptr %i.gq, align 2, !tbaa !639
  %i.gz = insertelement <8 x i16> poison, i16 %i.gr, i64 0
  %i.ha = insertelement <8 x i16> %i.gz, i16 %i.gs, i64 1
  %i.hb = insertelement <8 x i16> %i.ha, i16 %i.gt, i64 2
  %i.hc = insertelement <8 x i16> %i.hb, i16 %i.gu, i64 3
  %i.hd = insertelement <8 x i16> %i.hc, i16 %i.gv, i64 4
  %i.he = insertelement <8 x i16> %i.hd, i16 %i.gw, i64 5
  %i.hf = insertelement <8 x i16> %i.he, i16 %i.gx, i64 6
  %i.hg = insertelement <8 x i16> %i.hf, i16 %i.gy, i64 7
  %i.hh = trunc <8 x i16> %i.hg to <8 x i8>
  %i.hi = and <8 x i8> %i.hh, splat (i8 1)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gd, i64 18
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gf, i64 34
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gh, i64 50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gj, i64 66
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gl, i64 82
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gn, i64 98
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gp, i64 114
  %i.hr = load i16, ptr %i.hj, align 2, !tbaa !639
  %i.hs = load i16, ptr %i.hk, align 2, !tbaa !639
  %i.ht = load i16, ptr %i.hl, align 2, !tbaa !639
  %i.hu = load i16, ptr %i.hm, align 2, !tbaa !639
  %i.hv = load i16, ptr %i.hn, align 2, !tbaa !639
  %i.hw = load i16, ptr %i.ho, align 2, !tbaa !639
  %i.hx = load i16, ptr %i.hp, align 2, !tbaa !639
  %i.hy = load i16, ptr %i.hq, align 2, !tbaa !639
  %i.hz = insertelement <8 x i16> poison, i16 %i.hr, i64 0
  %i.ia = insertelement <8 x i16> %i.hz, i16 %i.hs, i64 1
  %i.ib = insertelement <8 x i16> %i.ia, i16 %i.ht, i64 2
  %i.ic = insertelement <8 x i16> %i.ib, i16 %i.hu, i64 3
  %i.id = insertelement <8 x i16> %i.ic, i16 %i.hv, i64 4
  %i.ie = insertelement <8 x i16> %i.id, i16 %i.hw, i64 5
  %i.if = insertelement <8 x i16> %i.ie, i16 %i.hx, i64 6
  %i.ig = insertelement <8 x i16> %i.if, i16 %i.hy, i64 7
  %i.ih = trunc <8 x i16> %i.ig to <8 x i8>
  %i.ii = shl <8 x i8> %i.ih, splat (i8 1)
  %i.ij = and <8 x i8> %i.ii, splat (i8 2)
  %i.ik = or disjoint <8 x i8> %i.ij, %i.hi
  %i.il = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.in = getelementptr inbounds nuw i8, ptr %i.gf, i64 36
  %i.io = getelementptr inbounds nuw i8, ptr %i.gh, i64 52
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gj, i64 68
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gl, i64 84
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gn, i64 100
  %i.is = getelementptr inbounds nuw i8, ptr %i.gp, i64 116
  %i.it = load i16, ptr %i.il, align 2, !tbaa !639
  %i.iu = load i16, ptr %i.im, align 2, !tbaa !639
  %i.iv = load i16, ptr %i.in, align 2, !tbaa !639
  %i.iw = load i16, ptr %i.io, align 2, !tbaa !639
  %i.ix = load i16, ptr %i.ip, align 2, !tbaa !639
  %i.iy = load i16, ptr %i.iq, align 2, !tbaa !639
  %i.iz = load i16, ptr %i.ir, align 2, !tbaa !639
  %i.ja = load i16, ptr %i.is, align 2, !tbaa !639
  %i.jb = insertelement <8 x i16> poison, i16 %i.it, i64 0
  %i.jc = insertelement <8 x i16> %i.jb, i16 %i.iu, i64 1
  %i.jd = insertelement <8 x i16> %i.jc, i16 %i.iv, i64 2
  %i.je = insertelement <8 x i16> %i.jd, i16 %i.iw, i64 3
  %i.jf = insertelement <8 x i16> %i.je, i16 %i.ix, i64 4
  %i.jg = insertelement <8 x i16> %i.jf, i16 %i.iy, i64 5
  %i.jh = insertelement <8 x i16> %i.jg, i16 %i.iz, i64 6
  %i.ji = insertelement <8 x i16> %i.jh, i16 %i.ja, i64 7
  %i.jj = trunc <8 x i16> %i.ji to <8 x i8>
  %i.jk = shl <8 x i8> %i.jj, splat (i8 2)
  %i.jl = and <8 x i8> %i.jk, splat (i8 4)
  %i.jm = or disjoint <8 x i8> %i.ik, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gc, i64 6
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gd, i64 22
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gf, i64 38
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gh, i64 54
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gj, i64 70
  %i.js = getelementptr inbounds nuw i8, ptr %i.gl, i64 86
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gn, i64 102
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gp, i64 118
  %i.jv = load i16, ptr %i.jn, align 2, !tbaa !639
  %i.jw = load i16, ptr %i.jo, align 2, !tbaa !639
  %i.jx = load i16, ptr %i.jp, align 2, !tbaa !639
  %i.jy = load i16, ptr %i.jq, align 2, !tbaa !639
  %i.jz = load i16, ptr %i.jr, align 2, !tbaa !639
  %i.ka = load i16, ptr %i.js, align 2, !tbaa !639
  %i.kb = load i16, ptr %i.jt, align 2, !tbaa !639
  %i.kc = load i16, ptr %i.ju, align 2, !tbaa !639
  %i.kd = insertelement <8 x i16> poison, i16 %i.jv, i64 0
  %i.ke = insertelement <8 x i16> %i.kd, i16 %i.jw, i64 1
  %i.kf = insertelement <8 x i16> %i.ke, i16 %i.jx, i64 2
  %i.kg = insertelement <8 x i16> %i.kf, i16 %i.jy, i64 3
  %i.kh = insertelement <8 x i16> %i.kg, i16 %i.jz, i64 4
  %i.ki = insertelement <8 x i16> %i.kh, i16 %i.ka, i64 5
  %i.kj = insertelement <8 x i16> %i.ki, i16 %i.kb, i64 6
  %i.kk = insertelement <8 x i16> %i.kj, i16 %i.kc, i64 7
  %i.kl = trunc <8 x i16> %i.kk to <8 x i8>
  %i.km = shl <8 x i8> %i.kl, splat (i8 3)
  %i.kn = and <8 x i8> %i.km, splat (i8 8)
  %i.ko = or disjoint <8 x i8> %i.jm, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gl, i64 88
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gp, i64 120
  %i.kx = load i16, ptr %i.kp, align 2, !tbaa !639
  %i.ky = load i16, ptr %i.kq, align 2, !tbaa !639
  %i.kz = load i16, ptr %i.kr, align 2, !tbaa !639
  %i.la = load i16, ptr %i.ks, align 2, !tbaa !639
  %i.lb = load i16, ptr %i.kt, align 2, !tbaa !639
end_hunk_0
begin_hunk_1_@_ZN5mlkem12_GLOBAL__N_124mlkem_decap_no_self_testILi4EEEvPhPKhPKNS0_11private_keyIXT_EEE:vector.ph

_ZN5mlkem12_GLOBAL__N_117scalar_decompressEPNS0_6scalarEi.exit.i.i: ; preds = %vector.body
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
  %8 = load i16, ptr %gep69.i.i, align 2, !tbaa !639
  %9 = zext i16 %8 to i32                         ; 2 uses
  %wide.trip.count.i.i = zext i32 %indvars.iv55.i.i to i64 ; 2 uses
  %10 = mul i64 %indvars.iv57.i.i, %i.cb
  %11 = sub i64 %wide.trip.count.i.i, %10         ; 3 uses
  %min.iters.check = icmp ult i64 %11, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.da = mul i64 %i.ce, %indvars.iv57.i.i        ; 4 uses
  %scevgep52 = getelementptr i8, ptr %i.ch, i64 %i.da
  %i.db = mul i64 %indvars.iv57.i.i, %i.cb
  %i.dc = xor i64 %i.db, -1
  %i.dd = zext nneg i32 %indvars.iv55.i.i to i64
  %i.de = add i64 %i.dc, %i.dd
  %i.df = shl nsw i64 %i.de, 1                    ; 2 uses
  %scevgep53 = getelementptr i8, ptr %scevgep52, i64 %i.df
  %scevgep51 = getelementptr i8, ptr %i.ci, i64 %i.da
  %i.dg = getelementptr i8, ptr %7, i64 %i.da
  %scevgep49 = getelementptr i8, ptr %i.dg, i64 2
  %scevgep50 = getelementptr i8, ptr %scevgep49, i64 %i.df
  %scevgep = getelementptr nuw i8, ptr %7, i64 %i.da
  %bound0 = icmp ult ptr %scevgep, %scevgep53
  %bound1 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph54

vector.ph54:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %11, -8                        ; 3 uses
  %i.dh = add i64 %indvars.iv.i7.i, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %9, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph54
  %index56 = phi i64 [ 0, %vector.ph54 ], [ %index.next59, %vector.body55 ] ; 2 uses
  %i.di = add nuw i64 %indvars.iv.i7.i, %index56  ; 2 uses
  %i.dj = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %i.di ; 2 uses
  %wide.load57 = load <8 x i16>, ptr %i.dj, align 2, !tbaa !639, !alias.scope !1285 ; 2 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %i.di ; 2 uses
  %wide.load58 = load <8 x i16>, ptr %i.dk, align 2, !tbaa !639, !alias.scope !1288, !noalias !1285 ; 2 uses
  %i.dl = zext <8 x i16> %wide.load57 to <8 x i32>
  %i.dm = zext <8 x i16> %wide.load58 to <8 x i32>
  %i.dn = add <8 x i16> %wide.load58, %wide.load57 ; 2 uses
  %i.do = add <8 x i16> %i.dn, splat (i16 -3329)  ; 2 uses
  %i.dp = icmp slt <8 x i16> %i.do, zeroinitializer
  %i.dq = select <8 x i1> %i.dp, <8 x i16> %i.dn, <8 x i16> zeroinitializer
  %i.dr = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.do, <8 x i16> zeroinitializer)
  %i.ds = or <8 x i16> %i.dq, %i.dr
  store <8 x i16> %i.ds, ptr %i.dk, align 2, !tbaa !639, !alias.scope !1288, !noalias !1285
  %i.dt = sub nsw <8 x i32> %i.dm, %i.dl
  %i.du = add nsw <8 x i32> %i.dt, splat (i32 3329)
  %i.dv = mul <8 x i32> %i.du, %broadcast.splat   ; 2 uses
  %i.dw = zext <8 x i32> %i.dv to <8 x i64>
  %i.dx = mul nuw nsw <8 x i64> %i.dw, splat (i64 5039)
  %i.dy = lshr <8 x i64> %i.dx, splat (i64 24)
  %i.dz = trunc nuw nsw <8 x i64> %i.dy to <8 x i32>
  %i.ea = mul <8 x i32> %i.dz, splat (i32 62207)
  %i.eb = add <8 x i32> %i.ea, %i.dv
  %i.ec = trunc <8 x i32> %i.eb to <8 x i16>      ; 2 uses
  %i.ed = add <8 x i16> %i.ec, splat (i16 -3329)  ; 2 uses
  %i.ee = icmp slt <8 x i16> %i.ed, zeroinitializer
  %i.ef = select <8 x i1> %i.ee, <8 x i16> %i.ec, <8 x i16> zeroinitializer
  %i.eg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ed, <8 x i16> zeroinitializer)
  %i.eh = or <8 x i16> %i.ef, %i.eg
  store <8 x i16> %i.eh, ptr %i.dj, align 2, !tbaa !639, !alias.scope !1285
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.ei = icmp eq i64 %index.next59, %n.vec
  br i1 %i.ei, label %middle.block60, label %vector.body55, !llvm.loop !1290

middle.block60:                                   ; preds = %vector.body55
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block60
  %indvars.iv52.i.i.ph = phi i64 [ %indvars.iv.i7.i, %vector.memcheck ], [ %indvars.iv.i7.i, %.lr.ph.preheader.i.i ], [ %i.dh, %middle.block60 ]
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
  %i.ej = load i16, ptr %gep.i.i, align 2, !tbaa !639 ; 2 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv52.i.i ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !639 ; 2 uses
  %i.em = zext i16 %i.ej to i32
  %i.en = zext i16 %i.el to i32
  %i.eo = add i16 %i.el, %i.ej                    ; 2 uses
  %i.ep = add i16 %i.eo, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.ep, 0
  %i.eq = select i1 %isneg.i.i.i, i16 %i.eo, i16 0
  %i.er = tail call i16 @llvm.smax.i16(i16 %i.ep, i16 0)
  %i.es = or i16 %i.eq, %i.er
  store i16 %i.es, ptr %i.ek, align 2, !tbaa !639
  %reass.sub = sub nsw i32 %i.en, %i.em
  %i.et = add nsw i32 %reass.sub, 3329
  %i.eu = mul i32 %i.et, %9                       ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = mul nuw nsw i64 %i.ev, 5039
  %i.ex = lshr i64 %i.ew, 24
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %.neg.i.i.i = mul i32 %i.ey, 62207
  %i.ez = add i32 %.neg.i.i.i, %i.eu
  %i.fa = trunc i32 %i.ez to i16                  ; 2 uses
  %i.fb = add i16 %i.fa, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.fb, 0
  %i.fc = select i1 %isneg.i.i.i.i, i16 %i.fa, i16 0
  %i.fd = tail call i16 @llvm.smax.i16(i16 %i.fb, i16 0)
  %i.fe = or i16 %i.fc, %i.fd
  store i16 %i.fe, ptr %gep.i.i, align 2, !tbaa !639
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond.not.i8.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i8.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1291

vector.body70:                                    ; preds = %vector.body63, %vector.body70
  %index71 = phi i64 [ %index.next76, %vector.body70 ], [ 0, %vector.body63 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index71 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load72 = load <8 x i16>, ptr %i.ff, align 2, !tbaa !639
  %wide.load73 = load <8 x i16>, ptr %i.fg, align 2, !tbaa !639
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index71 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load74 = load <8 x i16>, ptr %i.fh, align 2, !tbaa !639
  %wide.load75 = load <8 x i16>, ptr %i.fi, align 2, !tbaa !639
  %i.fj = sub <8 x i16> %wide.load72, %wide.load74 ; 3 uses
  %i.fk = sub <8 x i16> %wide.load73, %wide.load75 ; 3 uses
  %i.fl = add <8 x i16> %i.fj, splat (i16 3329)
  %i.fm = add <8 x i16> %i.fk, splat (i16 3329)
  %i.fn = icmp slt <8 x i16> %i.fj, zeroinitializer
  %i.fo = icmp slt <8 x i16> %i.fk, zeroinitializer
  %i.fp = select <8 x i1> %i.fn, <8 x i16> %i.fl, <8 x i16> zeroinitializer
  %i.fq = select <8 x i1> %i.fo, <8 x i16> %i.fm, <8 x i16> zeroinitializer
  %i.fr = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fj, <8 x i16> zeroinitializer)
  %i.fs = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fk, <8 x i16> zeroinitializer)
  %i.ft = or <8 x i16> %i.fp, %i.fr
  %i.fu = or <8 x i16> %i.fq, %i.fs
  store <8 x i16> %i.ft, ptr %i.ff, align 2, !tbaa !639
  store <8 x i16> %i.fu, ptr %i.fg, align 2, !tbaa !639
  %index.next76 = add nuw i64 %index71, 16        ; 2 uses
  %i.fv = icmp eq i64 %index.next76, 256
  br i1 %i.fv, label %vector.body80, label %vector.body70, !llvm.loop !1292

vector.body80:                                    ; preds = %vector.body70, %vector.body80
  %index81 = phi i64 [ %index.next83, %vector.body80 ], [ 0, %vector.body70 ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index81 ; 2 uses
  %wide.load82 = load <8 x i16>, ptr %i.fw, align 2, !tbaa !639
  %i.fx = zext <8 x i16> %wide.load82 to <8 x i32> ; 2 uses
  %i.fy = shl nuw nsw <8 x i32> %i.fx, splat (i32 1)
  %i.fz = mul nuw nsw <8 x i32> %i.fx, splat (i32 10078)
  %i.ga = lshr <8 x i32> %i.fz, splat (i32 24)    ; 2 uses
  %i.gb = mul nsw <8 x i32> %i.ga, splat (i32 -3329)
  %i.gc = add nsw <8 x i32> %i.gb, %i.fy          ; 2 uses
  %i.gd = icmp ugt <8 x i32> %i.gc, splat (i32 1664)
  %i.ge = icmp ugt <8 x i32> %i.gc, splat (i32 4993)
  %i.gf = trunc <8 x i32> %i.ga to <8 x i1>
  %i.gg = xor <8 x i1> %i.gd, %i.gf
  %i.gh = xor <8 x i1> %i.ge, %i.gg
  %i.gi = zext <8 x i1> %i.gh to <8 x i16>
  store <8 x i16> %i.gi, ptr %i.fw, align 2, !tbaa !639
  %index.next83 = add nuw i64 %index81, 8         ; 2 uses
  %i.gj = icmp eq i64 %index.next83, 256
  br i1 %i.gj, label %vector.body87, label %vector.body80, !llvm.loop !1293

vector.body87:                                    ; preds = %vector.body80, %vector.body87
  %index88 = phi i64 [ %index.next89, %vector.body87 ], [ 0, %vector.body80 ] ; 3 uses
  %i.gk = shl nuw i64 %index88, 3                 ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 %index88
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gk ; 8 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gk ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gk ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gk ; 8 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gk ; 8 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gk ; 8 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 80
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gk ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 96
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gk ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 112
  %i.hb = load i16, ptr %i.gm, align 2, !tbaa !639
  %i.hc = load i16, ptr %i.go, align 2, !tbaa !639
  %i.hd = load i16, ptr %i.gq, align 2, !tbaa !639
  %i.he = load i16, ptr %i.gs, align 2, !tbaa !639
  %i.hf = load i16, ptr %i.gu, align 2, !tbaa !639
  %i.hg = load i16, ptr %i.gw, align 2, !tbaa !639
  %i.hh = load i16, ptr %i.gy, align 2, !tbaa !639
  %i.hi = load i16, ptr %i.ha, align 2, !tbaa !639
  %i.hj = insertelement <8 x i16> poison, i16 %i.hb, i64 0
  %i.hk = insertelement <8 x i16> %i.hj, i16 %i.hc, i64 1
  %i.hl = insertelement <8 x i16> %i.hk, i16 %i.hd, i64 2
  %i.hm = insertelement <8 x i16> %i.hl, i16 %i.he, i64 3
  %i.hn = insertelement <8 x i16> %i.hm, i16 %i.hf, i64 4
  %i.ho = insertelement <8 x i16> %i.hn, i16 %i.hg, i64 5
  %i.hp = insertelement <8 x i16> %i.ho, i16 %i.hh, i64 6
  %i.hq = insertelement <8 x i16> %i.hp, i16 %i.hi, i64 7
  %i.hr = trunc <8 x i16> %i.hq to <8 x i8>
  %i.hs = and <8 x i8> %i.hr, splat (i8 1)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gn, i64 18
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gp, i64 34
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gr, i64 50
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gt, i64 66
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gv, i64 82
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gx, i64 98
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gz, i64 114
  %i.ib = load i16, ptr %i.ht, align 2, !tbaa !639
  %i.ic = load i16, ptr %i.hu, align 2, !tbaa !639
  %i.id = load i16, ptr %i.hv, align 2, !tbaa !639
  %i.ie = load i16, ptr %i.hw, align 2, !tbaa !639
  %i.if = load i16, ptr %i.hx, align 2, !tbaa !639
  %i.ig = load i16, ptr %i.hy, align 2, !tbaa !639
  %i.ih = load i16, ptr %i.hz, align 2, !tbaa !639
  %i.ii = load i16, ptr %i.ia, align 2, !tbaa !639
  %i.ij = insertelement <8 x i16> poison, i16 %i.ib, i64 0
  %i.ik = insertelement <8 x i16> %i.ij, i16 %i.ic, i64 1
  %i.il = insertelement <8 x i16> %i.ik, i16 %i.id, i64 2
  %i.im = insertelement <8 x i16> %i.il, i16 %i.ie, i64 3
  %i.in = insertelement <8 x i16> %i.im, i16 %i.if, i64 4
  %i.io = insertelement <8 x i16> %i.in, i16 %i.ig, i64 5
  %i.ip = insertelement <8 x i16> %i.io, i16 %i.ih, i64 6
  %i.iq = insertelement <8 x i16> %i.ip, i16 %i.ii, i64 7
  %i.ir = trunc <8 x i16> %i.iq to <8 x i8>
  %i.is = shl <8 x i8> %i.ir, splat (i8 1)
  %i.it = and <8 x i8> %i.is, splat (i8 2)
  %i.iu = or disjoint <8 x i8> %i.it, %i.hs
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gp, i64 36
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gr, i64 52
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gt, i64 68
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gv, i64 84
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gx, i64 100
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gz, i64 116
  %i.jd = load i16, ptr %i.iv, align 2, !tbaa !639
  %i.je = load i16, ptr %i.iw, align 2, !tbaa !639
  %i.jf = load i16, ptr %i.ix, align 2, !tbaa !639
  %i.jg = load i16, ptr %i.iy, align 2, !tbaa !639
  %i.jh = load i16, ptr %i.iz, align 2, !tbaa !639
  %i.ji = load i16, ptr %i.ja, align 2, !tbaa !639
  %i.jj = load i16, ptr %i.jb, align 2, !tbaa !639
  %i.jk = load i16, ptr %i.jc, align 2, !tbaa !639
  %i.jl = insertelement <8 x i16> poison, i16 %i.jd, i64 0
  %i.jm = insertelement <8 x i16> %i.jl, i16 %i.je, i64 1
  %i.jn = insertelement <8 x i16> %i.jm, i16 %i.jf, i64 2
  %i.jo = insertelement <8 x i16> %i.jn, i16 %i.jg, i64 3
  %i.jp = insertelement <8 x i16> %i.jo, i16 %i.jh, i64 4
  %i.jq = insertelement <8 x i16> %i.jp, i16 %i.ji, i64 5
  %i.jr = insertelement <8 x i16> %i.jq, i16 %i.jj, i64 6
  %i.js = insertelement <8 x i16> %i.jr, i16 %i.jk, i64 7
  %i.jt = trunc <8 x i16> %i.js to <8 x i8>
  %i.ju = shl <8 x i8> %i.jt, splat (i8 2)
  %i.jv = and <8 x i8> %i.ju, splat (i8 4)
  %i.jw = or disjoint <8 x i8> %i.iu, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gm, i64 6
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gn, i64 22
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gp, i64 38
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gr, i64 54
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gt, i64 70
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gv, i64 86
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gx, i64 102
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gz, i64 118
  %i.kf = load i16, ptr %i.jx, align 2, !tbaa !639
  %i.kg = load i16, ptr %i.jy, align 2, !tbaa !639
  %i.kh = load i16, ptr %i.jz, align 2, !tbaa !639
  %i.ki = load i16, ptr %i.ka, align 2, !tbaa !639
  %i.kj = load i16, ptr %i.kb, align 2, !tbaa !639
  %i.kk = load i16, ptr %i.kc, align 2, !tbaa !639
  %i.kl = load i16, ptr %i.kd, align 2, !tbaa !639
  %i.km = load i16, ptr %i.ke, align 2, !tbaa !639
  %i.kn = insertelement <8 x i16> poison, i16 %i.kf, i64 0
  %i.ko = insertelement <8 x i16> %i.kn, i16 %i.kg, i64 1
  %i.kp = insertelement <8 x i16> %i.ko, i16 %i.kh, i64 2
  %i.kq = insertelement <8 x i16> %i.kp, i16 %i.ki, i64 3
  %i.kr = insertelement <8 x i16> %i.kq, i16 %i.kj, i64 4
  %i.ks = insertelement <8 x i16> %i.kr, i16 %i.kk, i64 5
  %i.kt = insertelement <8 x i16> %i.ks, i16 %i.kl, i64 6
  %i.ku = insertelement <8 x i16> %i.kt, i16 %i.km, i64 7
  %i.kv = trunc <8 x i16> %i.ku to <8 x i8>
  %i.kw = shl <8 x i8> %i.kv, splat (i8 3)
  %i.kx = and <8 x i8> %i.kw, splat (i8 8)
  %i.ky = or disjoint <8 x i8> %i.jw, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.le = getelementptr inbounds nuw i8, ptr %i.gv, i64 88
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gx, i64 104
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gz, i64 120
  %i.lh = load i16, ptr %i.kz, align 2, !tbaa !639
  %i.li = load i16, ptr %i.la, align 2, !tbaa !639
  %i.lj = load i16, ptr %i.lb, align 2, !tbaa !639
  %i.lk = load i16, ptr %i.lc, align 2, !tbaa !639
  %i.ll = load i16, ptr %i.ld, align 2, !tbaa !639
end_hunk_1
begin_hunk_2_@_ZN5mlkem12_GLOBAL__N_111encrypt_cpaILi3EEEvPhPKNS0_10public_keyIXT_EEEPKhS8_:bb.a
  %wide.load103 = load <8 x i16>, ptr %i.ia, align 2, !tbaa !639
  %wide.load104 = load <8 x i16>, ptr %i.ib, align 2, !tbaa !639
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
  %11 = load i16, ptr %gep69.i.1.i, align 2, !tbaa !639
  %12 = zext i16 %11 to i32                       ; 2 uses
  %wide.trip.count.i.1.i = zext i32 %indvars.iv55.i.1.i to i64 ; 2 uses
  %13 = mul i64 %indvars.iv57.i.1.i, %i.lm
  %14 = sub i64 %wide.trip.count.i.1.i, %13       ; 3 uses
  %min.iters.check179 = icmp ult i64 %14, 8
  br i1 %min.iters.check179, label %.lr.ph.i.1.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.1.i
  %i.lv = mul i64 %i.lp, %indvars.iv57.i.1.i      ; 4 uses
  %scevgep176 = getelementptr i8, ptr %i.ls, i64 %i.lv
  %i.lw = mul i64 %indvars.iv57.i.1.i, %i.lm
  %i.lx = xor i64 %i.lw, -1
  %i.ly = zext nneg i32 %indvars.iv55.i.1.i to i64
  %i.lz = add i64 %i.lx, %i.ly
  %i.ma = shl nsw i64 %i.lz, 1                    ; 2 uses
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.ma
  %scevgep175 = getelementptr i8, ptr %i.lu, i64 %i.lv
  %i.mb = getelementptr i8, ptr %8, i64 %i.lv
  %scevgep173 = getelementptr i8, ptr %i.mb, i64 514
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.ma
  %i.mc = getelementptr i8, ptr %8, i64 %i.lv
  %scevgep = getelementptr i8, ptr %i.mc, i64 512
  %bound0 = icmp ult ptr %scevgep, %scevgep177
  %bound1 = icmp ult ptr %scevgep175, %scevgep174
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.1.i.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %vector.memcheck
  %n.vec181 = and i64 %14, -8                     ; 3 uses
  %i.md = add i64 %indvars.iv.i.1.i16, %n.vec181
  %broadcast.splatinsert182 = insertelement <8 x i32> poison, i32 %12, i64 0
  %broadcast.splat183 = shufflevector <8 x i32> %broadcast.splatinsert182, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph180
  %index185 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body184 ] ; 2 uses
  %i.me = add nuw i64 %indvars.iv.i.1.i16, %index185 ; 2 uses
  %i.mf = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %i.me ; 2 uses
  %wide.load186 = load <8 x i16>, ptr %i.mf, align 2, !tbaa !639, !alias.scope !1802 ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %i.me ; 2 uses
  %wide.load187 = load <8 x i16>, ptr %i.mg, align 2, !tbaa !639, !alias.scope !1805, !noalias !1802 ; 2 uses
  %i.mh = zext <8 x i16> %wide.load186 to <8 x i32>
  %i.mi = zext <8 x i16> %wide.load187 to <8 x i32>
  %i.mj = add <8 x i16> %wide.load187, %wide.load186 ; 2 uses
  %i.mk = add <8 x i16> %i.mj, splat (i16 -3329)  ; 2 uses
  %i.ml = icmp slt <8 x i16> %i.mk, zeroinitializer
  %i.mm = select <8 x i1> %i.ml, <8 x i16> %i.mj, <8 x i16> zeroinitializer
  %i.mn = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mk, <8 x i16> zeroinitializer)
  %i.mo = or <8 x i16> %i.mm, %i.mn
  store <8 x i16> %i.mo, ptr %i.mg, align 2, !tbaa !639, !alias.scope !1805, !noalias !1802
  %i.mp = sub nsw <8 x i32> %i.mi, %i.mh
  %i.mq = add nsw <8 x i32> %i.mp, splat (i32 3329)
  %i.mr = mul <8 x i32> %i.mq, %broadcast.splat183 ; 2 uses
  %i.ms = zext <8 x i32> %i.mr to <8 x i64>
  %i.mt = mul nuw nsw <8 x i64> %i.ms, splat (i64 5039)
  %i.mu = lshr <8 x i64> %i.mt, splat (i64 24)
  %i.mv = trunc nuw nsw <8 x i64> %i.mu to <8 x i32>
  %i.mw = mul <8 x i32> %i.mv, splat (i32 62207)
  %i.mx = add <8 x i32> %i.mw, %i.mr
  %i.my = trunc <8 x i32> %i.mx to <8 x i16>      ; 2 uses
  %i.mz = add <8 x i16> %i.my, splat (i16 -3329)  ; 2 uses
  %i.na = icmp slt <8 x i16> %i.mz, zeroinitializer
  %i.nb = select <8 x i1> %i.na, <8 x i16> %i.my, <8 x i16> zeroinitializer
  %i.nc = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mz, <8 x i16> zeroinitializer)
  %i.nd = or <8 x i16> %i.nb, %i.nc
  store <8 x i16> %i.nd, ptr %i.mf, align 2, !tbaa !639, !alias.scope !1802
  %index.next188 = add nuw i64 %index185, 8       ; 2 uses
  %i.ne = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.ne, label %middle.block189, label %vector.body184, !llvm.loop !1807

middle.block189:                                  ; preds = %vector.body184
  %cmp.n190 = icmp eq i64 %14, %n.vec181
  br i1 %cmp.n190, label %._crit_edge.i.1.i, label %.lr.ph.i.1.i.preheader

.lr.ph.i.1.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.preheader.i.1.i, %middle.block189
  %indvars.iv52.i.1.i.ph = phi i64 [ %indvars.iv.i.1.i16, %vector.memcheck ], [ %indvars.iv.i.1.i16, %.lr.ph.preheader.i.1.i ], [ %i.md, %middle.block189 ]
  br label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.1.i.preheader, %.lr.ph.i.1.i
  %indvars.iv52.i.1.i = phi i64 [ %indvars.iv.next53.i.1.i, %.lr.ph.i.1.i ], [ %indvars.iv52.i.1.i.ph, %.lr.ph.i.1.i.preheader ] ; 3 uses
  %gep.i.1.i = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.nf = load i16, ptr %gep.i.1.i, align 2, !tbaa !639 ; 2 uses
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !639 ; 2 uses
  %i.ni = zext i16 %i.nf to i32
  %i.nj = zext i16 %i.nh to i32
  %i.nk = add i16 %i.nh, %i.nf                    ; 2 uses
  %i.nl = add i16 %i.nk, -3329                    ; 2 uses
  %isneg.i.i.1.i17 = icmp slt i16 %i.nl, 0
  %i.nm = select i1 %isneg.i.i.1.i17, i16 %i.nk, i16 0
  %i.nn = tail call i16 @llvm.smax.i16(i16 %i.nl, i16 0)
  %i.no = or i16 %i.nm, %i.nn
  store i16 %i.no, ptr %i.ng, align 2, !tbaa !639
  %reass.sub93 = sub nsw i32 %i.nj, %i.ni
  %i.np = add nsw i32 %reass.sub93, 3329
  %i.nq = mul i32 %i.np, %12                      ; 2 uses
  %i.nr = zext i32 %i.nq to i64
  %i.ns = mul nuw nsw i64 %i.nr, 5039
  %i.nt = lshr i64 %i.ns, 24
  %i.nu = trunc nuw nsw i64 %i.nt to i32
  %.neg.i.i.1.i18 = mul i32 %i.nu, 62207
  %i.nv = add i32 %.neg.i.i.1.i18, %i.nq
  %i.nw = trunc i32 %i.nv to i16                  ; 2 uses
  %i.nx = add i16 %i.nw, -3329                    ; 2 uses
  %isneg.i.i.i.1.i19 = icmp slt i16 %i.nx, 0
  %i.ny = select i1 %isneg.i.i.i.1.i19, i16 %i.nw, i16 0
  %i.nz = tail call i16 @llvm.smax.i16(i16 %i.nx, i16 0)
  %i.oa = or i16 %i.ny, %i.nz
  store i16 %i.oa, ptr %gep.i.1.i, align 2, !tbaa !639
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
  %i.ob = icmp slt i32 %.pre.i.1.i, 256
  br i1 %i.ob, label %bb.b, label %vector.body194, !llvm.loop !1266

vector.body194:                                   ; preds = %._crit_edge48.i.1.i, %vector.body194
  %index195 = phi i64 [ %index.next197, %vector.body194 ], [ 0, %._crit_edge48.i.1.i ] ; 2 uses
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %index195 ; 2 uses
  %wide.load196 = load <8 x i16>, ptr %i.oc, align 2, !tbaa !639
  %i.od = zext <8 x i16> %wide.load196 to <8 x i32>
  %i.oe = mul nuw nsw <8 x i32> %i.od, splat (i32 3303) ; 2 uses
  %i.of = zext nneg <8 x i32> %i.oe to <8 x i64>
  %i.og = mul nuw nsw <8 x i64> %i.of, splat (i64 5039)
  %i.oh = lshr <8 x i64> %i.og, splat (i64 24)
  %i.oi = trunc nuw nsw <8 x i64> %i.oh to <8 x i32>
  %i.oj = mul nuw <8 x i32> %i.oi, splat (i32 62207)
  %i.ok = add nuw <8 x i32> %i.oj, %i.oe
  %i.ol = trunc <8 x i32> %i.ok to <8 x i16>      ; 2 uses
  %i.om = add <8 x i16> %i.ol, splat (i16 -3329)  ; 2 uses
  %i.on = icmp slt <8 x i16> %i.om, zeroinitializer
  %i.oo = select <8 x i1> %i.on, <8 x i16> %i.ol, <8 x i16> zeroinitializer
  %i.op = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.om, <8 x i16> zeroinitializer)
  %i.oq = or <8 x i16> %i.oo, %i.op
  store <8 x i16> %i.oq, ptr %i.oc, align 2, !tbaa !639
  %index.next197 = add nuw i64 %index195, 8       ; 2 uses
  %i.or = icmp eq i64 %index.next197, 256
  br i1 %i.or, label %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i, label %vector.body194, !llvm.loop !1809

_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i: ; preds = %vector.body194
  %i.os = getelementptr inbounds nuw i8, ptr %8, i64 1024 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge48.i.2.i, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i
  %.03550.i.2.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i ], [ %i.ot, %._crit_edge48.i.2.i ]
  %.03649.i.2.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i ], [ %.pre.i.2.i, %._crit_edge48.i.2.i ] ; 3 uses
  %i.ot = lshr i32 %.03550.i.2.i, 1               ; 3 uses
  %.not.i.2.i = icmp eq i32 %i.ot, 0
  %.pre.i.2.i = shl i32 %.03649.i.2.i, 1          ; 4 uses
  br i1 %.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph47.i.2.i

.lr.ph47.i.2.i:                                   ; preds = %bb.c
  %i.ou = zext i32 %.pre.i.2.i to i64             ; 4 uses
  %i.ov = sext i32 %.03649.i.2.i to i64           ; 2 uses
  %i.ow = zext nneg i32 %i.ot to i64              ; 2 uses
  %invariant.gep68.i.2.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.ow
  %invariant.gep.i.2.i = getelementptr [2 x i8], ptr %i.os, i64 %i.ov ; 2 uses
  %i.ox = shl nuw nsw i64 %i.ou, 1
  %i.oy = shl nuw nsw i64 %i.ov, 1                ; 2 uses
  %i.oz = getelementptr i8, ptr %8, i64 %i.oy
  %i.pa = getelementptr i8, ptr %i.oz, i64 1026
  %i.pb = getelementptr i8, ptr %8, i64 %i.oy
  %i.pc = getelementptr i8, ptr %i.pb, i64 1024
  br label %.lr.ph.preheader.i.2.i

.lr.ph.preheader.i.2.i:                           ; preds = %._crit_edge.i.2.i, %.lr.ph47.i.2.i
  %indvars.iv57.i.2.i = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next58.i.2.i, %._crit_edge.i.2.i ] ; 5 uses
  %indvars.iv55.i.2.i = phi i32 [ %.03649.i.2.i, %.lr.ph47.i.2.i ], [ %indvars.iv.next56.i.2.i, %._crit_edge.i.2.i ] ; 3 uses
  %indvars.iv.i.2.i22 = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next.i.2.i27, %._crit_edge.i.2.i ] ; 5 uses
  %gep69.i.2.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.2.i, i64 %indvars.iv57.i.2.i
  %15 = load i16, ptr %gep69.i.2.i, align 2, !tbaa !639
  %16 = zext i16 %15 to i32                       ; 2 uses
  %wide.trip.count.i.2.i = zext i32 %indvars.iv55.i.2.i to i64 ; 2 uses
  %17 = mul i64 %indvars.iv57.i.2.i, %i.ou
  %18 = sub i64 %wide.trip.count.i.2.i, %17       ; 3 uses
  %min.iters.check210 = icmp ult i64 %18, 8
  br i1 %min.iters.check210, label %.lr.ph.i.2.i.preheader, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.preheader.i.2.i
  %i.pd = mul i64 %i.ox, %indvars.iv57.i.2.i      ; 4 uses
  %scevgep204 = getelementptr i8, ptr %i.pa, i64 %i.pd
  %i.pe = mul i64 %indvars.iv57.i.2.i, %i.ou
  %i.pf = xor i64 %i.pe, -1
  %i.pg = zext nneg i32 %indvars.iv55.i.2.i to i64
  %i.ph = add i64 %i.pf, %i.pg
  %i.pi = shl nsw i64 %i.ph, 1                    ; 2 uses
  %scevgep205 = getelementptr i8, ptr %scevgep204, i64 %i.pi
  %scevgep203 = getelementptr i8, ptr %i.pc, i64 %i.pd
  %i.pj = getelementptr i8, ptr %8, i64 %i.pd
  %scevgep201 = getelementptr i8, ptr %i.pj, i64 1026
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.pi
  %i.pk = getelementptr i8, ptr %8, i64 %i.pd
  %scevgep200 = getelementptr i8, ptr %i.pk, i64 1024
  %bound0206 = icmp ult ptr %scevgep200, %scevgep205
  %bound1207 = icmp ult ptr %scevgep203, %scevgep202
  %found.conflict208 = and i1 %bound0206, %bound1207
  br i1 %found.conflict208, label %.lr.ph.i.2.i.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck199
  %n.vec212 = and i64 %18, -8                     ; 3 uses
  %i.pl = add i64 %indvars.iv.i.2.i22, %n.vec212
  %broadcast.splatinsert213 = insertelement <8 x i32> poison, i32 %16, i64 0
  %broadcast.splat214 = shufflevector <8 x i32> %broadcast.splatinsert213, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph211
  %index216 = phi i64 [ 0, %vector.ph211 ], [ %index.next219, %vector.body215 ] ; 2 uses
  %i.pm = add nuw i64 %indvars.iv.i.2.i22, %index216 ; 2 uses
  %i.pn = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %i.pm ; 2 uses
  %wide.load217 = load <8 x i16>, ptr %i.pn, align 2, !tbaa !639, !alias.scope !1810 ; 2 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %i.pm ; 2 uses
  %wide.load218 = load <8 x i16>, ptr %i.po, align 2, !tbaa !639, !alias.scope !1813, !noalias !1810 ; 2 uses
  %i.pp = zext <8 x i16> %wide.load217 to <8 x i32>
  %i.pq = zext <8 x i16> %wide.load218 to <8 x i32>
  %i.pr = add <8 x i16> %wide.load218, %wide.load217 ; 2 uses
  %i.ps = add <8 x i16> %i.pr, splat (i16 -3329)  ; 2 uses
  %i.pt = icmp slt <8 x i16> %i.ps, zeroinitializer
  %i.pu = select <8 x i1> %i.pt, <8 x i16> %i.pr, <8 x i16> zeroinitializer
  %i.pv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ps, <8 x i16> zeroinitializer)
  %i.pw = or <8 x i16> %i.pu, %i.pv
  store <8 x i16> %i.pw, ptr %i.po, align 2, !tbaa !639, !alias.scope !1813, !noalias !1810
  %i.px = sub nsw <8 x i32> %i.pq, %i.pp
  %i.py = add nsw <8 x i32> %i.px, splat (i32 3329)
  %i.pz = mul <8 x i32> %i.py, %broadcast.splat214 ; 2 uses
  %i.qa = zext <8 x i32> %i.pz to <8 x i64>
  %i.qb = mul nuw nsw <8 x i64> %i.qa, splat (i64 5039)
  %i.qc = lshr <8 x i64> %i.qb, splat (i64 24)
  %i.qd = trunc nuw nsw <8 x i64> %i.qc to <8 x i32>
  %i.qe = mul <8 x i32> %i.qd, splat (i32 62207)
  %i.qf = add <8 x i32> %i.qe, %i.pz
  %i.qg = trunc <8 x i32> %i.qf to <8 x i16>      ; 2 uses
  %i.qh = add <8 x i16> %i.qg, splat (i16 -3329)  ; 2 uses
  %i.qi = icmp slt <8 x i16> %i.qh, zeroinitializer
  %i.qj = select <8 x i1> %i.qi, <8 x i16> %i.qg, <8 x i16> zeroinitializer
  %i.qk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qh, <8 x i16> zeroinitializer)
  %i.ql = or <8 x i16> %i.qj, %i.qk
  store <8 x i16> %i.ql, ptr %i.pn, align 2, !tbaa !639, !alias.scope !1810
  %index.next219 = add nuw i64 %index216, 8       ; 2 uses
  %i.qm = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.qm, label %middle.block220, label %vector.body215, !llvm.loop !1815

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %18, %n.vec212
  br i1 %cmp.n221, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i.preheader

.lr.ph.i.2.i.preheader:                           ; preds = %vector.memcheck199, %.lr.ph.preheader.i.2.i, %middle.block220
  %indvars.iv52.i.2.i.ph = phi i64 [ %indvars.iv.i.2.i22, %vector.memcheck199 ], [ %indvars.iv.i.2.i22, %.lr.ph.preheader.i.2.i ], [ %i.pl, %middle.block220 ]
  br label %.lr.ph.i.2.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.2.i.preheader, %.lr.ph.i.2.i
  %indvars.iv52.i.2.i = phi i64 [ %indvars.iv.next53.i.2.i, %.lr.ph.i.2.i ], [ %indvars.iv52.i.2.i.ph, %.lr.ph.i.2.i.preheader ] ; 3 uses
  %gep.i.2.i = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.qn = load i16, ptr %gep.i.2.i, align 2, !tbaa !639 ; 2 uses
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !639 ; 2 uses
  %i.qq = zext i16 %i.qn to i32
  %i.qr = zext i16 %i.qp to i32
  %i.qs = add i16 %i.qp, %i.qn                    ; 2 uses
  %i.qt = add i16 %i.qs, -3329                    ; 2 uses
  %isneg.i.i.2.i23 = icmp slt i16 %i.qt, 0
  %i.qu = select i1 %isneg.i.i.2.i23, i16 %i.qs, i16 0
  %i.qv = tail call i16 @llvm.smax.i16(i16 %i.qt, i16 0)
  %i.qw = or i16 %i.qu, %i.qv
  store i16 %i.qw, ptr %i.qo, align 2, !tbaa !639
  %reass.sub94 = sub nsw i32 %i.qr, %i.qq
  %i.qx = add nsw i32 %reass.sub94, 3329
  %i.qy = mul i32 %i.qx, %16                      ; 2 uses
  %i.qz = zext i32 %i.qy to i64
  %i.ra = mul nuw nsw i64 %i.qz, 5039
  %i.rb = lshr i64 %i.ra, 24
  %i.rc = trunc nuw nsw i64 %i.rb to i32
  %.neg.i.i.2.i24 = mul i32 %i.rc, 62207
  %i.rd = add i32 %.neg.i.i.2.i24, %i.qy
  %i.re = trunc i32 %i.rd to i16                  ; 2 uses
  %i.rf = add i16 %i.re, -3329                    ; 2 uses
  %isneg.i.i.i.2.i25 = icmp slt i16 %i.rf, 0
  %i.rg = select i1 %isneg.i.i.i.2.i25, i16 %i.re, i16 0
  %i.rh = tail call i16 @llvm.smax.i16(i16 %i.rf, i16 0)
  %i.ri = or i16 %i.rg, %i.rh
  store i16 %i.ri, ptr %gep.i.2.i, align 2, !tbaa !639
  %indvars.iv.next53.i.2.i = add nuw nsw i64 %indvars.iv52.i.2.i, 1 ; 2 uses
  %exitcond.not.i.2.i26 = icmp eq i64 %indvars.iv.next53.i.2.i, %wide.trip.count.i.2.i
  br i1 %exitcond.not.i.2.i26, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i, !llvm.loop !1816

._crit_edge.i.2.i:                                ; preds = %.lr.ph.i.2.i, %middle.block220
  %indvars.iv.next.i.2.i27 = add nuw nsw i64 %indvars.iv.i.2.i22, %i.ou
  %indvars.iv.next58.i.2.i = add nuw nsw i64 %indvars.iv57.i.2.i, 1 ; 2 uses
  %indvars.iv.next56.i.2.i = add i32 %indvars.iv55.i.2.i, %.pre.i.2.i
  %exitcond63.not.i.2.i = icmp eq i64 %indvars.iv.next58.i.2.i, %i.ow
  br i1 %exitcond63.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph.preheader.i.2.i, !llvm.loop !1274

._crit_edge48.i.2.i:                              ; preds = %._crit_edge.i.2.i, %bb.c
  %i.rj = icmp slt i32 %.pre.i.2.i, 256
  br i1 %i.rj, label %bb.c, label %vector.body225, !llvm.loop !1266

vector.body225:                                   ; preds = %._crit_edge48.i.2.i, %vector.body225
  %index226 = phi i64 [ %index.next228, %vector.body225 ], [ 0, %._crit_edge48.i.2.i ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %index226 ; 2 uses
  %wide.load227 = load <8 x i16>, ptr %i.rk, align 2, !tbaa !639
  %i.rl = zext <8 x i16> %wide.load227 to <8 x i32>
  %i.rm = mul nuw nsw <8 x i32> %i.rl, splat (i32 3303) ; 2 uses
  %i.rn = zext nneg <8 x i32> %i.rm to <8 x i64>
  %i.ro = mul nuw nsw <8 x i64> %i.rn, splat (i64 5039)
  %i.rp = lshr <8 x i64> %i.ro, splat (i64 24)
  %i.rq = trunc nuw nsw <8 x i64> %i.rp to <8 x i32>
  %i.rr = mul nuw <8 x i32> %i.rq, splat (i32 62207)
  %i.rs = add nuw <8 x i32> %i.rr, %i.rm
  %i.rt = trunc <8 x i32> %i.rs to <8 x i16>      ; 2 uses
  %i.ru = add <8 x i16> %i.rt, splat (i16 -3329)  ; 2 uses
  %i.rv = icmp slt <8 x i16> %i.ru, zeroinitializer
  %i.rw = select <8 x i1> %i.rv, <8 x i16> %i.rt, <8 x i16> zeroinitializer
  %i.rx = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ru, <8 x i16> zeroinitializer)
  %i.ry = or <8 x i16> %i.rw, %i.rx
  store <8 x i16> %i.ry, ptr %i.rk, align 2, !tbaa !639
  %index.next228 = add nuw i64 %index226, 8       ; 2 uses
  %i.rz = icmp eq i64 %index.next228, 256
  br i1 %i.rz, label %vector.body232, label %vector.body225, !llvm.loop !1817

vector.body232:                                   ; preds = %vector.body225, %vector.body232
  %index233 = phi i64 [ %index.next238, %vector.body232 ], [ 0, %vector.body225 ] ; 3 uses
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index233 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16 ; 2 uses
  %wide.load234 = load <8 x i16>, ptr %i.sa, align 2, !tbaa !639
  %wide.load235 = load <8 x i16>, ptr %i.sb, align 2, !tbaa !639
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index233 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %wide.load236 = load <8 x i16>, ptr %i.sc, align 2, !tbaa !639
  %wide.load237 = load <8 x i16>, ptr %i.sd, align 2, !tbaa !639
  %i.se = add <8 x i16> %wide.load236, %wide.load234 ; 2 uses
  %i.sf = add <8 x i16> %wide.load237, %wide.load235 ; 2 uses
  %i.sg = add <8 x i16> %i.se, splat (i16 -3329)  ; 2 uses
  %i.sh = add <8 x i16> %i.sf, splat (i16 -3329)  ; 2 uses
  %i.si = icmp slt <8 x i16> %i.sg, zeroinitializer
  %i.sj = icmp slt <8 x i16> %i.sh, zeroinitializer
  %i.sk = select <8 x i1> %i.si, <8 x i16> %i.se, <8 x i16> zeroinitializer
  %i.sl = select <8 x i1> %i.sj, <8 x i16> %i.sf, <8 x i16> zeroinitializer
  %i.sm = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sg, <8 x i16> zeroinitializer)
  %i.sn = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sh, <8 x i16> zeroinitializer)
  %i.so = or <8 x i16> %i.sk, %i.sm
  %i.sp = or <8 x i16> %i.sl, %i.sn
  store <8 x i16> %i.so, ptr %i.sa, align 2, !tbaa !639
  store <8 x i16> %i.sp, ptr %i.sb, align 2, !tbaa !639
  %index.next238 = add nuw i64 %index233, 16      ; 2 uses
  %i.sq = icmp eq i64 %index.next238, 256
  br i1 %i.sq, label %vector.body242, label %vector.body232, !llvm.loop !1818

vector.body242:                                   ; preds = %vector.body232, %vector.body242
  %index243 = phi i64 [ %index.next248, %vector.body242 ], [ 0, %vector.body232 ] ; 3 uses
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %index243 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16 ; 2 uses
  %wide.load244 = load <8 x i16>, ptr %i.sr, align 2, !tbaa !639
  %wide.load245 = load <8 x i16>, ptr %i.ss, align 2, !tbaa !639
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index243 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %wide.load246 = load <8 x i16>, ptr %i.st, align 2, !tbaa !639
  %wide.load247 = load <8 x i16>, ptr %i.su, align 2, !tbaa !639
  %i.sv = add <8 x i16> %wide.load246, %wide.load244 ; 2 uses
  %i.sw = add <8 x i16> %wide.load247, %wide.load245 ; 2 uses
  %i.sx = add <8 x i16> %i.sv, splat (i16 -3329)  ; 2 uses
  %i.sy = add <8 x i16> %i.sw, splat (i16 -3329)  ; 2 uses
  %i.sz = icmp slt <8 x i16> %i.sx, zeroinitializer
  %i.ta = icmp slt <8 x i16> %i.sy, zeroinitializer
  %i.tb = select <8 x i1> %i.sz, <8 x i16> %i.sv, <8 x i16> zeroinitializer
  %i.tc = select <8 x i1> %i.ta, <8 x i16> %i.sw, <8 x i16> zeroinitializer
  %i.td = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sx, <8 x i16> zeroinitializer)
  %i.te = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sy, <8 x i16> zeroinitializer)
  %i.tf = or <8 x i16> %i.tb, %i.td
  %i.tg = or <8 x i16> %i.tc, %i.te
  store <8 x i16> %i.tf, ptr %i.sr, align 2, !tbaa !639
  store <8 x i16> %i.tg, ptr %i.ss, align 2, !tbaa !639
  %index.next248 = add nuw i64 %index243, 16      ; 2 uses
  %i.th = icmp eq i64 %index.next248, 256
  br i1 %i.th, label %vector.body252, label %vector.body242, !llvm.loop !1819

vector.body252:                                   ; preds = %vector.body242, %vector.body252
  %index253 = phi i64 [ %index.next258, %vector.body252 ], [ 0, %vector.body242 ] ; 3 uses
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %index253 ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16 ; 2 uses
  %wide.load254 = load <8 x i16>, ptr %i.ti, align 2, !tbaa !639
  %wide.load255 = load <8 x i16>, ptr %i.tj, align 2, !tbaa !639
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %index253 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %wide.load256 = load <8 x i16>, ptr %i.tk, align 2, !tbaa !639
  %wide.load257 = load <8 x i16>, ptr %i.tl, align 2, !tbaa !639
  %i.tm = add <8 x i16> %wide.load256, %wide.load254 ; 2 uses
  %i.tn = add <8 x i16> %wide.load257, %wide.load255 ; 2 uses
  %i.to = add <8 x i16> %i.tm, splat (i16 -3329)  ; 2 uses
  %i.tp = add <8 x i16> %i.tn, splat (i16 -3329)  ; 2 uses
  %i.tq = icmp slt <8 x i16> %i.to, zeroinitializer
  %i.tr = icmp slt <8 x i16> %i.tp, zeroinitializer
  %i.ts = select <8 x i1> %i.tq, <8 x i16> %i.tm, <8 x i16> zeroinitializer
  %i.tt = select <8 x i1> %i.tr, <8 x i16> %i.tn, <8 x i16> zeroinitializer
  %i.tu = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.to, <8 x i16> zeroinitializer)
  %i.tv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tp, <8 x i16> zeroinitializer)
  %i.tw = or <8 x i16> %i.ts, %i.tu
  %i.tx = or <8 x i16> %i.tt, %i.tv
  store <8 x i16> %i.tw, ptr %i.ti, align 2, !tbaa !639
  store <8 x i16> %i.tx, ptr %i.tj, align 2, !tbaa !639
  %index.next258 = add nuw i64 %index253, 16      ; 2 uses
  %i.ty = icmp eq i64 %index.next258, 256
  br i1 %i.ty, label %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit, label %vector.body252, !llvm.loop !1820

_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit: ; preds = %vector.body252
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call fastcc void @_ZN5mlkem12_GLOBAL__N_120scalar_inner_productILi3EEEvPNS0_6scalarEPKNS0_6vectorIXT_EEES7_(ptr noundef %9, ptr noundef %1, ptr noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge48.i, %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit
  %.03550.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit ], [ %i.tz, %._crit_edge48.i ]
  %.03649.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit ], [ %.pre.i, %._crit_edge48.i ] ; 3 uses
  %i.tz = lshr i32 %.03550.i, 1                   ; 3 uses
  %.not.i = icmp eq i32 %i.tz, 0
  %.pre.i = shl i32 %.03649.i, 1                  ; 4 uses
  br i1 %.not.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.d
  %i.ua = zext i32 %.pre.i to i64                 ; 4 uses
  %i.ub = sext i32 %.03649.i to i64               ; 2 uses
  %i.uc = zext nneg i32 %i.tz to i64              ; 2 uses
  %invariant.gep68.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.uc
  %invariant.gep.i = getelementptr [2 x i8], ptr %9, i64 %i.ub ; 2 uses
  %i.ud = shl nuw nsw i64 %i.ua, 1
  %i.ue = shl nuw nsw i64 %i.ub, 1                ; 2 uses
  %i.uf = getelementptr i8, ptr %9, i64 %i.ue
  %i.ug = getelementptr i8, ptr %i.uf, i64 2
  %i.uh = getelementptr i8, ptr %9, i64 %i.ue
  br label %.lr.ph.preheader.i

._crit_edge48.i:                                  ; preds = %._crit_edge.i, %bb.d
  %i.ui = icmp slt i32 %.pre.i, 256
  br i1 %i.ui, label %bb.d, label %vector.body286, !llvm.loop !1266

vector.body286:                                   ; preds = %._crit_edge48.i, %vector.body286
  %index287 = phi i64 [ %index.next289, %vector.body286 ], [ 0, %._crit_edge48.i ] ; 2 uses
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index287 ; 2 uses
  %wide.load288 = load <8 x i16>, ptr %i.uj, align 2, !tbaa !639
  %i.uk = zext <8 x i16> %wide.load288 to <8 x i32>
  %i.ul = mul nuw nsw <8 x i32> %i.uk, splat (i32 3303) ; 2 uses
  %i.um = zext nneg <8 x i32> %i.ul to <8 x i64>
  %i.un = mul nuw nsw <8 x i64> %i.um, splat (i64 5039)
  %i.uo = lshr <8 x i64> %i.un, splat (i64 24)
  %i.up = trunc nuw nsw <8 x i64> %i.uo to <8 x i32>
  %i.uq = mul nuw <8 x i32> %i.up, splat (i32 62207)
  %i.ur = add nuw <8 x i32> %i.uq, %i.ul
  %i.us = trunc <8 x i32> %i.ur to <8 x i16>      ; 2 uses
  %i.ut = add <8 x i16> %i.us, splat (i16 -3329)  ; 2 uses
  %i.uu = icmp slt <8 x i16> %i.ut, zeroinitializer
  %i.uv = select <8 x i1> %i.uu, <8 x i16> %i.us, <8 x i16> zeroinitializer
  %i.uw = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ut, <8 x i16> zeroinitializer)
  %i.ux = or <8 x i16> %i.uv, %i.uw
  store <8 x i16> %i.ux, ptr %i.uj, align 2, !tbaa !639
  %index.next289 = add nuw i64 %index287, 8       ; 2 uses
  %i.uy = icmp eq i64 %index.next289, 256
  br i1 %i.uy, label %vector.body293, label %vector.body286, !llvm.loop !1821

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph47.i
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next58.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv55.i = phi i32 [ %.03649.i, %.lr.ph47.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next.i47, %._crit_edge.i ] ; 5 uses
  %gep69.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i, i64 %indvars.iv57.i
  %19 = load i16, ptr %gep69.i, align 2, !tbaa !639
  %20 = zext i16 %19 to i32                       ; 2 uses
  %wide.trip.count.i = zext i32 %indvars.iv55.i to i64 ; 2 uses
  %21 = mul i64 %indvars.iv57.i, %i.ua
  %22 = sub i64 %wide.trip.count.i, %21           ; 3 uses
  %min.iters.check271 = icmp ult i64 %22, 8
  br i1 %min.iters.check271, label %.lr.ph.i.preheader, label %vector.memcheck260

vector.memcheck260:                               ; preds = %.lr.ph.preheader.i
  %i.uz = mul i64 %i.ud, %indvars.iv57.i          ; 4 uses
  %scevgep265 = getelementptr i8, ptr %i.ug, i64 %i.uz
  %i.va = mul i64 %indvars.iv57.i, %i.ua
  %i.vb = xor i64 %i.va, -1
  %i.vc = zext nneg i32 %indvars.iv55.i to i64
  %i.vd = add i64 %i.vb, %i.vc
  %i.ve = shl nsw i64 %i.vd, 1                    ; 2 uses
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.ve
  %scevgep264 = getelementptr i8, ptr %i.uh, i64 %i.uz
  %i.vf = getelementptr i8, ptr %9, i64 %i.uz
  %scevgep262 = getelementptr i8, ptr %i.vf, i64 2
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %i.ve
  %scevgep261 = getelementptr nuw i8, ptr %9, i64 %i.uz
  %bound0267 = icmp ult ptr %scevgep261, %scevgep266
  %bound1268 = icmp ult ptr %scevgep264, %scevgep263
  %found.conflict269 = and i1 %bound0267, %bound1268
  br i1 %found.conflict269, label %.lr.ph.i.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %vector.memcheck260
  %n.vec273 = and i64 %22, -8                     ; 3 uses
  %i.vg = add i64 %indvars.iv.i43, %n.vec273
  %broadcast.splatinsert274 = insertelement <8 x i32> poison, i32 %20, i64 0
  %broadcast.splat275 = shufflevector <8 x i32> %broadcast.splatinsert274, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph272
  %index277 = phi i64 [ 0, %vector.ph272 ], [ %index.next280, %vector.body276 ] ; 2 uses
  %i.vh = add nuw i64 %indvars.iv.i43, %index277  ; 2 uses
  %i.vi = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.vh ; 2 uses
  %wide.load278 = load <8 x i16>, ptr %i.vi, align 2, !tbaa !639, !alias.scope !1822 ; 2 uses
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %i.vh ; 2 uses
  %wide.load279 = load <8 x i16>, ptr %i.vj, align 2, !tbaa !639, !alias.scope !1825, !noalias !1822 ; 2 uses
  %i.vk = zext <8 x i16> %wide.load278 to <8 x i32>
  %i.vl = zext <8 x i16> %wide.load279 to <8 x i32>
  %i.vm = add <8 x i16> %wide.load279, %wide.load278 ; 2 uses
  %i.vn = add <8 x i16> %i.vm, splat (i16 -3329)  ; 2 uses
  %i.vo = icmp slt <8 x i16> %i.vn, zeroinitializer
  %i.vp = select <8 x i1> %i.vo, <8 x i16> %i.vm, <8 x i16> zeroinitializer
  %i.vq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vn, <8 x i16> zeroinitializer)
  %i.vr = or <8 x i16> %i.vp, %i.vq
  store <8 x i16> %i.vr, ptr %i.vj, align 2, !tbaa !639, !alias.scope !1825, !noalias !1822
  %i.vs = sub nsw <8 x i32> %i.vl, %i.vk
  %i.vt = add nsw <8 x i32> %i.vs, splat (i32 3329)
  %i.vu = mul <8 x i32> %i.vt, %broadcast.splat275 ; 2 uses
  %i.vv = zext <8 x i32> %i.vu to <8 x i64>
  %i.vw = mul nuw nsw <8 x i64> %i.vv, splat (i64 5039)
  %i.vx = lshr <8 x i64> %i.vw, splat (i64 24)
  %i.vy = trunc nuw nsw <8 x i64> %i.vx to <8 x i32>
  %i.vz = mul <8 x i32> %i.vy, splat (i32 62207)
  %i.wa = add <8 x i32> %i.vz, %i.vu
  %i.wb = trunc <8 x i32> %i.wa to <8 x i16>      ; 2 uses
  %i.wc = add <8 x i16> %i.wb, splat (i16 -3329)  ; 2 uses
  %i.wd = icmp slt <8 x i16> %i.wc, zeroinitializer
  %i.we = select <8 x i1> %i.wd, <8 x i16> %i.wb, <8 x i16> zeroinitializer
  %i.wf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wc, <8 x i16> zeroinitializer)
  %i.wg = or <8 x i16> %i.we, %i.wf
  store <8 x i16> %i.wg, ptr %i.vi, align 2, !tbaa !639, !alias.scope !1822
  %index.next280 = add nuw i64 %index277, 8       ; 2 uses
  %i.wh = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.wh, label %middle.block281, label %vector.body276, !llvm.loop !1827

middle.block281:                                  ; preds = %vector.body276
  %cmp.n282 = icmp eq i64 %22, %n.vec273
  br i1 %cmp.n282, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck260, %.lr.ph.preheader.i, %middle.block281
  %indvars.iv52.i.ph = phi i64 [ %indvars.iv.i43, %vector.memcheck260 ], [ %indvars.iv.i43, %.lr.ph.preheader.i ], [ %i.vg, %middle.block281 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block281
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i43, %i.ua
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %indvars.iv.next56.i = add i32 %indvars.iv55.i, %.pre.i
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next58.i, %i.uc
  br i1 %exitcond63.not.i, label %._crit_edge48.i, label %.lr.ph.preheader.i, !llvm.loop !1274

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %.lr.ph.i ], [ %indvars.iv52.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv52.i ; 2 uses
  %i.wi = load i16, ptr %gep.i, align 2, !tbaa !639 ; 2 uses
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv52.i ; 2 uses
  %i.wk = load i16, ptr %i.wj, align 2, !tbaa !639 ; 2 uses
  %i.wl = zext i16 %i.wi to i32
  %i.wm = zext i16 %i.wk to i32
  %i.wn = add i16 %i.wk, %i.wi                    ; 2 uses
  %i.wo = add i16 %i.wn, -3329                    ; 2 uses
  %isneg.i.i = icmp slt i16 %i.wo, 0
  %i.wp = select i1 %isneg.i.i, i16 %i.wn, i16 0
  %i.wq = tail call i16 @llvm.smax.i16(i16 %i.wo, i16 0)
  %i.wr = or i16 %i.wp, %i.wq
  store i16 %i.wr, ptr %i.wj, align 2, !tbaa !639
  %reass.sub95 = sub nsw i32 %i.wm, %i.wl
  %i.ws = add nsw i32 %reass.sub95, 3329
  %i.wt = mul i32 %i.ws, %20                      ; 2 uses
  %i.wu = zext i32 %i.wt to i64
  %i.wv = mul nuw nsw i64 %i.wu, 5039
  %i.ww = lshr i64 %i.wv, 24
  %i.wx = trunc nuw nsw i64 %i.ww to i32
  %.neg.i.i = mul i32 %i.wx, 62207
  %i.wy = add i32 %.neg.i.i, %i.wt
  %i.wz = trunc i32 %i.wy to i16                  ; 2 uses
  %i.xa = add i16 %i.wz, -3329                    ; 2 uses
  %isneg.i.i.i45 = icmp slt i16 %i.xa, 0
  %i.xb = select i1 %isneg.i.i.i45, i16 %i.wz, i16 0
  %i.xc = tail call i16 @llvm.smax.i16(i16 %i.xa, i16 0)
  %i.xd = or i16 %i.xb, %i.xc
  store i16 %i.xd, ptr %gep.i, align 2, !tbaa !639
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i46, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1828

vector.body293:                                   ; preds = %vector.body286, %vector.body293
  %index294 = phi i64 [ %index.next299, %vector.body293 ], [ 0, %vector.body286 ] ; 3 uses
  %i.xe = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index294 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16 ; 2 uses
  %wide.load295 = load <8 x i16>, ptr %i.xe, align 2, !tbaa !639
  %wide.load296 = load <8 x i16>, ptr %i.xf, align 2, !tbaa !639
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index294 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %wide.load297 = load <8 x i16>, ptr %i.xg, align 2, !tbaa !639
  %wide.load298 = load <8 x i16>, ptr %i.xh, align 2, !tbaa !639
  %i.xi = add <8 x i16> %wide.load297, %wide.load295 ; 2 uses
  %i.xj = add <8 x i16> %wide.load298, %wide.load296 ; 2 uses
  %i.xk = add <8 x i16> %i.xi, splat (i16 -3329)  ; 2 uses
  %i.xl = add <8 x i16> %i.xj, splat (i16 -3329)  ; 2 uses
  %i.xm = icmp slt <8 x i16> %i.xk, zeroinitializer
  %i.xn = icmp slt <8 x i16> %i.xl, zeroinitializer
  %i.xo = select <8 x i1> %i.xm, <8 x i16> %i.xi, <8 x i16> zeroinitializer
  %i.xp = select <8 x i1> %i.xn, <8 x i16> %i.xj, <8 x i16> zeroinitializer
  %i.xq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xk, <8 x i16> zeroinitializer)
  %i.xr = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xl, <8 x i16> zeroinitializer)
  %i.xs = or <8 x i16> %i.xo, %i.xq
  %i.xt = or <8 x i16> %i.xp, %i.xr
  store <8 x i16> %i.xs, ptr %i.xe, align 2, !tbaa !639
  store <8 x i16> %i.xt, ptr %i.xf, align 2, !tbaa !639
  %index.next299 = add nuw i64 %index294, 16      ; 2 uses
  %i.xu = icmp eq i64 %index.next299, 256
  br i1 %i.xu, label %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit, label %vector.body293, !llvm.loop !1829

_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit: ; preds = %vector.body293
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit
  %index304 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit ], [ %index.next307, %vector.body303 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index304
  %wide.load305 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !13 ; 8 uses
  %i.xv = and <8 x i8> %wide.load305, splat (i8 1)
  %i.xw = zext nneg <8 x i8> %i.xv to <8 x i16>
  %.idx = shl nuw i64 %index304, 4
  %i.xx = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  %i.xy = lshr <8 x i8> %wide.load305, splat (i8 1)
  %i.xz = and <8 x i8> %i.xy, splat (i8 1)
  %i.ya = zext nneg <8 x i8> %i.xz to <8 x i16>
  %i.yb = lshr <8 x i8> %wide.load305, splat (i8 2)
  %i.yc = and <8 x i8> %i.yb, splat (i8 1)
  %i.yd = zext nneg <8 x i8> %i.yc to <8 x i16>
  %i.ye = lshr <8 x i8> %wide.load305, splat (i8 3)
  %i.yf = and <8 x i8> %i.ye, splat (i8 1)
  %i.yg = zext nneg <8 x i8> %i.yf to <8 x i16>
  %i.yh = lshr <8 x i8> %wide.load305, splat (i8 4)
  %i.yi = and <8 x i8> %i.yh, splat (i8 1)
  %i.yj = zext nneg <8 x i8> %i.yi to <8 x i16>
  %i.yk = lshr <8 x i8> %wide.load305, splat (i8 5)
  %i.yl = and <8 x i8> %i.yk, splat (i8 1)
  %i.ym = zext nneg <8 x i8> %i.yl to <8 x i16>
  %i.yn = lshr <8 x i8> %wide.load305, splat (i8 6)
  %i.yo = and <8 x i8> %i.yn, splat (i8 1)
  %i.yp = zext nneg <8 x i8> %i.yo to <8 x i16>
  %i.yq = lshr <8 x i8> %wide.load305, splat (i8 7)
  %i.yr = zext nneg <8 x i8> %i.yq to <8 x i16>
  %i.ys = shufflevector <8 x i16> %i.xw, <8 x i16> %i.ya, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yt = shufflevector <8 x i16> %i.yd, <8 x i16> %i.yg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yu = shufflevector <8 x i16> %i.yj, <8 x i16> %i.ym, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yv = shufflevector <8 x i16> %i.yp, <8 x i16> %i.yr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yw = shufflevector <16 x i16> %i.ys, <16 x i16> %i.yt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.yx = shufflevector <16 x i16> %i.yu, <16 x i16> %i.yv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec306 = shufflevector <32 x i16> %i.yw, <32 x i16> %i.yx, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec306, ptr %i.xx, align 2, !tbaa !639
  %index.next307 = add nuw i64 %index304, 8       ; 2 uses
  %i.yy = icmp eq i64 %index.next307, 32
  br i1 %i.yy, label %vector.body311, label %vector.body303, !llvm.loop !1830

vector.body311:                                   ; preds = %vector.body303, %vector.body311
  %index312 = phi i64 [ %index.next314, %vector.body311 ], [ 0, %vector.body303 ] ; 2 uses
  %i.yz = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %index312 ; 2 uses
  %wide.load313 = load <8 x i16>, ptr %i.yz, align 2, !tbaa !639
  %i.za = zext <8 x i16> %wide.load313 to <8 x i32>
  %i.zb = mul nuw nsw <8 x i32> %i.za, splat (i32 3329) ; 2 uses
  %i.zc = and <8 x i32> %i.zb, splat (i32 1)
  %i.zd = lshr <8 x i32> %i.zb, splat (i32 1)
  %i.ze = add nuw nsw <8 x i32> %i.zc, %i.zd
  %i.zf = trunc <8 x i32> %i.ze to <8 x i16>
  store <8 x i16> %i.zf, ptr %i.yz, align 2, !tbaa !639
  %index.next314 = add nuw i64 %index312, 8       ; 2 uses
  %i.zg = icmp eq i64 %index.next314, 256
  br i1 %i.zg, label %vector.body318, label %vector.body311, !llvm.loop !1831

vector.body318:                                   ; preds = %vector.body311, %vector.body318
  %index319 = phi i64 [ %index.next324, %vector.body318 ], [ 0, %vector.body311 ] ; 3 uses
  %i.zh = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index319 ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16 ; 2 uses
  %wide.load320 = load <8 x i16>, ptr %i.zh, align 2, !tbaa !639
  %wide.load321 = load <8 x i16>, ptr %i.zi, align 2, !tbaa !639
  %i.zj = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %index319 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %wide.load322 = load <8 x i16>, ptr %i.zj, align 2, !tbaa !639
  %wide.load323 = load <8 x i16>, ptr %i.zk, align 2, !tbaa !639
  %i.zl = add <8 x i16> %wide.load322, %wide.load320 ; 2 uses
  %i.zm = add <8 x i16> %wide.load323, %wide.load321 ; 2 uses
  %i.zn = add <8 x i16> %i.zl, splat (i16 -3329)  ; 2 uses
  %i.zo = add <8 x i16> %i.zm, splat (i16 -3329)  ; 2 uses
  %i.zp = icmp slt <8 x i16> %i.zn, zeroinitializer
  %i.zq = icmp slt <8 x i16> %i.zo, zeroinitializer
  %i.zr = select <8 x i1> %i.zp, <8 x i16> %i.zl, <8 x i16> zeroinitializer
  %i.zs = select <8 x i1> %i.zq, <8 x i16> %i.zm, <8 x i16> zeroinitializer
  %i.zt = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zn, <8 x i16> zeroinitializer)
  %i.zu = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zo, <8 x i16> zeroinitializer)
  %i.zv = or <8 x i16> %i.zr, %i.zt
  %i.zw = or <8 x i16> %i.zs, %i.zu
  store <8 x i16> %i.zv, ptr %i.zh, align 2, !tbaa !639
  store <8 x i16> %i.zw, ptr %i.zi, align 2, !tbaa !639
  %index.next324 = add nuw i64 %index319, 16      ; 2 uses
  %i.zx = icmp eq i64 %index.next324, 256
  br i1 %i.zx, label %vector.body328, label %vector.body318, !llvm.loop !1832

vector.body328:                                   ; preds = %vector.body318, %vector.body328
  %index329 = phi i64 [ %index.next331, %vector.body328 ], [ 0, %vector.body318 ] ; 2 uses
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index329 ; 2 uses
  %wide.load330 = load <4 x i16>, ptr %i.zy, align 2, !tbaa !639
  %i.zz = zext <4 x i16> %wide.load330 to <4 x i32>
  %i.aaa = shl nuw nsw <4 x i32> %i.zz, splat (i32 10) ; 2 uses
  %i.aab = zext nneg <4 x i32> %i.aaa to <4 x i64>
  %i.aac = mul nuw nsw <4 x i64> %i.aab, splat (i64 5039)
  %i.aad = lshr <4 x i64> %i.aac, splat (i64 24)  ; 2 uses
  %i.aae = trunc nuw nsw <4 x i64> %i.aad to <4 x i32>
  %i.aaf = mul nsw <4 x i32> %i.aae, splat (i32 -3329)
  %i.aag = add nsw <4 x i32> %i.aaf, %i.aaa       ; 2 uses
  %i.aah = icmp ugt <4 x i32> %i.aag, splat (i32 1664)
  %i.aai = zext <4 x i1> %i.aah to <4 x i64>
  %i.aaj = add nuw nsw <4 x i64> %i.aad, %i.aai
  %i.aak = icmp ugt <4 x i32> %i.aag, splat (i32 4993)
  %i.aal = zext <4 x i1> %i.aak to <4 x i64>
  %i.aam = add nuw nsw <4 x i64> %i.aaj, %i.aal
  %i.aan = trunc nuw nsw <4 x i64> %i.aam to <4 x i16>
  %i.aao = and <4 x i16> %i.aan, splat (i16 1023)
  store <4 x i16> %i.aao, ptr %i.zy, align 2, !tbaa !639
  %index.next331 = add nuw i64 %index329, 4       ; 2 uses
  %i.aap = icmp eq i64 %index.next331, 256
  br i1 %i.aap, label %vector.body335, label %vector.body328, !llvm.loop !1833

vector.body335:                                   ; preds = %vector.body328, %vector.body335
  %index336 = phi i64 [ %index.next338, %vector.body335 ], [ 0, %vector.body328 ] ; 2 uses
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %index336 ; 2 uses
  %wide.load337 = load <4 x i16>, ptr %i.aaq, align 2, !tbaa !639
  %i.aar = zext <4 x i16> %wide.load337 to <4 x i32>
  %i.aas = shl nuw nsw <4 x i32> %i.aar, splat (i32 10) ; 2 uses
  %i.aat = zext nneg <4 x i32> %i.aas to <4 x i64>
  %i.aau = mul nuw nsw <4 x i64> %i.aat, splat (i64 5039)
  %i.aav = lshr <4 x i64> %i.aau, splat (i64 24)  ; 2 uses
  %i.aaw = trunc nuw nsw <4 x i64> %i.aav to <4 x i32>
  %i.aax = mul nsw <4 x i32> %i.aaw, splat (i32 -3329)
  %i.aay = add nsw <4 x i32> %i.aax, %i.aas       ; 2 uses
  %i.aaz = icmp ugt <4 x i32> %i.aay, splat (i32 1664)
  %i.aba = zext <4 x i1> %i.aaz to <4 x i64>
  %i.abb = add nuw nsw <4 x i64> %i.aav, %i.aba
  %i.abc = icmp ugt <4 x i32> %i.aay, splat (i32 4993)
  %i.abd = zext <4 x i1> %i.abc to <4 x i64>
  %i.abe = add nuw nsw <4 x i64> %i.abb, %i.abd
  %i.abf = trunc nuw nsw <4 x i64> %i.abe to <4 x i16>
  %i.abg = and <4 x i16> %i.abf, splat (i16 1023)
  store <4 x i16> %i.abg, ptr %i.aaq, align 2, !tbaa !639
  %index.next338 = add nuw i64 %index336, 4       ; 2 uses
  %i.abh = icmp eq i64 %index.next338, 256
  br i1 %i.abh, label %vector.body342, label %vector.body335, !llvm.loop !1834

vector.body342:                                   ; preds = %vector.body335, %vector.body342
  %index343 = phi i64 [ %index.next345, %vector.body342 ], [ 0, %vector.body335 ] ; 2 uses
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %index343 ; 2 uses
  %wide.load344 = load <4 x i16>, ptr %i.abi, align 2, !tbaa !639
  %i.abj = zext <4 x i16> %wide.load344 to <4 x i32>
  %i.abk = shl nuw nsw <4 x i32> %i.abj, splat (i32 10) ; 2 uses
  %i.abl = zext nneg <4 x i32> %i.abk to <4 x i64>
  %i.abm = mul nuw nsw <4 x i64> %i.abl, splat (i64 5039)
  %i.abn = lshr <4 x i64> %i.abm, splat (i64 24)  ; 2 uses
  %i.abo = trunc nuw nsw <4 x i64> %i.abn to <4 x i32>
  %i.abp = mul nsw <4 x i32> %i.abo, splat (i32 -3329)
  %i.abq = add nsw <4 x i32> %i.abp, %i.abk       ; 2 uses
  %i.abr = icmp ugt <4 x i32> %i.abq, splat (i32 1664)
  %i.abs = zext <4 x i1> %i.abr to <4 x i64>
  %i.abt = add nuw nsw <4 x i64> %i.abn, %i.abs
  %i.abu = icmp ugt <4 x i32> %i.abq, splat (i32 4993)
  %i.abv = zext <4 x i1> %i.abu to <4 x i64>
  %i.abw = add nuw nsw <4 x i64> %i.abt, %i.abv
end_hunk_2
begin_hunk_3_@_ZN5mlkem12_GLOBAL__N_111encrypt_cpaILi4EEEvPhPKNS0_10public_keyIXT_EEEPKhS8_:bb.a
  %wide.load123 = load <8 x i16>, ptr %i.ld, align 2, !tbaa !639
  %wide.load124 = load <8 x i16>, ptr %i.le, align 2, !tbaa !639
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
  %11 = load i16, ptr %gep69.i.1.i, align 2, !tbaa !639
  %12 = zext i16 %11 to i32                       ; 2 uses
  %wide.trip.count.i.1.i = zext i32 %indvars.iv55.i.1.i to i64 ; 2 uses
  %13 = mul i64 %indvars.iv57.i.1.i, %i.op
  %14 = sub i64 %wide.trip.count.i.1.i, %13       ; 3 uses
  %min.iters.check221 = icmp ult i64 %14, 8
  br i1 %min.iters.check221, label %.lr.ph.i.1.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.1.i
  %i.oy = mul i64 %i.os, %indvars.iv57.i.1.i      ; 4 uses
  %scevgep218 = getelementptr i8, ptr %i.ov, i64 %i.oy
  %i.oz = mul i64 %indvars.iv57.i.1.i, %i.op
  %i.pa = xor i64 %i.oz, -1
  %i.pb = zext nneg i32 %indvars.iv55.i.1.i to i64
  %i.pc = add i64 %i.pa, %i.pb
  %i.pd = shl nsw i64 %i.pc, 1                    ; 2 uses
  %scevgep219 = getelementptr i8, ptr %scevgep218, i64 %i.pd
  %scevgep217 = getelementptr i8, ptr %i.ox, i64 %i.oy
  %i.pe = getelementptr i8, ptr %8, i64 %i.oy
  %scevgep215 = getelementptr i8, ptr %i.pe, i64 514
  %scevgep216 = getelementptr i8, ptr %scevgep215, i64 %i.pd
  %i.pf = getelementptr i8, ptr %8, i64 %i.oy
  %scevgep = getelementptr i8, ptr %i.pf, i64 512
  %bound0 = icmp ult ptr %scevgep, %scevgep219
  %bound1 = icmp ult ptr %scevgep217, %scevgep216
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.1.i.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck
  %n.vec223 = and i64 %14, -8                     ; 3 uses
  %i.pg = add i64 %indvars.iv.i.1.i16, %n.vec223
  %broadcast.splatinsert224 = insertelement <8 x i32> poison, i32 %12, i64 0
  %broadcast.splat225 = shufflevector <8 x i32> %broadcast.splatinsert224, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph222
  %index227 = phi i64 [ 0, %vector.ph222 ], [ %index.next230, %vector.body226 ] ; 2 uses
  %i.ph = add nuw i64 %indvars.iv.i.1.i16, %index227 ; 2 uses
  %i.pi = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %i.ph ; 2 uses
  %wide.load228 = load <8 x i16>, ptr %i.pi, align 2, !tbaa !639, !alias.scope !1855 ; 2 uses
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %i.ph ; 2 uses
  %wide.load229 = load <8 x i16>, ptr %i.pj, align 2, !tbaa !639, !alias.scope !1858, !noalias !1855 ; 2 uses
  %i.pk = zext <8 x i16> %wide.load228 to <8 x i32>
  %i.pl = zext <8 x i16> %wide.load229 to <8 x i32>
  %i.pm = add <8 x i16> %wide.load229, %wide.load228 ; 2 uses
  %i.pn = add <8 x i16> %i.pm, splat (i16 -3329)  ; 2 uses
  %i.po = icmp slt <8 x i16> %i.pn, zeroinitializer
  %i.pp = select <8 x i1> %i.po, <8 x i16> %i.pm, <8 x i16> zeroinitializer
  %i.pq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.pn, <8 x i16> zeroinitializer)
  %i.pr = or <8 x i16> %i.pp, %i.pq
  store <8 x i16> %i.pr, ptr %i.pj, align 2, !tbaa !639, !alias.scope !1858, !noalias !1855
  %i.ps = sub nsw <8 x i32> %i.pl, %i.pk
  %i.pt = add nsw <8 x i32> %i.ps, splat (i32 3329)
  %i.pu = mul <8 x i32> %i.pt, %broadcast.splat225 ; 2 uses
  %i.pv = zext <8 x i32> %i.pu to <8 x i64>
  %i.pw = mul nuw nsw <8 x i64> %i.pv, splat (i64 5039)
  %i.px = lshr <8 x i64> %i.pw, splat (i64 24)
  %i.py = trunc nuw nsw <8 x i64> %i.px to <8 x i32>
  %i.pz = mul <8 x i32> %i.py, splat (i32 62207)
  %i.qa = add <8 x i32> %i.pz, %i.pu
  %i.qb = trunc <8 x i32> %i.qa to <8 x i16>      ; 2 uses
  %i.qc = add <8 x i16> %i.qb, splat (i16 -3329)  ; 2 uses
  %i.qd = icmp slt <8 x i16> %i.qc, zeroinitializer
  %i.qe = select <8 x i1> %i.qd, <8 x i16> %i.qb, <8 x i16> zeroinitializer
  %i.qf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qc, <8 x i16> zeroinitializer)
  %i.qg = or <8 x i16> %i.qe, %i.qf
  store <8 x i16> %i.qg, ptr %i.pi, align 2, !tbaa !639, !alias.scope !1855
  %index.next230 = add nuw i64 %index227, 8       ; 2 uses
  %i.qh = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.qh, label %middle.block231, label %vector.body226, !llvm.loop !1860

middle.block231:                                  ; preds = %vector.body226
  %cmp.n232 = icmp eq i64 %14, %n.vec223
  br i1 %cmp.n232, label %._crit_edge.i.1.i, label %.lr.ph.i.1.i.preheader

.lr.ph.i.1.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.preheader.i.1.i, %middle.block231
  %indvars.iv52.i.1.i.ph = phi i64 [ %indvars.iv.i.1.i16, %vector.memcheck ], [ %indvars.iv.i.1.i16, %.lr.ph.preheader.i.1.i ], [ %i.pg, %middle.block231 ]
  br label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.1.i.preheader, %.lr.ph.i.1.i
  %indvars.iv52.i.1.i = phi i64 [ %indvars.iv.next53.i.1.i, %.lr.ph.i.1.i ], [ %indvars.iv52.i.1.i.ph, %.lr.ph.i.1.i.preheader ] ; 3 uses
  %gep.i.1.i = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.qi = load i16, ptr %gep.i.1.i, align 2, !tbaa !639 ; 2 uses
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !639 ; 2 uses
  %i.ql = zext i16 %i.qi to i32
  %i.qm = zext i16 %i.qk to i32
  %i.qn = add i16 %i.qk, %i.qi                    ; 2 uses
  %i.qo = add i16 %i.qn, -3329                    ; 2 uses
  %isneg.i.i.1.i17 = icmp slt i16 %i.qo, 0
  %i.qp = select i1 %isneg.i.i.1.i17, i16 %i.qn, i16 0
  %i.qq = tail call i16 @llvm.smax.i16(i16 %i.qo, i16 0)
  %i.qr = or i16 %i.qp, %i.qq
  store i16 %i.qr, ptr %i.qj, align 2, !tbaa !639
  %reass.sub111 = sub nsw i32 %i.qm, %i.ql
  %i.qs = add nsw i32 %reass.sub111, 3329
  %i.qt = mul i32 %i.qs, %12                      ; 2 uses
  %i.qu = zext i32 %i.qt to i64
  %i.qv = mul nuw nsw i64 %i.qu, 5039
  %i.qw = lshr i64 %i.qv, 24
  %i.qx = trunc nuw nsw i64 %i.qw to i32
  %.neg.i.i.1.i18 = mul i32 %i.qx, 62207
  %i.qy = add i32 %.neg.i.i.1.i18, %i.qt
  %i.qz = trunc i32 %i.qy to i16                  ; 2 uses
  %i.ra = add i16 %i.qz, -3329                    ; 2 uses
  %isneg.i.i.i.1.i19 = icmp slt i16 %i.ra, 0
  %i.rb = select i1 %isneg.i.i.i.1.i19, i16 %i.qz, i16 0
  %i.rc = tail call i16 @llvm.smax.i16(i16 %i.ra, i16 0)
  %i.rd = or i16 %i.rb, %i.rc
  store i16 %i.rd, ptr %gep.i.1.i, align 2, !tbaa !639
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
  %i.re = icmp slt i32 %.pre.i.1.i, 256
  br i1 %i.re, label %bb.b, label %vector.body236, !llvm.loop !1266

vector.body236:                                   ; preds = %._crit_edge48.i.1.i, %vector.body236
  %index237 = phi i64 [ %index.next239, %vector.body236 ], [ 0, %._crit_edge48.i.1.i ] ; 2 uses
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %index237 ; 2 uses
  %wide.load238 = load <8 x i16>, ptr %i.rf, align 2, !tbaa !639
  %i.rg = zext <8 x i16> %wide.load238 to <8 x i32>
  %i.rh = mul nuw nsw <8 x i32> %i.rg, splat (i32 3303) ; 2 uses
  %i.ri = zext nneg <8 x i32> %i.rh to <8 x i64>
  %i.rj = mul nuw nsw <8 x i64> %i.ri, splat (i64 5039)
  %i.rk = lshr <8 x i64> %i.rj, splat (i64 24)
  %i.rl = trunc nuw nsw <8 x i64> %i.rk to <8 x i32>
  %i.rm = mul nuw <8 x i32> %i.rl, splat (i32 62207)
  %i.rn = add nuw <8 x i32> %i.rm, %i.rh
  %i.ro = trunc <8 x i32> %i.rn to <8 x i16>      ; 2 uses
  %i.rp = add <8 x i16> %i.ro, splat (i16 -3329)  ; 2 uses
  %i.rq = icmp slt <8 x i16> %i.rp, zeroinitializer
  %i.rr = select <8 x i1> %i.rq, <8 x i16> %i.ro, <8 x i16> zeroinitializer
  %i.rs = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rp, <8 x i16> zeroinitializer)
  %i.rt = or <8 x i16> %i.rr, %i.rs
  store <8 x i16> %i.rt, ptr %i.rf, align 2, !tbaa !639
  %index.next239 = add nuw i64 %index237, 8       ; 2 uses
  %i.ru = icmp eq i64 %index.next239, 256
  br i1 %i.ru, label %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i, label %vector.body236, !llvm.loop !1862

_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i: ; preds = %vector.body236
  %i.rv = getelementptr inbounds nuw i8, ptr %8, i64 1024 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge48.i.2.i, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i
  %.03550.i.2.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i ], [ %i.rw, %._crit_edge48.i.2.i ]
  %.03649.i.2.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.1.i ], [ %.pre.i.2.i, %._crit_edge48.i.2.i ] ; 3 uses
  %i.rw = lshr i32 %.03550.i.2.i, 1               ; 3 uses
  %.not.i.2.i = icmp eq i32 %i.rw, 0
  %.pre.i.2.i = shl i32 %.03649.i.2.i, 1          ; 4 uses
  br i1 %.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph47.i.2.i

.lr.ph47.i.2.i:                                   ; preds = %bb.c
  %i.rx = zext i32 %.pre.i.2.i to i64             ; 4 uses
  %i.ry = sext i32 %.03649.i.2.i to i64           ; 2 uses
  %i.rz = zext nneg i32 %i.rw to i64              ; 2 uses
  %invariant.gep68.i.2.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.rz
  %invariant.gep.i.2.i = getelementptr [2 x i8], ptr %i.rv, i64 %i.ry ; 2 uses
  %i.sa = shl nuw nsw i64 %i.rx, 1
  %i.sb = shl nuw nsw i64 %i.ry, 1                ; 2 uses
  %i.sc = getelementptr i8, ptr %8, i64 %i.sb
  %i.sd = getelementptr i8, ptr %i.sc, i64 1026
  %i.se = getelementptr i8, ptr %8, i64 %i.sb
  %i.sf = getelementptr i8, ptr %i.se, i64 1024
  br label %.lr.ph.preheader.i.2.i

.lr.ph.preheader.i.2.i:                           ; preds = %._crit_edge.i.2.i, %.lr.ph47.i.2.i
  %indvars.iv57.i.2.i = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next58.i.2.i, %._crit_edge.i.2.i ] ; 5 uses
  %indvars.iv55.i.2.i = phi i32 [ %.03649.i.2.i, %.lr.ph47.i.2.i ], [ %indvars.iv.next56.i.2.i, %._crit_edge.i.2.i ] ; 3 uses
  %indvars.iv.i.2.i22 = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next.i.2.i27, %._crit_edge.i.2.i ] ; 5 uses
  %gep69.i.2.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.2.i, i64 %indvars.iv57.i.2.i
  %15 = load i16, ptr %gep69.i.2.i, align 2, !tbaa !639
  %16 = zext i16 %15 to i32                       ; 2 uses
  %wide.trip.count.i.2.i = zext i32 %indvars.iv55.i.2.i to i64 ; 2 uses
  %17 = mul i64 %indvars.iv57.i.2.i, %i.rx
  %18 = sub i64 %wide.trip.count.i.2.i, %17       ; 3 uses
  %min.iters.check252 = icmp ult i64 %18, 8
  br i1 %min.iters.check252, label %.lr.ph.i.2.i.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.lr.ph.preheader.i.2.i
  %i.sg = mul i64 %i.sa, %indvars.iv57.i.2.i      ; 4 uses
  %scevgep246 = getelementptr i8, ptr %i.sd, i64 %i.sg
  %i.sh = mul i64 %indvars.iv57.i.2.i, %i.rx
  %i.si = xor i64 %i.sh, -1
  %i.sj = zext nneg i32 %indvars.iv55.i.2.i to i64
  %i.sk = add i64 %i.si, %i.sj
  %i.sl = shl nsw i64 %i.sk, 1                    ; 2 uses
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %i.sl
  %scevgep245 = getelementptr i8, ptr %i.sf, i64 %i.sg
  %i.sm = getelementptr i8, ptr %8, i64 %i.sg
  %scevgep243 = getelementptr i8, ptr %i.sm, i64 1026
  %scevgep244 = getelementptr i8, ptr %scevgep243, i64 %i.sl
  %i.sn = getelementptr i8, ptr %8, i64 %i.sg
  %scevgep242 = getelementptr i8, ptr %i.sn, i64 1024
  %bound0248 = icmp ult ptr %scevgep242, %scevgep247
  %bound1249 = icmp ult ptr %scevgep245, %scevgep244
  %found.conflict250 = and i1 %bound0248, %bound1249
  br i1 %found.conflict250, label %.lr.ph.i.2.i.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck241
  %n.vec254 = and i64 %18, -8                     ; 3 uses
  %i.so = add i64 %indvars.iv.i.2.i22, %n.vec254
  %broadcast.splatinsert255 = insertelement <8 x i32> poison, i32 %16, i64 0
  %broadcast.splat256 = shufflevector <8 x i32> %broadcast.splatinsert255, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph253
  %index258 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body257 ] ; 2 uses
  %i.sp = add nuw i64 %indvars.iv.i.2.i22, %index258 ; 2 uses
  %i.sq = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %i.sp ; 2 uses
  %wide.load259 = load <8 x i16>, ptr %i.sq, align 2, !tbaa !639, !alias.scope !1863 ; 2 uses
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %i.sp ; 2 uses
  %wide.load260 = load <8 x i16>, ptr %i.sr, align 2, !tbaa !639, !alias.scope !1866, !noalias !1863 ; 2 uses
  %i.ss = zext <8 x i16> %wide.load259 to <8 x i32>
  %i.st = zext <8 x i16> %wide.load260 to <8 x i32>
  %i.su = add <8 x i16> %wide.load260, %wide.load259 ; 2 uses
  %i.sv = add <8 x i16> %i.su, splat (i16 -3329)  ; 2 uses
  %i.sw = icmp slt <8 x i16> %i.sv, zeroinitializer
  %i.sx = select <8 x i1> %i.sw, <8 x i16> %i.su, <8 x i16> zeroinitializer
  %i.sy = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sv, <8 x i16> zeroinitializer)
  %i.sz = or <8 x i16> %i.sx, %i.sy
  store <8 x i16> %i.sz, ptr %i.sr, align 2, !tbaa !639, !alias.scope !1866, !noalias !1863
  %i.ta = sub nsw <8 x i32> %i.st, %i.ss
  %i.tb = add nsw <8 x i32> %i.ta, splat (i32 3329)
  %i.tc = mul <8 x i32> %i.tb, %broadcast.splat256 ; 2 uses
  %i.td = zext <8 x i32> %i.tc to <8 x i64>
  %i.te = mul nuw nsw <8 x i64> %i.td, splat (i64 5039)
  %i.tf = lshr <8 x i64> %i.te, splat (i64 24)
  %i.tg = trunc nuw nsw <8 x i64> %i.tf to <8 x i32>
  %i.th = mul <8 x i32> %i.tg, splat (i32 62207)
  %i.ti = add <8 x i32> %i.th, %i.tc
  %i.tj = trunc <8 x i32> %i.ti to <8 x i16>      ; 2 uses
  %i.tk = add <8 x i16> %i.tj, splat (i16 -3329)  ; 2 uses
  %i.tl = icmp slt <8 x i16> %i.tk, zeroinitializer
  %i.tm = select <8 x i1> %i.tl, <8 x i16> %i.tj, <8 x i16> zeroinitializer
  %i.tn = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tk, <8 x i16> zeroinitializer)
  %i.to = or <8 x i16> %i.tm, %i.tn
  store <8 x i16> %i.to, ptr %i.sq, align 2, !tbaa !639, !alias.scope !1863
  %index.next261 = add nuw i64 %index258, 8       ; 2 uses
  %i.tp = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.tp, label %middle.block262, label %vector.body257, !llvm.loop !1868

middle.block262:                                  ; preds = %vector.body257
  %cmp.n263 = icmp eq i64 %18, %n.vec254
  br i1 %cmp.n263, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i.preheader

.lr.ph.i.2.i.preheader:                           ; preds = %vector.memcheck241, %.lr.ph.preheader.i.2.i, %middle.block262
  %indvars.iv52.i.2.i.ph = phi i64 [ %indvars.iv.i.2.i22, %vector.memcheck241 ], [ %indvars.iv.i.2.i22, %.lr.ph.preheader.i.2.i ], [ %i.so, %middle.block262 ]
  br label %.lr.ph.i.2.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.2.i.preheader, %.lr.ph.i.2.i
  %indvars.iv52.i.2.i = phi i64 [ %indvars.iv.next53.i.2.i, %.lr.ph.i.2.i ], [ %indvars.iv52.i.2.i.ph, %.lr.ph.i.2.i.preheader ] ; 3 uses
  %gep.i.2.i = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.tq = load i16, ptr %gep.i.2.i, align 2, !tbaa !639 ; 2 uses
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !639 ; 2 uses
  %i.tt = zext i16 %i.tq to i32
  %i.tu = zext i16 %i.ts to i32
  %i.tv = add i16 %i.ts, %i.tq                    ; 2 uses
  %i.tw = add i16 %i.tv, -3329                    ; 2 uses
  %isneg.i.i.2.i23 = icmp slt i16 %i.tw, 0
  %i.tx = select i1 %isneg.i.i.2.i23, i16 %i.tv, i16 0
  %i.ty = tail call i16 @llvm.smax.i16(i16 %i.tw, i16 0)
  %i.tz = or i16 %i.tx, %i.ty
  store i16 %i.tz, ptr %i.tr, align 2, !tbaa !639
  %reass.sub112 = sub nsw i32 %i.tu, %i.tt
  %i.ua = add nsw i32 %reass.sub112, 3329
  %i.ub = mul i32 %i.ua, %16                      ; 2 uses
  %i.uc = zext i32 %i.ub to i64
  %i.ud = mul nuw nsw i64 %i.uc, 5039
  %i.ue = lshr i64 %i.ud, 24
  %i.uf = trunc nuw nsw i64 %i.ue to i32
  %.neg.i.i.2.i24 = mul i32 %i.uf, 62207
  %i.ug = add i32 %.neg.i.i.2.i24, %i.ub
  %i.uh = trunc i32 %i.ug to i16                  ; 2 uses
  %i.ui = add i16 %i.uh, -3329                    ; 2 uses
  %isneg.i.i.i.2.i25 = icmp slt i16 %i.ui, 0
  %i.uj = select i1 %isneg.i.i.i.2.i25, i16 %i.uh, i16 0
  %i.uk = tail call i16 @llvm.smax.i16(i16 %i.ui, i16 0)
  %i.ul = or i16 %i.uj, %i.uk
  store i16 %i.ul, ptr %gep.i.2.i, align 2, !tbaa !639
  %indvars.iv.next53.i.2.i = add nuw nsw i64 %indvars.iv52.i.2.i, 1 ; 2 uses
  %exitcond.not.i.2.i26 = icmp eq i64 %indvars.iv.next53.i.2.i, %wide.trip.count.i.2.i
  br i1 %exitcond.not.i.2.i26, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i, !llvm.loop !1869

._crit_edge.i.2.i:                                ; preds = %.lr.ph.i.2.i, %middle.block262
  %indvars.iv.next.i.2.i27 = add nuw nsw i64 %indvars.iv.i.2.i22, %i.rx
  %indvars.iv.next58.i.2.i = add nuw nsw i64 %indvars.iv57.i.2.i, 1 ; 2 uses
  %indvars.iv.next56.i.2.i = add i32 %indvars.iv55.i.2.i, %.pre.i.2.i
  %exitcond63.not.i.2.i = icmp eq i64 %indvars.iv.next58.i.2.i, %i.rz
  br i1 %exitcond63.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph.preheader.i.2.i, !llvm.loop !1274

._crit_edge48.i.2.i:                              ; preds = %._crit_edge.i.2.i, %bb.c
  %i.um = icmp slt i32 %.pre.i.2.i, 256
  br i1 %i.um, label %bb.c, label %vector.body267, !llvm.loop !1266

vector.body267:                                   ; preds = %._crit_edge48.i.2.i, %vector.body267
  %index268 = phi i64 [ %index.next270, %vector.body267 ], [ 0, %._crit_edge48.i.2.i ] ; 2 uses
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %index268 ; 2 uses
  %wide.load269 = load <8 x i16>, ptr %i.un, align 2, !tbaa !639
  %i.uo = zext <8 x i16> %wide.load269 to <8 x i32>
  %i.up = mul nuw nsw <8 x i32> %i.uo, splat (i32 3303) ; 2 uses
  %i.uq = zext nneg <8 x i32> %i.up to <8 x i64>
  %i.ur = mul nuw nsw <8 x i64> %i.uq, splat (i64 5039)
  %i.us = lshr <8 x i64> %i.ur, splat (i64 24)
  %i.ut = trunc nuw nsw <8 x i64> %i.us to <8 x i32>
  %i.uu = mul nuw <8 x i32> %i.ut, splat (i32 62207)
  %i.uv = add nuw <8 x i32> %i.uu, %i.up
  %i.uw = trunc <8 x i32> %i.uv to <8 x i16>      ; 2 uses
  %i.ux = add <8 x i16> %i.uw, splat (i16 -3329)  ; 2 uses
  %i.uy = icmp slt <8 x i16> %i.ux, zeroinitializer
  %i.uz = select <8 x i1> %i.uy, <8 x i16> %i.uw, <8 x i16> zeroinitializer
  %i.va = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ux, <8 x i16> zeroinitializer)
  %i.vb = or <8 x i16> %i.uz, %i.va
  store <8 x i16> %i.vb, ptr %i.un, align 2, !tbaa !639
  %index.next270 = add nuw i64 %index268, 8       ; 2 uses
  %i.vc = icmp eq i64 %index.next270, 256
  br i1 %i.vc, label %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.2.i, label %vector.body267, !llvm.loop !1870

_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.2.i: ; preds = %vector.body267
  %i.vd = getelementptr inbounds nuw i8, ptr %8, i64 1536 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge48.i.3.i, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.2.i
  %.03550.i.3.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.2.i ], [ %i.ve, %._crit_edge48.i.3.i ]
  %.03649.i.3.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE.exit.2.i ], [ %.pre.i.3.i, %._crit_edge48.i.3.i ] ; 3 uses
  %i.ve = lshr i32 %.03550.i.3.i, 1               ; 3 uses
  %.not.i.3.i = icmp eq i32 %i.ve, 0
  %.pre.i.3.i = shl i32 %.03649.i.3.i, 1          ; 4 uses
  br i1 %.not.i.3.i, label %._crit_edge48.i.3.i, label %.lr.ph47.i.3.i

.lr.ph47.i.3.i:                                   ; preds = %bb.d
  %i.vf = zext i32 %.pre.i.3.i to i64             ; 4 uses
  %i.vg = sext i32 %.03649.i.3.i to i64           ; 2 uses
  %i.vh = zext nneg i32 %i.ve to i64              ; 2 uses
  %invariant.gep68.i.3.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.vh
  %invariant.gep.i.3.i = getelementptr [2 x i8], ptr %i.vd, i64 %i.vg ; 2 uses
  %i.vi = shl nuw nsw i64 %i.vf, 1
  %i.vj = shl nuw nsw i64 %i.vg, 1                ; 2 uses
  %i.vk = getelementptr i8, ptr %8, i64 %i.vj
  %i.vl = getelementptr i8, ptr %i.vk, i64 1538
  %i.vm = getelementptr i8, ptr %8, i64 %i.vj
  %i.vn = getelementptr i8, ptr %i.vm, i64 1536
  br label %.lr.ph.preheader.i.3.i

.lr.ph.preheader.i.3.i:                           ; preds = %._crit_edge.i.3.i, %.lr.ph47.i.3.i
  %indvars.iv57.i.3.i = phi i64 [ 0, %.lr.ph47.i.3.i ], [ %indvars.iv.next58.i.3.i, %._crit_edge.i.3.i ] ; 5 uses
  %indvars.iv55.i.3.i = phi i32 [ %.03649.i.3.i, %.lr.ph47.i.3.i ], [ %indvars.iv.next56.i.3.i, %._crit_edge.i.3.i ] ; 3 uses
  %indvars.iv.i.3.i28 = phi i64 [ 0, %.lr.ph47.i.3.i ], [ %indvars.iv.next.i.3.i33, %._crit_edge.i.3.i ] ; 5 uses
  %gep69.i.3.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.3.i, i64 %indvars.iv57.i.3.i
  %19 = load i16, ptr %gep69.i.3.i, align 2, !tbaa !639
  %20 = zext i16 %19 to i32                       ; 2 uses
  %wide.trip.count.i.3.i = zext i32 %indvars.iv55.i.3.i to i64 ; 2 uses
  %21 = mul i64 %indvars.iv57.i.3.i, %i.vf
  %22 = sub i64 %wide.trip.count.i.3.i, %21       ; 3 uses
  %min.iters.check283 = icmp ult i64 %22, 8
  br i1 %min.iters.check283, label %.lr.ph.i.3.i.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph.preheader.i.3.i
  %i.vo = mul i64 %i.vi, %indvars.iv57.i.3.i      ; 4 uses
  %scevgep277 = getelementptr i8, ptr %i.vl, i64 %i.vo
  %i.vp = mul i64 %indvars.iv57.i.3.i, %i.vf
  %i.vq = xor i64 %i.vp, -1
  %i.vr = zext nneg i32 %indvars.iv55.i.3.i to i64
  %i.vs = add i64 %i.vq, %i.vr
  %i.vt = shl nsw i64 %i.vs, 1                    ; 2 uses
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.vt
  %scevgep276 = getelementptr i8, ptr %i.vn, i64 %i.vo
  %i.vu = getelementptr i8, ptr %8, i64 %i.vo
  %scevgep274 = getelementptr i8, ptr %i.vu, i64 1538
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.vt
  %i.vv = getelementptr i8, ptr %8, i64 %i.vo
  %scevgep273 = getelementptr i8, ptr %i.vv, i64 1536
  %bound0279 = icmp ult ptr %scevgep273, %scevgep278
  %bound1280 = icmp ult ptr %scevgep276, %scevgep275
  %found.conflict281 = and i1 %bound0279, %bound1280
  br i1 %found.conflict281, label %.lr.ph.i.3.i.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck272
  %n.vec285 = and i64 %22, -8                     ; 3 uses
  %i.vw = add i64 %indvars.iv.i.3.i28, %n.vec285
  %broadcast.splatinsert286 = insertelement <8 x i32> poison, i32 %20, i64 0
  %broadcast.splat287 = shufflevector <8 x i32> %broadcast.splatinsert286, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph284
  %index289 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body288 ] ; 2 uses
  %i.vx = add nuw i64 %indvars.iv.i.3.i28, %index289 ; 2 uses
  %i.vy = getelementptr [2 x i8], ptr %invariant.gep.i.3.i, i64 %i.vx ; 2 uses
  %wide.load290 = load <8 x i16>, ptr %i.vy, align 2, !tbaa !639, !alias.scope !1871 ; 2 uses
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %i.vx ; 2 uses
  %wide.load291 = load <8 x i16>, ptr %i.vz, align 2, !tbaa !639, !alias.scope !1874, !noalias !1871 ; 2 uses
  %i.wa = zext <8 x i16> %wide.load290 to <8 x i32>
  %i.wb = zext <8 x i16> %wide.load291 to <8 x i32>
  %i.wc = add <8 x i16> %wide.load291, %wide.load290 ; 2 uses
  %i.wd = add <8 x i16> %i.wc, splat (i16 -3329)  ; 2 uses
  %i.we = icmp slt <8 x i16> %i.wd, zeroinitializer
  %i.wf = select <8 x i1> %i.we, <8 x i16> %i.wc, <8 x i16> zeroinitializer
  %i.wg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wd, <8 x i16> zeroinitializer)
  %i.wh = or <8 x i16> %i.wf, %i.wg
  store <8 x i16> %i.wh, ptr %i.vz, align 2, !tbaa !639, !alias.scope !1874, !noalias !1871
  %i.wi = sub nsw <8 x i32> %i.wb, %i.wa
  %i.wj = add nsw <8 x i32> %i.wi, splat (i32 3329)
  %i.wk = mul <8 x i32> %i.wj, %broadcast.splat287 ; 2 uses
  %i.wl = zext <8 x i32> %i.wk to <8 x i64>
  %i.wm = mul nuw nsw <8 x i64> %i.wl, splat (i64 5039)
  %i.wn = lshr <8 x i64> %i.wm, splat (i64 24)
  %i.wo = trunc nuw nsw <8 x i64> %i.wn to <8 x i32>
  %i.wp = mul <8 x i32> %i.wo, splat (i32 62207)
  %i.wq = add <8 x i32> %i.wp, %i.wk
  %i.wr = trunc <8 x i32> %i.wq to <8 x i16>      ; 2 uses
  %i.ws = add <8 x i16> %i.wr, splat (i16 -3329)  ; 2 uses
  %i.wt = icmp slt <8 x i16> %i.ws, zeroinitializer
  %i.wu = select <8 x i1> %i.wt, <8 x i16> %i.wr, <8 x i16> zeroinitializer
  %i.wv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ws, <8 x i16> zeroinitializer)
  %i.ww = or <8 x i16> %i.wu, %i.wv
  store <8 x i16> %i.ww, ptr %i.vy, align 2, !tbaa !639, !alias.scope !1871
  %index.next292 = add nuw i64 %index289, 8       ; 2 uses
  %i.wx = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.wx, label %middle.block293, label %vector.body288, !llvm.loop !1876

middle.block293:                                  ; preds = %vector.body288
  %cmp.n294 = icmp eq i64 %22, %n.vec285
  br i1 %cmp.n294, label %._crit_edge.i.3.i, label %.lr.ph.i.3.i.preheader

.lr.ph.i.3.i.preheader:                           ; preds = %vector.memcheck272, %.lr.ph.preheader.i.3.i, %middle.block293
  %indvars.iv52.i.3.i.ph = phi i64 [ %indvars.iv.i.3.i28, %vector.memcheck272 ], [ %indvars.iv.i.3.i28, %.lr.ph.preheader.i.3.i ], [ %i.vw, %middle.block293 ]
  br label %.lr.ph.i.3.i

.lr.ph.i.3.i:                                     ; preds = %.lr.ph.i.3.i.preheader, %.lr.ph.i.3.i
  %indvars.iv52.i.3.i = phi i64 [ %indvars.iv.next53.i.3.i, %.lr.ph.i.3.i ], [ %indvars.iv52.i.3.i.ph, %.lr.ph.i.3.i.preheader ] ; 3 uses
  %gep.i.3.i = getelementptr [2 x i8], ptr %invariant.gep.i.3.i, i64 %indvars.iv52.i.3.i ; 2 uses
  %i.wy = load i16, ptr %gep.i.3.i, align 2, !tbaa !639 ; 2 uses
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %indvars.iv52.i.3.i ; 2 uses
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !639 ; 2 uses
  %i.xb = zext i16 %i.wy to i32
  %i.xc = zext i16 %i.xa to i32
  %i.xd = add i16 %i.xa, %i.wy                    ; 2 uses
  %i.xe = add i16 %i.xd, -3329                    ; 2 uses
  %isneg.i.i.3.i29 = icmp slt i16 %i.xe, 0
  %i.xf = select i1 %isneg.i.i.3.i29, i16 %i.xd, i16 0
  %i.xg = tail call i16 @llvm.smax.i16(i16 %i.xe, i16 0)
  %i.xh = or i16 %i.xf, %i.xg
  store i16 %i.xh, ptr %i.wz, align 2, !tbaa !639
  %reass.sub113 = sub nsw i32 %i.xc, %i.xb
  %i.xi = add nsw i32 %reass.sub113, 3329
  %i.xj = mul i32 %i.xi, %20                      ; 2 uses
  %i.xk = zext i32 %i.xj to i64
  %i.xl = mul nuw nsw i64 %i.xk, 5039
  %i.xm = lshr i64 %i.xl, 24
  %i.xn = trunc nuw nsw i64 %i.xm to i32
  %.neg.i.i.3.i30 = mul i32 %i.xn, 62207
  %i.xo = add i32 %.neg.i.i.3.i30, %i.xj
  %i.xp = trunc i32 %i.xo to i16                  ; 2 uses
  %i.xq = add i16 %i.xp, -3329                    ; 2 uses
  %isneg.i.i.i.3.i31 = icmp slt i16 %i.xq, 0
  %i.xr = select i1 %isneg.i.i.i.3.i31, i16 %i.xp, i16 0
  %i.xs = tail call i16 @llvm.smax.i16(i16 %i.xq, i16 0)
  %i.xt = or i16 %i.xr, %i.xs
  store i16 %i.xt, ptr %gep.i.3.i, align 2, !tbaa !639
  %indvars.iv.next53.i.3.i = add nuw nsw i64 %indvars.iv52.i.3.i, 1 ; 2 uses
  %exitcond.not.i.3.i32 = icmp eq i64 %indvars.iv.next53.i.3.i, %wide.trip.count.i.3.i
  br i1 %exitcond.not.i.3.i32, label %._crit_edge.i.3.i, label %.lr.ph.i.3.i, !llvm.loop !1877

._crit_edge.i.3.i:                                ; preds = %.lr.ph.i.3.i, %middle.block293
  %indvars.iv.next.i.3.i33 = add nuw nsw i64 %indvars.iv.i.3.i28, %i.vf
  %indvars.iv.next58.i.3.i = add nuw nsw i64 %indvars.iv57.i.3.i, 1 ; 2 uses
  %indvars.iv.next56.i.3.i = add i32 %indvars.iv55.i.3.i, %.pre.i.3.i
  %exitcond63.not.i.3.i = icmp eq i64 %indvars.iv.next58.i.3.i, %i.vh
  br i1 %exitcond63.not.i.3.i, label %._crit_edge48.i.3.i, label %.lr.ph.preheader.i.3.i, !llvm.loop !1274

._crit_edge48.i.3.i:                              ; preds = %._crit_edge.i.3.i, %bb.d
  %i.xu = icmp slt i32 %.pre.i.3.i, 256
  br i1 %i.xu, label %bb.d, label %vector.body298, !llvm.loop !1266

vector.body298:                                   ; preds = %._crit_edge48.i.3.i, %vector.body298
  %index299 = phi i64 [ %index.next301, %vector.body298 ], [ 0, %._crit_edge48.i.3.i ] ; 2 uses
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %index299 ; 2 uses
  %wide.load300 = load <8 x i16>, ptr %i.xv, align 2, !tbaa !639
  %i.xw = zext <8 x i16> %wide.load300 to <8 x i32>
  %i.xx = mul nuw nsw <8 x i32> %i.xw, splat (i32 3303) ; 2 uses
  %i.xy = zext nneg <8 x i32> %i.xx to <8 x i64>
  %i.xz = mul nuw nsw <8 x i64> %i.xy, splat (i64 5039)
  %i.ya = lshr <8 x i64> %i.xz, splat (i64 24)
  %i.yb = trunc nuw nsw <8 x i64> %i.ya to <8 x i32>
  %i.yc = mul nuw <8 x i32> %i.yb, splat (i32 62207)
  %i.yd = add nuw <8 x i32> %i.yc, %i.xx
  %i.ye = trunc <8 x i32> %i.yd to <8 x i16>      ; 2 uses
  %i.yf = add <8 x i16> %i.ye, splat (i16 -3329)  ; 2 uses
  %i.yg = icmp slt <8 x i16> %i.yf, zeroinitializer
  %i.yh = select <8 x i1> %i.yg, <8 x i16> %i.ye, <8 x i16> zeroinitializer
  %i.yi = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yf, <8 x i16> zeroinitializer)
  %i.yj = or <8 x i16> %i.yh, %i.yi
  store <8 x i16> %i.yj, ptr %i.xv, align 2, !tbaa !639
  %index.next301 = add nuw i64 %index299, 8       ; 2 uses
  %i.yk = icmp eq i64 %index.next301, 256
  br i1 %i.yk, label %vector.body305, label %vector.body298, !llvm.loop !1878

vector.body305:                                   ; preds = %vector.body298, %vector.body305
  %index306 = phi i64 [ %index.next311, %vector.body305 ], [ 0, %vector.body298 ] ; 3 uses
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index306 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16 ; 2 uses
  %wide.load307 = load <8 x i16>, ptr %i.yl, align 2, !tbaa !639
  %wide.load308 = load <8 x i16>, ptr %i.ym, align 2, !tbaa !639
  %i.yn = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index306 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %wide.load309 = load <8 x i16>, ptr %i.yn, align 2, !tbaa !639
  %wide.load310 = load <8 x i16>, ptr %i.yo, align 2, !tbaa !639
  %i.yp = add <8 x i16> %wide.load309, %wide.load307 ; 2 uses
  %i.yq = add <8 x i16> %wide.load310, %wide.load308 ; 2 uses
  %i.yr = add <8 x i16> %i.yp, splat (i16 -3329)  ; 2 uses
  %i.ys = add <8 x i16> %i.yq, splat (i16 -3329)  ; 2 uses
  %i.yt = icmp slt <8 x i16> %i.yr, zeroinitializer
  %i.yu = icmp slt <8 x i16> %i.ys, zeroinitializer
  %i.yv = select <8 x i1> %i.yt, <8 x i16> %i.yp, <8 x i16> zeroinitializer
  %i.yw = select <8 x i1> %i.yu, <8 x i16> %i.yq, <8 x i16> zeroinitializer
  %i.yx = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yr, <8 x i16> zeroinitializer)
  %i.yy = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ys, <8 x i16> zeroinitializer)
  %i.yz = or <8 x i16> %i.yv, %i.yx
  %i.za = or <8 x i16> %i.yw, %i.yy
  store <8 x i16> %i.yz, ptr %i.yl, align 2, !tbaa !639
  store <8 x i16> %i.za, ptr %i.ym, align 2, !tbaa !639
  %index.next311 = add nuw i64 %index306, 16      ; 2 uses
  %i.zb = icmp eq i64 %index.next311, 256
  br i1 %i.zb, label %vector.body315, label %vector.body305, !llvm.loop !1879

vector.body315:                                   ; preds = %vector.body305, %vector.body315
  %index316 = phi i64 [ %index.next321, %vector.body315 ], [ 0, %vector.body305 ] ; 3 uses
  %i.zc = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %index316 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16 ; 2 uses
  %wide.load317 = load <8 x i16>, ptr %i.zc, align 2, !tbaa !639
  %wide.load318 = load <8 x i16>, ptr %i.zd, align 2, !tbaa !639
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %index316 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %wide.load319 = load <8 x i16>, ptr %i.ze, align 2, !tbaa !639
  %wide.load320 = load <8 x i16>, ptr %i.zf, align 2, !tbaa !639
  %i.zg = add <8 x i16> %wide.load319, %wide.load317 ; 2 uses
  %i.zh = add <8 x i16> %wide.load320, %wide.load318 ; 2 uses
  %i.zi = add <8 x i16> %i.zg, splat (i16 -3329)  ; 2 uses
  %i.zj = add <8 x i16> %i.zh, splat (i16 -3329)  ; 2 uses
  %i.zk = icmp slt <8 x i16> %i.zi, zeroinitializer
  %i.zl = icmp slt <8 x i16> %i.zj, zeroinitializer
  %i.zm = select <8 x i1> %i.zk, <8 x i16> %i.zg, <8 x i16> zeroinitializer
  %i.zn = select <8 x i1> %i.zl, <8 x i16> %i.zh, <8 x i16> zeroinitializer
  %i.zo = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zi, <8 x i16> zeroinitializer)
  %i.zp = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zj, <8 x i16> zeroinitializer)
  %i.zq = or <8 x i16> %i.zm, %i.zo
  %i.zr = or <8 x i16> %i.zn, %i.zp
  store <8 x i16> %i.zq, ptr %i.zc, align 2, !tbaa !639
  store <8 x i16> %i.zr, ptr %i.zd, align 2, !tbaa !639
  %index.next321 = add nuw i64 %index316, 16      ; 2 uses
  %i.zs = icmp eq i64 %index.next321, 256
  br i1 %i.zs, label %vector.body325, label %vector.body315, !llvm.loop !1880

vector.body325:                                   ; preds = %vector.body315, %vector.body325
  %index326 = phi i64 [ %index.next331, %vector.body325 ], [ 0, %vector.body315 ] ; 3 uses
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %index326 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16 ; 2 uses
  %wide.load327 = load <8 x i16>, ptr %i.zt, align 2, !tbaa !639
  %wide.load328 = load <8 x i16>, ptr %i.zu, align 2, !tbaa !639
  %i.zv = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index326 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %wide.load329 = load <8 x i16>, ptr %i.zv, align 2, !tbaa !639
  %wide.load330 = load <8 x i16>, ptr %i.zw, align 2, !tbaa !639
  %i.zx = add <8 x i16> %wide.load329, %wide.load327 ; 2 uses
  %i.zy = add <8 x i16> %wide.load330, %wide.load328 ; 2 uses
  %i.zz = add <8 x i16> %i.zx, splat (i16 -3329)  ; 2 uses
  %i.aaa = add <8 x i16> %i.zy, splat (i16 -3329) ; 2 uses
  %i.aab = icmp slt <8 x i16> %i.zz, zeroinitializer
  %i.aac = icmp slt <8 x i16> %i.aaa, zeroinitializer
  %i.aad = select <8 x i1> %i.aab, <8 x i16> %i.zx, <8 x i16> zeroinitializer
  %i.aae = select <8 x i1> %i.aac, <8 x i16> %i.zy, <8 x i16> zeroinitializer
  %i.aaf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zz, <8 x i16> zeroinitializer)
  %i.aag = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aaa, <8 x i16> zeroinitializer)
  %i.aah = or <8 x i16> %i.aad, %i.aaf
  %i.aai = or <8 x i16> %i.aae, %i.aag
  store <8 x i16> %i.aah, ptr %i.zt, align 2, !tbaa !639
  store <8 x i16> %i.aai, ptr %i.zu, align 2, !tbaa !639
  %index.next331 = add nuw i64 %index326, 16      ; 2 uses
  %i.aaj = icmp eq i64 %index.next331, 256
  br i1 %i.aaj, label %vector.body335, label %vector.body325, !llvm.loop !1881

vector.body335:                                   ; preds = %vector.body325, %vector.body335
  %index336 = phi i64 [ %index.next341, %vector.body335 ], [ 0, %vector.body325 ] ; 3 uses
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %index336 ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16 ; 2 uses
  %wide.load337 = load <8 x i16>, ptr %i.aak, align 2, !tbaa !639
  %wide.load338 = load <8 x i16>, ptr %i.aal, align 2, !tbaa !639
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index336 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %wide.load339 = load <8 x i16>, ptr %i.aam, align 2, !tbaa !639
  %wide.load340 = load <8 x i16>, ptr %i.aan, align 2, !tbaa !639
  %i.aao = add <8 x i16> %wide.load339, %wide.load337 ; 2 uses
  %i.aap = add <8 x i16> %wide.load340, %wide.load338 ; 2 uses
  %i.aaq = add <8 x i16> %i.aao, splat (i16 -3329) ; 2 uses
  %i.aar = add <8 x i16> %i.aap, splat (i16 -3329) ; 2 uses
  %i.aas = icmp slt <8 x i16> %i.aaq, zeroinitializer
  %i.aat = icmp slt <8 x i16> %i.aar, zeroinitializer
  %i.aau = select <8 x i1> %i.aas, <8 x i16> %i.aao, <8 x i16> zeroinitializer
  %i.aav = select <8 x i1> %i.aat, <8 x i16> %i.aap, <8 x i16> zeroinitializer
  %i.aaw = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aaq, <8 x i16> zeroinitializer)
  %i.aax = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aar, <8 x i16> zeroinitializer)
  %i.aay = or <8 x i16> %i.aau, %i.aaw
  %i.aaz = or <8 x i16> %i.aav, %i.aax
  store <8 x i16> %i.aay, ptr %i.aak, align 2, !tbaa !639
  store <8 x i16> %i.aaz, ptr %i.aal, align 2, !tbaa !639
  %index.next341 = add nuw i64 %index336, 16      ; 2 uses
  %i.aba = icmp eq i64 %index.next341, 256
  br i1 %i.aba, label %_ZN5mlkem12_GLOBAL__N_110vector_addILi4EEEvPNS0_6vectorIXT_EEEPKS3_.exit, label %vector.body335, !llvm.loop !1882

_ZN5mlkem12_GLOBAL__N_110vector_addILi4EEEvPNS0_6vectorIXT_EEEPKS3_.exit: ; preds = %vector.body335
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call fastcc void @_ZN5mlkem12_GLOBAL__N_120scalar_inner_productILi4EEEvPNS0_6scalarEPKNS0_6vectorIXT_EEES7_(ptr noundef %9, ptr noundef %1, ptr noundef %5)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge48.i, %_ZN5mlkem12_GLOBAL__N_110vector_addILi4EEEvPNS0_6vectorIXT_EEEPKS3_.exit
  %.03550.i = phi i32 [ 128, %_ZN5mlkem12_GLOBAL__N_110vector_addILi4EEEvPNS0_6vectorIXT_EEEPKS3_.exit ], [ %i.abb, %._crit_edge48.i ]
  %.03649.i = phi i32 [ 2, %_ZN5mlkem12_GLOBAL__N_110vector_addILi4EEEvPNS0_6vectorIXT_EEEPKS3_.exit ], [ %.pre.i, %._crit_edge48.i ] ; 3 uses
  %i.abb = lshr i32 %.03550.i, 1                  ; 3 uses
  %.not.i = icmp eq i32 %i.abb, 0
  %.pre.i = shl i32 %.03649.i, 1                  ; 4 uses
  br i1 %.not.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.e
  %i.abc = zext i32 %.pre.i to i64                ; 4 uses
  %i.abd = sext i32 %.03649.i to i64              ; 2 uses
  %i.abe = zext nneg i32 %i.abb to i64            ; 2 uses
  %invariant.gep68.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_116kInverseNTTRootsE, i64 %i.abe
  %invariant.gep.i = getelementptr [2 x i8], ptr %9, i64 %i.abd ; 2 uses
  %i.abf = shl nuw nsw i64 %i.abc, 1
  %i.abg = shl nuw nsw i64 %i.abd, 1              ; 2 uses
  %i.abh = getelementptr i8, ptr %9, i64 %i.abg
  %i.abi = getelementptr i8, ptr %i.abh, i64 2
  %i.abj = getelementptr i8, ptr %9, i64 %i.abg
  br label %.lr.ph.preheader.i

._crit_edge48.i:                                  ; preds = %._crit_edge.i, %bb.e
  %i.abk = icmp slt i32 %.pre.i, 256
  br i1 %i.abk, label %bb.e, label %vector.body369, !llvm.loop !1266

vector.body369:                                   ; preds = %._crit_edge48.i, %vector.body369
  %index370 = phi i64 [ %index.next372, %vector.body369 ], [ 0, %._crit_edge48.i ] ; 2 uses
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index370 ; 2 uses
  %wide.load371 = load <8 x i16>, ptr %i.abl, align 2, !tbaa !639
  %i.abm = zext <8 x i16> %wide.load371 to <8 x i32>
  %i.abn = mul nuw nsw <8 x i32> %i.abm, splat (i32 3303) ; 2 uses
  %i.abo = zext nneg <8 x i32> %i.abn to <8 x i64>
  %i.abp = mul nuw nsw <8 x i64> %i.abo, splat (i64 5039)
  %i.abq = lshr <8 x i64> %i.abp, splat (i64 24)
  %i.abr = trunc nuw nsw <8 x i64> %i.abq to <8 x i32>
  %i.abs = mul nuw <8 x i32> %i.abr, splat (i32 62207)
  %i.abt = add nuw <8 x i32> %i.abs, %i.abn
  %i.abu = trunc <8 x i32> %i.abt to <8 x i16>    ; 2 uses
  %i.abv = add <8 x i16> %i.abu, splat (i16 -3329) ; 2 uses
  %i.abw = icmp slt <8 x i16> %i.abv, zeroinitializer
  %i.abx = select <8 x i1> %i.abw, <8 x i16> %i.abu, <8 x i16> zeroinitializer
  %i.aby = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abv, <8 x i16> zeroinitializer)
  %i.abz = or <8 x i16> %i.abx, %i.aby
  store <8 x i16> %i.abz, ptr %i.abl, align 2, !tbaa !639
  %index.next372 = add nuw i64 %index370, 8       ; 2 uses
  %i.aca = icmp eq i64 %index.next372, 256
  br i1 %i.aca, label %vector.body376, label %vector.body369, !llvm.loop !1883

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph47.i
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next58.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv55.i = phi i32 [ %.03649.i, %.lr.ph47.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next.i58, %._crit_edge.i ] ; 5 uses
  %gep69.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i, i64 %indvars.iv57.i
  %23 = load i16, ptr %gep69.i, align 2, !tbaa !639
  %24 = zext i16 %23 to i32                       ; 2 uses
  %wide.trip.count.i = zext i32 %indvars.iv55.i to i64 ; 2 uses
  %25 = mul i64 %indvars.iv57.i, %i.abc
  %26 = sub i64 %wide.trip.count.i, %25           ; 3 uses
  %min.iters.check354 = icmp ult i64 %26, 8
  br i1 %min.iters.check354, label %.lr.ph.i.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %.lr.ph.preheader.i
  %i.acb = mul i64 %i.abf, %indvars.iv57.i        ; 4 uses
  %scevgep348 = getelementptr i8, ptr %i.abi, i64 %i.acb
  %i.acc = mul i64 %indvars.iv57.i, %i.abc
  %i.acd = xor i64 %i.acc, -1
  %i.ace = zext nneg i32 %indvars.iv55.i to i64
  %i.acf = add i64 %i.acd, %i.ace
  %i.acg = shl nsw i64 %i.acf, 1                  ; 2 uses
  %scevgep349 = getelementptr i8, ptr %scevgep348, i64 %i.acg
  %scevgep347 = getelementptr i8, ptr %i.abj, i64 %i.acb
  %i.ach = getelementptr i8, ptr %9, i64 %i.acb
  %scevgep345 = getelementptr i8, ptr %i.ach, i64 2
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %i.acg
  %scevgep344 = getelementptr nuw i8, ptr %9, i64 %i.acb
  %bound0350 = icmp ult ptr %scevgep344, %scevgep349
  %bound1351 = icmp ult ptr %scevgep347, %scevgep346
  %found.conflict352 = and i1 %bound0350, %bound1351
  br i1 %found.conflict352, label %.lr.ph.i.preheader, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck343
  %n.vec356 = and i64 %26, -8                     ; 3 uses
  %i.aci = add i64 %indvars.iv.i54, %n.vec356
  %broadcast.splatinsert357 = insertelement <8 x i32> poison, i32 %24, i64 0
  %broadcast.splat358 = shufflevector <8 x i32> %broadcast.splatinsert357, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph355
  %index360 = phi i64 [ 0, %vector.ph355 ], [ %index.next363, %vector.body359 ] ; 2 uses
  %i.acj = add nuw i64 %indvars.iv.i54, %index360 ; 2 uses
  %i.ack = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.acj ; 2 uses
  %wide.load361 = load <8 x i16>, ptr %i.ack, align 2, !tbaa !639, !alias.scope !1884 ; 2 uses
  %i.acl = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %i.acj ; 2 uses
  %wide.load362 = load <8 x i16>, ptr %i.acl, align 2, !tbaa !639, !alias.scope !1887, !noalias !1884 ; 2 uses
  %i.acm = zext <8 x i16> %wide.load361 to <8 x i32>
  %i.acn = zext <8 x i16> %wide.load362 to <8 x i32>
  %i.aco = add <8 x i16> %wide.load362, %wide.load361 ; 2 uses
  %i.acp = add <8 x i16> %i.aco, splat (i16 -3329) ; 2 uses
  %i.acq = icmp slt <8 x i16> %i.acp, zeroinitializer
  %i.acr = select <8 x i1> %i.acq, <8 x i16> %i.aco, <8 x i16> zeroinitializer
  %i.acs = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.acp, <8 x i16> zeroinitializer)
  %i.act = or <8 x i16> %i.acr, %i.acs
  store <8 x i16> %i.act, ptr %i.acl, align 2, !tbaa !639, !alias.scope !1887, !noalias !1884
  %i.acu = sub nsw <8 x i32> %i.acn, %i.acm
  %i.acv = add nsw <8 x i32> %i.acu, splat (i32 3329)
  %i.acw = mul <8 x i32> %i.acv, %broadcast.splat358 ; 2 uses
  %i.acx = zext <8 x i32> %i.acw to <8 x i64>
  %i.acy = mul nuw nsw <8 x i64> %i.acx, splat (i64 5039)
  %i.acz = lshr <8 x i64> %i.acy, splat (i64 24)
  %i.ada = trunc nuw nsw <8 x i64> %i.acz to <8 x i32>
  %i.adb = mul <8 x i32> %i.ada, splat (i32 62207)
  %i.adc = add <8 x i32> %i.adb, %i.acw
  %i.add = trunc <8 x i32> %i.adc to <8 x i16>    ; 2 uses
  %i.ade = add <8 x i16> %i.add, splat (i16 -3329) ; 2 uses
  %i.adf = icmp slt <8 x i16> %i.ade, zeroinitializer
  %i.adg = select <8 x i1> %i.adf, <8 x i16> %i.add, <8 x i16> zeroinitializer
  %i.adh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ade, <8 x i16> zeroinitializer)
  %i.adi = or <8 x i16> %i.adg, %i.adh
  store <8 x i16> %i.adi, ptr %i.ack, align 2, !tbaa !639, !alias.scope !1884
  %index.next363 = add nuw i64 %index360, 8       ; 2 uses
  %i.adj = icmp eq i64 %index.next363, %n.vec356
  br i1 %i.adj, label %middle.block364, label %vector.body359, !llvm.loop !1889

middle.block364:                                  ; preds = %vector.body359
  %cmp.n365 = icmp eq i64 %26, %n.vec356
  br i1 %cmp.n365, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck343, %.lr.ph.preheader.i, %middle.block364
  %indvars.iv52.i.ph = phi i64 [ %indvars.iv.i54, %vector.memcheck343 ], [ %indvars.iv.i54, %.lr.ph.preheader.i ], [ %i.aci, %middle.block364 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block364
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i54, %i.abc
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %indvars.iv.next56.i = add i32 %indvars.iv55.i, %.pre.i
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next58.i, %i.abe
  br i1 %exitcond63.not.i, label %._crit_edge48.i, label %.lr.ph.preheader.i, !llvm.loop !1274

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %.lr.ph.i ], [ %indvars.iv52.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv52.i ; 2 uses
  %i.adk = load i16, ptr %gep.i, align 2, !tbaa !639 ; 2 uses
  %i.adl = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv52.i ; 2 uses
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !639 ; 2 uses
  %i.adn = zext i16 %i.adk to i32
  %i.ado = zext i16 %i.adm to i32
  %i.adp = add i16 %i.adm, %i.adk                 ; 2 uses
  %i.adq = add i16 %i.adp, -3329                  ; 2 uses
  %isneg.i.i = icmp slt i16 %i.adq, 0
  %i.adr = select i1 %isneg.i.i, i16 %i.adp, i16 0
  %i.ads = tail call i16 @llvm.smax.i16(i16 %i.adq, i16 0)
  %i.adt = or i16 %i.adr, %i.ads
  store i16 %i.adt, ptr %i.adl, align 2, !tbaa !639
  %reass.sub114 = sub nsw i32 %i.ado, %i.adn
  %i.adu = add nsw i32 %reass.sub114, 3329
  %i.adv = mul i32 %i.adu, %24                    ; 2 uses
  %i.adw = zext i32 %i.adv to i64
  %i.adx = mul nuw nsw i64 %i.adw, 5039
  %i.ady = lshr i64 %i.adx, 24
  %i.adz = trunc nuw nsw i64 %i.ady to i32
  %.neg.i.i = mul i32 %i.adz, 62207
  %i.aea = add i32 %.neg.i.i, %i.adv
  %i.aeb = trunc i32 %i.aea to i16                ; 2 uses
  %i.aec = add i16 %i.aeb, -3329                  ; 2 uses
  %isneg.i.i.i56 = icmp slt i16 %i.aec, 0
  %i.aed = select i1 %isneg.i.i.i56, i16 %i.aeb, i16 0
  %i.aee = tail call i16 @llvm.smax.i16(i16 %i.aec, i16 0)
  %i.aef = or i16 %i.aed, %i.aee
  store i16 %i.aef, ptr %gep.i, align 2, !tbaa !639
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i57, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1890

vector.body376:                                   ; preds = %vector.body369, %vector.body376
  %index377 = phi i64 [ %index.next382, %vector.body376 ], [ 0, %vector.body369 ] ; 3 uses
  %i.aeg = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index377 ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16 ; 2 uses
  %wide.load378 = load <8 x i16>, ptr %i.aeg, align 2, !tbaa !639
  %wide.load379 = load <8 x i16>, ptr %i.aeh, align 2, !tbaa !639
  %i.aei = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index377 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 16
  %wide.load380 = load <8 x i16>, ptr %i.aei, align 2, !tbaa !639
  %wide.load381 = load <8 x i16>, ptr %i.aej, align 2, !tbaa !639
  %i.aek = add <8 x i16> %wide.load380, %wide.load378 ; 2 uses
  %i.ael = add <8 x i16> %wide.load381, %wide.load379 ; 2 uses
  %i.aem = add <8 x i16> %i.aek, splat (i16 -3329) ; 2 uses
  %i.aen = add <8 x i16> %i.ael, splat (i16 -3329) ; 2 uses
  %i.aeo = icmp slt <8 x i16> %i.aem, zeroinitializer
  %i.aep = icmp slt <8 x i16> %i.aen, zeroinitializer
  %i.aeq = select <8 x i1> %i.aeo, <8 x i16> %i.aek, <8 x i16> zeroinitializer
  %i.aer = select <8 x i1> %i.aep, <8 x i16> %i.ael, <8 x i16> zeroinitializer
  %i.aes = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aem, <8 x i16> zeroinitializer)
  %i.aet = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aen, <8 x i16> zeroinitializer)
  %i.aeu = or <8 x i16> %i.aeq, %i.aes
  %i.aev = or <8 x i16> %i.aer, %i.aet
  store <8 x i16> %i.aeu, ptr %i.aeg, align 2, !tbaa !639
  store <8 x i16> %i.aev, ptr %i.aeh, align 2, !tbaa !639
  %index.next382 = add nuw i64 %index377, 16      ; 2 uses
  %i.aew = icmp eq i64 %index.next382, 256
  br i1 %i.aew, label %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit, label %vector.body376, !llvm.loop !1891

_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit: ; preds = %vector.body376
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  br label %vector.body386

vector.body386:                                   ; preds = %vector.body386, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit
  %index387 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit ], [ %index.next390, %vector.body386 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index387
  %wide.load388 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !13 ; 8 uses
  %i.aex = and <8 x i8> %wide.load388, splat (i8 1)
  %i.aey = zext nneg <8 x i8> %i.aex to <8 x i16>
  %.idx = shl nuw i64 %index387, 4
  %i.aez = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  %i.afa = lshr <8 x i8> %wide.load388, splat (i8 1)
  %i.afb = and <8 x i8> %i.afa, splat (i8 1)
  %i.afc = zext nneg <8 x i8> %i.afb to <8 x i16>
  %i.afd = lshr <8 x i8> %wide.load388, splat (i8 2)
  %i.afe = and <8 x i8> %i.afd, splat (i8 1)
  %i.aff = zext nneg <8 x i8> %i.afe to <8 x i16>
  %i.afg = lshr <8 x i8> %wide.load388, splat (i8 3)
  %i.afh = and <8 x i8> %i.afg, splat (i8 1)
  %i.afi = zext nneg <8 x i8> %i.afh to <8 x i16>
  %i.afj = lshr <8 x i8> %wide.load388, splat (i8 4)
  %i.afk = and <8 x i8> %i.afj, splat (i8 1)
  %i.afl = zext nneg <8 x i8> %i.afk to <8 x i16>
  %i.afm = lshr <8 x i8> %wide.load388, splat (i8 5)
  %i.afn = and <8 x i8> %i.afm, splat (i8 1)
  %i.afo = zext nneg <8 x i8> %i.afn to <8 x i16>
  %i.afp = lshr <8 x i8> %wide.load388, splat (i8 6)
  %i.afq = and <8 x i8> %i.afp, splat (i8 1)
  %i.afr = zext nneg <8 x i8> %i.afq to <8 x i16>
  %i.afs = lshr <8 x i8> %wide.load388, splat (i8 7)
  %i.aft = zext nneg <8 x i8> %i.afs to <8 x i16>
  %i.afu = shufflevector <8 x i16> %i.aey, <8 x i16> %i.afc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afv = shufflevector <8 x i16> %i.aff, <8 x i16> %i.afi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afw = shufflevector <8 x i16> %i.afl, <8 x i16> %i.afo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afx = shufflevector <8 x i16> %i.afr, <8 x i16> %i.aft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afy = shufflevector <16 x i16> %i.afu, <16 x i16> %i.afv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.afz = shufflevector <16 x i16> %i.afw, <16 x i16> %i.afx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec389 = shufflevector <32 x i16> %i.afy, <32 x i16> %i.afz, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec389, ptr %i.aez, align 2, !tbaa !639
  %index.next390 = add nuw i64 %index387, 8       ; 2 uses
  %i.aga = icmp eq i64 %index.next390, 32
  br i1 %i.aga, label %vector.body394, label %vector.body386, !llvm.loop !1892

vector.body394:                                   ; preds = %vector.body386, %vector.body394
  %index395 = phi i64 [ %index.next397, %vector.body394 ], [ 0, %vector.body386 ] ; 2 uses
  %i.agb = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %index395 ; 2 uses
  %wide.load396 = load <8 x i16>, ptr %i.agb, align 2, !tbaa !639
  %i.agc = zext <8 x i16> %wide.load396 to <8 x i32>
  %i.agd = mul nuw nsw <8 x i32> %i.agc, splat (i32 3329) ; 2 uses
  %i.age = and <8 x i32> %i.agd, splat (i32 1)
  %i.agf = lshr <8 x i32> %i.agd, splat (i32 1)
  %i.agg = add nuw nsw <8 x i32> %i.age, %i.agf
  %i.agh = trunc <8 x i32> %i.agg to <8 x i16>
  store <8 x i16> %i.agh, ptr %i.agb, align 2, !tbaa !639
  %index.next397 = add nuw i64 %index395, 8       ; 2 uses
  %i.agi = icmp eq i64 %index.next397, 256
  br i1 %i.agi, label %vector.body401, label %vector.body394, !llvm.loop !1893

vector.body401:                                   ; preds = %vector.body394, %vector.body401
  %index402 = phi i64 [ %index.next407, %vector.body401 ], [ 0, %vector.body394 ] ; 3 uses
  %i.agj = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index402 ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 16 ; 2 uses
  %wide.load403 = load <8 x i16>, ptr %i.agj, align 2, !tbaa !639
  %wide.load404 = load <8 x i16>, ptr %i.agk, align 2, !tbaa !639
  %i.agl = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %index402 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %wide.load405 = load <8 x i16>, ptr %i.agl, align 2, !tbaa !639
  %wide.load406 = load <8 x i16>, ptr %i.agm, align 2, !tbaa !639
  %i.agn = add <8 x i16> %wide.load405, %wide.load403 ; 2 uses
  %i.ago = add <8 x i16> %wide.load406, %wide.load404 ; 2 uses
  %i.agp = add <8 x i16> %i.agn, splat (i16 -3329) ; 2 uses
  %i.agq = add <8 x i16> %i.ago, splat (i16 -3329) ; 2 uses
  %i.agr = icmp slt <8 x i16> %i.agp, zeroinitializer
  %i.ags = icmp slt <8 x i16> %i.agq, zeroinitializer
  %i.agt = select <8 x i1> %i.agr, <8 x i16> %i.agn, <8 x i16> zeroinitializer
  %i.agu = select <8 x i1> %i.ags, <8 x i16> %i.ago, <8 x i16> zeroinitializer
  %i.agv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.agp, <8 x i16> zeroinitializer)
  %i.agw = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.agq, <8 x i16> zeroinitializer)
  %i.agx = or <8 x i16> %i.agt, %i.agv
  %i.agy = or <8 x i16> %i.agu, %i.agw
  store <8 x i16> %i.agx, ptr %i.agj, align 2, !tbaa !639
  store <8 x i16> %i.agy, ptr %i.agk, align 2, !tbaa !639
  %index.next407 = add nuw i64 %index402, 16      ; 2 uses
  %i.agz = icmp eq i64 %index.next407, 256
  br i1 %i.agz, label %vector.body411, label %vector.body401, !llvm.loop !1894

vector.body411:                                   ; preds = %vector.body401, %vector.body411
  %index412 = phi i64 [ %index.next414, %vector.body411 ], [ 0, %vector.body401 ] ; 2 uses
  %i.aha = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index412 ; 2 uses
  %wide.load413 = load <4 x i16>, ptr %i.aha, align 2, !tbaa !639
  %i.ahb = zext <4 x i16> %wide.load413 to <4 x i32>
  %i.ahc = shl nuw nsw <4 x i32> %i.ahb, splat (i32 11) ; 2 uses
  %i.ahd = zext nneg <4 x i32> %i.ahc to <4 x i64>
  %i.ahe = mul nuw nsw <4 x i64> %i.ahd, splat (i64 5039)
  %i.ahf = lshr <4 x i64> %i.ahe, splat (i64 24)  ; 2 uses
  %i.ahg = trunc nuw nsw <4 x i64> %i.ahf to <4 x i32>
  %i.ahh = mul nsw <4 x i32> %i.ahg, splat (i32 -3329)
  %i.ahi = add nsw <4 x i32> %i.ahh, %i.ahc       ; 2 uses
  %i.ahj = icmp ugt <4 x i32> %i.ahi, splat (i32 1664)
  %i.ahk = zext <4 x i1> %i.ahj to <4 x i64>
  %i.ahl = add nuw nsw <4 x i64> %i.ahf, %i.ahk
  %i.ahm = icmp ugt <4 x i32> %i.ahi, splat (i32 4993)
  %i.ahn = zext <4 x i1> %i.ahm to <4 x i64>
  %i.aho = add nuw nsw <4 x i64> %i.ahl, %i.ahn
  %i.ahp = trunc nuw <4 x i64> %i.aho to <4 x i16>
  %i.ahq = and <4 x i16> %i.ahp, splat (i16 2047)
  store <4 x i16> %i.ahq, ptr %i.aha, align 2, !tbaa !639
  %index.next414 = add nuw i64 %index412, 4       ; 2 uses
  %i.ahr = icmp eq i64 %index.next414, 256
  br i1 %i.ahr, label %vector.body418, label %vector.body411, !llvm.loop !1895

vector.body418:                                   ; preds = %vector.body411, %vector.body418
  %index419 = phi i64 [ %index.next421, %vector.body418 ], [ 0, %vector.body411 ] ; 2 uses
  %i.ahs = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %index419 ; 2 uses
  %wide.load420 = load <4 x i16>, ptr %i.ahs, align 2, !tbaa !639
  %i.aht = zext <4 x i16> %wide.load420 to <4 x i32>
  %i.ahu = shl nuw nsw <4 x i32> %i.aht, splat (i32 11) ; 2 uses
  %i.ahv = zext nneg <4 x i32> %i.ahu to <4 x i64>
  %i.ahw = mul nuw nsw <4 x i64> %i.ahv, splat (i64 5039)
  %i.ahx = lshr <4 x i64> %i.ahw, splat (i64 24)  ; 2 uses
  %i.ahy = trunc nuw nsw <4 x i64> %i.ahx to <4 x i32>
  %i.ahz = mul nsw <4 x i32> %i.ahy, splat (i32 -3329)
  %i.aia = add nsw <4 x i32> %i.ahz, %i.ahu       ; 2 uses
  %i.aib = icmp ugt <4 x i32> %i.aia, splat (i32 1664)
  %i.aic = zext <4 x i1> %i.aib to <4 x i64>
  %i.aid = add nuw nsw <4 x i64> %i.ahx, %i.aic
  %i.aie = icmp ugt <4 x i32> %i.aia, splat (i32 4993)
  %i.aif = zext <4 x i1> %i.aie to <4 x i64>
  %i.aig = add nuw nsw <4 x i64> %i.aid, %i.aif
  %i.aih = trunc nuw <4 x i64> %i.aig to <4 x i16>
  %i.aii = and <4 x i16> %i.aih, splat (i16 2047)
  store <4 x i16> %i.aii, ptr %i.ahs, align 2, !tbaa !639
  %index.next421 = add nuw i64 %index419, 4       ; 2 uses
  %i.aij = icmp eq i64 %index.next421, 256
  br i1 %i.aij, label %vector.body425, label %vector.body418, !llvm.loop !1896

vector.body425:                                   ; preds = %vector.body418, %vector.body425
  %index426 = phi i64 [ %index.next428, %vector.body425 ], [ 0, %vector.body418 ] ; 2 uses
  %i.aik = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %index426 ; 2 uses
  %wide.load427 = load <4 x i16>, ptr %i.aik, align 2, !tbaa !639
  %i.ail = zext <4 x i16> %wide.load427 to <4 x i32>
  %i.aim = shl nuw nsw <4 x i32> %i.ail, splat (i32 11) ; 2 uses
  %i.ain = zext nneg <4 x i32> %i.aim to <4 x i64>
  %i.aio = mul nuw nsw <4 x i64> %i.ain, splat (i64 5039)
  %i.aip = lshr <4 x i64> %i.aio, splat (i64 24)  ; 2 uses
  %i.aiq = trunc nuw nsw <4 x i64> %i.aip to <4 x i32>
  %i.air = mul nsw <4 x i32> %i.aiq, splat (i32 -3329)
  %i.ais = add nsw <4 x i32> %i.air, %i.aim       ; 2 uses
  %i.ait = icmp ugt <4 x i32> %i.ais, splat (i32 1664)
  %i.aiu = zext <4 x i1> %i.ait to <4 x i64>
  %i.aiv = add nuw nsw <4 x i64> %i.aip, %i.aiu
  %i.aiw = icmp ugt <4 x i32> %i.ais, splat (i32 4993)
  %i.aix = zext <4 x i1> %i.aiw to <4 x i64>
  %i.aiy = add nuw nsw <4 x i64> %i.aiv, %i.aix
end_hunk_3
