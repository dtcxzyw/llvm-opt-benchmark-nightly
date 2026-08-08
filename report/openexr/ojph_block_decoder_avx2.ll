inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjb:bb.a
  %i.t = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef 65540, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1112, ptr noundef nonnull @.str.4)
  br label %bb.ej

bb.j:                                             ; preds = %bb.g
  %i.w = icmp eq i32 %2, 29
  %i.x = icmp samesign ugt i32 %.0696922, 1
  %or.cond25 = and i1 %i.w, %i.x
  br i1 %or.cond25, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.b836 = load i1, ptr @_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE16truncate_spp_mrp, align 1
  br i1 %.b836, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i1 true, ptr @_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE16truncate_spp_mrp, align 1
  %i.y = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef 65541, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1125, ptr noundef nonnull @.str.5)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1697 = phi i32 [ 1, %bb.l ], [ 1, %bb.k ], [ %.0696922, %bb.j ] ; 2 uses
  %i.ab = icmp ult i32 %4, 2
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef 65542, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1135, ptr noundef nonnull @.str.6)
  br label %bb.ej

bb.o:                                             ; preds = %bb.m
  %i.af = sext i32 %4 to i64
  %i.ag = getelementptr i8, ptr %0, i64 %i.af     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10  ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 4
  %i.al = getelementptr i8, ptr %i.ag, i64 -2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = and i8 %i.am, 15
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.ak, %i.ao            ; 6 uses
  %i.aq = icmp samesign ult i32 %i.ap, 2
  br i1 %i.aq, label %bb.ej, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = icmp sgt i32 %i.ap, %4
  %i.as = icmp eq i8 %i.ai, -1
  %or.cond18 = or i1 %i.as, %i.ar
  br i1 %or.cond18, label %bb.ej, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8208) %i.a, i8 0, i64 8208, i1 false)
  %i.at = add i32 %6, 9
  %i.au = and i32 %i.at, -8                       ; 8 uses
  %i.av = add nuw nsw i32 %2, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 0, ptr %i.aw, align 4, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 0, ptr %i.ax, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !18
  call fastcc void @_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii(ptr noundef %10, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call fastcc void @_ZN4ojph5localL8rev_initEPNS0_10rev_structEPhii(ptr noundef %11, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.ap)
  %i.az = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10) ; 2 uses
  %.promoted = load ptr, ptr %11, align 8         ; 2 uses
  %.not1159 = icmp eq i32 %6, 0                   ; 10 uses
  br i1 %.not1159, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %.promoted975 = load i32, ptr %i.ba, align 8, !tbaa !19
  %.phi.trans.insert.i.promoted = load i64, ptr %.phi.trans.insert.i, align 8
  %.promoted977 = load i32, ptr %i.bb, align 4
  %.promoted982 = load i8, ptr %i.bc, align 8
  br label %bb.r

._crit_edge:                                      ; preds = %bb.ag, %bb.q
  %.lcssa962967.lcssa = phi ptr [ %.promoted, %bb.q ], [ %.lcssa962964, %bb.ag ]
  %.0726.lcssa = phi ptr [ %i.a, %bb.q ], [ %i.jc, %bb.ag ] ; 2 uses
  %.0715.lcssa = phi i32 [ %i.az, %bb.q ], [ %.3718, %bb.ag ]
  store ptr %.lcssa962967.lcssa, ptr %11, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0726.lcssa, i64 2
  store i16 0, ptr %i.bd, align 2, !tbaa !21
  store i16 0, ptr %.0726.lcssa, align 2, !tbaa !21
  %i.be = icmp ugt i32 %7, 2                      ; 3 uses
  br i1 %i.be, label %.lr.ph1014, label %._crit_edge1015

.lr.ph1014:                                       ; preds = %._crit_edge
  %i.bf = sub nsw i32 0, %i.au
  %i.bg = sext i32 %i.bf to i64
  %i.bh = sub nsw i32 2, %i.au
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.phi.trans.insert.i867 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.bm = sub nsw i32 4, %i.au
  %i.bn = sext i32 %i.bm to i64
  %.promoted1016 = load i32, ptr %i.bj, align 8
  br label %bb.ah

bb.r:                                             ; preds = %.lr.ph, %bb.ag
  %i.bo = phi i8 [ %.promoted982, %.lr.ph ], [ %i.fi, %bb.ag ] ; 2 uses
  %.lcssa963981 = phi i32 [ %.promoted977, %.lr.ph ], [ %.lcssa963978, %bb.ag ] ; 7 uses
  %.pre.i976 = phi i64 [ %.phi.trans.insert.i.promoted, %.lr.ph ], [ %i.ii, %bb.ag ] ; 2 uses
  %i.bp = phi i32 [ %.promoted975, %.lr.ph ], [ %i.ik, %bb.ag ] ; 4 uses
  %.0715972 = phi i32 [ %i.az, %.lr.ph ], [ %.3718, %bb.ag ] ; 3 uses
  %.0724971 = phi i32 [ 0, %.lr.ph ], [ %i.hc, %bb.ag ] ; 2 uses
  %.0726970 = phi ptr [ %i.a, %.lr.ph ], [ %i.jc, %bb.ag ] ; 5 uses
  %.0731969 = phi i32 [ 0, %.lr.ph ], [ %i.gw, %bb.ag ] ; 2 uses
  %.lcssa962967968 = phi ptr [ %.promoted, %.lr.ph ], [ %.lcssa962964, %bb.ag ] ; 6 uses
  %i.bq = icmp ult i32 %i.bp, 32
  br i1 %i.bq, label %bb.s, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

bb.s:                                             ; preds = %bb.r
  %i.br = icmp sgt i32 %.lcssa963981, 3
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds i8, ptr %.lcssa962967968, i64 -3
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !23
  %i.bu = getelementptr inbounds i8, ptr %.lcssa962967968, i64 -4
  %i.bv = add nsw i32 %.lcssa963981, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split

bb.u:                                             ; preds = %bb.s
  %i.bw = icmp sgt i32 %.lcssa963981, 0
  br i1 %i.bw, label %.preheader.i.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i

.preheader.i.i:                                   ; preds = %bb.u, %.preheader.i.i
  %i.bx = phi ptr [ %i.bz, %.preheader.i.i ], [ %.lcssa962967968, %bb.u ] ; 2 uses
  %.050.i.i = phi i32 [ %i.cd, %.preheader.i.i ], [ 0, %bb.u ]
  %.04649.i.i = phi i32 [ %i.cf, %.preheader.i.i ], [ 24, %bb.u ] ; 2 uses
  %i.by = phi i32 [ %i.ce, %.preheader.i.i ], [ %.lcssa963981, %bb.u ] ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -1
  %i.ca = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl i32 %i.cb, %.04649.i.i
  %i.cd = or i32 %i.cc, %.050.i.i                 ; 2 uses
  %i.ce = add nsw i32 %i.by, -1
  %i.cf = add nsw i32 %.04649.i.i, -8
  %i.cg = icmp samesign ugt i32 %i.by, 1
  br i1 %i.cg, label %.preheader.i.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit, !llvm.loop !24

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit: ; preds = %.preheader.i.i
  %scevgep = getelementptr i8, ptr %.lcssa962967968, i64 -1
  %i.ch = add nsw i32 %.lcssa963981, -1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci
  %scevgep1205 = getelementptr i8, ptr %scevgep, i64 %i.cj
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split: ; preds = %bb.t, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit
  %.sink = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bv, %bb.t ] ; 2 uses
  %.lcssa962966.ph = phi ptr [ %scevgep1205, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bu, %bb.t ]
  %.1.i.i.ph = phi i32 [ %i.cd, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bt, %bb.t ]
  store i32 %.sink, ptr %i.bb, align 4, !tbaa !28
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split, %bb.u
  %.lcssa963980 = phi i32 [ %.lcssa963981, %bb.u ], [ %.sink, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split ] ; 7 uses
  %.lcssa962966 = phi ptr [ %.lcssa962967968, %bb.u ], [ %.lcssa962966.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split ] ; 6 uses
  %.1.i.i = phi i32 [ 0, %bb.u ], [ %.1.i.i.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split ]
  %i.ck = insertelement <4 x i32> poison, i32 %.1.i.i, i64 0
  %i.cl = shufflevector <4 x i32> %i.ck, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cm = lshr <4 x i32> %i.cl, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.cn = and <4 x i32> %i.cm, splat (i32 255)    ; 2 uses
  %i.co = icmp samesign ugt <4 x i32> %i.cn, splat (i32 143)
  %i.cp = sext <4 x i1> %i.co to <4 x i32>        ; 2 uses
  %i.cq = extractelement <4 x i32> %i.cp, i64 3
  %i.cr = icmp ne i32 %i.cq, 0                    ; 2 uses
  %i.cs = zext i1 %i.cr to i8                     ; 2 uses
  %i.ct = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.cu = zext nneg i8 %i.bo to i32
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = insertelement <4 x i32> %i.ct, i32 %i.cv, i64 0
  %i.cx = and <4 x i32> %i.cm, splat (i32 127)
  %i.cy = icmp eq <4 x i32> %i.cx, splat (i32 127)
  %.neg.i.i = ashr <4 x i32> %i.cw, splat (i32 31)
  %i.cz = add nsw <4 x i32> %.neg.i.i, splat (i32 8)
  %i.da = select <4 x i1> %i.cy, <4 x i32> %i.cz, <4 x i32> splat (i32 8) ; 2 uses
  %i.db = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.da, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dc = add nsw <4 x i32> %i.da, %i.db          ; 2 uses
  %i.dd = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.dc, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.de = add nsw <4 x i32> %i.dc, %i.dd          ; 2 uses
  %i.df = extractelement <4 x i32> %i.de, i64 3
  %i.dg = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.de, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dh = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.cn, <4 x i32> %i.dg) ; 2 uses
  %16 = shufflevector <4 x i32> %i.dh, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %17 = or <4 x i32> %i.dh, %16                   ; 2 uses
  %shift = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = or <4 x i32> %17, %shift
  %18 = extractelement <4 x i32> %foldExtExtBinop, i64 0
  %i.di = zext i32 %18 to i64
  store i8 %i.cs, ptr %i.bc, align 8, !tbaa !29
  %i.dj = zext nneg i32 %i.bp to i64
  %i.dk = shl nuw nsw i64 %i.di, %i.dj
  %i.dl = or i64 %i.dk, %.pre.i976                ; 3 uses
  store i64 %i.dl, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %i.dm = add i32 %i.df, %i.bp                    ; 5 uses
  store i32 %i.dm, ptr %i.ba, align 8, !tbaa !19
  %i.dn = icmp ult i32 %i.dm, 32
  br i1 %i.dn, label %bb.v, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

bb.v:                                             ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i
  %i.do = icmp sgt i32 %.lcssa963980, 3
  br i1 %i.do, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dp = getelementptr inbounds i8, ptr %.lcssa962966, i64 -3
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !23
  %i.dr = getelementptr inbounds i8, ptr %.lcssa962966, i64 -4
  %i.ds = add nsw i32 %.lcssa963980, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split

bb.x:                                             ; preds = %bb.v
  %i.dt = icmp sgt i32 %.lcssa963980, 0
  br i1 %i.dt, label %.preheader.i8.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i

.preheader.i8.i:                                  ; preds = %bb.x, %.preheader.i8.i
  %i.du = phi ptr [ %i.dw, %.preheader.i8.i ], [ %.lcssa962966, %bb.x ] ; 2 uses
  %.050.i10.i = phi i32 [ %i.ea, %.preheader.i8.i ], [ 0, %bb.x ]
  %.04649.i11.i = phi i32 [ %i.ec, %.preheader.i8.i ], [ 24, %bb.x ] ; 2 uses
  %i.dv = phi i32 [ %i.eb, %.preheader.i8.i ], [ %.lcssa963980, %bb.x ] ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -1
  %i.dx = load i8, ptr %i.du, align 1, !tbaa !10
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl i32 %i.dy, %.04649.i11.i
  %i.ea = or i32 %i.dz, %.050.i10.i               ; 2 uses
  %i.eb = add nsw i32 %i.dv, -1
  %i.ec = add nsw i32 %.04649.i11.i, -8
  %i.ed = icmp samesign ugt i32 %i.dv, 1
  br i1 %i.ed, label %.preheader.i8.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit, !llvm.loop !31

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit: ; preds = %.preheader.i8.i
  %scevgep1206 = getelementptr i8, ptr %.lcssa962966, i64 -1
  %i.ee = add nsw i32 %.lcssa963980, -1
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = sub nsw i64 0, %i.ef
  %scevgep1207 = getelementptr i8, ptr %scevgep1206, i64 %i.eg
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split: ; preds = %bb.w, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit
  %.sink1302 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.ds, %bb.w ] ; 2 uses
  %.lcssa962965.ph = phi ptr [ %scevgep1207, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.dr, %bb.w ]
  %.1.i6.i.ph = phi i32 [ %i.ea, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.dq, %bb.w ]
  store i32 %.sink1302, ptr %i.bb, align 4, !tbaa !28
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split, %bb.x
  %.lcssa963979 = phi i32 [ %.lcssa963980, %bb.x ], [ %.sink1302, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %.lcssa962965 = phi ptr [ %.lcssa962966, %bb.x ], [ %.lcssa962965.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %.1.i6.i = phi i32 [ 0, %bb.x ], [ %.1.i6.i.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %i.eh = insertelement <4 x i32> poison, i32 %.1.i6.i, i64 0
  %i.ei = shufflevector <4 x i32> %i.eh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ej = lshr <4 x i32> %i.ei, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.ek = and <4 x i32> %i.ej, splat (i32 255)    ; 2 uses
  %i.el = icmp samesign ugt <4 x i32> %i.ek, splat (i32 143)
  %i.em = sext <4 x i1> %i.el to <4 x i32>        ; 2 uses
  %i.en = extractelement <4 x i32> %i.em, i64 3
  %i.eo = icmp ne i32 %i.en, 0
  %i.ep = zext i1 %i.eo to i8                     ; 2 uses
  %i.eq = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %.neg.i = sext i1 %i.cr to i32
  %i.er = insertelement <4 x i32> %i.eq, i32 %.neg.i, i64 0
  %i.es = and <4 x i32> %i.ej, splat (i32 127)
  %i.et = icmp eq <4 x i32> %i.es, splat (i32 127)
  %.neg.i7.i = ashr <4 x i32> %i.er, splat (i32 31)
  %i.eu = add nsw <4 x i32> %.neg.i7.i, splat (i32 8)
  %i.ev = select <4 x i1> %i.et, <4 x i32> %i.eu, <4 x i32> splat (i32 8) ; 2 uses
  %i.ew = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.ev, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ex = add nsw <4 x i32> %i.ev, %i.ew          ; 2 uses
  %i.ey = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.ex, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ez = add nsw <4 x i32> %i.ex, %i.ey          ; 2 uses
  %i.fa = extractelement <4 x i32> %i.ez, i64 3
  %i.fb = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.ez, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fc = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.ek, <4 x i32> %i.fb) ; 2 uses
  %19 = shufflevector <4 x i32> %i.fc, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %20 = or <4 x i32> %i.fc, %19                   ; 2 uses
  %shift1638 = shufflevector <4 x i32> %20, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1639 = or <4 x i32> %20, %shift1638
  %21 = extractelement <4 x i32> %foldExtExtBinop1639, i64 0
  %i.fd = zext i32 %21 to i64
  store i8 %i.ep, ptr %i.bc, align 8, !tbaa !29
  %i.fe = zext nneg i32 %i.dm to i64
  %i.ff = shl nuw nsw i64 %i.fd, %i.fe
  %i.fg = or i64 %i.ff, %i.dl                     ; 2 uses
  store i64 %i.fg, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %i.fh = add i32 %i.fa, %i.dm
  br label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit: ; preds = %bb.r, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i
  %i.fi = phi i8 [ %i.ep, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.cs, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %i.bo, %bb.r ]
  %.lcssa963978 = phi i32 [ %.lcssa963979, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %.lcssa963980, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.lcssa963981, %bb.r ]
  %i.fj = phi i32 [ %i.fh, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.dm, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %i.bp, %bb.r ]
  %.lcssa962964 = phi ptr [ %.lcssa962965, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %.lcssa962966, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.lcssa962967968, %bb.r ] ; 2 uses
  %i.fk = phi i64 [ %i.fg, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.dl, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.pre.i976, %bb.r ] ; 2 uses
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = and i32 %i.fl, 127
  %i.fn = add nuw nsw i32 %i.fm, %.0724971
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !21 ; 2 uses
  %i.fr = icmp eq i32 %.0724971, 0
  br i1 %i.fr, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit
  %i.fs = add nsw i32 %.0715972, -2               ; 2 uses
  %i.ft = icmp eq i32 %i.fs, -1
  %i.fu = select i1 %i.ft, i16 %i.fq, i16 0       ; 2 uses
  %i.fv = icmp slt i32 %.0715972, 2
  br i1 %i.fv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fw = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit
  %.0732 = phi i16 [ %i.fu, %bb.z ], [ %i.fu, %bb.y ], [ %i.fq, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit ] ; 2 uses
  %.1716 = phi i32 [ %i.fw, %bb.z ], [ %i.fs, %bb.y ], [ %.0715972, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit ] ; 3 uses
  store i16 %.0732, ptr %.0726970, align 2, !tbaa !21
  %i.fx = or disjoint i32 %.0731969, 2
  %i.fy = zext i16 %.0732 to i32                  ; 3 uses
  %i.fz = shl nuw nsw i32 %i.fy, 3                ; 2 uses
  %i.ga = and i32 %i.fz, 128
  %i.gb = shl nuw nsw i32 %i.fy, 2
  %i.gc = and i32 %i.gb, 896
  %i.gd = or i32 %i.ga, %i.gc                     ; 2 uses
  %i.ge = and i32 %i.fy, 7                        ; 2 uses
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = lshr i64 %i.fk, %i.gf                   ; 2 uses
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = and i32 %i.gh, 127
  %i.gj = or disjoint i32 %i.gi, %i.gd
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !21 ; 2 uses
  %i.gn = icmp eq i32 %i.gd, 0
  %i.go = icmp ult i32 %i.fx, %6                  ; 2 uses
  %or.cond857 = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond857, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gp = add nsw i32 %.1716, -2                  ; 2 uses
  %i.gq = icmp eq i32 %i.gp, -1
  %i.gr = select i1 %i.gq, i16 %i.gm, i16 0       ; 2 uses
  %i.gs = icmp slt i32 %.1716, 2
  br i1 %i.gs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gt = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.0733 = phi i16 [ %i.gr, %bb.ac ], [ %i.gr, %bb.ab ], [ %i.gm, %bb.aa ]
  %.2717 = phi i32 [ %i.gt, %bb.ac ], [ %i.gp, %bb.ab ], [ %.1716, %bb.aa ] ; 3 uses
  %i.gu = select i1 %i.go, i16 %.0733, i16 0      ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0726970, i64 4
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !21
  %i.gw = add i32 %.0731969, 4                    ; 2 uses
  %i.gx = zext i16 %i.gu to i32                   ; 4 uses
  %i.gy = shl nuw nsw i32 %i.gx, 3
  %i.gz = and i32 %i.gy, 128
  %i.ha = shl nuw nsw i32 %i.gx, 2
  %i.hb = and i32 %i.ha, 896
  %i.hc = or i32 %i.gz, %i.hb
  %i.hd = and i32 %i.gx, 7                        ; 2 uses
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = lshr i64 %i.gg, %i.he                   ; 2 uses
  %i.hg = add nuw nsw i32 %i.ge, %i.hd
  %i.hh = trunc i64 %i.hf to i32
  %i.hi = and i32 %i.fz, 64
  %i.hj = shl nuw nsw i32 %i.gx, 4
  %i.hk = and i32 %i.hj, 128
  %i.hl = or disjoint i32 %i.hk, %i.hi            ; 2 uses
  %i.hm = icmp eq i32 %i.hl, 192
  br i1 %i.hm, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.hn = add nsw i32 %.2717, -2                  ; 2 uses
  %i.ho = icmp eq i32 %i.hn, -1
  %i.hp = select i1 %i.ho, i32 256, i32 192       ; 2 uses
  %i.hq = icmp slt i32 %.2717, 2
  br i1 %i.hq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hr = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %.0736 = phi i32 [ %i.hp, %bb.af ], [ %i.hp, %bb.ae ], [ %i.hl, %bb.ad ]
  %.3718 = phi i32 [ %i.hr, %bb.af ], [ %i.hn, %bb.ae ], [ %.2717, %bb.ad ] ; 2 uses
  %i.hs = and i32 %i.hh, 63
  %i.ht = add nuw nsw i32 %.0736, %i.hs
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl0E, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !21
  %i.hx = zext i16 %i.hw to i32                   ; 5 uses
  %i.hy = and i32 %i.hx, 7                        ; 2 uses
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = lshr i64 %i.hf, %i.hz                   ; 2 uses
  %i.ib = add nuw nsw i32 %i.hg, %i.hy
  %i.ic = trunc i64 %i.ia to i32
  %i.id = lshr i32 %i.hx, 3
  %i.ie = and i32 %i.id, 15                       ; 3 uses
  %notmask856 = shl nsw i32 -1, %i.ie
  %i.if = xor i32 %notmask856, -1
  %i.ig = and i32 %i.ic, %i.if                    ; 2 uses
  %i.ih = zext nneg i32 %i.ie to i64
  %i.ii = lshr i64 %i.ia, %i.ih                   ; 2 uses
  store i64 %i.ii, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %i.ij = add nuw nsw i32 %i.ib, %i.ie
  %i.ik = sub i32 %i.fj, %i.ij                    ; 2 uses
  store i32 %i.ik, ptr %i.ba, align 8, !tbaa !19
  %i.il = lshr i32 %i.hx, 7
  %i.im = and i32 %i.il, 7                        ; 2 uses
  %i.in = lshr i32 %i.hx, 10
  %i.io = and i32 %i.in, 7
  %i.ip = add nuw nsw i32 %i.io, 1
  %i.iq = shl nuw nsw i32 255, %i.im
  %i.ir = xor i32 %i.iq, -1
  %i.is = and i32 %i.ig, %i.ir
  %i.it = add nuw nsw i32 %i.ip, %i.is
  %i.iu = trunc nuw i32 %i.it to i16
  %i.iv = getelementptr inbounds nuw i8, ptr %.0726970, i64 2
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !21
  %i.iw = lshr i32 %i.hx, 13
  %i.ix = add nuw nsw i32 %i.iw, 1
  %i.iy = lshr i32 %i.ig, %i.im
  %i.iz = add nuw nsw i32 %i.ix, %i.iy
  %i.ja = trunc nuw i32 %i.iz to i16
  %i.jb = getelementptr inbounds nuw i8, ptr %.0726970, i64 6
  store i16 %i.ja, ptr %i.jb, align 2, !tbaa !21
  %i.jc = getelementptr inbounds nuw i8, ptr %.0726970, i64 8 ; 2 uses
  %i.jd = icmp ult i32 %i.gw, %6
  br i1 %i.jd, label %bb.r, label %._crit_edge, !llvm.loop !32

._crit_edge1015:                                  ; preds = %._crit_edge999, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.je = icmp ugt i32 %2, 13
  br i1 %i.je, label %bb.av, label %bb.bm

bb.ah:                                            ; preds = %.lr.ph1014, %._crit_edge999
  %.promoted10031018 = phi i32 [ %.promoted1016, %.lr.ph1014 ], [ %.promoted10031017, %._crit_edge999 ] ; 2 uses
  %.47191012 = phi i32 [ %.0715.lcssa, %.lr.ph1014 ], [ %.5720.lcssa, %._crit_edge999 ] ; 2 uses
  %.07381011 = phi i32 [ 2, %.lr.ph1014 ], [ %i.jk, %._crit_edge999 ] ; 2 uses
  %i.jf = lshr exact i32 %.07381011, 1
  %i.jg = mul i32 %i.jf, %i.au
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.jh ; 2 uses
  %.promoted987 = load ptr, ptr %11, align 8      ; 2 uses
  br i1 %.not1159, label %._crit_edge999, label %.lr.ph998

.lr.ph998:                                        ; preds = %bb.ah
  %.phi.trans.insert.i867.promoted = load i64, ptr %.phi.trans.insert.i867, align 8
  %.promoted1005 = load i32, ptr %i.bk, align 4
  %.promoted1010 = load i8, ptr %i.bl, align 8
  br label %bb.ai

._crit_edge999:                                   ; preds = %bb.au, %bb.ah
  %.promoted10031017 = phi i32 [ %.promoted10031018, %bb.ah ], [ %i.rf, %bb.au ]
  %.lcssa985991.lcssa = phi ptr [ %.promoted987, %bb.ah ], [ %.lcssa985988, %bb.au ]
  %.0739.lcssa = phi ptr [ %i.ji, %bb.ah ], [ %i.rv, %bb.au ] ; 2 uses
  %.5720.lcssa = phi i32 [ %.47191012, %bb.ah ], [ %.7722, %bb.au ]
  store ptr %.lcssa985991.lcssa, ptr %11, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %.0739.lcssa, i64 2
  store i16 0, ptr %i.jj, align 2, !tbaa !21
  store i16 0, ptr %.0739.lcssa, align 2, !tbaa !21
  %i.jk = add i32 %.07381011, 2                   ; 2 uses
  %i.jl = icmp ult i32 %i.jk, %7
  br i1 %i.jl, label %bb.ah, label %._crit_edge1015, !llvm.loop !33

bb.ai:                                            ; preds = %.lr.ph998, %bb.au
  %i.jm = phi i8 [ %.promoted1010, %.lr.ph998 ], [ %i.ns, %bb.au ] ; 2 uses
  %.lcssa9861009 = phi i32 [ %.promoted1005, %.lr.ph998 ], [ %.lcssa9861006, %bb.au ] ; 7 uses
  %.pre.i8681004 = phi i64 [ %.phi.trans.insert.i867.promoted, %.lr.ph998 ], [ %i.rd, %bb.au ] ; 2 uses
  %i.jn = phi i32 [ %.promoted10031018, %.lr.ph998 ], [ %i.rf, %bb.au ] ; 4 uses
  %.5720996 = phi i32 [ %.47191012, %.lr.ph998 ], [ %.7722, %bb.au ] ; 3 uses
  %.1725995 = phi i32 [ 0, %.lr.ph998 ], [ %i.qc, %bb.au ]
  %.0739994 = phi ptr [ %i.ji, %.lr.ph998 ], [ %i.rv, %bb.au ] ; 8 uses
  %.0740993 = phi i32 [ 0, %.lr.ph998 ], [ %i.pt, %bb.au ] ; 2 uses
  %.lcssa985991992 = phi ptr [ %.promoted987, %.lr.ph998 ], [ %.lcssa985988, %bb.au ] ; 6 uses
  %i.jo = getelementptr inbounds [2 x i8], ptr %.0739994, i64 %i.bg ; 2 uses
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !21
  %i.jq = shl i16 %i.jp, 2
  %i.jr = and i16 %i.jq, 640
  %i.js = zext nneg i16 %i.jr to i32
  %i.jt = or i32 %.1725995, %i.js
  %i.ju = getelementptr inbounds [2 x i8], ptr %.0739994, i64 %i.bi ; 2 uses
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !21 ; 2 uses
  %i.jw = shl i16 %i.jv, 4
  %i.jx = and i16 %i.jw, 512
  %i.jy = zext nneg i16 %i.jx to i32
  %i.jz = or i32 %i.jt, %i.jy                     ; 2 uses
  %i.ka = icmp ult i32 %i.jn, 32
  br i1 %i.ka, label %bb.aj, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

bb.aj:                                            ; preds = %bb.ai
  %i.kb = icmp sgt i32 %.lcssa9861009, 3
  br i1 %i.kb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kc = getelementptr inbounds i8, ptr %.lcssa985991992, i64 -3
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !23
  %i.ke = getelementptr inbounds i8, ptr %.lcssa985991992, i64 -4
  %i.kf = add nsw i32 %.lcssa9861009, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.kg = icmp sgt i32 %.lcssa9861009, 0
  br i1 %i.kg, label %.preheader.i.i880, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869

.preheader.i.i880:                                ; preds = %bb.al, %.preheader.i.i880
  %i.kh = phi ptr [ %i.kj, %.preheader.i.i880 ], [ %.lcssa985991992, %bb.al ] ; 2 uses
  %.050.i.i882 = phi i32 [ %i.kn, %.preheader.i.i880 ], [ 0, %bb.al ]
  %.04649.i.i883 = phi i32 [ %i.kp, %.preheader.i.i880 ], [ 24, %bb.al ] ; 2 uses
  %i.ki = phi i32 [ %i.ko, %.preheader.i.i880 ], [ %.lcssa9861009, %bb.al ] ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %i.kh, i64 -1
  %i.kk = load i8, ptr %i.kh, align 1, !tbaa !10
  %i.kl = zext i8 %i.kk to i32
  %i.km = shl i32 %i.kl, %.04649.i.i883
  %i.kn = or i32 %i.km, %.050.i.i882              ; 2 uses
  %i.ko = add nsw i32 %i.ki, -1
  %i.kp = add nsw i32 %.04649.i.i883, -8
  %i.kq = icmp samesign ugt i32 %i.ki, 1
  br i1 %i.kq, label %.preheader.i.i880, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit, !llvm.loop !34

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit: ; preds = %.preheader.i.i880
  %scevgep1208 = getelementptr i8, ptr %.lcssa985991992, i64 -1
  %i.kr = add nsw i32 %.lcssa9861009, -1
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = sub nsw i64 0, %i.ks
  %scevgep1209 = getelementptr i8, ptr %scevgep1208, i64 %i.kt
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split: ; preds = %bb.ak, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit
  %.sink1303 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.kf, %bb.ak ] ; 2 uses
  %.lcssa985990.ph = phi ptr [ %scevgep1209, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.ke, %bb.ak ]
  %.1.i.i870.ph = phi i32 [ %i.kn, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.kd, %bb.ak ]
  store i32 %.sink1303, ptr %i.bk, align 4, !tbaa !28
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split, %bb.al
  %.lcssa9861008 = phi i32 [ %.lcssa9861009, %bb.al ], [ %.sink1303, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ] ; 7 uses
  %.lcssa985990 = phi ptr [ %.lcssa985991992, %bb.al ], [ %.lcssa985990.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ] ; 6 uses
  %.1.i.i870 = phi i32 [ 0, %bb.al ], [ %.1.i.i870.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ]
  %i.ku = insertelement <4 x i32> poison, i32 %.1.i.i870, i64 0
  %i.kv = shufflevector <4 x i32> %i.ku, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kw = lshr <4 x i32> %i.kv, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.kx = and <4 x i32> %i.kw, splat (i32 255)    ; 2 uses
  %i.ky = icmp samesign ugt <4 x i32> %i.kx, splat (i32 143)
  %i.kz = sext <4 x i1> %i.ky to <4 x i32>        ; 2 uses
  %i.la = extractelement <4 x i32> %i.kz, i64 3
  %i.lb = icmp ne i32 %i.la, 0                    ; 2 uses
  %i.lc = zext i1 %i.lb to i8                     ; 2 uses
  %i.ld = shufflevector <4 x i32> %i.kz, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.le = zext nneg i8 %i.jm to i32
  %i.lf = sub nsw i32 0, %i.le
  %i.lg = insertelement <4 x i32> %i.ld, i32 %i.lf, i64 0
  %i.lh = and <4 x i32> %i.kw, splat (i32 127)
  %i.li = icmp eq <4 x i32> %i.lh, splat (i32 127)
  %.neg.i.i871 = ashr <4 x i32> %i.lg, splat (i32 31)
  %i.lj = add nsw <4 x i32> %.neg.i.i871, splat (i32 8)
  %i.lk = select <4 x i1> %i.li, <4 x i32> %i.lj, <4 x i32> splat (i32 8) ; 2 uses
  %i.ll = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.lk, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lm = add nsw <4 x i32> %i.lk, %i.ll          ; 2 uses
  %i.ln = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.lm, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.lo = add nsw <4 x i32> %i.lm, %i.ln          ; 2 uses
  %i.lp = extractelement <4 x i32> %i.lo, i64 3
  %i.lq = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.lo, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lr = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.kx, <4 x i32> %i.lq) ; 2 uses
  %22 = shufflevector <4 x i32> %i.lr, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %23 = or <4 x i32> %i.lr, %22                   ; 2 uses
  %shift1641 = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1642 = or <4 x i32> %23, %shift1641
  %24 = extractelement <4 x i32> %foldExtExtBinop1642, i64 0
  %i.ls = zext i32 %24 to i64
  store i8 %i.lc, ptr %i.bl, align 8, !tbaa !29
  %i.lt = zext nneg i32 %i.jn to i64
  %i.lu = shl nuw nsw i64 %i.ls, %i.lt
  %i.lv = or i64 %i.lu, %.pre.i8681004            ; 3 uses
  store i64 %i.lv, ptr %.phi.trans.insert.i867, align 8, !tbaa !30
  %i.lw = add i32 %i.lp, %i.jn                    ; 5 uses
  store i32 %i.lw, ptr %i.bj, align 8, !tbaa !19
  %i.lx = icmp ult i32 %i.lw, 32
  br i1 %i.lx, label %bb.am, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

bb.am:                                            ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869
  %i.ly = icmp sgt i32 %.lcssa9861008, 3
  br i1 %i.ly, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.lz = getelementptr inbounds i8, ptr %.lcssa985990, i64 -3
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !23
  %i.mb = getelementptr inbounds i8, ptr %.lcssa985990, i64 -4
  %i.mc = add nsw i32 %.lcssa9861008, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split

bb.ao:                                            ; preds = %bb.am
  %i.md = icmp sgt i32 %.lcssa9861008, 0
  br i1 %i.md, label %.preheader.i8.i876, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872

.preheader.i8.i876:                               ; preds = %bb.ao, %.preheader.i8.i876
  %i.me = phi ptr [ %i.mg, %.preheader.i8.i876 ], [ %.lcssa985990, %bb.ao ] ; 2 uses
  %.050.i10.i878 = phi i32 [ %i.mk, %.preheader.i8.i876 ], [ 0, %bb.ao ]
  %.04649.i11.i879 = phi i32 [ %i.mm, %.preheader.i8.i876 ], [ 24, %bb.ao ] ; 2 uses
  %i.mf = phi i32 [ %i.ml, %.preheader.i8.i876 ], [ %.lcssa9861008, %bb.ao ] ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %i.me, i64 -1
  %i.mh = load i8, ptr %i.me, align 1, !tbaa !10
  %i.mi = zext i8 %i.mh to i32
  %i.mj = shl i32 %i.mi, %.04649.i11.i879
  %i.mk = or i32 %i.mj, %.050.i10.i878            ; 2 uses
  %i.ml = add nsw i32 %i.mf, -1
  %i.mm = add nsw i32 %.04649.i11.i879, -8
  %i.mn = icmp samesign ugt i32 %i.mf, 1
  br i1 %i.mn, label %.preheader.i8.i876, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit, !llvm.loop !35

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit: ; preds = %.preheader.i8.i876
  %scevgep1210 = getelementptr i8, ptr %.lcssa985990, i64 -1
  %i.mo = add nsw i32 %.lcssa9861008, -1
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = sub nsw i64 0, %i.mp
  %scevgep1211 = getelementptr i8, ptr %scevgep1210, i64 %i.mq
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split: ; preds = %bb.an, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit
  %.sink1304 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.mc, %bb.an ] ; 2 uses
  %.lcssa985989.ph = phi ptr [ %scevgep1211, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.mb, %bb.an ]
  %.1.i6.i873.ph = phi i32 [ %i.mk, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.ma, %bb.an ]
  store i32 %.sink1304, ptr %i.bk, align 4, !tbaa !28
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split, %bb.ao
  %.lcssa9861007 = phi i32 [ %.lcssa9861008, %bb.ao ], [ %.sink1304, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %.lcssa985989 = phi ptr [ %.lcssa985990, %bb.ao ], [ %.lcssa985989.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %.1.i6.i873 = phi i32 [ 0, %bb.ao ], [ %.1.i6.i873.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %i.mr = insertelement <4 x i32> poison, i32 %.1.i6.i873, i64 0
  %i.ms = shufflevector <4 x i32> %i.mr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mt = lshr <4 x i32> %i.ms, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.mu = and <4 x i32> %i.mt, splat (i32 255)    ; 2 uses
  %i.mv = icmp samesign ugt <4 x i32> %i.mu, splat (i32 143)
  %i.mw = sext <4 x i1> %i.mv to <4 x i32>        ; 2 uses
  %i.mx = extractelement <4 x i32> %i.mw, i64 3
  %i.my = icmp ne i32 %i.mx, 0
  %i.mz = zext i1 %i.my to i8                     ; 2 uses
  %i.na = shufflevector <4 x i32> %i.mw, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %.neg.i874 = sext i1 %i.lb to i32
  %i.nb = insertelement <4 x i32> %i.na, i32 %.neg.i874, i64 0
  %i.nc = and <4 x i32> %i.mt, splat (i32 127)
  %i.nd = icmp eq <4 x i32> %i.nc, splat (i32 127)
  %.neg.i7.i875 = ashr <4 x i32> %i.nb, splat (i32 31)
  %i.ne = add nsw <4 x i32> %.neg.i7.i875, splat (i32 8)
  %i.nf = select <4 x i1> %i.nd, <4 x i32> %i.ne, <4 x i32> splat (i32 8) ; 2 uses
  %i.ng = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.nf, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nh = add nsw <4 x i32> %i.nf, %i.ng          ; 2 uses
  %i.ni = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.nh, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.nj = add nsw <4 x i32> %i.nh, %i.ni          ; 2 uses
  %i.nk = extractelement <4 x i32> %i.nj, i64 3
  %i.nl = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.nj, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nm = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.mu, <4 x i32> %i.nl) ; 2 uses
  %25 = shufflevector <4 x i32> %i.nm, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %26 = or <4 x i32> %i.nm, %25                   ; 2 uses
  %shift1644 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1645 = or <4 x i32> %26, %shift1644
  %27 = extractelement <4 x i32> %foldExtExtBinop1645, i64 0
  %i.nn = zext i32 %27 to i64
  store i8 %i.mz, ptr %i.bl, align 8, !tbaa !29
  %i.no = zext nneg i32 %i.lw to i64
  %i.np = shl nuw nsw i64 %i.nn, %i.no
  %i.nq = or i64 %i.np, %i.lv
  %i.nr = add i32 %i.nk, %i.lw
  br label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884: ; preds = %bb.ai, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872
  %i.ns = phi i8 [ %i.mz, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.lc, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %i.jm, %bb.ai ]
  %.lcssa9861006 = phi i32 [ %.lcssa9861007, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %.lcssa9861008, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.lcssa9861009, %bb.ai ]
  %i.nt = phi i32 [ %i.nr, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.lw, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %i.jn, %bb.ai ]
  %.lcssa985988 = phi ptr [ %.lcssa985989, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %.lcssa985990, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.lcssa985991992, %bb.ai ] ; 2 uses
  %i.nu = phi i64 [ %i.nq, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.lv, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.pre.i8681004, %bb.ai ] ; 2 uses
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = and i32 %i.nv, 127
  %i.nx = add nuw nsw i32 %i.nw, %i.jz
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.ny
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !21 ; 2 uses
  %i.ob = icmp eq i32 %i.jz, 0
  br i1 %i.ob, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884
  %i.oc = add nsw i32 %.5720996, -2               ; 2 uses
  %i.od = icmp eq i32 %i.oc, -1
  %i.oe = select i1 %i.od, i16 %i.oa, i16 0       ; 2 uses
  %i.of = icmp slt i32 %.5720996, 2
  br i1 %i.of, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.og = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884
  %.0741 = phi i16 [ %i.oe, %bb.aq ], [ %i.oe, %bb.ap ], [ %i.oa, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884 ] ; 2 uses
  %.6721 = phi i32 [ %i.og, %bb.aq ], [ %i.oc, %bb.ap ], [ %.5720996, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884 ] ; 3 uses
  store i16 %.0741, ptr %.0739994, align 2, !tbaa !21
  %i.oh = or disjoint i32 %.0740993, 2
  %i.oi = zext i16 %.0741 to i32                  ; 4 uses
  %i.oj = shl nuw nsw i32 %i.oi, 2
  %i.ok = shl nuw nsw i32 %i.oi, 1
  %i.ol = or i32 %i.oj, %i.ok
  %i.om = and i32 %i.ol, 256
  %i.on = load i16, ptr %i.jo, align 2, !tbaa !21
  %i.oo = and i16 %i.on, 128
  %i.op = zext nneg i16 %i.oo to i32
  %i.oq = shl i16 %i.jv, 2
  %i.or = and i16 %i.oq, 640
  %i.os = zext nneg i16 %i.or to i32
  %i.ot = getelementptr inbounds [2 x i8], ptr %.0739994, i64 %i.bn
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !21
  %i.ov = shl i16 %i.ou, 4
  %i.ow = and i16 %i.ov, 512
  %i.ox = zext nneg i16 %i.ow to i32
  %i.oy = or disjoint i32 %i.om, %i.os
  %i.oz = or i32 %i.oy, %i.op
  %i.pa = or i32 %i.oz, %i.ox                     ; 2 uses
  %i.pb = and i32 %i.oi, 7                        ; 2 uses
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = lshr i64 %i.nu, %i.pc                   ; 2 uses
  %i.pe = trunc i64 %i.pd to i32
  %i.pf = and i32 %i.pe, 127
  %i.pg = or disjoint i32 %i.pa, %i.pf
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.ph
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !21 ; 2 uses
  %i.pk = icmp eq i32 %i.pa, 0
  %i.pl = icmp ult i32 %i.oh, %6                  ; 2 uses
  %or.cond858 = select i1 %i.pk, i1 %i.pl, i1 false
  br i1 %or.cond858, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.pm = add nsw i32 %.6721, -2                  ; 2 uses
  %i.pn = icmp eq i32 %i.pm, -1
  %i.po = select i1 %i.pn, i16 %i.pj, i16 0       ; 2 uses
  %i.pp = icmp slt i32 %.6721, 2
  br i1 %i.pp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.pq = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %.0742 = phi i16 [ %i.po, %bb.at ], [ %i.po, %bb.as ], [ %i.pj, %bb.ar ]
  %.7722 = phi i32 [ %i.pq, %bb.at ], [ %i.pm, %bb.as ], [ %.6721, %bb.ar ] ; 2 uses
  %i.pr = select i1 %i.pl, i16 %.0742, i16 0      ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.0739994, i64 4
  store i16 %i.pr, ptr %i.ps, align 2, !tbaa !21
  %i.pt = add i32 %.0740993, 4                    ; 2 uses
  %i.pu = zext i16 %i.pr to i32                   ; 4 uses
  %i.pv = shl nuw nsw i32 %i.pu, 2
  %i.pw = shl nuw nsw i32 %i.pu, 1
  %i.px = or i32 %i.pv, %i.pw
  %i.py = and i32 %i.px, 256
  %i.pz = load i16, ptr %i.ju, align 2, !tbaa !21
  %i.qa = and i16 %i.pz, 128
  %i.qb = zext nneg i16 %i.qa to i32
  %i.qc = or disjoint i32 %i.py, %i.qb
  %i.qd = and i32 %i.pu, 7                        ; 2 uses
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = lshr i64 %i.pd, %i.qe                   ; 2 uses
  %i.qg = add nuw nsw i32 %i.pb, %i.qd
  %i.qh = trunc i64 %i.qf to i32
  %i.qi = shl nuw nsw i32 %i.oi, 3
  %i.qj = and i32 %i.qi, 64
  %i.qk = shl nuw nsw i32 %i.pu, 4
  %i.ql = and i32 %i.qk, 128
  %i.qm = or disjoint i32 %i.ql, %i.qj
  %i.qn = and i32 %i.qh, 63
  %i.qo = or disjoint i32 %i.qm, %i.qn
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl1E, i64 %i.qp
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !21
  %i.qs = zext i16 %i.qr to i32                   ; 5 uses
  %i.qt = and i32 %i.qs, 7                        ; 2 uses
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = lshr i64 %i.qf, %i.qu                   ; 2 uses
  %i.qw = add nuw nsw i32 %i.qg, %i.qt
  %i.qx = trunc i64 %i.qv to i32
  %i.qy = lshr i32 %i.qs, 3
  %i.qz = and i32 %i.qy, 15                       ; 3 uses
  %notmask = shl nsw i32 -1, %i.qz
  %i.ra = xor i32 %notmask, -1
  %i.rb = and i32 %i.qx, %i.ra                    ; 2 uses
  %i.rc = zext nneg i32 %i.qz to i64
  %i.rd = lshr i64 %i.qv, %i.rc                   ; 2 uses
  store i64 %i.rd, ptr %.phi.trans.insert.i867, align 8, !tbaa !30
  %i.re = add nuw nsw i32 %i.qw, %i.qz
  %i.rf = sub i32 %i.nt, %i.re                    ; 3 uses
  store i32 %i.rf, ptr %i.bj, align 8, !tbaa !19
  %i.rg = lshr i32 %i.qs, 7
  %i.rh = and i32 %i.rg, 7                        ; 2 uses
  %i.ri = lshr i32 %i.qs, 10
  %i.rj = and i32 %i.ri, 7
  %i.rk = shl nuw nsw i32 255, %i.rh
  %i.rl = xor i32 %i.rk, -1
  %i.rm = and i32 %i.rb, %i.rl
  %i.rn = add nuw nsw i32 %i.rm, %i.rj
  %i.ro = trunc nuw i32 %i.rn to i16
  %i.rp = getelementptr inbounds nuw i8, ptr %.0739994, i64 2
  store i16 %i.ro, ptr %i.rp, align 2, !tbaa !21
  %i.rq = lshr i32 %i.qs, 13
  %i.rr = lshr i32 %i.rb, %i.rh
  %i.rs = add nuw nsw i32 %i.rr, %i.rq
  %i.rt = trunc nuw i32 %i.rs to i16
  %i.ru = getelementptr inbounds nuw i8, ptr %.0739994, i64 6
  store i16 %i.rt, ptr %i.ru, align 2, !tbaa !21
  %i.rv = getelementptr inbounds nuw i8, ptr %.0739994, i64 8 ; 2 uses
  %i.rw = icmp ult i32 %i.pt, %6
  br i1 %i.rw, label %bb.ai, label %._crit_edge999, !llvm.loop !36

bb.av:                                            ; preds = %._crit_edge1015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) %i.b, i8 0, i64 4224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.rx = sub nsw i32 %4, %i.ap
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_16frwd_struct_avx2EPKhi(ptr noundef %12, ptr noundef nonnull %0, i32 noundef %i.rx)
  %i.ry = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %i.rz = shufflevector <8 x i32> %i.ry, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  store i32 2, ptr %i.b, align 16, !tbaa !23
  br i1 %.not1159, label %.critedge.preheader, label %.lr.ph1047

.lr.ph1047:                                       ; preds = %bb.av
  %i.sa = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.sd = sub nuw nsw i32 29, %2
  %.splatinsert.i.i = insertelement <8 x i32> poison, i32 %i.sd, i64 0
  %.splat.i.i = shufflevector <8 x i32> %.splatinsert.i.i, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.se = zext i32 %8 to i64
  br label %bb.aw

.critedge.preheader:                              ; preds = %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit, %bb.av
  br i1 %i.be, label %.lr.ph1059, label %.critedge860

.lr.ph1059:                                       ; preds = %.critedge.preheader
  %i.sf = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.si = sub nuw nsw i32 29, %2
  %.splatinsert.i.i891 = insertelement <8 x i32> poison, i32 %i.si, i64 0
  %.splat.i.i892 = shufflevector <8 x i32> %.splatinsert.i.i891, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sj = zext i32 %8 to i64
  br label %bb.bd

bb.aw:                                            ; preds = %.lr.ph1047, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit
  %i.sk = phi i32 [ 2, %.lr.ph1047 ], [ %i.yv, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ]
  %.07431045 = phi ptr [ %i.a, %.lr.ph1047 ], [ %i.ys, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 2 uses
  %.07441044 = phi ptr [ %i.b, %.lr.ph1047 ], [ %i.yt, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 2 uses
  %.07461043 = phi ptr [ %1, %.lr.ph1047 ], [ %i.yu, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 3 uses
  %.07721042 = phi i32 [ 0, %.lr.ph1047 ], [ %i.yr, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ]
  %i.sl = load i64, ptr %.07431045, align 1, !tbaa !10
  %i.sm = insertelement <4 x i64> poison, i64 %i.sl, i64 0
  %i.sn = bitcast <4 x i64> %i.sm to <8 x i32>
  %i.so = shufflevector <8 x i32> %i.sn, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.sp = lshr <8 x i32> %i.so, splat (i32 16)    ; 3 uses
  %i.sq = icmp sgt <8 x i32> %i.sp, %i.rz
  %i.sr = sext <8 x i1> %i.sq to <8 x i32>
  %i.ss = bitcast <8 x i32> %i.sr to <4 x i64>    ; 2 uses
  %i.st = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ss, <4 x i64> %i.ss)
end_hunk_0
begin_hunk_1_@_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii:bb.a
  %i.bd = icmp eq i64 %spec.select.2, 255         ; 2 uses
  %i.be = zext i1 %i.bd to i8
  store i8 %i.be, ptr %i.h, align 8, !tbaa !63
  %exitcond.not.2 = icmp eq i32 %i.p, 1
  br i1 %exitcond.not.2, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ugt i32 %3, 4             ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.bh = zext i8 %i.bg to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = phi i64 [ %i.bh, %bb.j ], [ 255, %bb.i ] ; 2 uses
  %i.bj = icmp eq i32 %i.aw, 1
  %i.bk = or i64 %i.bi, 15
  %spec.select.3 = select i1 %i.bj, i64 %i.bk, i64 %i.bi ; 2 uses
  %i.bl = add nsw i32 %3, -5
  store i32 %i.bl, ptr %i.j, align 4, !tbaa !64
  %i.bm = zext i1 %i.bf to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bm
  store ptr %i.bn, ptr %0, align 8, !tbaa !60
  %narrow.3 = select i1 %i.bd, i8 7, i8 8         ; 2 uses
  %i.bo = zext nneg i8 %narrow.3 to i64
  %i.bp = shl i64 %i.bb, %i.bo
  %i.bq = or i64 %i.bp, %spec.select.3            ; 2 uses
  store i64 %i.bq, ptr %i.g, align 8, !tbaa !62
  %narrow42 = add nuw nsw i8 %narrow41, %narrow.3
  %i.br = zext nneg i8 %narrow42 to i32           ; 2 uses
  store i32 %i.br, ptr %i.f, align 8, !tbaa !61
  %i.bs = icmp eq i64 %spec.select.3, 255
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %i.h, align 8, !tbaa !63
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL8rev_initEPNS0_10rev_structEPhii(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 25)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 2, 4080) %3) unnamed_addr #5 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -2
  %i.d = add nsw i32 %3, -2                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !28
  %i.f = getelementptr i8, ptr %i.b, i64 -3       ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !65
  %i.g = load i8, ptr %i.c, align 1, !tbaa !10    ; 2 uses
  %i.h = lshr i8 %i.g, 4
  %i.i = zext nneg i8 %i.h to i64                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !30
  %i.k = and i64 %i.i, 7
  %i.l = icmp eq i64 %i.k, 7
  %i.m = select i1 %i.l, i32 3, i32 4             ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = icmp ugt i8 %i.g, -113                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.q = zext i1 %i.o to i8                       ; 2 uses
  store i8 %i.q, ptr %i.p, align 8, !tbaa !29
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.t, 1
  %. = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.d) ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread41, label %.lr.ph

.thread41:                                        ; preds = %bb.a
  %i.v = sub nuw nsw i32 %i.d, %.
  br label %.loopexit.i.sink.split

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa99 = phi ptr [ %i.f, %.lr.ph ], [ %i.ci, %.lr.ph.1 ], [ %i.cv, %.lr.ph.2 ], [ %i.di, %.lr.ph.3 ] ; 2 uses
  %.lcssa98 = phi ptr [ %i.ci, %.lr.ph ], [ %i.cv, %.lr.ph.1 ], [ %i.di, %.lr.ph.2 ], [ %i.dv, %.lr.ph.3 ] ; 2 uses
  %.lcssa97 = phi i64 [ %i.cr, %.lr.ph ], [ %i.de, %.lr.ph.1 ], [ %i.dr, %.lr.ph.2 ], [ %i.ee, %.lr.ph.3 ] ; 4 uses
  %.lcssa96 = phi i32 [ %i.cs, %.lr.ph ], [ %i.df, %.lr.ph.1 ], [ %i.ds, %.lr.ph.2 ], [ %i.ef, %.lr.ph.3 ] ; 5 uses
  %.lcssa95 = phi i8 [ %i.cu, %.lr.ph ], [ %i.dh, %.lr.ph.1 ], [ %i.du, %.lr.ph.2 ], [ %i.eh, %.lr.ph.3 ] ; 4 uses
  %i.w = sub nsw i32 %i.d, %.                     ; 9 uses
  store i32 %i.w, ptr %i.e, align 4, !tbaa !28
  %i.x = icmp ugt i32 %.lcssa96, 32
  br i1 %i.x, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = icmp sgt i32 %i.w, 3
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %.lcssa99, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !23
  %i.ab = getelementptr inbounds i8, ptr %.lcssa99, i64 -5
  store ptr %i.ab, ptr %0, align 8, !tbaa !65
  %i.ac = add nsw i32 %i.w, -4
  br label %.loopexit.i.sink.split

bb.d:                                             ; preds = %bb.b
  %i.ad = icmp sgt i32 %i.w, 0
  br i1 %i.ad, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %bb.d
  %i.ae = add nsw i32 %3, -3
  %xtraiter = and i32 %i.w, 1
  %i.af = icmp eq i32 %i.ae, %.
  br i1 %i.af, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i32 %i.w, 2147483646
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %i.ag = phi ptr [ %.lcssa98, %.preheader.i.preheader.new ], [ %i.ap, %.preheader.i ] ; 3 uses
  %.050.i = phi i32 [ 0, %.preheader.i.preheader.new ], [ %i.at, %.preheader.i ]
  %.04649.i = phi i32 [ 24, %.preheader.i.preheader.new ], [ %i.av, %.preheader.i ] ; 3 uses
  %i.ah = phi i32 [ %i.w, %.preheader.i.preheader.new ], [ %i.au, %.preheader.i ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -1 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !65
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl i32 %i.ak, %.04649.i
  %i.am = or i32 %i.al, %.050.i
  %i.an = add nsw i32 %i.ah, -1
  store i32 %i.an, ptr %i.e, align 4, !tbaa !28
  %i.ao = add nsw i32 %.04649.i, -8
  %i.ap = getelementptr inbounds i8, ptr %i.ag, i64 -2 ; 3 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !65
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl i32 %i.ar, %i.ao
  %i.at = or i32 %i.as, %i.am                     ; 3 uses
  %i.au = add nsw i32 %i.ah, -2                   ; 3 uses
  store i32 %i.au, ptr %i.e, align 4, !tbaa !28
  %i.av = add nsw i32 %.04649.i, -16              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !66

.loopexit.i.sink.split:                           ; preds = %bb.c, %.thread41
  %.sink = phi i32 [ %i.v, %.thread41 ], [ %i.ac, %bb.c ]
  %.ph = phi i64 [ %i.i, %.thread41 ], [ %.lcssa97, %bb.c ]
  %.ph46 = phi i8 [ %i.q, %.thread41 ], [ %.lcssa95, %bb.c ]
  %.ph47 = phi i32 [ %i.m, %.thread41 ], [ %.lcssa96, %bb.c ]
  %.1.i.ph = phi i32 [ 0, %.thread41 ], [ %i.aa, %bb.c ]
  store i32 %.sink, ptr %i.e, align 4, !tbaa !28
  br label %.loopexit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi ptr [ %.lcssa98, %.preheader.i.preheader ], [ %i.ap, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.050.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %i.at, %.loopexit.i.loopexit.unr-lcssa ]
  %.04649.i.epil.init = phi i32 [ 24, %.preheader.i.preheader ], [ %i.av, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init101 = phi i32 [ %i.w, %.preheader.i.preheader ], [ %i.au, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod103 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.aw = getelementptr inbounds i8, ptr %.epil.init, i64 -1
  store ptr %i.aw, ptr %0, align 8, !tbaa !65
  %i.ax = load i8, ptr %.epil.init, align 1, !tbaa !10
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl i32 %i.ay, %.04649.i.epil.init
  %i.ba = or i32 %i.az, %.050.i.epil.init
  %i.bb = add nsw i32 %.epil.init101, -1
  store i32 %i.bb, ptr %i.e, align 4, !tbaa !28
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.loopexit.i.sink.split, %bb.d
  %i.bc = phi i64 [ %.ph, %.loopexit.i.sink.split ], [ %.lcssa97, %bb.d ], [ %.lcssa97, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa97, %.preheader.i.epil.preheader ]
  %i.bd = phi i8 [ %.ph46, %.loopexit.i.sink.split ], [ %.lcssa95, %bb.d ], [ %.lcssa95, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa95, %.preheader.i.epil.preheader ]
  %i.be = phi i32 [ %.ph47, %.loopexit.i.sink.split ], [ %.lcssa96, %bb.d ], [ %.lcssa96, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa96, %.preheader.i.epil.preheader ] ; 2 uses
  %.1.i = phi i32 [ %.1.i.ph, %.loopexit.i.sink.split ], [ 0, %bb.d ], [ %i.at, %.loopexit.i.loopexit.unr-lcssa ], [ %i.ba, %.preheader.i.epil.preheader ]
  %i.bf = insertelement <4 x i32> poison, i32 %.1.i, i64 0
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bh = lshr <4 x i32> %i.bg, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.bi = and <4 x i32> %i.bh, splat (i32 255)    ; 2 uses
  %i.bj = icmp samesign ugt <4 x i32> %i.bi, splat (i32 143)
  %i.bk = sext <4 x i1> %i.bj to <4 x i32>        ; 2 uses
  %i.bl = extractelement <4 x i32> %i.bk, i64 3
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i8
  %i.bo = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.bp = zext nneg i8 %i.bd to i32
  %i.bq = sub nsw i32 0, %i.bp
  %i.br = insertelement <4 x i32> %i.bo, i32 %i.bq, i64 0
  %i.bs = and <4 x i32> %i.bh, splat (i32 127)
  %i.bt = icmp eq <4 x i32> %i.bs, splat (i32 127)
  %.neg.i = ashr <4 x i32> %i.br, splat (i32 31)
  %i.bu = add nsw <4 x i32> %.neg.i, splat (i32 8)
  %i.bv = select <4 x i1> %i.bt, <4 x i32> %i.bu, <4 x i32> splat (i32 8) ; 2 uses
  %i.bw = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.bv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bx = add nsw <4 x i32> %i.bv, %i.bw          ; 2 uses
  %i.by = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.bx, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bz = add nsw <4 x i32> %i.bx, %i.by          ; 2 uses
  %i.ca = extractelement <4 x i32> %i.bz, i64 3
  %i.cb = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.bz, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cc = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.bi, <4 x i32> %i.cb) ; 2 uses
  %4 = shufflevector <4 x i32> %i.cc, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %5 = or <4 x i32> %i.cc, %4                     ; 2 uses
  %shift = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = or <4 x i32> %5, %shift
  %6 = extractelement <4 x i32> %foldExtExtBinop, i64 0
  %i.cd = zext i32 %6 to i64
  store i8 %i.bn, ptr %i.p, align 8, !tbaa !29
  %i.ce = zext nneg i32 %i.be to i64
  %i.cf = shl nuw i64 %i.cd, %i.ce
  %i.cg = or i64 %i.cf, %i.bc
  store i64 %i.cg, ptr %i.j, align 8, !tbaa !30
  %i.ch = add i32 %i.ca, %i.be
  store i32 %i.ch, ptr %i.n, align 8, !tbaa !19
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit: ; preds = %._crit_edge, %.loopexit.i
  ret void

.lr.ph:                                           ; preds = %bb.a
  %i.ci = getelementptr i8, ptr %i.b, i64 -4      ; 4 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !65
  %i.cj = load i8, ptr %i.f, align 1, !tbaa !10   ; 2 uses
  %i.ck = zext i8 %i.cj to i64                    ; 2 uses
  %i.cl = and i64 %i.ck, 127
  %i.cm = icmp eq i64 %i.cl, 127
  %i.cn = select i1 %i.o, i1 %i.cm, i1 false
  %i.co = select i1 %i.cn, i32 7, i32 8
  %i.cp = zext nneg i32 %i.m to i64
  %i.cq = shl nuw nsw i64 %i.ck, %i.cp
  %i.cr = or i64 %i.cq, %i.i                      ; 3 uses
  store i64 %i.cr, ptr %i.j, align 8, !tbaa !30
  %i.cs = add nuw nsw i32 %i.co, %i.m             ; 4 uses
  store i32 %i.cs, ptr %i.n, align 8, !tbaa !19
  %i.ct = icmp ugt i8 %i.cj, -113                 ; 2 uses
  %i.cu = zext i1 %i.ct to i8                     ; 2 uses
  store i8 %i.cu, ptr %i.p, align 8, !tbaa !29
  %exitcond.not = icmp eq i32 %., 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.cv = getelementptr i8, ptr %i.b, i64 -5      ; 4 uses
  store ptr %i.cv, ptr %0, align 8, !tbaa !65
  %i.cw = load i8, ptr %i.ci, align 1, !tbaa !10  ; 2 uses
  %i.cx = zext i8 %i.cw to i64                    ; 2 uses
  %i.cy = and i64 %i.cx, 127
  %i.cz = icmp eq i64 %i.cy, 127
  %i.da = select i1 %i.ct, i1 %i.cz, i1 false
  %i.db = select i1 %i.da, i32 7, i32 8
  %i.dc = zext nneg i32 %i.cs to i64
  %i.dd = shl nuw nsw i64 %i.cx, %i.dc
  %i.de = or i64 %i.dd, %i.cr                     ; 3 uses
  store i64 %i.de, ptr %i.j, align 8, !tbaa !30
  %i.df = add nuw nsw i32 %i.db, %i.cs            ; 4 uses
  store i32 %i.df, ptr %i.n, align 8, !tbaa !19
  %i.dg = icmp ugt i8 %i.cw, -113                 ; 2 uses
  %i.dh = zext i1 %i.dg to i8                     ; 2 uses
  store i8 %i.dh, ptr %i.p, align 8, !tbaa !29
  %exitcond.not.1 = icmp eq i32 %., 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.di = getelementptr i8, ptr %i.b, i64 -6      ; 4 uses
  store ptr %i.di, ptr %0, align 8, !tbaa !65
  %i.dj = load i8, ptr %i.cv, align 1, !tbaa !10  ; 2 uses
  %i.dk = zext i8 %i.dj to i64                    ; 2 uses
  %i.dl = and i64 %i.dk, 127
  %i.dm = icmp eq i64 %i.dl, 127
  %i.dn = select i1 %i.dg, i1 %i.dm, i1 false
  %i.do = select i1 %i.dn, i32 7, i32 8
  %i.dp = zext nneg i32 %i.df to i64
  %i.dq = shl i64 %i.dk, %i.dp
  %i.dr = or i64 %i.dq, %i.de                     ; 3 uses
  store i64 %i.dr, ptr %i.j, align 8, !tbaa !30
  %i.ds = add nuw nsw i32 %i.do, %i.df            ; 4 uses
  store i32 %i.ds, ptr %i.n, align 8, !tbaa !19
  %i.dt = icmp ugt i8 %i.dj, -113                 ; 2 uses
  %i.du = zext i1 %i.dt to i8                     ; 2 uses
  store i8 %i.du, ptr %i.p, align 8, !tbaa !29
  %exitcond.not.2 = icmp eq i32 %., 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.dv = getelementptr i8, ptr %i.b, i64 -7      ; 2 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !65
  %i.dw = load i8, ptr %i.di, align 1, !tbaa !10  ; 2 uses
  %i.dx = zext i8 %i.dw to i64                    ; 2 uses
  %i.dy = and i64 %i.dx, 127
  %i.dz = icmp eq i64 %i.dy, 127
  %i.ea = select i1 %i.dt, i1 %i.dz, i1 false
  %i.eb = select i1 %i.ea, i32 7, i32 8
  %i.ec = zext nneg i32 %i.ds to i64
  %i.ed = shl i64 %i.dx, %i.ec
  %i.ee = or i64 %i.ed, %i.dr                     ; 2 uses
  store i64 %i.ee, ptr %i.j, align 8, !tbaa !30
  %i.ef = add nuw nsw i32 %i.eb, %i.ds            ; 2 uses
  store i32 %i.ef, ptr %i.n, align 8, !tbaa !19
  %i.eg = icmp ugt i8 %i.dw, -113
  %i.eh = zext i1 %i.eg to i8                     ; 2 uses
  store i8 %i.eh, ptr %i.p, align 8, !tbaa !29
  br label %._crit_edge
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 128) i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 3 uses
  %i.f = icmp slt i32 %i.e, 6
  br i1 %i.f, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !62
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64   ; 9 uses
  %i.i = icmp sgt i32 %i.h, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.l, ptr %0, align 8, !tbaa !60
  %i.m = add nsw i32 %i.h, -4
  br label %.sink.split.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %i.h, 0
  br i1 %i.n, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.h, 1
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !60 ; 3 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.o = add nsw i32 %i.h, -1                     ; 3 uses
  %xtraiter = and i32 %i.o, 1
  %i.p = icmp eq i32 %i.h, 2
  br i1 %i.p, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.o, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.q = phi ptr [ %.pre.i.i, %.lr.ph.i.i.preheader.new ], [ %i.ac, %.lr.ph.i.i ] ; 3 uses
  %.058.i.i = phi i32 [ -1, %.lr.ph.i.i.preheader.new ], [ %i.aj, %.lr.ph.i.i ]
  %.05357.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.al, %.lr.ph.i.i ] ; 5 uses
  %i.r = phi i32 [ %i.h, %.lr.ph.i.i.preheader.new ], [ %i.ak, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !60
  %i.t = load i8, ptr %i.q, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i32
  %i.v = shl i32 255, %.05357.i.i
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %.058.i.i, %i.w
  %i.y = shl i32 %i.u, %.05357.i.i
  %i.z = or i32 %i.y, %i.x
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.g, align 4, !tbaa !64
  %i.ab = or disjoint i32 %.05357.i.i, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 4 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !60
  %i.ad = load i8, ptr %i.s, align 1, !tbaa !10
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl i32 65280, %.05357.i.i
  %i.ag = xor i32 %i.af, -1
  %i.ah = and i32 %i.z, %i.ag
  %i.ai = shl i32 %i.ae, %i.ab
  %i.aj = or i32 %i.ai, %i.ah                     ; 3 uses
  %i.ak = add nsw i32 %i.r, -2                    ; 3 uses
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !64
  %i.al = add nuw nsw i32 %.05357.i.i, 16         ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !67

._crit_edge.i.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi ptr [ %.pre.i.i, %.lr.ph.i.i.preheader ], [ %i.ac, %._crit_edge.i.loopexit.i.unr-lcssa ] ; 2 uses
  %.058.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.preheader ], [ %i.aj, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %.05357.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.al, %._crit_edge.i.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init18 = phi i32 [ %i.h, %.lr.ph.i.i.preheader ], [ %i.ak, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.am = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !60
  %i.an = load i8, ptr %.epil.init, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl i32 255, %.05357.i.i.epil.init
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %.058.i.i.epil.init, %i.aq
end_hunk_1
begin_hunk_2_@_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E:bb.a

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = bitcast <2 x i64> %i.at to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit

_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit: ; preds = %bb.b, %._crit_edge.loopexit.i
  %.pre-phi.i = phi <16 x i8> [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.s, %bb.b ]
  %.073.lcssa.i = phi i32 [ %i.ac, %._crit_edge.loopexit.i ], [ 128, %bb.b ] ; 2 uses
  %.0.lcssa.i = phi <2 x i64> [ %i.at, %._crit_edge.loopexit.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.au = lshr i32 %i.w, 15                       ; 2 uses
  %i.av = lshr i32 %i.b, 3
  %i.aw = and i32 %i.b, 7                         ; 3 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %i.az = shufflevector <2 x i64> %i.ay, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ba = shl <2 x i64> %.0.lcssa.i, %i.az
  %i.bb = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bc = bitcast <16 x i8> %i.bb to <2 x i64>
  %i.bd = sub nuw nsw i32 64, %i.aw
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %i.bg = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.bc, <2 x i64> %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bi = zext nneg i32 %i.av to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi ; 2 uses
  %i.bk = load <2 x i64>, ptr %i.bj, align 1, !tbaa !10
  %i.bl = or <2 x i64> %i.ba, %i.bg
  %i.bm = or <2 x i64> %i.bl, %i.bk
  store <2 x i64> %i.bm, ptr %i.bj, align 1, !tbaa !10
  %i.bn = sub nuw nsw i32 128, %i.aw
  %i.bo = tail call i32 @llvm.smin.i32(i32 %.073.lcssa.i, i32 %i.bn) ; 2 uses
  %i.bp = load i32, ptr %i.a, align 8, !tbaa !37
  %i.bq = add nsw i32 %i.bo, 7
  %i.br = add i32 %i.bq, %i.bp
  %i.bs = lshr i32 %i.br, 3
  %i.bt = bitcast <2 x i64> %.0.lcssa.i to <8 x i16>
  %i.bu = extractelement <8 x i16> %i.bt, i64 7
  %i.bv = zext i16 %i.bu to i32
  %i.bw = add nsw i32 %i.bo, -112
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = trunc i32 %i.bx to i8
  %i.bz = zext nneg i32 %i.bs to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bz
  store i8 %i.by, ptr %i.ca, align 1, !tbaa !10
  %i.cb = load i32, ptr %i.a, align 8, !tbaa !37
  %i.cc = add i32 %i.cb, %.073.lcssa.i            ; 4 uses
  store i32 %i.cc, ptr %i.a, align 8, !tbaa !37
  store i32 %i.au, ptr %i.y, align 4, !tbaa !53
  %i.cd = icmp ult i32 %i.cc, 129
  br i1 %i.cd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit
  %i.ce = load <2 x i64>, ptr %i.l, align 1, !tbaa !10
  %i.cf = load i32, ptr %i.f, align 8, !tbaa !52  ; 2 uses
  %spec.select.i5 = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 16) ; 3 uses
  %i.cg = trunc i32 %spec.select.i5 to i8
  %i.ch = insertelement <16 x i8> poison, i8 %i.cg, i64 0
  %i.ci = shufflevector <16 x i8> %i.ch, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cj = sext i32 %spec.select.i5 to i64
  %i.ck = getelementptr inbounds i8, ptr %i.l, i64 %i.cj
  store ptr %i.ck, ptr %0, align 8, !tbaa !70
  %i.cl = sub nsw i32 %i.cf, %spec.select.i5
  store i32 %i.cl, ptr %i.f, align 8, !tbaa !52
  %i.cm = icmp sgt <16 x i8> %i.ci, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.cn = xor <16 x i1> %i.cm, splat (i1 true)
  %i.co = sext <16 x i1> %i.cn to <16 x i8>
  %i.cp = bitcast <16 x i8> %i.co to <2 x i64>
  %i.cq = or <2 x i64> %i.ce, %i.cp               ; 3 uses
  %i.cr = bitcast <2 x i64> %i.cq to <16 x i8>    ; 2 uses
  %i.cs = icmp eq <16 x i8> %i.cr, splat (i8 -1)
  %i.ct = and <16 x i1> %i.cm, %i.cs
  %i.cu = bitcast <16 x i1> %i.ct to i16
  %i.cv = zext i16 %i.cu to i32                   ; 2 uses
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %.masked = and i32 %i.cw, 65534
  %i.cx = or disjoint i32 %.masked, %i.au         ; 2 uses
  %.not76.i6 = icmp eq i32 %i.cx, 0
  br i1 %.not76.i6, label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit17, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.c, %.lr.ph.i7
  %.079.i8 = phi <2 x i64> [ %i.dp, %.lr.ph.i7 ], [ %i.cq, %bb.c ] ; 2 uses
  %.07378.i9 = phi i32 [ %i.cy, %.lr.ph.i7 ], [ 128, %bb.c ]
  %.07477.i10 = phi i32 [ %i.db, %.lr.ph.i7 ], [ %i.cx, %bb.c ] ; 3 uses
  %i.cy = add nsw i32 %.07378.i9, -1              ; 2 uses
  %i.cz = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07477.i10, i1 true) ; 2 uses
  %i.da = lshr exact i32 -2147483648, %i.cz       ; 2 uses
  %i.db = xor i32 %i.da, %.07477.i10
  %i.dc = trunc nuw nsw i32 %i.cz to i8
  %i.dd = xor i8 %i.dc, 31
  %i.de = insertelement <16 x i8> poison, i8 %i.dd, i64 0
  %i.df = shufflevector <16 x i8> %i.de, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dg = icmp samesign ult <16 x i8> %i.df, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.dh = sext <16 x i1> %i.dg to <16 x i8>       ; 2 uses
  %i.di = bitcast <16 x i8> %i.dh to <2 x i64>
  %i.dj = and <2 x i64> %.079.i8, %i.di           ; 2 uses
  %i.dk = shufflevector <2 x i64> %i.dj, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.dl = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.dk, <2 x i64> %i.dj, <2 x i64> splat (i64 63))
  %i.dm = bitcast <16 x i8> %i.dh to <2 x i64>
  %i.dn = xor <2 x i64> %i.dm, splat (i64 -1)
  %i.do = and <2 x i64> %.079.i8, %i.dn
  %i.dp = or <2 x i64> %i.dl, %i.do               ; 3 uses
  %.not.i11 = icmp eq i32 %i.da, %.07477.i10
  br i1 %.not.i11, label %._crit_edge.loopexit.i12, label %.lr.ph.i7, !llvm.loop !71

._crit_edge.loopexit.i12:                         ; preds = %.lr.ph.i7
  %.pre.i13 = bitcast <2 x i64> %i.dp to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit17

_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit17: ; preds = %bb.c, %._crit_edge.loopexit.i12
  %.pre-phi.i14 = phi <16 x i8> [ %.pre.i13, %._crit_edge.loopexit.i12 ], [ %i.cr, %bb.c ]
  %.073.lcssa.i15 = phi i32 [ %i.cy, %._crit_edge.loopexit.i12 ], [ 128, %bb.c ] ; 2 uses
  %.0.lcssa.i16 = phi <2 x i64> [ %i.dp, %._crit_edge.loopexit.i12 ], [ %i.cq, %bb.c ] ; 2 uses
  %i.dq = lshr i32 %i.cv, 15
  %i.dr = lshr i32 %i.cc, 3
  %i.ds = and i32 %i.cc, 7                        ; 3 uses
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = insertelement <2 x i64> poison, i64 %i.dt, i64 0
  %i.dv = shufflevector <2 x i64> %i.du, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dw = shl <2 x i64> %.0.lcssa.i16, %i.dv
  %i.dx = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i14, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dy = bitcast <16 x i8> %i.dx to <2 x i64>
  %i.dz = sub nuw nsw i32 64, %i.ds
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %i.ec = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.dy, <2 x i64> %i.eb)
  %i.ed = zext nneg i32 %i.dr to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ed ; 2 uses
  %i.ef = load <2 x i64>, ptr %i.ee, align 1, !tbaa !10
  %i.eg = or <2 x i64> %i.dw, %i.ec
  %i.eh = or <2 x i64> %i.eg, %i.ef
  store <2 x i64> %i.eh, ptr %i.ee, align 1, !tbaa !10
  %i.ei = sub nuw nsw i32 128, %i.ds
  %i.ej = tail call i32 @llvm.smin.i32(i32 %.073.lcssa.i15, i32 %i.ei) ; 2 uses
  %i.ek = load i32, ptr %i.a, align 8, !tbaa !37
  %i.el = add nsw i32 %i.ej, 7
  %i.em = add i32 %i.el, %i.ek
  %i.en = lshr i32 %i.em, 3
  %i.eo = bitcast <2 x i64> %.0.lcssa.i16 to <8 x i16>
  %i.ep = extractelement <8 x i16> %i.eo, i64 7
  %i.eq = zext i16 %i.ep to i32
  %i.er = add nsw i32 %i.ej, -112
  %i.es = lshr i32 %i.eq, %i.er
  %i.et = trunc i32 %i.es to i8
  %i.eu = zext nneg i32 %i.en to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.eu
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !10
  %i.ew = load i32, ptr %i.a, align 8, !tbaa !37
  %i.ex = add i32 %i.ew, %.073.lcssa.i15
  store i32 %i.ex, ptr %i.a, align 8, !tbaa !37
  store i32 %i.dq, ptr %i.y, align 4, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit, %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit17, %bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ez = load <2 x i64>, ptr %i.ey, align 8, !tbaa !10
  ret <2 x i64> %i.ez
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64>, <2 x i64>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64>, <2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.usub.sat.v16i16(<16 x i16>, <16 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse41.ptestz(<2 x i64>, <2 x i64>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16>, <8 x i16>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32>, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !5, i64 28}
!12 = !{!"_ZTSN4ojph5local10dec_mel_stE", !13, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !16, i64 24, !5, i64 28, !5, i64 32, !15, i64 40}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!12, !5, i64 32}
!18 = !{!12, !15, i64 40}
!19 = !{!20, !5, i64 16}
!20 = !{!"_ZTSN4ojph5local10rev_structE", !13, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !16, i64 24}
!21 = !{!22, !22, i64 0}
!22 = !{!"short", !6, i64 0}
!23 = !{!5, !5, i64 0}
!24 = distinct !{!24, !25, !26, !27}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!20, !5, i64 20}
!29 = !{!20, !16, i64 24}
!30 = !{!20, !15, i64 8}
!31 = distinct !{!31, !25, !26, !27}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !25, !26, !27}
!35 = distinct !{!35, !25, !26, !27}
!36 = distinct !{!36, !25}
!37 = !{!38, !5, i64 56}
!38 = !{!"_ZTSN4ojph5local16frwd_struct_avx2E", !13, i64 0, !6, i64 8, !5, i64 56, !5, i64 60, !5, i64 64}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !25}
!52 = !{!38, !5, i64 64}
!53 = !{!38, !5, i64 60}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !25, !26, !27}
!57 = distinct !{!57, !25, !26, !27}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, !25}
!60 = !{!12, !13, i64 0}
!61 = !{!12, !5, i64 16}
!62 = !{!12, !15, i64 8}
!63 = !{!12, !16, i64 24}
!64 = !{!12, !5, i64 20}
!65 = !{!20, !13, i64 0}
!66 = distinct !{!66, !25, !27}
!67 = distinct !{!67, !25}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!38, !13, i64 0}
!71 = distinct !{!71, !25}
!72 = !{!73}
!73 = distinct !{!73, !74}
!74 = distinct !{!74, !"LVerDomain"}
!75 = distinct !{!75, !25, !27, !26}
!76 = !{!77}
!77 = distinct !{!77, !74}
!78 = !{!"branch_weights", i32 4, i32 12}
!79 = distinct !{!79, !25, !27, !26}
!80 = distinct !{!80, !25, !27}
end_hunk_2
