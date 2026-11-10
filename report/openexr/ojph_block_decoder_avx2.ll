Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder_avx2?download=true
inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjb:bb.a

bb.h:                                             ; preds = %bb.g
  %.b835 = load i1, ptr @_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE11modify_code, align 1
  br i1 %.b835, label %bb.ej, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @_ZZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjbE11modify_code, align 1
  %i.t = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef 65541, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 1125, ptr noundef nonnull @.str.5)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1697 = phi i32 [ 1, %bb.l ], [ 1, %bb.k ], [ %.0696922, %bb.j ] ; 2 uses
  %i.ab = icmp ult i32 %4, 2
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !64
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
  store i32 0, ptr %i.aw, align 4, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 0, ptr %i.ax, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !18
  call fastcc void @_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii(ptr noundef %10, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call fastcc void @_ZN4ojph5localL8rev_initEPNS0_10rev_structEPhii(ptr noundef %11, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.ap)
  %i.az = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10) ; 2 uses
  %.promoted = load ptr, ptr %11, align 8         ; 2 uses
  %.not1155 = icmp eq i32 %6, 0                   ; 10 uses
  br i1 %.not1155, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %.promoted975 = load i32, ptr %i.ba, align 8, !tbaa !20
  %.phi.trans.insert.i.promoted = load i64, ptr %.phi.trans.insert.i, align 8
  %.promoted977 = load i32, ptr %i.bb, align 4
  %.promoted982 = load i8, ptr %i.bc, align 8
  br label %bb.r

._crit_edge:                                      ; preds = %bb.ag, %bb.q
  %.lcssa962967.lcssa = phi ptr [ %.promoted, %bb.q ], [ %.lcssa962964, %bb.ag ]
  %.0770.lcssa = phi ptr [ %i.a, %bb.q ], [ %i.iy, %bb.ag ] ; 2 uses
  %.0723.lcssa = phi i32 [ %i.az, %bb.q ], [ %.3726, %bb.ag ]
  store ptr %.lcssa962967.lcssa, ptr %11, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0770.lcssa, i64 2
  store i16 0, ptr %i.bd, align 2, !tbaa !66
  store i16 0, ptr %.0770.lcssa, align 2, !tbaa !66
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
  br label %bb.ah

bb.r:                                             ; preds = %.lr.ph, %bb.ag
  %i.bo = phi i8 [ %.promoted982, %.lr.ph ], [ %i.fe, %bb.ag ] ; 2 uses
  %.lcssa963981 = phi i32 [ %.promoted977, %.lr.ph ], [ %.lcssa963978, %bb.ag ] ; 7 uses
  %.pre.i976 = phi i64 [ %.phi.trans.insert.i.promoted, %.lr.ph ], [ %i.ie, %bb.ag ] ; 2 uses
  %i.bp = phi i32 [ %.promoted975, %.lr.ph ], [ %i.ig, %bb.ag ] ; 4 uses
  %.0723972 = phi i32 [ %i.az, %.lr.ph ], [ %.3726, %bb.ag ] ; 3 uses
  %.0731971 = phi i32 [ 0, %.lr.ph ], [ %i.gy, %bb.ag ] ; 2 uses
  %.0770970 = phi ptr [ %i.a, %.lr.ph ], [ %i.iy, %bb.ag ] ; 5 uses
  %.0771969 = phi i32 [ 0, %.lr.ph ], [ %i.gs, %bb.ag ] ; 2 uses
  %.lcssa962967968 = phi ptr [ %.promoted, %.lr.ph ], [ %.lcssa962964, %bb.ag ] ; 6 uses
  %i.bq = icmp ult i32 %i.bp, 32
  br i1 %i.bq, label %bb.s, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

bb.s:                                             ; preds = %bb.r
  %i.br = icmp sgt i32 %.lcssa963981, 3
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds i8, ptr %.lcssa962967968, i64 -3
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !21
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
  br i1 %i.cg, label %.preheader.i.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit, !llvm.loop !39

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit: ; preds = %.preheader.i.i
  %scevgep = getelementptr i8, ptr %.lcssa962967968, i64 -1
  %i.ch = add nsw i32 %.lcssa963981, -1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci
  %scevgep1202 = getelementptr i8, ptr %scevgep, i64 %i.cj
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.sink.split: ; preds = %bb.t, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit
  %.sink = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bv, %bb.t ] ; 2 uses
  %.lcssa962966.ph = phi ptr [ %scevgep1202, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bu, %bb.t ]
  %.1.i.i.ph = phi i32 [ %i.cd, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i.loopexit ], [ %i.bt, %bb.t ]
  store i32 %.sink, ptr %i.bb, align 4, !tbaa !25
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
  %16 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.da, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.db = add nsw <4 x i32> %i.da, %16            ; 2 uses
  %17 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.db, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.dc = add nsw <4 x i32> %i.db, %17            ; 2 uses
  %i.dd = extractelement <4 x i32> %i.dc, i64 3
  %18 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.dc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.de = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.cn, <4 x i32> %18)
  %i.df = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.de)
  %i.dg = zext i32 %i.df to i64
  store i8 %i.cs, ptr %i.bc, align 8, !tbaa !26
  %i.dh = zext nneg i32 %i.bp to i64
  %i.di = shl nuw nsw i64 %i.dg, %i.dh
  %i.dj = or i64 %i.di, %.pre.i976                ; 3 uses
  store i64 %i.dj, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  %i.dk = add i32 %i.dd, %i.bp                    ; 5 uses
  store i32 %i.dk, ptr %i.ba, align 8, !tbaa !20
  %i.dl = icmp ult i32 %i.dk, 32
  br i1 %i.dl, label %bb.v, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

bb.v:                                             ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i
  %i.dm = icmp sgt i32 %.lcssa963980, 3
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds i8, ptr %.lcssa962966, i64 -3
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !21
  %i.dp = getelementptr inbounds i8, ptr %.lcssa962966, i64 -4
  %i.dq = add nsw i32 %.lcssa963980, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split

bb.x:                                             ; preds = %bb.v
  %i.dr = icmp sgt i32 %.lcssa963980, 0
  br i1 %i.dr, label %.preheader.i8.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i

.preheader.i8.i:                                  ; preds = %bb.x, %.preheader.i8.i
  %i.ds = phi ptr [ %i.du, %.preheader.i8.i ], [ %.lcssa962966, %bb.x ] ; 2 uses
  %.050.i10.i = phi i32 [ %i.dy, %.preheader.i8.i ], [ 0, %bb.x ]
  %.04649.i11.i = phi i32 [ %i.ea, %.preheader.i8.i ], [ 24, %bb.x ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.preheader.i8.i ], [ %.lcssa963980, %bb.x ] ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -1
  %i.dv = load i8, ptr %i.ds, align 1, !tbaa !10
  %i.dw = zext i8 %i.dv to i32
  %i.dx = shl i32 %i.dw, %.04649.i11.i
  %i.dy = or i32 %i.dx, %.050.i10.i               ; 2 uses
  %i.dz = add nsw i32 %i.dt, -1
  %i.ea = add nsw i32 %.04649.i11.i, -8
  %i.eb = icmp samesign ugt i32 %i.dt, 1
  br i1 %i.eb, label %.preheader.i8.i, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit, !llvm.loop !40

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit: ; preds = %.preheader.i8.i
  %scevgep1203 = getelementptr i8, ptr %.lcssa962966, i64 -1
  %i.ec = add nsw i32 %.lcssa963980, -1
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %scevgep1204 = getelementptr i8, ptr %scevgep1203, i64 %i.ee
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split: ; preds = %bb.w, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit
  %.sink1296 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.dq, %bb.w ] ; 2 uses
  %.lcssa962965.ph = phi ptr [ %scevgep1204, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.dp, %bb.w ]
  %.1.i6.i.ph = phi i32 [ %i.dy, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.loopexit ], [ %i.do, %bb.w ]
  store i32 %.sink1296, ptr %i.bb, align 4, !tbaa !25
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split, %bb.x
  %.lcssa963979 = phi i32 [ %.lcssa963980, %bb.x ], [ %.sink1296, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %.lcssa962965 = phi ptr [ %.lcssa962966, %bb.x ], [ %.lcssa962965.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %.1.i6.i = phi i32 [ 0, %bb.x ], [ %.1.i6.i.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i.sink.split ]
  %i.ef = insertelement <4 x i32> poison, i32 %.1.i6.i, i64 0
  %i.eg = shufflevector <4 x i32> %i.ef, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eh = lshr <4 x i32> %i.eg, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.ei = and <4 x i32> %i.eh, splat (i32 255)    ; 2 uses
  %i.ej = icmp samesign ugt <4 x i32> %i.ei, splat (i32 143)
  %i.ek = sext <4 x i1> %i.ej to <4 x i32>        ; 2 uses
  %i.el = extractelement <4 x i32> %i.ek, i64 3
  %i.em = icmp ne i32 %i.el, 0
  %i.en = zext i1 %i.em to i8                     ; 2 uses
  %i.eo = shufflevector <4 x i32> %i.ek, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %.neg.i = sext i1 %i.cr to i32
  %i.ep = insertelement <4 x i32> %i.eo, i32 %.neg.i, i64 0
  %i.eq = and <4 x i32> %i.eh, splat (i32 127)
  %i.er = icmp eq <4 x i32> %i.eq, splat (i32 127)
  %.neg.i7.i = ashr <4 x i32> %i.ep, splat (i32 31)
  %i.es = add nsw <4 x i32> %.neg.i7.i, splat (i32 8)
  %i.et = select <4 x i1> %i.er, <4 x i32> %i.es, <4 x i32> splat (i32 8) ; 2 uses
  %19 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.et, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.eu = add nsw <4 x i32> %i.et, %19            ; 2 uses
  %20 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.eu, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ev = add nsw <4 x i32> %i.eu, %20            ; 2 uses
  %i.ew = extractelement <4 x i32> %i.ev, i64 3
  %21 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.ev, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ex = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.ei, <4 x i32> %21)
  %i.ey = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ex)
  %i.ez = zext i32 %i.ey to i64
  store i8 %i.en, ptr %i.bc, align 8, !tbaa !26
  %i.fa = zext nneg i32 %i.dk to i64
  %i.fb = shl nuw nsw i64 %i.ez, %i.fa
  %i.fc = or i64 %i.fb, %i.dj                     ; 2 uses
  store i64 %i.fc, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  %i.fd = add i32 %i.ew, %i.dk
  br label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit

_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit: ; preds = %bb.r, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i
  %i.fe = phi i8 [ %i.en, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.cs, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %i.bo, %bb.r ]
  %.lcssa963978 = phi i32 [ %.lcssa963979, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %.lcssa963980, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.lcssa963981, %bb.r ]
  %i.ff = phi i32 [ %i.fd, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.dk, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %i.bp, %bb.r ]
  %.lcssa962964 = phi ptr [ %.lcssa962965, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %.lcssa962966, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.lcssa962967968, %bb.r ] ; 2 uses
  %i.fg = phi i64 [ %i.fc, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i ], [ %i.dj, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i ], [ %.pre.i976, %bb.r ] ; 2 uses
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = and i32 %i.fh, 127
  %i.fj = add nuw nsw i32 %i.fi, %.0731971
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !66 ; 2 uses
  %i.fn = icmp eq i32 %.0731971, 0
  br i1 %i.fn, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit
  %i.fo = add nsw i32 %.0723972, -2               ; 2 uses
  %i.fp = icmp eq i32 %i.fo, -1
  %i.fq = select i1 %i.fp, i16 %i.fm, i16 0       ; 2 uses
  %i.fr = icmp slt i32 %.0723972, 2
  br i1 %i.fr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fs = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit
  %.0772 = phi i16 [ %i.fq, %bb.z ], [ %i.fq, %bb.y ], [ %i.fm, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit ] ; 2 uses
  %.1724 = phi i32 [ %i.fs, %bb.z ], [ %i.fo, %bb.y ], [ %.0723972, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit ] ; 3 uses
  store i16 %.0772, ptr %.0770970, align 2, !tbaa !66
  %i.ft = or disjoint i32 %.0771969, 2
  %i.fu = zext i16 %.0772 to i32                  ; 3 uses
  %i.fv = shl nuw nsw i32 %i.fu, 3                ; 2 uses
  %i.fw = and i32 %i.fv, 128
  %i.fx = shl nuw nsw i32 %i.fu, 2
  %i.fy = and i32 %i.fx, 896
  %i.fz = or i32 %i.fw, %i.fy                     ; 2 uses
  %i.ga = and i32 %i.fu, 7                        ; 2 uses
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = lshr i64 %i.fg, %i.gb                   ; 2 uses
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = and i32 %i.gd, 127
  %i.gf = or disjoint i32 %i.ge, %i.fz
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl0E, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !66 ; 2 uses
  %i.gj = icmp eq i32 %i.fz, 0
  %i.gk = icmp ult i32 %i.ft, %6                  ; 2 uses
  %or.cond857 = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %or.cond857, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gl = add nsw i32 %.1724, -2                  ; 2 uses
  %i.gm = icmp eq i32 %i.gl, -1
  %i.gn = select i1 %i.gm, i16 %i.gi, i16 0       ; 2 uses
  %i.go = icmp slt i32 %.1724, 2
  br i1 %i.go, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gp = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.0773 = phi i16 [ %i.gn, %bb.ac ], [ %i.gn, %bb.ab ], [ %i.gi, %bb.aa ]
  %.2725 = phi i32 [ %i.gp, %bb.ac ], [ %i.gl, %bb.ab ], [ %.1724, %bb.aa ] ; 3 uses
  %i.gq = select i1 %i.gk, i16 %.0773, i16 0      ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0770970, i64 4
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !66
  %i.gs = add i32 %.0771969, 4                    ; 2 uses
  %i.gt = zext i16 %i.gq to i32                   ; 4 uses
  %i.gu = shl nuw nsw i32 %i.gt, 3
  %i.gv = and i32 %i.gu, 128
  %i.gw = shl nuw nsw i32 %i.gt, 2
  %i.gx = and i32 %i.gw, 896
  %i.gy = or i32 %i.gv, %i.gx
  %i.gz = and i32 %i.gt, 7                        ; 2 uses
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = lshr i64 %i.gc, %i.ha                   ; 2 uses
  %i.hc = add nuw nsw i32 %i.ga, %i.gz
  %i.hd = trunc i64 %i.hb to i32
  %i.he = and i32 %i.fv, 64
  %i.hf = shl nuw nsw i32 %i.gt, 4
  %i.hg = and i32 %i.hf, 128
  %i.hh = or disjoint i32 %i.hg, %i.he            ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 192
  br i1 %i.hi, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.hj = add nsw i32 %.2725, -2                  ; 2 uses
  %i.hk = icmp eq i32 %i.hj, -1
  %i.hl = select i1 %i.hk, i32 256, i32 192       ; 2 uses
  %i.hm = icmp slt i32 %.2725, 2
  br i1 %i.hm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hn = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %.0774 = phi i32 [ %i.hl, %bb.af ], [ %i.hl, %bb.ae ], [ %i.hh, %bb.ad ]
  %.3726 = phi i32 [ %i.hn, %bb.af ], [ %i.hj, %bb.ae ], [ %.2725, %bb.ad ] ; 2 uses
  %i.ho = and i32 %i.hd, 63
  %i.hp = add nuw nsw i32 %.0774, %i.ho
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl0E, i64 %i.hq
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !66
  %i.ht = zext i16 %i.hs to i32                   ; 5 uses
  %i.hu = and i32 %i.ht, 7                        ; 2 uses
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = lshr i64 %i.hb, %i.hv                   ; 2 uses
  %i.hx = add nuw nsw i32 %i.hc, %i.hu
  %i.hy = trunc i64 %i.hw to i32
  %i.hz = lshr i32 %i.ht, 3
  %i.ia = and i32 %i.hz, 15                       ; 3 uses
  %notmask856 = shl nsw i32 -1, %i.ia
  %i.ib = xor i32 %notmask856, -1
  %i.ic = and i32 %i.hy, %i.ib                    ; 2 uses
  %i.id = zext nneg i32 %i.ia to i64
  %i.ie = lshr i64 %i.hw, %i.id                   ; 2 uses
  store i64 %i.ie, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  %i.if = add nuw nsw i32 %i.hx, %i.ia
  %i.ig = sub i32 %i.ff, %i.if                    ; 2 uses
  store i32 %i.ig, ptr %i.ba, align 8, !tbaa !20
  %i.ih = lshr i32 %i.ht, 7
  %i.ii = and i32 %i.ih, 7                        ; 2 uses
  %i.ij = lshr i32 %i.ht, 10
  %i.ik = and i32 %i.ij, 7
  %i.il = add nuw nsw i32 %i.ik, 1
  %i.im = shl nuw nsw i32 255, %i.ii
  %i.in = xor i32 %i.im, -1
  %i.io = and i32 %i.ic, %i.in
  %i.ip = add nuw nsw i32 %i.il, %i.io
  %i.iq = trunc nuw i32 %i.ip to i16
  %i.ir = getelementptr inbounds nuw i8, ptr %.0770970, i64 2
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !66
  %i.is = lshr i32 %i.ht, 13
  %i.it = add nuw nsw i32 %i.is, 1
  %i.iu = lshr i32 %i.ic, %i.ii
  %i.iv = add nuw nsw i32 %i.it, %i.iu
  %i.iw = trunc nuw i32 %i.iv to i16
  %i.ix = getelementptr inbounds nuw i8, ptr %.0770970, i64 6
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !66
  %i.iy = getelementptr inbounds nuw i8, ptr %.0770970, i64 8 ; 2 uses
  %i.iz = icmp ult i32 %i.gs, %6
  br i1 %i.iz, label %bb.r, label %._crit_edge, !llvm.loop !41

._crit_edge1015:                                  ; preds = %._crit_edge999, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.ja = icmp ugt i32 %2, 13
  br i1 %i.ja, label %bb.av, label %bb.bm

bb.ah:                                            ; preds = %.lr.ph1014, %._crit_edge999
  %.47271012 = phi i32 [ %.0723.lcssa, %.lr.ph1014 ], [ %.5728.lcssa, %._crit_edge999 ] ; 2 uses
  %.07751011 = phi i32 [ 2, %.lr.ph1014 ], [ %i.jg, %._crit_edge999 ] ; 2 uses
  %i.jb = lshr exact i32 %.07751011, 1
  %i.jc = mul i32 %i.jb, %i.au
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.jd ; 2 uses
  %.promoted987 = load ptr, ptr %11, align 8      ; 2 uses
  br i1 %.not1155, label %._crit_edge999, label %.lr.ph998

.lr.ph998:                                        ; preds = %bb.ah
  %.promoted1003 = load i32, ptr %i.bj, align 8, !tbaa !20
  %.phi.trans.insert.i867.promoted = load i64, ptr %.phi.trans.insert.i867, align 8
  %.promoted1005 = load i32, ptr %i.bk, align 4
  %.promoted1010 = load i8, ptr %i.bl, align 8
  br label %bb.ai

._crit_edge999:                                   ; preds = %bb.au, %bb.ah
  %.lcssa985991.lcssa = phi ptr [ %.promoted987, %bb.ah ], [ %.lcssa985988, %bb.au ]
  %.0776.lcssa = phi ptr [ %i.je, %bb.ah ], [ %i.rn, %bb.au ] ; 2 uses
  %.5728.lcssa = phi i32 [ %.47271012, %bb.ah ], [ %.7730, %bb.au ]
  store ptr %.lcssa985991.lcssa, ptr %11, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %.0776.lcssa, i64 2
  store i16 0, ptr %i.jf, align 2, !tbaa !66
  store i16 0, ptr %.0776.lcssa, align 2, !tbaa !66
  %i.jg = add i32 %.07751011, 2                   ; 2 uses
  %i.jh = icmp ult i32 %i.jg, %7
  br i1 %i.jh, label %bb.ah, label %._crit_edge1015, !llvm.loop !42

bb.ai:                                            ; preds = %.lr.ph998, %bb.au
  %i.ji = phi i8 [ %.promoted1010, %.lr.ph998 ], [ %i.nk, %bb.au ] ; 2 uses
  %.lcssa9861009 = phi i32 [ %.promoted1005, %.lr.ph998 ], [ %.lcssa9861006, %bb.au ] ; 7 uses
  %.pre.i8681004 = phi i64 [ %.phi.trans.insert.i867.promoted, %.lr.ph998 ], [ %i.qv, %bb.au ] ; 2 uses
  %i.jj = phi i32 [ %.promoted1003, %.lr.ph998 ], [ %i.qx, %bb.au ] ; 4 uses
  %.5728996 = phi i32 [ %.47271012, %.lr.ph998 ], [ %.7730, %bb.au ] ; 3 uses
  %.1732995 = phi i32 [ 0, %.lr.ph998 ], [ %i.pu, %bb.au ]
  %.0776994 = phi ptr [ %i.je, %.lr.ph998 ], [ %i.rn, %bb.au ] ; 8 uses
  %.0781993 = phi i32 [ 0, %.lr.ph998 ], [ %i.pl, %bb.au ] ; 2 uses
  %.lcssa985991992 = phi ptr [ %.promoted987, %.lr.ph998 ], [ %.lcssa985988, %bb.au ] ; 6 uses
  %i.jk = getelementptr inbounds [2 x i8], ptr %.0776994, i64 %i.bg ; 2 uses
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !66
  %i.jm = shl i16 %i.jl, 2
  %i.jn = and i16 %i.jm, 640
  %i.jo = zext nneg i16 %i.jn to i32
  %i.jp = or i32 %.1732995, %i.jo
  %i.jq = getelementptr inbounds [2 x i8], ptr %.0776994, i64 %i.bi ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !66 ; 2 uses
  %i.js = shl i16 %i.jr, 4
  %i.jt = and i16 %i.js, 512
  %i.ju = zext nneg i16 %i.jt to i32
  %i.jv = or i32 %i.jp, %i.ju                     ; 2 uses
  %i.jw = icmp ult i32 %i.jj, 32
  br i1 %i.jw, label %bb.aj, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

bb.aj:                                            ; preds = %bb.ai
  %i.jx = icmp sgt i32 %.lcssa9861009, 3
  br i1 %i.jx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jy = getelementptr inbounds i8, ptr %.lcssa985991992, i64 -3
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !21
  %i.ka = getelementptr inbounds i8, ptr %.lcssa985991992, i64 -4
  %i.kb = add nsw i32 %.lcssa9861009, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.kc = icmp sgt i32 %.lcssa9861009, 0
  br i1 %i.kc, label %.preheader.i.i880, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869

.preheader.i.i880:                                ; preds = %bb.al, %.preheader.i.i880
  %i.kd = phi ptr [ %i.kf, %.preheader.i.i880 ], [ %.lcssa985991992, %bb.al ] ; 2 uses
  %.050.i.i882 = phi i32 [ %i.kj, %.preheader.i.i880 ], [ 0, %bb.al ]
  %.04649.i.i883 = phi i32 [ %i.kl, %.preheader.i.i880 ], [ 24, %bb.al ] ; 2 uses
  %i.ke = phi i32 [ %i.kk, %.preheader.i.i880 ], [ %.lcssa9861009, %bb.al ] ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.kd, i64 -1
  %i.kg = load i8, ptr %i.kd, align 1, !tbaa !10
  %i.kh = zext i8 %i.kg to i32
  %i.ki = shl i32 %i.kh, %.04649.i.i883
  %i.kj = or i32 %i.ki, %.050.i.i882              ; 2 uses
  %i.kk = add nsw i32 %i.ke, -1
  %i.kl = add nsw i32 %.04649.i.i883, -8
  %i.km = icmp samesign ugt i32 %i.ke, 1
  br i1 %i.km, label %.preheader.i.i880, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit, !llvm.loop !43

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit: ; preds = %.preheader.i.i880
  %scevgep1205 = getelementptr i8, ptr %.lcssa985991992, i64 -1
  %i.kn = add nsw i32 %.lcssa9861009, -1
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = sub nsw i64 0, %i.ko
  %scevgep1206 = getelementptr i8, ptr %scevgep1205, i64 %i.kp
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split: ; preds = %bb.ak, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit
  %.sink1297 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.kb, %bb.ak ] ; 2 uses
  %.lcssa985990.ph = phi ptr [ %scevgep1206, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.ka, %bb.ak ]
  %.1.i.i870.ph = phi i32 [ %i.kj, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.loopexit ], [ %i.jz, %bb.ak ]
  store i32 %.sink1297, ptr %i.bk, align 4, !tbaa !25
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split, %bb.al
  %.lcssa9861008 = phi i32 [ %.lcssa9861009, %bb.al ], [ %.sink1297, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ] ; 7 uses
  %.lcssa985990 = phi ptr [ %.lcssa985991992, %bb.al ], [ %.lcssa985990.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ] ; 6 uses
  %.1.i.i870 = phi i32 [ 0, %bb.al ], [ %.1.i.i870.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869.sink.split ]
  %i.kq = insertelement <4 x i32> poison, i32 %.1.i.i870, i64 0
  %i.kr = shufflevector <4 x i32> %i.kq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ks = lshr <4 x i32> %i.kr, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.kt = and <4 x i32> %i.ks, splat (i32 255)    ; 2 uses
  %i.ku = icmp samesign ugt <4 x i32> %i.kt, splat (i32 143)
  %i.kv = sext <4 x i1> %i.ku to <4 x i32>        ; 2 uses
  %i.kw = extractelement <4 x i32> %i.kv, i64 3
  %i.kx = icmp ne i32 %i.kw, 0                    ; 2 uses
  %i.ky = zext i1 %i.kx to i8                     ; 2 uses
  %i.kz = shufflevector <4 x i32> %i.kv, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.la = zext nneg i8 %i.ji to i32
  %i.lb = sub nsw i32 0, %i.la
  %i.lc = insertelement <4 x i32> %i.kz, i32 %i.lb, i64 0
  %i.ld = and <4 x i32> %i.ks, splat (i32 127)
  %i.le = icmp eq <4 x i32> %i.ld, splat (i32 127)
  %.neg.i.i871 = ashr <4 x i32> %i.lc, splat (i32 31)
  %i.lf = add nsw <4 x i32> %.neg.i.i871, splat (i32 8)
  %i.lg = select <4 x i1> %i.le, <4 x i32> %i.lf, <4 x i32> splat (i32 8) ; 2 uses
  %22 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.lg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lh = add nsw <4 x i32> %i.lg, %22            ; 2 uses
  %23 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.lh, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.li = add nsw <4 x i32> %i.lh, %23            ; 2 uses
  %i.lj = extractelement <4 x i32> %i.li, i64 3
  %24 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.li, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lk = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.kt, <4 x i32> %24)
  %i.ll = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.lk)
  %i.lm = zext i32 %i.ll to i64
  store i8 %i.ky, ptr %i.bl, align 8, !tbaa !26
  %i.ln = zext nneg i32 %i.jj to i64
  %i.lo = shl nuw nsw i64 %i.lm, %i.ln
  %i.lp = or i64 %i.lo, %.pre.i8681004            ; 3 uses
  store i64 %i.lp, ptr %.phi.trans.insert.i867, align 8, !tbaa !27
  %i.lq = add i32 %i.lj, %i.jj                    ; 5 uses
  store i32 %i.lq, ptr %i.bj, align 8, !tbaa !20
  %i.lr = icmp ult i32 %i.lq, 32
  br i1 %i.lr, label %bb.am, label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

bb.am:                                            ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869
  %i.ls = icmp sgt i32 %.lcssa9861008, 3
  br i1 %i.ls, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.lt = getelementptr inbounds i8, ptr %.lcssa985990, i64 -3
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !21
  %i.lv = getelementptr inbounds i8, ptr %.lcssa985990, i64 -4
  %i.lw = add nsw i32 %.lcssa9861008, -4
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split

bb.ao:                                            ; preds = %bb.am
  %i.lx = icmp sgt i32 %.lcssa9861008, 0
  br i1 %i.lx, label %.preheader.i8.i876, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872

.preheader.i8.i876:                               ; preds = %bb.ao, %.preheader.i8.i876
  %i.ly = phi ptr [ %i.ma, %.preheader.i8.i876 ], [ %.lcssa985990, %bb.ao ] ; 2 uses
  %.050.i10.i878 = phi i32 [ %i.me, %.preheader.i8.i876 ], [ 0, %bb.ao ]
  %.04649.i11.i879 = phi i32 [ %i.mg, %.preheader.i8.i876 ], [ 24, %bb.ao ] ; 2 uses
  %i.lz = phi i32 [ %i.mf, %.preheader.i8.i876 ], [ %.lcssa9861008, %bb.ao ] ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %i.ly, i64 -1
  %i.mb = load i8, ptr %i.ly, align 1, !tbaa !10
  %i.mc = zext i8 %i.mb to i32
  %i.md = shl i32 %i.mc, %.04649.i11.i879
  %i.me = or i32 %i.md, %.050.i10.i878            ; 2 uses
  %i.mf = add nsw i32 %i.lz, -1
  %i.mg = add nsw i32 %.04649.i11.i879, -8
  %i.mh = icmp samesign ugt i32 %i.lz, 1
  br i1 %i.mh, label %.preheader.i8.i876, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit, !llvm.loop !44

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit: ; preds = %.preheader.i8.i876
  %scevgep1207 = getelementptr i8, ptr %.lcssa985990, i64 -1
  %i.mi = add nsw i32 %.lcssa9861008, -1
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = sub nsw i64 0, %i.mj
  %scevgep1208 = getelementptr i8, ptr %scevgep1207, i64 %i.mk
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split: ; preds = %bb.an, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit
  %.sink1298 = phi i32 [ 0, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.lw, %bb.an ] ; 2 uses
  %.lcssa985989.ph = phi ptr [ %scevgep1208, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.lv, %bb.an ]
  %.1.i6.i873.ph = phi i32 [ %i.me, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.loopexit ], [ %i.lu, %bb.an ]
  store i32 %.sink1298, ptr %i.bk, align 4, !tbaa !25
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872: ; preds = %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split, %bb.ao
  %.lcssa9861007 = phi i32 [ %.lcssa9861008, %bb.ao ], [ %.sink1298, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %.lcssa985989 = phi ptr [ %.lcssa985990, %bb.ao ], [ %.lcssa985989.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %.1.i6.i873 = phi i32 [ 0, %bb.ao ], [ %.1.i6.i873.ph, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872.sink.split ]
  %i.ml = insertelement <4 x i32> poison, i32 %.1.i6.i873, i64 0
  %i.mm = shufflevector <4 x i32> %i.ml, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mn = lshr <4 x i32> %i.mm, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.mo = and <4 x i32> %i.mn, splat (i32 255)    ; 2 uses
  %i.mp = icmp samesign ugt <4 x i32> %i.mo, splat (i32 143)
  %i.mq = sext <4 x i1> %i.mp to <4 x i32>        ; 2 uses
  %i.mr = extractelement <4 x i32> %i.mq, i64 3
  %i.ms = icmp ne i32 %i.mr, 0
  %i.mt = zext i1 %i.ms to i8                     ; 2 uses
  %i.mu = shufflevector <4 x i32> %i.mq, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %.neg.i874 = sext i1 %i.kx to i32
  %i.mv = insertelement <4 x i32> %i.mu, i32 %.neg.i874, i64 0
  %i.mw = and <4 x i32> %i.mn, splat (i32 127)
  %i.mx = icmp eq <4 x i32> %i.mw, splat (i32 127)
  %.neg.i7.i875 = ashr <4 x i32> %i.mv, splat (i32 31)
  %i.my = add nsw <4 x i32> %.neg.i7.i875, splat (i32 8)
  %i.mz = select <4 x i1> %i.mx, <4 x i32> %i.my, <4 x i32> splat (i32 8) ; 2 uses
  %25 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.mz, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.na = add nsw <4 x i32> %i.mz, %25            ; 2 uses
  %26 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.na, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.nb = add nsw <4 x i32> %i.na, %26            ; 2 uses
  %i.nc = extractelement <4 x i32> %i.nb, i64 3
  %27 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.nb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nd = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.mo, <4 x i32> %27)
  %i.ne = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.nd)
  %i.nf = zext i32 %i.ne to i64
  store i8 %i.mt, ptr %i.bl, align 8, !tbaa !26
  %i.ng = zext nneg i32 %i.lq to i64
  %i.nh = shl nuw nsw i64 %i.nf, %i.ng
  %i.ni = or i64 %i.nh, %i.lp
  %i.nj = add i32 %i.nc, %i.lq
  br label %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884

_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884: ; preds = %bb.ai, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872
  %i.nk = phi i8 [ %i.mt, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.ky, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %i.ji, %bb.ai ]
  %.lcssa9861006 = phi i32 [ %.lcssa9861007, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %.lcssa9861008, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.lcssa9861009, %bb.ai ]
  %i.nl = phi i32 [ %i.nj, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.lq, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %i.jj, %bb.ai ]
  %.lcssa985988 = phi ptr [ %.lcssa985989, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %.lcssa985990, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.lcssa985991992, %bb.ai ] ; 2 uses
  %i.nm = phi i64 [ %i.ni, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit12.i872 ], [ %i.lp, %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit.i869 ], [ %.pre.i8681004, %bb.ai ] ; 2 uses
  %i.nn = trunc i64 %i.nm to i32
  %i.no = and i32 %i.nn, 127
  %i.np = add nuw nsw i32 %i.no, %i.jv
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.nq
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !66 ; 2 uses
  %i.nt = icmp eq i32 %i.jv, 0
  br i1 %i.nt, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884
  %i.nu = add nsw i32 %.5728996, -2               ; 2 uses
  %i.nv = icmp eq i32 %i.nu, -1
  %i.nw = select i1 %i.nv, i16 %i.ns, i16 0       ; 2 uses
  %i.nx = icmp slt i32 %.5728996, 2
  br i1 %i.nx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ny = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884
  %.0782 = phi i16 [ %i.nw, %bb.aq ], [ %i.nw, %bb.ap ], [ %i.ns, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884 ] ; 2 uses
  %.6729 = phi i32 [ %i.ny, %bb.aq ], [ %i.nu, %bb.ap ], [ %.5728996, %_ZN4ojph5localL9rev_fetchEPNS0_10rev_structE.exit884 ] ; 3 uses
  store i16 %.0782, ptr %.0776994, align 2, !tbaa !66
  %i.nz = or disjoint i32 %.0781993, 2
  %i.oa = zext i16 %.0782 to i32                  ; 4 uses
  %i.ob = shl nuw nsw i32 %i.oa, 2
  %i.oc = shl nuw nsw i32 %i.oa, 1
  %i.od = or i32 %i.ob, %i.oc
  %i.oe = and i32 %i.od, 256
  %i.of = load i16, ptr %i.jk, align 2, !tbaa !66
  %i.og = and i16 %i.of, 128
  %i.oh = zext nneg i16 %i.og to i32
  %i.oi = shl i16 %i.jr, 2
  %i.oj = and i16 %i.oi, 640
  %i.ok = zext nneg i16 %i.oj to i32
  %i.ol = getelementptr inbounds [2 x i8], ptr %.0776994, i64 %i.bn
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !66
  %i.on = shl i16 %i.om, 4
  %i.oo = and i16 %i.on, 512
  %i.op = zext nneg i16 %i.oo to i32
  %i.oq = or disjoint i32 %i.oe, %i.ok
  %i.or = or i32 %i.oq, %i.oh
  %i.os = or i32 %i.or, %i.op                     ; 2 uses
  %i.ot = and i32 %i.oa, 7                        ; 2 uses
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = lshr i64 %i.nm, %i.ou                   ; 2 uses
  %i.ow = trunc i64 %i.ov to i32
  %i.ox = and i32 %i.ow, 127
  %i.oy = or disjoint i32 %i.os, %i.ox
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local8vlc_tbl1E, i64 %i.oz
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !66 ; 2 uses
  %i.pc = icmp eq i32 %i.os, 0
  %i.pd = icmp ult i32 %i.nz, %6                  ; 2 uses
  %or.cond858 = select i1 %i.pc, i1 %i.pd, i1 false
  br i1 %or.cond858, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.pe = add nsw i32 %.6729, -2                  ; 2 uses
  %i.pf = icmp eq i32 %i.pe, -1
  %i.pg = select i1 %i.pf, i16 %i.pb, i16 0       ; 2 uses
  %i.ph = icmp slt i32 %.6729, 2
  br i1 %i.ph, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.pi = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %.0783 = phi i16 [ %i.pg, %bb.at ], [ %i.pg, %bb.as ], [ %i.pb, %bb.ar ]
  %.7730 = phi i32 [ %i.pi, %bb.at ], [ %i.pe, %bb.as ], [ %.6729, %bb.ar ] ; 2 uses
  %i.pj = select i1 %i.pd, i16 %.0783, i16 0      ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.0776994, i64 4
  store i16 %i.pj, ptr %i.pk, align 2, !tbaa !66
  %i.pl = add i32 %.0781993, 4                    ; 2 uses
  %i.pm = zext i16 %i.pj to i32                   ; 4 uses
  %i.pn = shl nuw nsw i32 %i.pm, 2
  %i.po = shl nuw nsw i32 %i.pm, 1
  %i.pp = or i32 %i.pn, %i.po
  %i.pq = and i32 %i.pp, 256
  %i.pr = load i16, ptr %i.jq, align 2, !tbaa !66
  %i.ps = and i16 %i.pr, 128
  %i.pt = zext nneg i16 %i.ps to i32
  %i.pu = or disjoint i32 %i.pq, %i.pt
  %i.pv = and i32 %i.pm, 7                        ; 2 uses
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = lshr i64 %i.ov, %i.pw                   ; 2 uses
  %i.py = add nuw nsw i32 %i.ot, %i.pv
  %i.pz = trunc i64 %i.px to i32
  %i.qa = shl nuw nsw i32 %i.oa, 3
  %i.qb = and i32 %i.qa, 64
  %i.qc = shl nuw nsw i32 %i.pm, 4
  %i.qd = and i32 %i.qc, 128
  %i.qe = or disjoint i32 %i.qd, %i.qb
  %i.qf = and i32 %i.pz, 63
  %i.qg = or disjoint i32 %i.qe, %i.qf
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl1E, i64 %i.qh
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !66
  %i.qk = zext i16 %i.qj to i32                   ; 5 uses
  %i.ql = and i32 %i.qk, 7                        ; 2 uses
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = lshr i64 %i.px, %i.qm                   ; 2 uses
  %i.qo = add nuw nsw i32 %i.py, %i.ql
  %i.qp = trunc i64 %i.qn to i32
  %i.qq = lshr i32 %i.qk, 3
  %i.qr = and i32 %i.qq, 15                       ; 3 uses
  %notmask = shl nsw i32 -1, %i.qr
  %i.qs = xor i32 %notmask, -1
  %i.qt = and i32 %i.qp, %i.qs                    ; 2 uses
  %i.qu = zext nneg i32 %i.qr to i64
  %i.qv = lshr i64 %i.qn, %i.qu                   ; 2 uses
  store i64 %i.qv, ptr %.phi.trans.insert.i867, align 8, !tbaa !27
  %i.qw = add nuw nsw i32 %i.qo, %i.qr
  %i.qx = sub i32 %i.nl, %i.qw                    ; 2 uses
  store i32 %i.qx, ptr %i.bj, align 8, !tbaa !20
  %i.qy = lshr i32 %i.qk, 7
  %i.qz = and i32 %i.qy, 7                        ; 2 uses
  %i.ra = lshr i32 %i.qk, 10
  %i.rb = and i32 %i.ra, 7
  %i.rc = shl nuw nsw i32 255, %i.qz
  %i.rd = xor i32 %i.rc, -1
  %i.re = and i32 %i.qt, %i.rd
  %i.rf = add nuw nsw i32 %i.re, %i.rb
  %i.rg = trunc nuw i32 %i.rf to i16
  %i.rh = getelementptr inbounds nuw i8, ptr %.0776994, i64 2
  store i16 %i.rg, ptr %i.rh, align 2, !tbaa !66
  %i.ri = lshr i32 %i.qk, 13
  %i.rj = lshr i32 %i.qt, %i.qz
  %i.rk = add nuw nsw i32 %i.rj, %i.ri
  %i.rl = trunc nuw i32 %i.rk to i16
  %i.rm = getelementptr inbounds nuw i8, ptr %.0776994, i64 6
  store i16 %i.rl, ptr %i.rm, align 2, !tbaa !66
  %i.rn = getelementptr inbounds nuw i8, ptr %.0776994, i64 8 ; 2 uses
  %i.ro = icmp ult i32 %i.pl, %6
  br i1 %i.ro, label %bb.ai, label %._crit_edge999, !llvm.loop !45

bb.av:                                            ; preds = %._crit_edge1015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) %i.b, i8 0, i64 4224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.rp = sub nuw nsw i32 %4, %i.ap
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_16frwd_struct_avx2EPKhi(ptr noundef %12, ptr noundef nonnull %0, i32 noundef %i.rp)
  %i.rq = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %i.rr = shufflevector <8 x i32> %i.rq, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  store i32 2, ptr %i.b, align 16, !tbaa !21
  br i1 %.not1155, label %.critedge.preheader, label %.lr.ph1043

.lr.ph1043:                                       ; preds = %bb.av
  %i.rs = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.rv = sub nuw nsw i32 29, %2
  %.splatinsert.i.i = insertelement <8 x i32> poison, i32 %i.rv, i64 0
  %.splat.i.i = shufflevector <8 x i32> %.splatinsert.i.i, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.rw = zext i32 %8 to i64
  br label %bb.aw

.critedge.preheader:                              ; preds = %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit, %bb.av
  br i1 %i.be, label %.lr.ph1055, label %.critedge860

.lr.ph1055:                                       ; preds = %.critedge.preheader
  %i.rx = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.sa = sub nuw nsw i32 29, %2
  %.splatinsert.i.i891 = insertelement <8 x i32> poison, i32 %i.sa, i64 0
  %.splat.i.i892 = shufflevector <8 x i32> %.splatinsert.i.i891, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sb = zext i32 %8 to i64
  br label %bb.bd

bb.aw:                                            ; preds = %.lr.ph1043, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit
  %i.sc = phi i32 [ 2, %.lr.ph1043 ], [ %i.yi, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ]
  %.07841041 = phi ptr [ %i.a, %.lr.ph1043 ], [ %i.yf, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 2 uses
  %.07951040 = phi ptr [ %i.b, %.lr.ph1043 ], [ %i.yg, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 2 uses
  %.07961039 = phi ptr [ %1, %.lr.ph1043 ], [ %i.yh, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ] ; 3 uses
  %.07971038 = phi i32 [ 0, %.lr.ph1043 ], [ %i.ye, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit ]
  %i.sd = load i64, ptr %.07841041, align 1, !tbaa !10
  %i.se = insertelement <4 x i64> poison, i64 %i.sd, i64 0
  %i.sf = bitcast <4 x i64> %i.se to <8 x i32>
  %i.sg = shufflevector <8 x i32> %i.sf, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.sh = lshr <8 x i32> %i.sg, splat (i32 16)    ; 3 uses
  %i.si = icmp sgt <8 x i32> %i.sh, %i.rr
  %i.sj = sext <8 x i1> %i.si to <8 x i32>
  %i.sk = bitcast <8 x i32> %i.sj to <4 x i64>    ; 2 uses
  %i.sl = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.sk, <4 x i64> %i.sk)
  %.not839.not = icmp eq i32 %i.sl, 0
  br i1 %.not839.not, label %.critedge860.thread928, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.sm = bitcast <8 x i32> %i.sg to <4 x i64>
  %i.sn = and <4 x i64> %i.sm, <i64 37520834302224, i64 150083337208896, i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.so = bitcast <4 x i64> %i.sn to <8 x i32>
  %i.sp = icmp eq <8 x i32> %i.so, zeroinitializer ; 2 uses
  %i.sq = sext <8 x i1> %i.sp to <8 x i32>        ; 2 uses
  %i.sr = bitcast <8 x i32> %i.sq to <32 x i8>
  %i.ss = icmp sgt <32 x i8> %i.sr, splat (i8 -1)
  %i.st = bitcast <32 x i1> %i.ss to i32
  %.not.i = icmp eq i32 %i.st, 0
  br i1 %.not.i, label %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.su = bitcast <4 x i64> %i.sn to <16 x i16>
  %i.sv = shl <16 x i16> %i.su, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0, i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.sw = bitcast <16 x i16> %i.sv to <8 x i32>
  %i.sx = lshr <8 x i32> %i.sw, splat (i32 15)    ; 2 uses
  %i.sy = sub nsw <8 x i32> %i.sh, %i.sx
  %i.sz = bitcast <8 x i32> %i.sq to <4 x i64>
  %i.ta = xor <4 x i64> %i.sz, splat (i64 -1)     ; 2 uses
  %.inner1634 = select <8 x i1> %i.sp, <8 x i32> zeroinitializer, <8 x i32> %i.sy ; 2 uses
  %28 = shufflevector <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 0>, <8 x i32> %.inner1634, <8 x i32> <i32 3, i32 8, i32 9, i32 10, i32 7, i32 12, i32 13, i32 14>
  %i.tb = add nsw <8 x i32> %28, %.inner1634      ; 2 uses
  %29 = shufflevector <8 x i32> <i32 poison, i32 poison, i32 0, i32 0, i32 poison, i32 poison, i32 0, i32 0>, <8 x i32> %i.tb, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>
  %i.tc = add nsw <8 x i32> %i.tb, %29            ; 2 uses
  %i.td = bitcast <8 x i32> %i.tc to <16 x i16>   ; 2 uses
  %i.te = extractelement <16 x i16> %i.td, i64 6  ; 2 uses
  %i.tf = extractelement <16 x i16> %i.td, i64 14 ; 2 uses
  %i.tg = zext i16 %i.tf to i32                   ; 3 uses
  %.not93.i = icmp eq i16 %i.te, 0
  br i1 %.not93.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.th = zext i16 %i.te to i32                   ; 3 uses
  %i.ti = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.tj = load i32, ptr %i.rs, align 8, !tbaa !29
  %i.tk = sub i32 %i.tj, %i.th
  store i32 %i.tk, ptr %i.rs, align 8, !tbaa !29
  %i.tl = lshr i32 %i.th, 3
  %i.tm = and i32 %i.tl, 24
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.tn ; 2 uses
  %i.tp = and i32 %i.th, 63                       ; 2 uses
  %i.tq = load <2 x i64>, ptr %i.to, align 8, !tbaa !10 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.ts = load <2 x i64>, ptr %i.tr, align 8, !tbaa !10 ; 3 uses
  %i.tt = zext nneg i32 %i.tp to i64
  %i.tu = insertelement <2 x i64> poison, i64 %i.tt, i64 0
  %i.tv = shufflevector <2 x i64> %i.tu, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tw = lshr <2 x i64> %i.tq, %i.tv
  %i.tx = shufflevector <2 x i64> %i.tq, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ty = sub nuw nsw i32 64, %i.tp
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = insertelement <2 x i64> poison, i64 %i.tz, i64 0
  %i.ub = shufflevector <2 x i64> %i.ua, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.uc = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.tx, <2 x i64> %i.ub)
  %i.ud = or <2 x i64> %i.uc, %i.tw
  %30 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ts, <2 x i32> <i32 1, i32 2>
  %i.ue = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %30, <2 x i64> %i.ub)
  %i.uf = or <2 x i64> %i.ud, %i.ue
  store <2 x i64> %i.uf, ptr %i.rt, align 8, !tbaa !10
  %i.ug = lshr <2 x i64> %i.ts, %i.tv
  %i.uh = shufflevector <2 x i64> %i.ts, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ui = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.uh, <2 x i64> %i.ub)
  %i.uj = or <2 x i64> %i.ui, %i.ug
  store <2 x i64> %i.uj, ptr %i.ru, align 8, !tbaa !10
  %i.uk = shufflevector <2 x i64> %i.ti, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.089.i = phi <4 x i64> [ %i.uk, %bb.az ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.ay ]
  %.not94.i = icmp eq i16 %i.tf, 0
  br i1 %.not94.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ul = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.um = load i32, ptr %i.rs, align 8, !tbaa !29
  %i.un = sub i32 %i.um, %i.tg
  store i32 %i.un, ptr %i.rs, align 8, !tbaa !29
  %i.uo = lshr i32 %i.tg, 3
  %i.up = and i32 %i.uo, 24
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.uq ; 2 uses
  %i.us = and i32 %i.tg, 63                       ; 2 uses
  %i.ut = load <2 x i64>, ptr %i.ur, align 8, !tbaa !10 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.uv = load <2 x i64>, ptr %i.uu, align 8, !tbaa !10 ; 3 uses
  %i.uw = zext nneg i32 %i.us to i64
  %i.ux = insertelement <2 x i64> poison, i64 %i.uw, i64 0
  %i.uy = shufflevector <2 x i64> %i.ux, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uz = lshr <2 x i64> %i.ut, %i.uy
  %i.va = shufflevector <2 x i64> %i.ut, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.vb = sub nuw nsw i32 64, %i.us
  %i.vc = zext nneg i32 %i.vb to i64
  %i.vd = insertelement <2 x i64> poison, i64 %i.vc, i64 0
  %i.ve = shufflevector <2 x i64> %i.vd, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.vf = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.va, <2 x i64> %i.ve)
  %i.vg = or <2 x i64> %i.vf, %i.uz
  %31 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.uv, <2 x i32> <i32 1, i32 2>
  %i.vh = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %31, <2 x i64> %i.ve)
  %i.vi = or <2 x i64> %i.vg, %i.vh
  store <2 x i64> %i.vi, ptr %i.rt, align 8, !tbaa !10
  %i.vj = lshr <2 x i64> %i.uv, %i.uy
  %i.vk = shufflevector <2 x i64> %i.uv, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.vl = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.vk, <2 x i64> %i.ve)
  %i.vm = or <2 x i64> %i.vl, %i.vj
  store <2 x i64> %i.vm, ptr %i.ru, align 8, !tbaa !10
  %i.vn = shufflevector <2 x i64> %i.ul, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.090.i = phi <4 x i64> [ %i.vn, %bb.bb ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.ba ]
  %i.vo = shufflevector <4 x i64> %.089.i, <4 x i64> %.090.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.vp = bitcast <8 x i32> %i.tc to <32 x i8>
  %32 = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.vp, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59> ; 2 uses
  %i.vq = bitcast <32 x i8> %32 to <8 x i32>
  %i.vr = lshr <8 x i32> %i.vq, splat (i32 3)
  %i.vs = bitcast <32 x i8> %32 to <4 x i64>
  %i.vt = and <4 x i64> %i.vs, splat (i64 30064771079) ; 2 uses
  %i.vu = bitcast <8 x i32> %i.vr to <32 x i8>
  %i.vv = shufflevector <32 x i8> %i.vu, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.vw = bitcast <32 x i8> %i.vv to <8 x i32>    ; 2 uses
  %i.vx = add <8 x i32> %i.vw, splat (i32 50462976)
  %i.vy = bitcast <4 x i64> %i.vo to <32 x i8>    ; 2 uses
  %i.vz = bitcast <8 x i32> %i.vx to <32 x i8>
  %i.wa = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.vy, <32 x i8> %i.vz)
  %i.wb = add <8 x i32> %i.vw, splat (i32 67305985)
  %i.wc = bitcast <8 x i32> %i.wb to <32 x i8>
  %i.wd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.vy, <32 x i8> %i.wc)
  %i.we = bitcast <4 x i64> %i.vt to <8 x i32>
  %i.wf = shl nuw nsw <8 x i32> %i.we, splat (i32 16)
  %i.wg = bitcast <8 x i32> %i.wf to <4 x i64>
  %i.wh = or disjoint <4 x i64> %i.vt, %i.wg
  %i.wi = bitcast <4 x i64> %i.wh to <32 x i8>
  %i.wj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.wi)
  %i.wk = bitcast <32 x i8> %i.wj to <16 x i16>
  %i.wl = add <16 x i16> %i.wk, splat (i16 257)   ; 2 uses
  %i.wm = bitcast <32 x i8> %i.wa to <16 x i16>
  %i.wn = mul <16 x i16> %i.wl, %i.wm
  %i.wo = lshr <16 x i16> %i.wn, splat (i16 8)
  %i.wp = bitcast <32 x i8> %i.wd to <16 x i16>
  %i.wq = mul <16 x i16> %i.wl, %i.wp
  %.inner1636 = and <16 x i16> %i.wq, splat (i16 -256)
  %.inner1637 = or disjoint <16 x i16> %.inner1636, %i.wo
  %i.wr = bitcast <16 x i16> %.inner1637 to <4 x i64>
  %i.ws = add nuw nsw <8 x i32> %i.sh, <i32 31, i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison>
  %i.wt = and <8 x i32> %i.ws, <i32 31, i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison>
  %i.wu = shufflevector <8 x i32> %i.wt, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.wv = sub nuw nsw <8 x i32> splat (i32 2), %i.sx
  %i.ww = shl <8 x i32> %i.wv, %i.wu              ; 2 uses
  %i.wx = add <8 x i32> %i.ww, splat (i32 -1)
  %i.wy = bitcast <8 x i32> %i.wx to <4 x i64>
  %i.wz = and <4 x i64> %i.wr, %i.wy
  %i.xa = bitcast <16 x i16> %i.sv to <8 x i32>
  %i.xb = and <8 x i32> %i.xa, splat (i32 2048)
  %.not95.i = icmp eq <8 x i32> %i.xb, zeroinitializer
  %i.xc = select <8 x i1> %.not95.i, <8 x i32> zeroinitializer, <8 x i32> %i.ww
  %i.xd = bitcast <8 x i32> %i.xc to <4 x i64>
  %i.xe = or <4 x i64> %i.wz, %i.xd               ; 2 uses
  %i.xf = bitcast <4 x i64> %i.xe to <8 x i32>
  %i.xg = shl <8 x i32> %i.xf, splat (i32 31)
  %i.xh = or <4 x i64> %i.xe, splat (i64 4294967297) ; 2 uses
  %i.xi = bitcast <4 x i64> %i.xh to <8 x i32>
  %i.xj = add <8 x i32> %i.xi, splat (i32 2)
  %i.xk = shl <8 x i32> %i.xj, %.splat.i.i
  %i.xl = or <8 x i32> %i.xk, %i.xg
  %i.xm = and <4 x i64> %i.xh, %i.ta
  %i.xn = bitcast <4 x i64> %i.xm to <32 x i8>
  %i.xo = shufflevector <32 x i8> %i.xn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48>
  %i.xp = bitcast <32 x i8> %i.xo to <4 x i64>    ; 2 uses
  %i.xq = shufflevector <4 x i64> %i.xp, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.xr = or <2 x i64> %i.xq, splat (i64 8589934594)
  %i.xs = shufflevector <4 x i64> %i.xp, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.xt = or <2 x i64> %i.xr, %i.xs
  %i.xu = bitcast <4 x i64> %i.ta to <8 x i32>
  %i.xv = and <8 x i32> %i.xl, %i.xu
  %i.xw = shufflevector <8 x i32> %i.xv, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.xx = bitcast <8 x i32> %i.xw to <4 x i64>
  br label %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit

_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit: ; preds = %bb.ax, %bb.bc
  %.0920 = phi <2 x i64> [ splat (i64 8589934594), %bb.ax ], [ %i.xt, %bb.bc ]
  %.0.i = phi <4 x i64> [ zeroinitializer, %bb.ax ], [ %i.xx, %bb.bc ] ; 2 uses
  %i.xy = shufflevector <4 x i64> %.0.i, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.xy, ptr %.07961039, align 16, !tbaa !10
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %.07961039, i64 %i.rw
  %i.ya = shufflevector <4 x i64> %.0.i, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ya, ptr %i.xz, align 16, !tbaa !10
  %i.yb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.sc, i64 0
  %i.yc = bitcast <4 x i32> %i.yb to <2 x i64>
  %i.yd = or <2 x i64> %.0920, %i.yc              ; 2 uses
  store <2 x i64> %i.yd, ptr %.07951040, align 1, !tbaa !10
  %i.ye = add i32 %.07971038, 4                   ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.07841041, i64 8
  %i.yg = getelementptr inbounds nuw i8, ptr %.07951040, i64 8
  %i.yh = getelementptr inbounds nuw i8, ptr %.07961039, i64 16
  %.not840 = icmp ult i32 %i.ye, %6
  %bc1276 = bitcast <2 x i64> %i.yd to <4 x i32>
  %i.yi = extractelement <4 x i32> %bc1276, i64 2
  br i1 %.not840, label %bb.aw, label %.critedge.preheader, !llvm.loop !46

bb.bd:                                            ; preds = %.lr.ph1055, %.critedge
  %.08021054 = phi i32 [ 2, %.lr.ph1055 ], [ %i.aab, %.critedge ] ; 3 uses
  %i.yj = lshr exact i32 %.08021054, 1
  %i.yk = mul i32 %i.yj, %i.au
  %i.yl = zext i32 %i.yk to i64
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.yl ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bf
  %.08071046 = phi i32 [ 0, %bb.bd ], [ %i.zv, %bb.bf ]
  %.08081045 = phi ptr [ %i.ym, %bb.bd ], [ %i.zx, %bb.bf ] ; 2 uses
  %.08091044 = phi ptr [ %i.b, %bb.bd ], [ %i.zw, %bb.bf ] ; 4 uses
  %i.yn = load <4 x i64>, ptr %.08091044, align 1, !tbaa !10
  %i.yo = getelementptr inbounds nuw i8, ptr %.08091044, i64 4
  %i.yp = load <4 x i64>, ptr %i.yo, align 1, !tbaa !10
  %i.yq = or <4 x i64> %i.yp, %i.yn               ; 2 uses
  %i.yr = bitcast <4 x i64> %i.yq to <8 x i32>
  %i.ys = lshr <8 x i32> %i.yr, splat (i32 8)
  %i.yt = bitcast <8 x i32> %i.ys to <4 x i64>
  %i.yu = xor <4 x i64> %i.yt, splat (i64 -1)
  %i.yv = and <4 x i64> %i.yq, %i.yu
  %i.yw = bitcast <4 x i64> %i.yv to <8 x i32>
  %i.yx = sitofp <8 x i32> %i.yw to <8 x float>
  %i.yy = bitcast <8 x float> %i.yx to <8 x i32>
  %i.yz = lshr <8 x i32> %i.yy, splat (i32 23)
  %i.za = bitcast <8 x i32> %i.yz to <16 x i16>
  %i.zb = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.za)
  %i.zc = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.zb, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.zd = bitcast <16 x i16> %i.zc to <8 x i32>
  %i.ze = sub nsw <8 x i32> splat (i32 31), %i.zd
  %i.zf = load <4 x i64>, ptr %.08081045, align 1, !tbaa !10 ; 3 uses
  %i.zg = bitcast <4 x i64> %i.zf to <8 x i32>
  %i.zh = bitcast <4 x i64> %i.zf to <8 x i32>
  %i.zi = and <8 x i32> %i.zh, splat (i32 240)
  %i.zj = add <8 x i32> %i.zg, splat (i32 240)
  %i.zk = and <8 x i32> %i.zj, %i.zi
  %.not947 = icmp eq <8 x i32> %i.zk, zeroinitializer
  %i.zl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ze, <8 x i32> splat (i32 1))
  %i.zm = select <8 x i1> %.not947, <8 x i32> splat (i32 1), <8 x i32> %i.zl
  %i.zn = bitcast <4 x i64> %i.zf to <8 x i32>
  %i.zo = lshr <8 x i32> %i.zn, splat (i32 16)
  %i.zp = add nuw <8 x i32> %i.zm, %i.zo          ; 2 uses
  %i.zq = icmp sgt <8 x i32> %i.zp, %i.rr
  %i.zr = sext <8 x i1> %i.zq to <8 x i32>
  %i.zs = bitcast <8 x i32> %i.zr to <4 x i64>    ; 2 uses
  %i.zt = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.zs, <4 x i64> %i.zs)
  %.not842.not = icmp eq i32 %i.zt, 0
  br i1 %.not842.not, label %.critedge860.thread928, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.zu = getelementptr inbounds nuw i8, ptr %.08091044, i64 2112
  store <8 x i32> %i.zp, ptr %i.zu, align 1, !tbaa !10
  %i.zv = add i32 %.08071046, 16                  ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.08091044, i64 32
  %i.zx = getelementptr inbounds nuw i8, ptr %.08081045, i64 32
  %.not841 = icmp ugt i32 %i.zv, %6
  br i1 %.not841, label %bb.bg, label %bb.be, !llvm.loop !47

bb.bg:                                            ; preds = %bb.bf
  store i32 2, ptr %i.b, align 16, !tbaa !21
  br i1 %.not1155, label %.critedge, label %.lr.ph1052.preheader

.lr.ph1052.preheader:                             ; preds = %bb.bg
  %i.zy = mul i32 %.08021054, %8
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zz
  br label %.lr.ph1052

.critedge:                                        ; preds = %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894, %bb.bg
  %i.aab = add i32 %.08021054, 2                  ; 2 uses
  %i.aac = icmp ult i32 %i.aab, %7
  br i1 %i.aac, label %bb.bd, label %.critedge860, !llvm.loop !48

.lr.ph1052:                                       ; preds = %.lr.ph1052.preheader, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894
  %i.aad = phi i32 [ %i.agk, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894 ], [ 2, %.lr.ph1052.preheader ]
  %.08031050 = phi i32 [ %i.agf, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894 ], [ 0, %.lr.ph1052.preheader ]
  %.08041049 = phi ptr [ %i.agi, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894 ], [ %i.aaa, %.lr.ph1052.preheader ] ; 3 uses
  %.08051048 = phi ptr [ %i.agg, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894 ], [ %i.ym, %.lr.ph1052.preheader ] ; 2 uses
  %.08061047 = phi ptr [ %i.agh, %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894 ], [ %i.b, %.lr.ph1052.preheader ] ; 3 uses
  %i.aae = load i64, ptr %.08051048, align 1, !tbaa !10
  %i.aaf = insertelement <4 x i64> poison, i64 %i.aae, i64 0
  %i.aag = bitcast <4 x i64> %i.aaf to <8 x i32>
  %i.aah = shufflevector <8 x i32> %i.aag, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.aai = getelementptr inbounds nuw i8, ptr %.08061047, i64 2112
  %i.aaj = load i64, ptr %i.aai, align 1, !tbaa !10
  %i.aak = insertelement <4 x i64> poison, i64 %i.aaj, i64 0
  %i.aal = bitcast <4 x i64> %i.aak to <8 x i32>
  %i.aam = shufflevector <8 x i32> %i.aal, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.aan = bitcast <8 x i32> %i.aah to <4 x i64>
  %i.aao = and <4 x i64> %i.aan, <i64 37520834302224, i64 150083337208896, i64 37520834302224, i64 150083337208896> ; 2 uses
  %i.aap = bitcast <4 x i64> %i.aao to <8 x i32>
  %i.aaq = icmp eq <8 x i32> %i.aap, zeroinitializer ; 2 uses
  %i.aar = sext <8 x i1> %i.aaq to <8 x i32>      ; 2 uses
  %i.aas = bitcast <8 x i32> %i.aar to <32 x i8>
  %i.aat = icmp sgt <32 x i8> %i.aas, splat (i8 -1)
  %i.aau = bitcast <32 x i1> %i.aat to i32
  %.not.i885 = icmp eq i32 %i.aau, 0
  br i1 %.not.i885, label %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph1052
  %i.aav = bitcast <4 x i64> %i.aao to <16 x i16>
  %i.aaw = shl <16 x i16> %i.aav, <i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0, i16 3, i16 3, i16 2, i16 2, i16 1, i16 1, i16 0, i16 0> ; 2 uses
  %i.aax = bitcast <16 x i16> %i.aaw to <8 x i32>
  %i.aay = lshr <8 x i32> %i.aax, splat (i32 15)  ; 2 uses
  %i.aaz = sub <8 x i32> %i.aam, %i.aay
  %i.aba = bitcast <8 x i32> %i.aar to <4 x i64>
  %i.abb = xor <4 x i64> %i.aba, splat (i64 -1)   ; 2 uses
  %.inner1643 = select <8 x i1> %i.aaq, <8 x i32> zeroinitializer, <8 x i32> %i.aaz ; 2 uses
  %33 = shufflevector <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 0>, <8 x i32> %.inner1643, <8 x i32> <i32 3, i32 8, i32 9, i32 10, i32 7, i32 12, i32 13, i32 14>
  %i.abc = add <8 x i32> %33, %.inner1643         ; 2 uses
  %34 = shufflevector <8 x i32> <i32 poison, i32 poison, i32 0, i32 0, i32 poison, i32 poison, i32 0, i32 0>, <8 x i32> %i.abc, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>
  %i.abd = add <8 x i32> %i.abc, %34              ; 2 uses
  %i.abe = bitcast <8 x i32> %i.abd to <16 x i16> ; 2 uses
  %i.abf = extractelement <16 x i16> %i.abe, i64 6 ; 2 uses
  %i.abg = extractelement <16 x i16> %i.abe, i64 14 ; 2 uses
  %i.abh = zext i16 %i.abg to i32                 ; 3 uses
  %.not93.i886 = icmp eq i16 %i.abf, 0
  br i1 %.not93.i886, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.abi = zext i16 %i.abf to i32                 ; 3 uses
  %i.abj = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.abk = load i32, ptr %i.rx, align 8, !tbaa !29
  %i.abl = sub i32 %i.abk, %i.abi
  store i32 %i.abl, ptr %i.rx, align 8, !tbaa !29
  %i.abm = lshr i32 %i.abi, 3
  %i.abn = and i32 %i.abm, 24
  %i.abo = zext nneg i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.abo ; 2 uses
  %i.abq = and i32 %i.abi, 63                     ; 2 uses
  %i.abr = load <2 x i64>, ptr %i.abp, align 8, !tbaa !10 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 16
  %i.abt = load <2 x i64>, ptr %i.abs, align 8, !tbaa !10 ; 3 uses
  %i.abu = zext nneg i32 %i.abq to i64
  %i.abv = insertelement <2 x i64> poison, i64 %i.abu, i64 0
  %i.abw = shufflevector <2 x i64> %i.abv, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.abx = lshr <2 x i64> %i.abr, %i.abw
  %i.aby = shufflevector <2 x i64> %i.abr, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.abz = sub nuw nsw i32 64, %i.abq
  %i.aca = zext nneg i32 %i.abz to i64
  %i.acb = insertelement <2 x i64> poison, i64 %i.aca, i64 0
  %i.acc = shufflevector <2 x i64> %i.acb, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.acd = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aby, <2 x i64> %i.acc)
  %i.ace = or <2 x i64> %i.acd, %i.abx
  %35 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.abt, <2 x i32> <i32 1, i32 2>
  %i.acf = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %35, <2 x i64> %i.acc)
  %i.acg = or <2 x i64> %i.ace, %i.acf
  store <2 x i64> %i.acg, ptr %i.ry, align 8, !tbaa !10
  %i.ach = lshr <2 x i64> %i.abt, %i.abw
  %i.aci = shufflevector <2 x i64> %i.abt, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.acj = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aci, <2 x i64> %i.acc)
  %i.ack = or <2 x i64> %i.acj, %i.ach
  store <2 x i64> %i.ack, ptr %i.rz, align 8, !tbaa !10
  %i.acl = shufflevector <2 x i64> %i.abj, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.089.i887 = phi <4 x i64> [ %i.acl, %bb.bi ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.bh ]
  %.not94.i888 = icmp eq i16 %i.abg, 0
  br i1 %.not94.i888, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.acm = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.acn = load i32, ptr %i.rx, align 8, !tbaa !29
  %i.aco = sub i32 %i.acn, %i.abh
  store i32 %i.aco, ptr %i.rx, align 8, !tbaa !29
  %i.acp = lshr i32 %i.abh, 3
  %i.acq = and i32 %i.acp, 24
  %i.acr = zext nneg i32 %i.acq to i64
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.acr ; 2 uses
  %i.act = and i32 %i.abh, 63                     ; 2 uses
  %i.acu = load <2 x i64>, ptr %i.acs, align 8, !tbaa !10 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  %i.acw = load <2 x i64>, ptr %i.acv, align 8, !tbaa !10 ; 3 uses
  %i.acx = zext nneg i32 %i.act to i64
  %i.acy = insertelement <2 x i64> poison, i64 %i.acx, i64 0
  %i.acz = shufflevector <2 x i64> %i.acy, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ada = lshr <2 x i64> %i.acu, %i.acz
  %i.adb = shufflevector <2 x i64> %i.acu, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.adc = sub nuw nsw i32 64, %i.act
  %i.add = zext nneg i32 %i.adc to i64
  %i.ade = insertelement <2 x i64> poison, i64 %i.add, i64 0
  %i.adf = shufflevector <2 x i64> %i.ade, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.adg = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.adb, <2 x i64> %i.adf)
  %i.adh = or <2 x i64> %i.adg, %i.ada
  %36 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.acw, <2 x i32> <i32 1, i32 2>
  %i.adi = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %36, <2 x i64> %i.adf)
  %i.adj = or <2 x i64> %i.adh, %i.adi
  store <2 x i64> %i.adj, ptr %i.ry, align 8, !tbaa !10
  %i.adk = lshr <2 x i64> %i.acw, %i.acz
  %i.adl = shufflevector <2 x i64> %i.acw, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.adm = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.adl, <2 x i64> %i.adf)
  %i.adn = or <2 x i64> %i.adm, %i.adk
  store <2 x i64> %i.adn, ptr %i.rz, align 8, !tbaa !10
  %i.ado = shufflevector <2 x i64> %i.acm, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.090.i889 = phi <4 x i64> [ %i.ado, %bb.bk ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.bj ]
  %i.adp = shufflevector <4 x i64> %.089.i887, <4 x i64> %.090.i889, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.adq = bitcast <8 x i32> %i.abd to <32 x i8>
  %37 = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.adq, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59> ; 2 uses
  %i.adr = bitcast <32 x i8> %37 to <8 x i32>
  %i.ads = lshr <8 x i32> %i.adr, splat (i32 3)
  %i.adt = bitcast <32 x i8> %37 to <4 x i64>
  %i.adu = and <4 x i64> %i.adt, splat (i64 30064771079) ; 2 uses
  %i.adv = bitcast <8 x i32> %i.ads to <32 x i8>
  %i.adw = shufflevector <32 x i8> %i.adv, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.adx = bitcast <32 x i8> %i.adw to <8 x i32>  ; 2 uses
  %i.ady = add <8 x i32> %i.adx, splat (i32 50462976)
  %i.adz = bitcast <4 x i64> %i.adp to <32 x i8>  ; 2 uses
  %i.aea = bitcast <8 x i32> %i.ady to <32 x i8>
  %i.aeb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.adz, <32 x i8> %i.aea)
  %i.aec = add <8 x i32> %i.adx, splat (i32 67305985)
  %i.aed = bitcast <8 x i32> %i.aec to <32 x i8>
  %i.aee = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.adz, <32 x i8> %i.aed)
  %i.aef = bitcast <4 x i64> %i.adu to <8 x i32>
  %i.aeg = shl nuw nsw <8 x i32> %i.aef, splat (i32 16)
  %i.aeh = bitcast <8 x i32> %i.aeg to <4 x i64>
  %i.aei = or disjoint <4 x i64> %i.adu, %i.aeh
  %i.aej = bitcast <4 x i64> %i.aei to <32 x i8>
  %i.aek = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.aej)
  %i.ael = bitcast <32 x i8> %i.aek to <16 x i16>
  %i.aem = add <16 x i16> %i.ael, splat (i16 257) ; 2 uses
  %i.aen = bitcast <32 x i8> %i.aeb to <16 x i16>
  %i.aeo = mul <16 x i16> %i.aem, %i.aen
  %i.aep = lshr <16 x i16> %i.aeo, splat (i16 8)
  %i.aeq = bitcast <32 x i8> %i.aee to <16 x i16>
  %i.aer = mul <16 x i16> %i.aem, %i.aeq
  %.inner1645 = and <16 x i16> %i.aer, splat (i16 -256)
  %.inner1646 = or disjoint <16 x i16> %.inner1645, %i.aep
  %i.aes = bitcast <16 x i16> %.inner1646 to <4 x i64>
  %i.aet = add <8 x i32> %i.aam, <i32 31, i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison>
  %i.aeu = and <8 x i32> %i.aet, <i32 31, i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison>
  %i.aev = shufflevector <8 x i32> %i.aeu, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aew = sub nuw nsw <8 x i32> splat (i32 2), %i.aay
  %i.aex = shl <8 x i32> %i.aew, %i.aev           ; 2 uses
  %i.aey = add <8 x i32> %i.aex, splat (i32 -1)
  %i.aez = bitcast <8 x i32> %i.aey to <4 x i64>
  %i.afa = and <4 x i64> %i.aes, %i.aez
  %i.afb = bitcast <16 x i16> %i.aaw to <8 x i32>
  %i.afc = and <8 x i32> %i.afb, splat (i32 2048)
  %.not95.i890 = icmp eq <8 x i32> %i.afc, zeroinitializer
  %i.afd = select <8 x i1> %.not95.i890, <8 x i32> zeroinitializer, <8 x i32> %i.aex
  %i.afe = bitcast <8 x i32> %i.afd to <4 x i64>
  %i.aff = or <4 x i64> %i.afa, %i.afe            ; 2 uses
  %i.afg = bitcast <4 x i64> %i.aff to <8 x i32>
  %i.afh = shl <8 x i32> %i.afg, splat (i32 31)
  %i.afi = or <4 x i64> %i.aff, splat (i64 4294967297) ; 2 uses
  %i.afj = bitcast <4 x i64> %i.afi to <8 x i32>
  %i.afk = add <8 x i32> %i.afj, splat (i32 2)
  %i.afl = shl <8 x i32> %i.afk, %.splat.i.i892
  %i.afm = or <8 x i32> %i.afl, %i.afh
  %i.afn = and <4 x i64> %i.afi, %i.abb
  %i.afo = bitcast <4 x i64> %i.afn to <32 x i8>
  %i.afp = shufflevector <32 x i8> %i.afo, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48>
  %i.afq = bitcast <32 x i8> %i.afp to <4 x i64>  ; 2 uses
  %i.afr = shufflevector <4 x i64> %i.afq, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.afs = or <2 x i64> %i.afr, splat (i64 8589934594)
  %i.aft = shufflevector <4 x i64> %i.afq, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.afu = or <2 x i64> %i.afs, %i.aft
  %i.afv = bitcast <4 x i64> %i.abb to <8 x i32>
  %i.afw = and <8 x i32> %i.afm, %i.afv
  %i.afx = shufflevector <8 x i32> %i.afw, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.afy = bitcast <8 x i32> %i.afx to <4 x i64>
  br label %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894

_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894: ; preds = %.lr.ph1052, %bb.bl
  %.0919 = phi <2 x i64> [ splat (i64 8589934594), %.lr.ph1052 ], [ %i.afu, %bb.bl ]
  %.0.i893 = phi <4 x i64> [ zeroinitializer, %.lr.ph1052 ], [ %i.afy, %bb.bl ] ; 2 uses
  %i.afz = shufflevector <4 x i64> %.0.i893, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.afz, ptr %.08041049, align 16, !tbaa !10
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %.08041049, i64 %i.sb
  %i.agb = shufflevector <4 x i64> %.0.i893, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.agb, ptr %i.aga, align 16, !tbaa !10
  %i.agc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aad, i64 0
  %i.agd = bitcast <4 x i32> %i.agc to <2 x i64>
  %i.age = or <2 x i64> %.0919, %i.agd            ; 2 uses
  store <2 x i64> %i.age, ptr %.08061047, align 1, !tbaa !10
  %i.agf = add nuw i32 %.08031050, 4              ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.08051048, i64 8
  %i.agh = getelementptr inbounds nuw i8, ptr %.08061047, i64 8
  %i.agi = getelementptr inbounds nuw i8, ptr %.08041049, i64 16
  %i.agj = icmp ult i32 %i.agf, %6
  %bc1277 = bitcast <2 x i64> %i.age to <4 x i32>
  %i.agk = extractelement <4 x i32> %bc1277, i64 2
  br i1 %i.agj, label %.lr.ph1052, label %.critedge, !llvm.loop !49

.critedge860.thread928:                           ; preds = %bb.aw, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ei

.critedge860:                                     ; preds = %.critedge, %.critedge.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.cd

bb.bm:                                            ; preds = %._crit_edge1015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1056) %i.c, i8 0, i64 1056, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2112) %i.d, i8 0, i64 2112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.agl = sub nuw nsw i32 %4, %i.ap
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_16frwd_struct_avx2EPKhi(ptr noundef %13, ptr noundef nonnull %0, i32 noundef %i.agl)
  store i16 2, ptr %i.c, align 16, !tbaa !66
  br i1 %.not1155, label %.critedge862.preheader, label %.lr.ph1022

.lr.ph1022:                                       ; preds = %bb.bm
  %i.agm = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.agn = shufflevector <4 x i32> %i.agm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ago = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 4 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.agr = zext i32 %8 to i64
  %i.ags = trunc nuw nsw i32 %2 to i16
  %i.agt = sub nuw nsw i16 13, %i.ags
  %.splatinsert = insertelement <16 x i16> poison, i16 %i.agt, i64 0
  %.splat = shufflevector <16 x i16> %.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.bn

.critedge862.preheader:                           ; preds = %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit, %bb.bm
  br i1 %i.be, label %.lr.ph1036, label %.critedge862._crit_edge

.lr.ph1036:                                       ; preds = %.critedge862.preheader
  %i.agu = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %i.agv = shufflevector <8 x i32> %i.agu, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.agw = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 4 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.agz = zext i32 %8 to i64
  %i.aha = trunc nuw nsw i32 %2 to i16
  %i.ahb = sub nuw nsw i16 13, %i.aha
  %.splatinsert1158 = insertelement <16 x i16> poison, i16 %i.ahb, i64 0
  %.splat1159 = shufflevector <16 x i16> %.splatinsert1158, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.bu

bb.bn:                                            ; preds = %.lr.ph1022, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit
  %i.ahc = phi i32 [ 2, %.lr.ph1022 ], [ %i.anh, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ]
  %.07981020 = phi i32 [ 0, %.lr.ph1022 ], [ %i.and, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ]
  %.07991019 = phi ptr [ %1, %.lr.ph1022 ], [ %i.ang, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 3 uses
  %.08001018 = phi ptr [ %i.c, %.lr.ph1022 ], [ %i.anf, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 2 uses
  %.08011017 = phi ptr [ %i.a, %.lr.ph1022 ], [ %i.ane, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 2 uses
  %i.ahd = load <2 x i64>, ptr %.08011017, align 1, !tbaa !10 ; 2 uses
  %i.ahe = bitcast <2 x i64> %i.ahd to <4 x i32>
  %i.ahf = lshr <4 x i32> %i.ahe, splat (i32 16)  ; 3 uses
  %i.ahg = icmp sgt <4 x i32> %i.ahf, %i.agn
  %i.ahh = sext <4 x i1> %i.ahg to <4 x i32>
  %i.ahi = bitcast <4 x i32> %i.ahh to <2 x i64>  ; 2 uses
  %i.ahj = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.ahi, <2 x i64> %i.ahi)
  %.not.not = icmp eq i32 %i.ahj, 0
  br i1 %.not.not, label %.thread933, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ahk = bitcast <2 x i64> %i.ahd to <8 x i16>
  %i.ahl = shufflevector <8 x i16> %i.ahk, <8 x i16> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 4, i32 6, i32 6, i32 6, i32 6>
  %i.ahm = and <16 x i16> %i.ahl, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.ahn = icmp eq <16 x i16> %i.ahm, zeroinitializer ; 4 uses
  %i.aho = sext <16 x i1> %i.ahn to <16 x i16>
  %i.ahp = bitcast <16 x i16> %i.aho to <32 x i8>
  %i.ahq = icmp sgt <32 x i8> %i.ahp, splat (i8 -1)
  %i.ahr = bitcast <32 x i1> %i.ahq to i32
  %.not.i895 = icmp eq i32 %i.ahr, 0
  br i1 %.not.i895, label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ahs = bitcast <4 x i32> %i.ahf to <16 x i8>
  %38 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.ahs, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.aht = bitcast <16 x i8> %38 to <4 x i32>
  %i.ahu = or disjoint <4 x i32> %i.ahf, %i.aht
  %i.ahv = shufflevector <4 x i32> %i.ahu, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ahw = shl <16 x i16> %i.ahm, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.ahx = lshr <16 x i16> %i.ahw, splat (i16 15) ; 2 uses
  %i.ahy = bitcast <8 x i32> %i.ahv to <16 x i16>
  %i.ahz = sub <16 x i16> %i.ahy, %i.ahx
  %.inner1649 = select <16 x i1> %i.ahn, <16 x i16> zeroinitializer, <16 x i16> %i.ahz ; 2 uses
  %39 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <16 x i16> %.inner1649, <16 x i32> <i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.aia = add <16 x i16> %39, %.inner1649        ; 2 uses
  %40 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <16 x i16> %i.aia, <16 x i32> <i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.aib = add <16 x i16> %i.aia, %40             ; 2 uses
  %41 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.aib, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  %i.aic = add <16 x i16> %i.aib, %41             ; 3 uses
  %i.aid = extractelement <16 x i16> %i.aic, i64 7 ; 2 uses
  %i.aie = extractelement <16 x i16> %i.aic, i64 15 ; 2 uses
  %i.aif = zext i16 %i.aie to i32                 ; 3 uses
  %i.aig = bitcast <16 x i16> %i.aic to <32 x i8>
  %42 = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.aig, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %.not116.i = icmp eq i16 %i.aid, 0
  br i1 %.not116.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.aih = zext i16 %i.aid to i32                 ; 3 uses
  %i.aii = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.aij = load i32, ptr %i.ago, align 8, !tbaa !29
  %i.aik = sub i32 %i.aij, %i.aih
  store i32 %i.aik, ptr %i.ago, align 8, !tbaa !29
  %i.ail = lshr i32 %i.aih, 3
  %i.aim = and i32 %i.ail, 24
  %i.ain = zext nneg i32 %i.aim to i64
  %i.aio = getelementptr inbounds nuw i8, ptr %i.agp, i64 %i.ain ; 2 uses
  %i.aip = and i32 %i.aih, 63                     ; 2 uses
  %i.aiq = load <2 x i64>, ptr %i.aio, align 8, !tbaa !10 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  %i.ais = load <2 x i64>, ptr %i.air, align 8, !tbaa !10 ; 3 uses
  %i.ait = zext nneg i32 %i.aip to i64
  %i.aiu = insertelement <2 x i64> poison, i64 %i.ait, i64 0
  %i.aiv = shufflevector <2 x i64> %i.aiu, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aiw = lshr <2 x i64> %i.aiq, %i.aiv
  %i.aix = shufflevector <2 x i64> %i.aiq, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aiy = sub nuw nsw i32 64, %i.aip
  %i.aiz = zext nneg i32 %i.aiy to i64
  %i.aja = insertelement <2 x i64> poison, i64 %i.aiz, i64 0
  %i.ajb = shufflevector <2 x i64> %i.aja, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ajc = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aix, <2 x i64> %i.ajb)
  %i.ajd = or <2 x i64> %i.ajc, %i.aiw
  %43 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ais, <2 x i32> <i32 1, i32 2>
  %i.aje = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %43, <2 x i64> %i.ajb)
  %i.ajf = or <2 x i64> %i.ajd, %i.aje
  store <2 x i64> %i.ajf, ptr %i.agp, align 8, !tbaa !10
  %i.ajg = lshr <2 x i64> %i.ais, %i.aiv
  %i.ajh = shufflevector <2 x i64> %i.ais, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aji = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ajh, <2 x i64> %i.ajb)
  %i.ajj = or <2 x i64> %i.aji, %i.ajg
  store <2 x i64> %i.ajj, ptr %i.agq, align 8, !tbaa !10
  %i.ajk = shufflevector <2 x i64> %i.aii, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0112.i = phi <4 x i64> [ %i.ajk, %bb.bq ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.bp ]
  %.not117.i = icmp eq i16 %i.aie, 0
  br i1 %.not117.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ajl = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.ajm = load i32, ptr %i.ago, align 8, !tbaa !29
  %i.ajn = sub i32 %i.ajm, %i.aif
  store i32 %i.ajn, ptr %i.ago, align 8, !tbaa !29
  %i.ajo = lshr i32 %i.aif, 3
  %i.ajp = and i32 %i.ajo, 24
  %i.ajq = zext nneg i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.agp, i64 %i.ajq ; 2 uses
  %i.ajs = and i32 %i.aif, 63                     ; 2 uses
  %i.ajt = load <2 x i64>, ptr %i.ajr, align 8, !tbaa !10 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajr, i64 16
  %i.ajv = load <2 x i64>, ptr %i.aju, align 8, !tbaa !10 ; 3 uses
  %i.ajw = zext nneg i32 %i.ajs to i64
  %i.ajx = insertelement <2 x i64> poison, i64 %i.ajw, i64 0
  %i.ajy = shufflevector <2 x i64> %i.ajx, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajz = lshr <2 x i64> %i.ajt, %i.ajy
  %i.aka = shufflevector <2 x i64> %i.ajt, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.akb = sub nuw nsw i32 64, %i.ajs
  %i.akc = zext nneg i32 %i.akb to i64
  %i.akd = insertelement <2 x i64> poison, i64 %i.akc, i64 0
  %i.ake = shufflevector <2 x i64> %i.akd, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.akf = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aka, <2 x i64> %i.ake)
  %i.akg = or <2 x i64> %i.akf, %i.ajz
  %44 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ajv, <2 x i32> <i32 1, i32 2>
  %i.akh = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %44, <2 x i64> %i.ake)
  %i.aki = or <2 x i64> %i.akg, %i.akh
  store <2 x i64> %i.aki, ptr %i.agp, align 8, !tbaa !10
  %i.akj = lshr <2 x i64> %i.ajv, %i.ajy
  %i.akk = shufflevector <2 x i64> %i.ajv, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.akl = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.akk, <2 x i64> %i.ake)
  %i.akm = or <2 x i64> %i.akl, %i.akj
  store <2 x i64> %i.akm, ptr %i.agq, align 8, !tbaa !10
  %i.akn = shufflevector <2 x i64> %i.ajl, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0113.i = phi <4 x i64> [ %i.akn, %bb.bs ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.br ]
  %i.ako = shufflevector <4 x i64> %.0112.i, <4 x i64> %.0113.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.akp = bitcast <32 x i8> %42 to <16 x i16>
  %i.akq = lshr <16 x i16> %i.akp, splat (i16 3)
  %i.akr = bitcast <16 x i16> %i.akq to <32 x i8>
  %i.aks = shufflevector <32 x i8> %i.akr, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14, i32 16, i32 16, i32 18, i32 18, i32 20, i32 20, i32 22, i32 22, i32 24, i32 24, i32 26, i32 26, i32 28, i32 28, i32 30, i32 30>
  %i.akt = bitcast <32 x i8> %i.aks to <16 x i16> ; 2 uses
  %i.aku = add <16 x i16> %i.akt, splat (i16 256)
  %i.akv = bitcast <4 x i64> %i.ako to <32 x i8>  ; 2 uses
  %i.akw = bitcast <16 x i16> %i.aku to <32 x i8>
  %i.akx = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.akv, <32 x i8> %i.akw)
  %i.aky = add <16 x i16> %i.akt, splat (i16 513)
  %i.akz = bitcast <16 x i16> %i.aky to <32 x i8>
  %i.ala = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.akv, <32 x i8> %i.akz)
  %i.alb = and <32 x i8> %42, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.alc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.alb)
  %i.ald = bitcast <32 x i8> %i.alc to <16 x i16>
  %i.ale = add <16 x i16> %i.ald, splat (i16 257) ; 2 uses
  %i.alf = bitcast <32 x i8> %i.akx to <16 x i16>
  %i.alg = mul <16 x i16> %i.ale, %i.alf
  %i.alh = lshr <16 x i16> %i.alg, splat (i16 8)
  %i.ali = bitcast <32 x i8> %i.ala to <16 x i16>
  %i.alj = mul <16 x i16> %i.ale, %i.ali
  %.inner1650 = and <16 x i16> %i.alj, splat (i16 -256)
  %.inner1651 = or disjoint <16 x i16> %.inner1650, %i.alh
  %i.alk = add <8 x i32> %i.ahv, splat (i32 -65537) ; 2 uses
  %.inner1652 = and <8 x i32> %i.alk, <i32 31, i32 0, i32 0, i32 0, i32 31, i32 0, i32 0, i32 0> ; 2 uses
  %i.all = bitcast <8 x i32> %i.alk to <32 x i8>
  %i.alm = shufflevector <32 x i8> %i.all, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %i.aln = sub nuw nsw <16 x i16> splat (i16 2), %i.ahx ; 2 uses
  %.inner1653 = and <16 x i16> %i.aln, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0> ; 2 uses
  %.inner1654 = and <16 x i16> %i.aln, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1> ; 2 uses
  %i.alo = shufflevector <16 x i16> %.inner1653, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.alp = bitcast <8 x i32> %.inner1652 to <16 x i16>
  %i.alq = shufflevector <16 x i16> %i.alp, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.alr = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.alo, <8 x i16> %i.alq)
  %i.als = shufflevector <16 x i16> %.inner1653, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alt = bitcast <8 x i32> %.inner1652 to <16 x i16>
  %i.alu = shufflevector <16 x i16> %i.alt, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.alv = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.als, <8 x i16> %i.alu)
  %i.alw = shufflevector <8 x i16> %i.alr, <8 x i16> %i.alv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alx = shufflevector <16 x i16> %.inner1654, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aly = bitcast <32 x i8> %i.alm to <16 x i16>
  %i.alz = shufflevector <16 x i16> %i.aly, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ama = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.alx, <8 x i16> %i.alz)
  %i.amb = shufflevector <16 x i16> %.inner1654, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amc = bitcast <32 x i8> %i.alm to <16 x i16>
  %i.amd = shufflevector <16 x i16> %i.amc, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ame = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.amb, <8 x i16> %i.amd)
  %i.amf = shufflevector <8 x i16> %i.ama, <8 x i16> %i.ame, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.inner1655 = or <16 x i16> %i.amf, %i.alw      ; 2 uses
  %i.amg = add <16 x i16> %.inner1655, splat (i16 -1)
  %.inner1656 = and <16 x i16> %.inner1651, %i.amg
  %i.amh = and <16 x i16> %i.ahw, splat (i16 2048)
  %.not1682 = icmp eq <16 x i16> %i.amh, zeroinitializer
  %.inner1657 = select <16 x i1> %.not1682, <16 x i16> zeroinitializer, <16 x i16> %.inner1655
  %.inner1658 = or <16 x i16> %.inner1656, %.inner1657 ; 2 uses
  %i.ami = shl <16 x i16> %.inner1658, splat (i16 15)
  %.inner1659 = or <16 x i16> %.inner1658, splat (i16 1) ; 2 uses
  %i.amj = add <16 x i16> %.inner1659, splat (i16 2)
  %i.amk = shl <16 x i16> %i.amj, %.splat
  %i.aml = or <16 x i16> %i.ami, %i.amk
  %.inner1660 = select <16 x i1> %i.ahn, <16 x i16> zeroinitializer, <16 x i16> %i.aml
  %.inner1661 = select <16 x i1> %i.ahn, <16 x i16> zeroinitializer, <16 x i16> %.inner1659
  %i.amm = bitcast <16 x i16> %.inner1661 to <32 x i8> ; 2 uses
  %i.amn = shufflevector <32 x i8> %i.amm, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 6, i32 7, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 18, i32 19, i32 22, i32 23, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.amo = shufflevector <32 x i8> %i.amm, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 10, i32 11, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 26, i32 27, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.amp = or <32 x i8> %i.amn, %i.amo
  %i.amq = bitcast <32 x i8> %i.amp to <4 x i64>  ; 2 uses
  %i.amr = shufflevector <4 x i64> %i.amq, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ams = or <2 x i64> %i.amr, splat (i64 562958543486978)
  %i.amt = shufflevector <4 x i64> %i.amq, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.amu = or <2 x i64> %i.ams, %i.amt
  %i.amv = bitcast <16 x i16> %.inner1660 to <32 x i8>
  br label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit

_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit: ; preds = %bb.bo, %bb.bt
  %.0918 = phi <2 x i64> [ splat (i64 562958543486978), %bb.bo ], [ %i.amu, %bb.bt ]
  %.0.i896 = phi <32 x i8> [ zeroinitializer, %bb.bo ], [ %i.amv, %bb.bt ] ; 2 uses
  %i.amw = and i32 %i.ahc, 65535
  %i.amx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.amw, i64 0
  %i.amy = bitcast <4 x i32> %i.amx to <2 x i64>
  %i.amz = or <2 x i64> %.0918, %i.amy            ; 2 uses
  store <2 x i64> %i.amz, ptr %.08001018, align 1, !tbaa !10
  %i.ana = shufflevector <32 x i8> %.0.i896, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 0, i32 1, i32 32, i32 32, i32 4, i32 5, i32 32, i32 32, i32 8, i32 9, i32 32, i32 32, i32 12, i32 13, i32 48, i32 48, i32 16, i32 17, i32 48, i32 48, i32 20, i32 21, i32 48, i32 48, i32 24, i32 25, i32 48, i32 48, i32 28, i32 29>
  %i.anb = shufflevector <32 x i8> %.0.i896, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 2, i32 3, i32 32, i32 32, i32 6, i32 7, i32 32, i32 32, i32 10, i32 11, i32 32, i32 32, i32 14, i32 15, i32 48, i32 48, i32 18, i32 19, i32 48, i32 48, i32 22, i32 23, i32 48, i32 48, i32 26, i32 27, i32 48, i32 48, i32 30, i32 31>
  store <32 x i8> %i.ana, ptr %.07991019, align 1, !tbaa !10
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %.07991019, i64 %i.agr
  store <32 x i8> %i.anb, ptr %i.anc, align 1, !tbaa !10
  %i.and = add i32 %.07981020, 8                  ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.08011017, i64 16
  %i.anf = getelementptr inbounds nuw i8, ptr %.08001018, i64 8
  %i.ang = getelementptr inbounds nuw i8, ptr %.07991019, i64 32
  %.not = icmp ult i32 %i.and, %6
  %bc = bitcast <2 x i64> %i.amz to <4 x i32>
  %i.anh = extractelement <4 x i32> %bc, i64 2
  br i1 %.not, label %bb.bn, label %.critedge862.preheader, !llvm.loop !50

bb.bu:                                            ; preds = %.lr.ph1036, %.critedge862
  %.07941035 = phi i32 [ 2, %.lr.ph1036 ], [ %i.aoz, %.critedge862 ] ; 3 uses
  %i.ani = lshr exact i32 %.07941035, 1
  %i.anj = mul i32 %i.ani, %i.au
  %i.ank = zext i32 %i.anj to i64
  %i.anl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ank ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bw
  %.07901026 = phi i32 [ 0, %bb.bu ], [ %i.aos, %bb.bw ]
  %.07911025 = phi ptr [ %i.anl, %bb.bu ], [ %i.aou, %bb.bw ] ; 2 uses
  %.07921024 = phi ptr [ %i.d, %bb.bu ], [ %i.aov, %bb.bw ] ; 2 uses
  %.07931023 = phi ptr [ %i.c, %bb.bu ], [ %i.aot, %bb.bw ] ; 3 uses
  %i.anm = load <2 x i64>, ptr %.07931023, align 1, !tbaa !10
  %i.ann = getelementptr inbounds nuw i8, ptr %.07931023, i64 2
  %i.ano = load <2 x i64>, ptr %i.ann, align 1, !tbaa !10
  %i.anp = or <2 x i64> %i.ano, %i.anm
  %i.anq = bitcast <2 x i64> %i.anp to <8 x i16>
  %i.anr = zext <8 x i16> %i.anq to <8 x i32>     ; 2 uses
  %i.ans = lshr <8 x i32> %i.anr, splat (i32 8)
  %i.ant = xor <8 x i32> %i.ans, splat (i32 -1)
  %i.anu = and <8 x i32> %i.ant, %i.anr
  %i.anv = uitofp nneg <8 x i32> %i.anu to <8 x float>
  %i.anw = bitcast <8 x float> %i.anv to <8 x i32>
  %i.anx = lshr <8 x i32> %i.anw, splat (i32 23)
  %i.any = bitcast <8 x i32> %i.anx to <16 x i16>
  %i.anz = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.any)
  %i.aoa = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.anz, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.aob = bitcast <16 x i16> %i.aoa to <8 x i32>
  %i.aoc = sub nsw <8 x i32> splat (i32 31), %i.aob
  %i.aod = load <4 x i64>, ptr %.07911025, align 1, !tbaa !10 ; 3 uses
  %i.aoe = bitcast <4 x i64> %i.aod to <8 x i32>
  %i.aof = bitcast <4 x i64> %i.aod to <8 x i32>
  %i.aog = and <8 x i32> %i.aof, splat (i32 240)
  %i.aoh = add <8 x i32> %i.aoe, splat (i32 240)
  %i.aoi = and <8 x i32> %i.aoh, %i.aog
  %.not942 = icmp eq <8 x i32> %i.aoi, zeroinitializer
  %i.aoj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aoc, <8 x i32> splat (i32 1))
  %i.aok = select <8 x i1> %.not942, <8 x i32> splat (i32 1), <8 x i32> %i.aoj
  %i.aol = bitcast <4 x i64> %i.aod to <8 x i32>
  %i.aom = lshr <8 x i32> %i.aol, splat (i32 16)
  %i.aon = add nuw <8 x i32> %i.aok, %i.aom       ; 2 uses
  %i.aoo = icmp sgt <8 x i32> %i.aon, %i.agv
  %i.aop = sext <8 x i1> %i.aoo to <8 x i32>
  %i.aoq = bitcast <8 x i32> %i.aop to <4 x i64>  ; 2 uses
  %i.aor = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.aoq, <4 x i64> %i.aoq)
  %.not838.not = icmp eq i32 %i.aor, 0
  br i1 %.not838.not, label %.thread933, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store <8 x i32> %i.aon, ptr %.07921024, align 1, !tbaa !10
  %i.aos = add i32 %.07901026, 16                 ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %.07931023, i64 16
  %i.aou = getelementptr inbounds nuw i8, ptr %.07911025, i64 32
  %i.aov = getelementptr inbounds nuw i8, ptr %.07921024, i64 32
  %.not837 = icmp ugt i32 %i.aos, %6
  br i1 %.not837, label %bb.bx, label %bb.bv, !llvm.loop !51

bb.bx:                                            ; preds = %bb.bw
  store i16 2, ptr %i.c, align 16, !tbaa !66
  br i1 %.not1155, label %.critedge862, label %.lr.ph1033.preheader

.lr.ph1033.preheader:                             ; preds = %bb.bx
  %i.aow = mul i32 %.07941035, %8
  %i.aox = zext i32 %i.aow to i64
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aox
  br label %.lr.ph1033

.critedge862:                                     ; preds = %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903, %bb.bx
  %i.aoz = add i32 %.07941035, 2                  ; 2 uses
  %i.apa = icmp ult i32 %i.aoz, %7
  br i1 %i.apa, label %bb.bu, label %.critedge862._crit_edge, !llvm.loop !52

.lr.ph1033:                                       ; preds = %.lr.ph1033.preheader, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903
  %i.apb = phi i32 [ %i.avd, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ 2, %.lr.ph1033.preheader ]
  %.07851031 = phi i32 [ %i.aux, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ 0, %.lr.ph1033.preheader ]
  %.07861030 = phi ptr [ %i.ava, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.aoy, %.lr.ph1033.preheader ] ; 3 uses
  %.07871029 = phi ptr [ %i.auy, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.anl, %.lr.ph1033.preheader ] ; 2 uses
  %.07881028 = phi ptr [ %i.avb, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.d, %.lr.ph1033.preheader ] ; 2 uses
  %.07891027 = phi ptr [ %i.auz, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.c, %.lr.ph1033.preheader ] ; 2 uses
  %i.apc = load <8 x i16>, ptr %.07871029, align 1, !tbaa !10
  %i.apd = shufflevector <8 x i16> %i.apc, <8 x i16> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 4, i32 6, i32 6, i32 6, i32 6>
  %i.ape = and <16 x i16> %i.apd, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.apf = icmp eq <16 x i16> %i.ape, zeroinitializer ; 4 uses
  %i.apg = sext <16 x i1> %i.apf to <16 x i16>
  %i.aph = bitcast <16 x i16> %i.apg to <32 x i8>
  %i.api = icmp sgt <32 x i8> %i.aph, splat (i8 -1)
  %i.apj = bitcast <32 x i1> %i.api to i32
  %.not.i897 = icmp eq i32 %i.apj, 0
  br i1 %.not.i897, label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903, label %bb.by

bb.by:                                            ; preds = %.lr.ph1033
  %i.apk = load <2 x i64>, ptr %.07881028, align 1, !tbaa !10 ; 2 uses
  %i.apl = bitcast <2 x i64> %i.apk to <16 x i8>
  %45 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.apl, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.apm = bitcast <16 x i8> %45 to <2 x i64>
  %i.apn = or <2 x i64> %i.apk, %i.apm
  %i.apo = bitcast <2 x i64> %i.apn to <4 x i32>
  %i.app = shufflevector <4 x i32> %i.apo, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.apq = shl <16 x i16> %i.ape, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.apr = lshr <16 x i16> %i.apq, splat (i16 15) ; 2 uses
  %i.aps = bitcast <8 x i32> %i.app to <16 x i16>
  %i.apt = sub <16 x i16> %i.aps, %i.apr
  %.inner1664 = select <16 x i1> %i.apf, <16 x i16> zeroinitializer, <16 x i16> %i.apt ; 2 uses
  %46 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <16 x i16> %.inner1664, <16 x i32> <i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.apu = add <16 x i16> %46, %.inner1664        ; 2 uses
  %47 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <16 x i16> %i.apu, <16 x i32> <i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.apv = add <16 x i16> %i.apu, %47             ; 2 uses
  %48 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.apv, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  %i.apw = add <16 x i16> %i.apv, %48             ; 3 uses
  %i.apx = extractelement <16 x i16> %i.apw, i64 7 ; 2 uses
  %i.apy = extractelement <16 x i16> %i.apw, i64 15 ; 2 uses
  %i.apz = zext i16 %i.apy to i32                 ; 3 uses
  %i.aqa = bitcast <16 x i16> %i.apw to <32 x i8>
  %49 = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.aqa, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %.not116.i898 = icmp eq i16 %i.apx, 0
  br i1 %.not116.i898, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.aqb = zext i16 %i.apx to i32                 ; 3 uses
  %i.aqc = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.aqd = load i32, ptr %i.agw, align 8, !tbaa !29
  %i.aqe = sub i32 %i.aqd, %i.aqb
  store i32 %i.aqe, ptr %i.agw, align 8, !tbaa !29
  %i.aqf = lshr i32 %i.aqb, 3
  %i.aqg = and i32 %i.aqf, 24
  %i.aqh = zext nneg i32 %i.aqg to i64
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.agx, i64 %i.aqh ; 2 uses
  %i.aqj = and i32 %i.aqb, 63                     ; 2 uses
  %i.aqk = load <2 x i64>, ptr %i.aqi, align 8, !tbaa !10 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqi, i64 16
  %i.aqm = load <2 x i64>, ptr %i.aql, align 8, !tbaa !10 ; 3 uses
  %i.aqn = zext nneg i32 %i.aqj to i64
  %i.aqo = insertelement <2 x i64> poison, i64 %i.aqn, i64 0
  %i.aqp = shufflevector <2 x i64> %i.aqo, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqq = lshr <2 x i64> %i.aqk, %i.aqp
  %i.aqr = shufflevector <2 x i64> %i.aqk, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aqs = sub nuw nsw i32 64, %i.aqj
  %i.aqt = zext nneg i32 %i.aqs to i64
  %i.aqu = insertelement <2 x i64> poison, i64 %i.aqt, i64 0
  %i.aqv = shufflevector <2 x i64> %i.aqu, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aqw = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aqr, <2 x i64> %i.aqv)
  %i.aqx = or <2 x i64> %i.aqw, %i.aqq
  %50 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.aqm, <2 x i32> <i32 1, i32 2>
  %i.aqy = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %50, <2 x i64> %i.aqv)
  %i.aqz = or <2 x i64> %i.aqx, %i.aqy
  store <2 x i64> %i.aqz, ptr %i.agx, align 8, !tbaa !10
  %i.ara = lshr <2 x i64> %i.aqm, %i.aqp
  %i.arb = shufflevector <2 x i64> %i.aqm, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.arc = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.arb, <2 x i64> %i.aqv)
  %i.ard = or <2 x i64> %i.arc, %i.ara
  store <2 x i64> %i.ard, ptr %i.agy, align 8, !tbaa !10
  %i.are = shufflevector <2 x i64> %i.aqc, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0112.i899 = phi <4 x i64> [ %i.are, %bb.bz ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.by ]
  %.not117.i900 = icmp eq i16 %i.apy, 0
  br i1 %.not117.i900, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.arf = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.arg = load i32, ptr %i.agw, align 8, !tbaa !29
  %i.arh = sub i32 %i.arg, %i.apz
  store i32 %i.arh, ptr %i.agw, align 8, !tbaa !29
  %i.ari = lshr i32 %i.apz, 3
  %i.arj = and i32 %i.ari, 24
  %i.ark = zext nneg i32 %i.arj to i64
  %i.arl = getelementptr inbounds nuw i8, ptr %i.agx, i64 %i.ark ; 2 uses
  %i.arm = and i32 %i.apz, 63                     ; 2 uses
  %i.arn = load <2 x i64>, ptr %i.arl, align 8, !tbaa !10 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arl, i64 16
  %i.arp = load <2 x i64>, ptr %i.aro, align 8, !tbaa !10 ; 3 uses
  %i.arq = zext nneg i32 %i.arm to i64
  %i.arr = insertelement <2 x i64> poison, i64 %i.arq, i64 0
  %i.ars = shufflevector <2 x i64> %i.arr, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.art = lshr <2 x i64> %i.arn, %i.ars
  %i.aru = shufflevector <2 x i64> %i.arn, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.arv = sub nuw nsw i32 64, %i.arm
  %i.arw = zext nneg i32 %i.arv to i64
  %i.arx = insertelement <2 x i64> poison, i64 %i.arw, i64 0
  %i.ary = shufflevector <2 x i64> %i.arx, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.arz = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aru, <2 x i64> %i.ary)
  %i.asa = or <2 x i64> %i.arz, %i.art
  %51 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.arp, <2 x i32> <i32 1, i32 2>
  %i.asb = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %51, <2 x i64> %i.ary)
  %i.asc = or <2 x i64> %i.asa, %i.asb
  store <2 x i64> %i.asc, ptr %i.agx, align 8, !tbaa !10
  %i.asd = lshr <2 x i64> %i.arp, %i.ars
  %i.ase = shufflevector <2 x i64> %i.arp, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.asf = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ase, <2 x i64> %i.ary)
  %i.asg = or <2 x i64> %i.asf, %i.asd
  store <2 x i64> %i.asg, ptr %i.agy, align 8, !tbaa !10
  %i.ash = shufflevector <2 x i64> %i.arf, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0113.i901 = phi <4 x i64> [ %i.ash, %bb.cb ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.ca ]
  %i.asi = shufflevector <4 x i64> %.0112.i899, <4 x i64> %.0113.i901, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.asj = bitcast <32 x i8> %49 to <16 x i16>
  %i.ask = lshr <16 x i16> %i.asj, splat (i16 3)
  %i.asl = bitcast <16 x i16> %i.ask to <32 x i8>
  %i.asm = shufflevector <32 x i8> %i.asl, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14, i32 16, i32 16, i32 18, i32 18, i32 20, i32 20, i32 22, i32 22, i32 24, i32 24, i32 26, i32 26, i32 28, i32 28, i32 30, i32 30>
  %i.asn = bitcast <32 x i8> %i.asm to <16 x i16> ; 2 uses
  %i.aso = add <16 x i16> %i.asn, splat (i16 256)
  %i.asp = bitcast <4 x i64> %i.asi to <32 x i8>  ; 2 uses
  %i.asq = bitcast <16 x i16> %i.aso to <32 x i8>
  %i.asr = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.asp, <32 x i8> %i.asq)
  %i.ass = add <16 x i16> %i.asn, splat (i16 513)
  %i.ast = bitcast <16 x i16> %i.ass to <32 x i8>
  %i.asu = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.asp, <32 x i8> %i.ast)
  %i.asv = and <32 x i8> %49, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.asw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.asv)
  %i.asx = bitcast <32 x i8> %i.asw to <16 x i16>
  %i.asy = add <16 x i16> %i.asx, splat (i16 257) ; 2 uses
  %i.asz = bitcast <32 x i8> %i.asr to <16 x i16>
  %i.ata = mul <16 x i16> %i.asy, %i.asz
  %i.atb = lshr <16 x i16> %i.ata, splat (i16 8)
  %i.atc = bitcast <32 x i8> %i.asu to <16 x i16>
  %i.atd = mul <16 x i16> %i.asy, %i.atc
  %.inner1665 = and <16 x i16> %i.atd, splat (i16 -256)
  %.inner1666 = or disjoint <16 x i16> %.inner1665, %i.atb
  %i.ate = add <8 x i32> %i.app, splat (i32 -65537) ; 2 uses
  %.inner1667 = and <8 x i32> %i.ate, <i32 31, i32 0, i32 0, i32 0, i32 31, i32 0, i32 0, i32 0> ; 2 uses
  %i.atf = bitcast <8 x i32> %i.ate to <32 x i8>
  %i.atg = shufflevector <32 x i8> %i.atf, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %i.ath = sub nuw nsw <16 x i16> splat (i16 2), %i.apr ; 2 uses
  %.inner1668 = and <16 x i16> %i.ath, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0> ; 2 uses
  %.inner1669 = and <16 x i16> %i.ath, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1> ; 2 uses
  %i.ati = shufflevector <16 x i16> %.inner1668, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.atj = bitcast <8 x i32> %.inner1667 to <16 x i16>
  %i.atk = shufflevector <16 x i16> %i.atj, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atl = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ati, <8 x i16> %i.atk)
  %i.atm = shufflevector <16 x i16> %.inner1668, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.atn = bitcast <8 x i32> %.inner1667 to <16 x i16>
  %i.ato = shufflevector <16 x i16> %i.atn, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atp = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.atm, <8 x i16> %i.ato)
  %i.atq = shufflevector <8 x i16> %i.atl, <8 x i16> %i.atp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.atr = shufflevector <16 x i16> %.inner1669, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ats = bitcast <32 x i8> %i.atg to <16 x i16>
  %i.att = shufflevector <16 x i16> %i.ats, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atu = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.atr, <8 x i16> %i.att)
  %i.atv = shufflevector <16 x i16> %.inner1669, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.atw = bitcast <32 x i8> %i.atg to <16 x i16>
  %i.atx = shufflevector <16 x i16> %i.atw, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aty = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.atv, <8 x i16> %i.atx)
  %i.atz = shufflevector <8 x i16> %i.atu, <8 x i16> %i.aty, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.inner1670 = or <16 x i16> %i.atz, %i.atq      ; 2 uses
  %i.aua = add <16 x i16> %.inner1670, splat (i16 -1)
  %.inner1671 = and <16 x i16> %.inner1666, %i.aua
  %i.aub = and <16 x i16> %i.apq, splat (i16 2048)
  %.not1683 = icmp eq <16 x i16> %i.aub, zeroinitializer
  %.inner1672 = select <16 x i1> %.not1683, <16 x i16> zeroinitializer, <16 x i16> %.inner1670
  %.inner1673 = or <16 x i16> %.inner1671, %.inner1672 ; 2 uses
  %i.auc = shl <16 x i16> %.inner1673, splat (i16 15)
  %.inner1674 = or <16 x i16> %.inner1673, splat (i16 1) ; 2 uses
  %i.aud = add <16 x i16> %.inner1674, splat (i16 2)
  %i.aue = shl <16 x i16> %i.aud, %.splat1159
  %i.auf = or <16 x i16> %i.auc, %i.aue
  %.inner1675 = select <16 x i1> %i.apf, <16 x i16> zeroinitializer, <16 x i16> %i.auf
  %.inner1676 = select <16 x i1> %i.apf, <16 x i16> zeroinitializer, <16 x i16> %.inner1674
  %i.aug = bitcast <16 x i16> %.inner1676 to <32 x i8> ; 2 uses
  %i.auh = shufflevector <32 x i8> %i.aug, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 6, i32 7, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 18, i32 19, i32 22, i32 23, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.aui = shufflevector <32 x i8> %i.aug, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 10, i32 11, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 26, i32 27, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.auj = or <32 x i8> %i.auh, %i.aui
  %i.auk = bitcast <32 x i8> %i.auj to <4 x i64>  ; 2 uses
  %i.aul = shufflevector <4 x i64> %i.auk, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.aum = or <2 x i64> %i.aul, splat (i64 562958543486978)
  %i.aun = shufflevector <4 x i64> %i.auk, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.auo = or <2 x i64> %i.aum, %i.aun
  %i.aup = bitcast <16 x i16> %.inner1675 to <32 x i8>
  br label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903

_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903: ; preds = %.lr.ph1033, %bb.cc
  %.0 = phi <2 x i64> [ splat (i64 562958543486978), %.lr.ph1033 ], [ %i.auo, %bb.cc ]
  %.0.i902 = phi <32 x i8> [ zeroinitializer, %.lr.ph1033 ], [ %i.aup, %bb.cc ] ; 2 uses
  %i.auq = and i32 %i.apb, 65535
  %i.aur = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.auq, i64 0
  %i.aus = bitcast <4 x i32> %i.aur to <2 x i64>
  %i.aut = or <2 x i64> %.0, %i.aus               ; 2 uses
  store <2 x i64> %i.aut, ptr %.07891027, align 1, !tbaa !10
  %i.auu = shufflevector <32 x i8> %.0.i902, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 0, i32 1, i32 32, i32 32, i32 4, i32 5, i32 32, i32 32, i32 8, i32 9, i32 32, i32 32, i32 12, i32 13, i32 48, i32 48, i32 16, i32 17, i32 48, i32 48, i32 20, i32 21, i32 48, i32 48, i32 24, i32 25, i32 48, i32 48, i32 28, i32 29>
  %i.auv = shufflevector <32 x i8> %.0.i902, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 2, i32 3, i32 32, i32 32, i32 6, i32 7, i32 32, i32 32, i32 10, i32 11, i32 32, i32 32, i32 14, i32 15, i32 48, i32 48, i32 18, i32 19, i32 48, i32 48, i32 22, i32 23, i32 48, i32 48, i32 26, i32 27, i32 48, i32 48, i32 30, i32 31>
  store <32 x i8> %i.auu, ptr %.07861030, align 1, !tbaa !10
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %.07861030, i64 %i.agz
  store <32 x i8> %i.auv, ptr %i.auw, align 1, !tbaa !10
  %i.aux = add nuw i32 %.07851031, 8              ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %.07871029, i64 16
  %i.auz = getelementptr inbounds nuw i8, ptr %.07891027, i64 8
  %i.ava = getelementptr inbounds nuw i8, ptr %.07861030, i64 32
  %i.avb = getelementptr inbounds nuw i8, ptr %.07881028, i64 16
  %i.avc = icmp ult i32 %i.aux, %6
  %bc1275 = bitcast <2 x i64> %i.aut to <4 x i32>
  %i.avd = extractelement <4 x i32> %bc1275, i64 2
  br i1 %i.avc, label %.lr.ph1033, label %.critedge862, !llvm.loop !53

.thread933:                                       ; preds = %bb.bn, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ei

.critedge862._crit_edge:                          ; preds = %.critedge862, %.critedge862.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.cd

bb.cd:                                            ; preds = %.critedge862._crit_edge, %.critedge860
  %i.ave = icmp ugt i32 %.1697, 1
  br i1 %i.ave, label %bb.ce, label %bb.ei

bb.ce:                                            ; preds = %bb.cd
  %i.avf = add i32 %6, 3
  %i.avg = lshr i32 %i.avf, 2
  %i.avh = add nuw nsw i32 %i.avg, 9
  %i.avi = and i32 %i.avh, 2147483640             ; 11 uses
  %.not1161 = icmp eq i32 %7, 0                   ; 3 uses
  br i1 %.not1161, label %._crit_edge1066, label %.lr.ph1065

.lr.ph1065:                                       ; preds = %bb.ce
  %i.avj = zext i32 %i.au to i64
  %i.avk = zext i32 %7 to i64                     ; 2 uses
  br i1 %.not1155, label %.lr.ph1065.split.preheader, label %.lr.ph1060.us

.lr.ph1065.split.preheader:                       ; preds = %.lr.ph1065
  %i.avl = add nsw i64 %i.avk, -1
  %i.avm = lshr i64 %i.avl, 2
  %i.avn = add nuw nsw i64 %i.avm, 1              ; 2 uses
  %xtraiter = and i64 %i.avn, 3                   ; 3 uses
  %i.avo = icmp ult i32 %7, 13
  br i1 %i.avo, label %.lr.ph1065.split.epil.preheader, label %.lr.ph1065.split.preheader.new

.lr.ph1065.split.preheader.new:                   ; preds = %.lr.ph1065.split.preheader
  %unroll_iter = and i64 %i.avn, 9223372036854775804
  br label %.lr.ph1065.split

.lr.ph1060.us:                                    ; preds = %.lr.ph1065, %._crit_edge1061.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge1061.us ], [ 0, %.lr.ph1065 ] ; 3 uses
  %i.avp = lshr exact i64 %indvars.iv, 1
  %i.avq = trunc nuw nsw i64 %i.avp to i32
  %i.avr = mul i32 %i.au, %i.avq
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.avs
  %i.avu = lshr exact i64 %indvars.iv, 2
  %i.avv = trunc nuw nsw i64 %i.avu to i32
  %i.avw = mul i32 %i.avi, %i.avv
  %i.avx = zext i32 %i.avw to i64
  %i.avy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.avx
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph1060.us, %bb.cf
  %.07771058.us = phi i32 [ 0, %.lr.ph1060.us ], [ %i.awu, %bb.cf ]
  %.07781057.us = phi ptr [ %i.avy, %.lr.ph1060.us ], [ %i.aww, %bb.cf ] ; 2 uses
  %.07791056.us = phi ptr [ %i.avt, %.lr.ph1060.us ], [ %i.awv, %bb.cf ] ; 3 uses
  %i.avz = load <4 x i32>, ptr %.07791056.us, align 1, !tbaa !10 ; 2 uses
  %i.awa = lshr <4 x i32> %i.avz, splat (i32 4)
  %i.awb = bitcast <4 x i32> %i.awa to <2 x i64>
  %i.awc = and <2 x i64> %i.awb, splat (i64 12884901891)
  %i.awd = lshr <4 x i32> %i.avz, splat (i32 2)
  %i.awe = bitcast <4 x i32> %i.awd to <2 x i64>
  %i.awf = and <2 x i64> %i.awe, splat (i64 206158430256)
  %i.awg = getelementptr inbounds nuw [2 x i8], ptr %.07791056.us, i64 %i.avj
  %i.awh = load <2 x i64>, ptr %i.awg, align 1, !tbaa !10 ; 2 uses
  %i.awi = bitcast <2 x i64> %i.awh to <4 x i32>
  %i.awj = lshr <4 x i32> %i.awi, splat (i32 2)
  %i.awk = bitcast <4 x i32> %i.awj to <2 x i64>
  %i.awl = and <2 x i64> %i.awk, splat (i64 51539607564)
  %i.awm = and <2 x i64> %i.awh, splat (i64 824633721024)
  %i.awn = or disjoint <2 x i64> %i.awf, %i.awm
  %i.awo = or disjoint <2 x i64> %i.awn, %i.awc
  %i.awp = or disjoint <2 x i64> %i.awo, %i.awl
  %i.awq = bitcast <2 x i64> %i.awp to <16 x i8>
  %i.awr = shufflevector <16 x i8> %i.awq, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aws = bitcast <16 x i8> %i.awr to <4 x i32>
  %i.awt = extractelement <4 x i32> %i.aws, i64 0
  store i32 %i.awt, ptr %.07781057.us, align 4, !tbaa !21
  %i.awu = add nuw i32 %.07771058.us, 8           ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.07791056.us, i64 16
  %i.aww = getelementptr inbounds nuw i8, ptr %.07781057.us, i64 4 ; 2 uses
  %i.awx = icmp ult i32 %i.awu, %6
  br i1 %i.awx, label %bb.cf, label %._crit_edge1061.us, !llvm.loop !54

._crit_edge1061.us:                               ; preds = %bb.cf
  store i16 0, ptr %i.aww, align 2, !tbaa !66
end_hunk_0
begin_hunk_1_@_ZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjb:bb.a
  %i.aym = add nuw nsw i64 %i.ayl, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ayh, i8 0, i64 %i.aym, i1 false), !tbaa !10
  %i.ayn = shl nuw nsw i64 %.0780.lcssa, 1
  %i.ayo = getelementptr i8, ptr %i.a, i64 %i.ayn
  %i.ayp = getelementptr i8, ptr %i.ayo, i64 %i.ayl
  %scevgep1213 = getelementptr i8, ptr %i.ayp, i64 16
  br label %._crit_edge1072

._crit_edge1072:                                  ; preds = %._crit_edge1066.thread, %.lr.ph1071.preheader, %._crit_edge1066
  %.0769.lcssa = phi ptr [ %i.ayh, %._crit_edge1066 ], [ %scevgep1213, %.lr.ph1071.preheader ], [ %i.ayc, %._crit_edge1066.thread ]
  store i16 0, ptr %.0769.lcssa, align 2, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(528) %i.e, i8 0, i64 528, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.ayq = zext nneg i32 %4 to i64
  %i.ayr = getelementptr inbounds nuw i8, ptr %0, i64 %i.ayq
  call fastcc void @_ZN4ojph5localL9frwd_initILi0EEEvPNS0_16frwd_struct_avx2EPKhi(ptr noundef %14, ptr noundef nonnull %i.ayr, i32 noundef %5)
  br i1 %.not1161, label %._crit_edge1101, label %.lr.ph1100

.lr.ph1100:                                       ; preds = %._crit_edge1072
  %.promoted1095 = load ptr, ptr %14, align 8
  %i.ays = zext nneg i32 %i.avi to i64
  %i.ayt = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 7 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %14, i64 60 ; 3 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 7 uses
  %i.ayx = sub nsw i32 28, %2
  %i.ayy = shl nuw nsw i32 3, %i.ayx
  %i.ayz = insertelement <4 x i32> poison, i32 %i.ayy, i64 0
  %i.aza = shufflevector <4 x i32> %i.ayz, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.azb = zext i32 %8 to i64                     ; 3 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.azd = zext i32 %7 to i64                     ; 2 uses
  br label %bb.cg

._crit_edge1101:                                  ; preds = %._crit_edge1093, %._crit_edge1072
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %.not843 = icmp eq i32 %.1697, 2
  br i1 %.not843, label %bb.ei, label %bb.ea

bb.cg:                                            ; preds = %.lr.ph1100, %._crit_edge1093
  %indvars.iv1214 = phi i64 [ 0, %.lr.ph1100 ], [ %indvars.iv.next1215, %._crit_edge1093 ] ; 4 uses
  %.lcssa108310961097 = phi ptr [ %.promoted1095, %.lr.ph1100 ], [ %.lcssa1083, %._crit_edge1093 ] ; 2 uses
  %i.aze = sub nuw nsw i64 %i.azd, %indvars.iv1214 ; 3 uses
  %i.azf = icmp samesign ult i64 %i.aze, 4
  br i1 %i.azf, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %.not845 = icmp eq i64 %i.aze, 3
  br i1 %.not845, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.azg = icmp samesign ult i64 %i.aze, 2
  %spec.store.select23 = select i1 %i.azg, i32 4369, i32 13107
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci, %bb.cg
  %.0765 = phi i32 [ %spec.store.select23, %bb.ci ], [ 30583, %bb.ch ], [ 65535, %bb.cg ]
  br i1 %.not1155, label %._crit_edge1093, label %.lr.ph1092.preheader

.lr.ph1092.preheader:                             ; preds = %bb.cj
  %i.azh = trunc nuw i64 %indvars.iv1214 to i32
  %i.azi = mul i32 %8, %i.azh
  %i.azj = zext i32 %i.azi to i64
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.azj
  %i.azl = lshr exact i64 %indvars.iv1214, 2
  %i.azm = trunc nuw nsw i64 %i.azl to i32
  %i.azn = mul i32 %i.avi, %i.azm
  %i.azo = zext i32 %i.azn to i64
  %i.azp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.azo
  br label %.lr.ph1092

._crit_edge1093:                                  ; preds = %bb.dz, %bb.cj
  %.lcssa1083 = phi ptr [ %.lcssa108310961097, %bb.cj ], [ %i.bpe, %bb.dz ] ; 2 uses
  store ptr %.lcssa1083, ptr %14, align 8
  %indvars.iv.next1215 = add nuw nsw i64 %indvars.iv1214, 4 ; 2 uses
  %i.azq = icmp samesign ult i64 %indvars.iv.next1215, %i.azd
  br i1 %i.azq, label %bb.cg, label %._crit_edge1101, !llvm.loop !57

.lr.ph1092:                                       ; preds = %.lr.ph1092.preheader, %bb.dz
  %.07601090 = phi i32 [ %i.azs, %bb.dz ], [ 0, %.lr.ph1092.preheader ]
  %.07611088 = phi ptr [ %i.bpm, %bb.dz ], [ %i.azk, %.lr.ph1092.preheader ] ; 4 uses
  %.07621087 = phi ptr [ %i.bpn, %bb.dz ], [ %i.azp, %.lr.ph1092.preheader ] ; 3 uses
  %.07631086 = phi ptr [ %i.bpo, %bb.dz ], [ %i.e, %.lr.ph1092.preheader ] ; 3 uses
  %.07641085 = phi i32 [ %i.bpl, %bb.dz ], [ 0, %.lr.ph1092.preheader ]
  %.17661084 = phi i32 [ %i.azw, %bb.dz ], [ %.0765, %.lr.ph1092.preheader ]
  %i.azr = phi ptr [ %i.bpe, %bb.dz ], [ %.lcssa108310961097, %.lr.ph1092.preheader ] ; 4 uses
  %i.azs = add nuw i32 %.07601090, 4              ; 3 uses
  %i.azt = sub nsw i32 %i.azs, %6
  %i.azu = tail call i32 @llvm.smax.i32(i32 %i.azt, i32 0)
  %i.azv = shl nuw nsw i32 %i.azu, 2
  %i.azw = lshr i32 %.17661084, %i.azv            ; 3 uses
  %i.azx = load i32, ptr %.07631086, align 4, !tbaa !21
  %i.azy = lshr i32 %i.azx, 3
  %i.azz = and i32 %i.azy, 286331153              ; 2 uses
  br i1 %9, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph1092
  %i.baa = getelementptr inbounds nuw [2 x i8], ptr %.07621087, i64 %i.ays
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !21
  %i.bac = shl i32 %i.bab, 3
  %i.bad = and i32 %i.bac, -2004318072
  %i.bae = or disjoint i32 %i.bad, %i.azz
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph1092
  %.0759 = phi i32 [ %i.azz, %.lr.ph1092 ], [ %i.bae, %bb.ck ] ; 2 uses
  %i.baf = load i32, ptr %.07621087, align 4, !tbaa !21 ; 6 uses
  %i.bag = shl i32 %i.baf, 1                      ; 2 uses
  %i.bah = and i32 %i.bag, -286331154
  %i.bai = lshr i32 %i.baf, 1                     ; 2 uses
  %i.baj = and i32 %i.bai, 2004318071
  %i.bak = or i32 %i.baj, %i.bah
  %i.bal = or i32 %i.bak, %.0759
  %i.bam = or i32 %i.bal, %i.baf                  ; 3 uses
  %i.ban = shl i32 %i.bam, 4
  %i.bao = lshr i32 %i.bam, 4
  %i.bap = lshr exact i32 %.07641085, 12
  %i.baq = or i32 %i.bap, %i.bao
  %i.bar = or i32 %i.baq, %i.ban
  %i.bas = or i32 %i.bar, %i.bam
  %i.bat = xor i32 %i.baf, -1                     ; 2 uses
  %i.bau = and i32 %i.bas, %i.bat
  %i.bav = and i32 %i.bau, %i.azw                 ; 6 uses
  %.not846 = icmp eq i32 %i.bav, 0
  br i1 %.not846, label %bb.dz, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.baw = load i32, ptr %i.ayt, align 8, !tbaa !29 ; 4 uses
  %i.bax = icmp ult i32 %i.baw, 129
  br i1 %i.bax, label %bb.cn, label %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_16frwd_struct_avx2E.exit

bb.cn:                                            ; preds = %bb.cm
  %i.bay = load <2 x i64>, ptr %i.azr, align 1, !tbaa !10
  %i.baz = load i32, ptr %i.ayu, align 8, !tbaa !30 ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.baz, i32 16) ; 3 uses
  %i.bba = trunc i32 %spec.select.i.i to i8
  %i.bbb = insertelement <16 x i8> poison, i8 %i.bba, i64 0
  %i.bbc = shufflevector <16 x i8> %i.bbb, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bbd = sext i32 %spec.select.i.i to i64
  %i.bbe = getelementptr inbounds i8, ptr %i.azr, i64 %i.bbd ; 3 uses
  %i.bbf = sub nsw i32 %i.baz, %spec.select.i.i
  store i32 %i.bbf, ptr %i.ayu, align 8, !tbaa !30
  %i.bbg = icmp sgt <16 x i8> %i.bbc, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.bbh = sext <16 x i1> %i.bbg to <16 x i8>
  %i.bbi = bitcast <16 x i8> %i.bbh to <2 x i64>
  %i.bbj = and <2 x i64> %i.bay, %i.bbi           ; 3 uses
  %i.bbk = bitcast <2 x i64> %i.bbj to <16 x i8>  ; 2 uses
  %i.bbl = icmp eq <16 x i8> %i.bbk, splat (i8 -1)
  %i.bbm = and <16 x i1> %i.bbg, %i.bbl
  %i.bbn = bitcast <16 x i1> %i.bbm to i16
  %i.bbo = zext i16 %i.bbn to i32                 ; 2 uses
  %i.bbp = shl nuw nsw i32 %i.bbo, 1
  %i.bbq = load i32, ptr %i.ayv, align 4, !tbaa !31
  %i.bbr = or i32 %i.bbp, %i.bbq
  %i.bbs = and i32 %i.bbr, 65535                  ; 2 uses
  %.not74.i.i = icmp eq i32 %i.bbs, 0
  br i1 %.not74.i.i, label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cn, %.lr.ph.i.i
  %.077.i.i = phi <2 x i64> [ %i.bck, %.lr.ph.i.i ], [ %i.bbj, %bb.cn ] ; 2 uses
  %.07176.i.i = phi i32 [ %i.bbt, %.lr.ph.i.i ], [ 128, %bb.cn ]
  %.07275.i.i = phi i32 [ %i.bbw, %.lr.ph.i.i ], [ %i.bbs, %bb.cn ] ; 3 uses
  %i.bbt = add nsw i32 %.07176.i.i, -1            ; 2 uses
  %i.bbu = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07275.i.i, i1 true) ; 2 uses
  %i.bbv = lshr exact i32 -2147483648, %i.bbu     ; 2 uses
  %i.bbw = xor i32 %i.bbv, %.07275.i.i
  %i.bbx = trunc nuw nsw i32 %i.bbu to i8
  %i.bby = xor i8 %i.bbx, 31
  %i.bbz = insertelement <16 x i8> poison, i8 %i.bby, i64 0
  %i.bca = shufflevector <16 x i8> %i.bbz, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bcb = icmp samesign ult <16 x i8> %i.bca, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.bcc = sext <16 x i1> %i.bcb to <16 x i8>     ; 2 uses
  %i.bcd = bitcast <16 x i8> %i.bcc to <2 x i64>
  %i.bce = and <2 x i64> %.077.i.i, %i.bcd        ; 2 uses
  %i.bcf = shufflevector <2 x i64> %i.bce, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bcg = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.bcf, <2 x i64> %i.bce, <2 x i64> splat (i64 63))
  %i.bch = bitcast <16 x i8> %i.bcc to <2 x i64>
  %i.bci = xor <2 x i64> %i.bch, splat (i64 -1)
  %i.bcj = and <2 x i64> %.077.i.i, %i.bci
  %i.bck = or <2 x i64> %i.bcg, %i.bcj            ; 3 uses
  %.not.i.i = icmp eq i32 %i.bbv, %.07275.i.i
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = bitcast <2 x i64> %i.bck to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit.i

_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.cn
  %.pre-phi.i.i = phi <16 x i8> [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.bbk, %bb.cn ]
  %.071.lcssa.i.i = phi i32 [ %i.bbt, %._crit_edge.loopexit.i.i ], [ 128, %bb.cn ] ; 2 uses
  %.0.lcssa.i.i = phi <2 x i64> [ %i.bck, %._crit_edge.loopexit.i.i ], [ %i.bbj, %bb.cn ] ; 2 uses
  %i.bcl = lshr i32 %i.bbo, 15                    ; 2 uses
  %i.bcm = lshr i32 %i.baw, 3
  %i.bcn = and i32 %i.baw, 7                      ; 3 uses
  %i.bco = zext nneg i32 %i.bcn to i64
  %i.bcp = insertelement <2 x i64> poison, i64 %i.bco, i64 0
  %i.bcq = shufflevector <2 x i64> %i.bcp, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bcr = shl <2 x i64> %.0.lcssa.i.i, %i.bcq
  %52 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bcs = bitcast <16 x i8> %52 to <2 x i64>
  %i.bct = sub nuw nsw i32 64, %i.bcn
  %i.bcu = zext nneg i32 %i.bct to i64
  %i.bcv = insertelement <2 x i64> poison, i64 %i.bcu, i64 0
  %i.bcw = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.bcs, <2 x i64> %i.bcv)
  %i.bcx = zext nneg i32 %i.bcm to i64
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.ayw, i64 %i.bcx ; 2 uses
  %i.bcz = load <2 x i64>, ptr %i.bcy, align 1, !tbaa !10
  %i.bda = or <2 x i64> %i.bcr, %i.bcw
  %i.bdb = or <2 x i64> %i.bda, %i.bcz
  store <2 x i64> %i.bdb, ptr %i.bcy, align 1, !tbaa !10
  %i.bdc = sub nuw nsw i32 128, %i.bcn
  %i.bdd = tail call i32 @llvm.smin.i32(i32 %.071.lcssa.i.i, i32 %i.bdc) ; 2 uses
  %i.bde = load i32, ptr %i.ayt, align 8, !tbaa !29
  %i.bdf = add nsw i32 %i.bdd, 7
  %i.bdg = add i32 %i.bdf, %i.bde
  %i.bdh = lshr i32 %i.bdg, 3
  %i.bdi = bitcast <2 x i64> %.0.lcssa.i.i to <8 x i16>
  %i.bdj = extractelement <8 x i16> %i.bdi, i64 7
  %i.bdk = zext i16 %i.bdj to i32
  %i.bdl = add nsw i32 %i.bdd, -112
  %i.bdm = lshr i32 %i.bdk, %i.bdl
  %i.bdn = trunc i32 %i.bdm to i8
  %i.bdo = zext nneg i32 %i.bdh to i64
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.ayw, i64 %i.bdo
  store i8 %i.bdn, ptr %i.bdp, align 1, !tbaa !10
  %i.bdq = load i32, ptr %i.ayt, align 8, !tbaa !29
  %i.bdr = add i32 %i.bdq, %.071.lcssa.i.i        ; 5 uses
  store i32 %i.bdr, ptr %i.ayt, align 8, !tbaa !29
  store i32 %i.bcl, ptr %i.ayv, align 4, !tbaa !31
  %i.bds = icmp ult i32 %i.bdr, 129
  br i1 %i.bds, label %bb.co, label %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_16frwd_struct_avx2E.exit

bb.co:                                            ; preds = %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit.i
  %i.bdt = load <2 x i64>, ptr %i.bbe, align 1, !tbaa !10
  %i.bdu = load i32, ptr %i.ayu, align 8, !tbaa !30 ; 2 uses
  %spec.select.i5.i = tail call i32 @llvm.smin.i32(i32 %i.bdu, i32 16) ; 3 uses
  %i.bdv = trunc i32 %spec.select.i5.i to i8
  %i.bdw = insertelement <16 x i8> poison, i8 %i.bdv, i64 0
  %i.bdx = shufflevector <16 x i8> %i.bdw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bdy = sext i32 %spec.select.i5.i to i64
  %i.bdz = getelementptr inbounds i8, ptr %i.bbe, i64 %i.bdy
  %i.bea = sub nsw i32 %i.bdu, %spec.select.i5.i
  store i32 %i.bea, ptr %i.ayu, align 8, !tbaa !30
  %i.beb = icmp sgt <16 x i8> %i.bdx, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.bec = sext <16 x i1> %i.beb to <16 x i8>
  %i.bed = bitcast <16 x i8> %i.bec to <2 x i64>
  %i.bee = and <2 x i64> %i.bdt, %i.bed           ; 3 uses
  %i.bef = bitcast <2 x i64> %i.bee to <16 x i8>  ; 2 uses
  %i.beg = icmp eq <16 x i8> %i.bef, splat (i8 -1)
  %i.beh = and <16 x i1> %i.beb, %i.beg
  %i.bei = bitcast <16 x i1> %i.beh to i16
  %i.bej = zext i16 %i.bei to i32                 ; 2 uses
  %i.bek = shl nuw nsw i32 %i.bej, 1
  %.masked.i = and i32 %i.bek, 65534
  %i.bel = or disjoint i32 %.masked.i, %i.bcl     ; 2 uses
  %.not74.i6.i = icmp eq i32 %i.bel, 0
  br i1 %.not74.i6.i, label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit17.i, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %bb.co, %.lr.ph.i7.i
  %.077.i8.i = phi <2 x i64> [ %i.bfd, %.lr.ph.i7.i ], [ %i.bee, %bb.co ] ; 2 uses
  %.07176.i9.i = phi i32 [ %i.bem, %.lr.ph.i7.i ], [ 128, %bb.co ]
  %.07275.i10.i = phi i32 [ %i.bep, %.lr.ph.i7.i ], [ %i.bel, %bb.co ] ; 3 uses
  %i.bem = add nsw i32 %.07176.i9.i, -1           ; 2 uses
  %i.ben = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07275.i10.i, i1 true) ; 2 uses
  %i.beo = lshr exact i32 -2147483648, %i.ben     ; 2 uses
  %i.bep = xor i32 %i.beo, %.07275.i10.i
  %i.beq = trunc nuw nsw i32 %i.ben to i8
  %i.ber = xor i8 %i.beq, 31
  %i.bes = insertelement <16 x i8> poison, i8 %i.ber, i64 0
  %i.bet = shufflevector <16 x i8> %i.bes, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.beu = icmp samesign ult <16 x i8> %i.bet, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.bev = sext <16 x i1> %i.beu to <16 x i8>     ; 2 uses
  %i.bew = bitcast <16 x i8> %i.bev to <2 x i64>
  %i.bex = and <2 x i64> %.077.i8.i, %i.bew       ; 2 uses
  %i.bey = shufflevector <2 x i64> %i.bex, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bez = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.bey, <2 x i64> %i.bex, <2 x i64> splat (i64 63))
  %i.bfa = bitcast <16 x i8> %i.bev to <2 x i64>
  %i.bfb = xor <2 x i64> %i.bfa, splat (i64 -1)
  %i.bfc = and <2 x i64> %.077.i8.i, %i.bfb
  %i.bfd = or <2 x i64> %i.bez, %i.bfc            ; 3 uses
  %.not.i11.i = icmp eq i32 %i.beo, %.07275.i10.i
  br i1 %.not.i11.i, label %._crit_edge.loopexit.i12.i, label %.lr.ph.i7.i, !llvm.loop !0

._crit_edge.loopexit.i12.i:                       ; preds = %.lr.ph.i7.i
  %.pre.i13.i = bitcast <2 x i64> %i.bfd to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit17.i

_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit17.i: ; preds = %._crit_edge.loopexit.i12.i, %bb.co
  %.pre-phi.i14.i = phi <16 x i8> [ %.pre.i13.i, %._crit_edge.loopexit.i12.i ], [ %i.bef, %bb.co ]
  %.071.lcssa.i15.i = phi i32 [ %i.bem, %._crit_edge.loopexit.i12.i ], [ 128, %bb.co ] ; 2 uses
  %.0.lcssa.i16.i = phi <2 x i64> [ %i.bfd, %._crit_edge.loopexit.i12.i ], [ %i.bee, %bb.co ] ; 2 uses
  %i.bfe = lshr i32 %i.bej, 15
  %i.bff = lshr i32 %i.bdr, 3
  %i.bfg = and i32 %i.bdr, 7                      ; 3 uses
  %i.bfh = zext nneg i32 %i.bfg to i64
  %i.bfi = insertelement <2 x i64> poison, i64 %i.bfh, i64 0
  %i.bfj = shufflevector <2 x i64> %i.bfi, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bfk = shl <2 x i64> %.0.lcssa.i16.i, %i.bfj
  %53 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i14.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bfl = bitcast <16 x i8> %53 to <2 x i64>
  %i.bfm = sub nuw nsw i32 64, %i.bfg
  %i.bfn = zext nneg i32 %i.bfm to i64
  %i.bfo = insertelement <2 x i64> poison, i64 %i.bfn, i64 0
  %i.bfp = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.bfl, <2 x i64> %i.bfo)
  %i.bfq = zext nneg i32 %i.bff to i64
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.ayw, i64 %i.bfq ; 2 uses
  %i.bfs = load <2 x i64>, ptr %i.bfr, align 1, !tbaa !10
  %i.bft = or <2 x i64> %i.bfk, %i.bfp
  %i.bfu = or <2 x i64> %i.bft, %i.bfs
  store <2 x i64> %i.bfu, ptr %i.bfr, align 1, !tbaa !10
  %i.bfv = sub nuw nsw i32 128, %i.bfg
  %i.bfw = tail call i32 @llvm.smin.i32(i32 %.071.lcssa.i15.i, i32 %i.bfv) ; 2 uses
  %i.bfx = load i32, ptr %i.ayt, align 8, !tbaa !29
  %i.bfy = add nsw i32 %i.bfw, 7
  %i.bfz = add i32 %i.bfy, %i.bfx
  %i.bga = lshr i32 %i.bfz, 3
  %i.bgb = bitcast <2 x i64> %.0.lcssa.i16.i to <8 x i16>
  %i.bgc = extractelement <8 x i16> %i.bgb, i64 7
  %i.bgd = zext i16 %i.bgc to i32
  %i.bge = add nsw i32 %i.bfw, -112
  %i.bgf = lshr i32 %i.bgd, %i.bge
  %i.bgg = trunc i32 %i.bgf to i8
  %i.bgh = zext nneg i32 %i.bga to i64
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.ayw, i64 %i.bgh
  store i8 %i.bgg, ptr %i.bgi, align 1, !tbaa !10
  %i.bgj = load i32, ptr %i.ayt, align 8, !tbaa !29
  %i.bgk = add i32 %i.bgj, %.071.lcssa.i15.i
  store i32 %i.bfe, ptr %i.ayv, align 4, !tbaa !31
  br label %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_16frwd_struct_avx2E.exit

_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_16frwd_struct_avx2E.exit: ; preds = %bb.cm, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit.i, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit17.i
  %i.bgl = phi i32 [ %i.baw, %bb.cm ], [ %i.bdr, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit.i ], [ %i.bgk, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit17.i ]
  %i.bgm = phi ptr [ %i.azr, %bb.cm ], [ %i.bbe, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit.i ], [ %i.bdz, %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit17.i ]
  %i.bgn = load <8 x i16>, ptr %i.ayw, align 8, !tbaa !10 ; 2 uses
  %i.bgo = extractelement <8 x i16> %i.bgn, i64 0
  %i.bgp = zext i16 %i.bgo to i32                 ; 4 uses
  %i.bgq = and i32 %i.azw, %i.bat                 ; 16 uses
  %i.bgr = and i32 %i.bav, 15
  %i.bgs = icmp eq i32 %i.bgr, 0
  br i1 %i.bgs, label %bb.cx, label %bb.cp

bb.cp:                                            ; preds = %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_16frwd_struct_avx2E.exit
  %i.bgt = and i32 %i.bav, 1
  %.not848 = icmp eq i32 %i.bgt, 0
  br i1 %.not848, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.bgu = and i32 %i.bav, 65534
  %i.bgv = and i32 %i.bgp, 1
  %.not849 = icmp eq i32 %i.bgv, 0
  %i.bgw = and i32 %i.bgq, 51
  %i.bgx = select i1 %.not849, i32 0, i32 %i.bgw
  %.1749 = or i32 %i.bgx, %i.bgu
  %i.bgy = lshr i32 %i.bgp, 1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.2750 = phi i32 [ %.1749, %bb.cq ], [ %i.bav, %bb.cp ] ; 3 uses
  %.1743 = phi i32 [ %i.bgy, %bb.cq ], [ %i.bgp, %bb.cp ] ; 3 uses
  %.1736 = phi i32 [ 1, %bb.cq ], [ 0, %bb.cp ]   ; 2 uses
  %i.bgz = and i32 %.2750, 2
  %.not850 = icmp eq i32 %i.bgz, 0
  br i1 %.not850, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.bha = and i32 %.2750, -3
  %i.bhb = and i32 %.1743, 1
  %.not851 = icmp eq i32 %i.bhb, 0
  %i.bhc = and i32 %i.bgq, 118
  %i.bhd = select i1 %.not851, i32 0, i32 %i.bhc
  %.3751 = or i32 %i.bhd, %i.bha
  %i.bhe = lshr i32 %.1743, 1
  %i.bhf = add nuw nsw i32 %.1736, 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.4752 = phi i32 [ %.3751, %bb.cs ], [ %.2750, %bb.cr ] ; 3 uses
  %.2744 = phi i32 [ %i.bhe, %bb.cs ], [ %.1743, %bb.cr ] ; 3 uses
  %.2737 = phi i32 [ %i.bhf, %bb.cs ], [ %.1736, %bb.cr ] ; 2 uses
  %i.bhg = and i32 %.4752, 4
  %.not852 = icmp eq i32 %i.bhg, 0
  br i1 %.not852, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.bhh = and i32 %.4752, -5
  %i.bhi = and i32 %.2744, 1
  %.not853 = icmp eq i32 %i.bhi, 0
  %i.bhj = and i32 %i.bgq, 236
  %i.bhk = select i1 %.not853, i32 0, i32 %i.bhj
  %.5753 = or i32 %i.bhk, %i.bhh
  %i.bhl = lshr i32 %.2744, 1
  %i.bhm = add nuw nsw i32 %.2737, 1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.6754 = phi i32 [ %.5753, %bb.cu ], [ %.4752, %bb.ct ] ; 3 uses
  %.3745 = phi i32 [ %i.bhl, %bb.cu ], [ %.2744, %bb.ct ] ; 3 uses
  %.3738 = phi i32 [ %i.bhm, %bb.cu ], [ %.2737, %bb.ct ] ; 2 uses
  %i.bhn = and i32 %.6754, 8
  %.not854 = icmp eq i32 %i.bhn, 0
  br i1 %.not854, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bho = and i32 %.6754, -9
  %i.bhp = and i32 %.3745, 1
  %.not855 = icmp eq i32 %i.bhp, 0
  %i.bhq = and i32 %i.bgq, 200
  %i.bhr = select i1 %.not855, i32 0, i32 %i.bhq
  %.7755 = or i32 %i.bhr, %i.bho
  %i.bhs = lshr i32 %.3745, 1
  %i.bht = add nuw nsw i32 %.3738, 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw, %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_16frwd_struct_avx2E.exit
  %.9757 = phi i32 [ %i.bav, %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_16frwd_struct_avx2E.exit ], [ %.7755, %bb.cw ], [ %.6754, %bb.cv ] ; 5 uses
  %.5747 = phi i32 [ %i.bgp, %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_16frwd_struct_avx2E.exit ], [ %i.bhs, %bb.cw ], [ %.3745, %bb.cv ] ; 4 uses
  %.5740 = phi i32 [ 0, %_ZN4ojph5localL10frwd_fetchILi0EEEDv2_xPNS0_16frwd_struct_avx2E.exit ], [ %i.bht, %bb.cw ], [ %.3738, %bb.cv ] ; 3 uses
  %i.bhu = and i32 %.9757, 240
  %i.bhv = icmp eq i32 %i.bhu, 0
  br i1 %i.bhv, label %bb.dg, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.bhw = and i32 %.9757, 16
  %.not848.1 = icmp eq i32 %i.bhw, 0
  br i1 %.not848.1, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.bhx = and i32 %.9757, -17
  %i.bhy = and i32 %.5747, 1
  %.not849.1 = icmp eq i32 %i.bhy, 0
  %i.bhz = and i32 %i.bgq, 816
  %i.bia = select i1 %.not849.1, i32 0, i32 %i.bhz
  %.1749.1 = or i32 %i.bia, %i.bhx
  %i.bib = lshr i32 %.5747, 1
  %i.bic = add nuw nsw i32 %.5740, 1
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.2750.1 = phi i32 [ %.1749.1, %bb.cz ], [ %.9757, %bb.cy ] ; 3 uses
  %.1743.1 = phi i32 [ %i.bib, %bb.cz ], [ %.5747, %bb.cy ] ; 3 uses
  %.1736.1 = phi i32 [ %i.bic, %bb.cz ], [ %.5740, %bb.cy ] ; 2 uses
  %i.bid = and i32 %.2750.1, 32
  %.not850.1 = icmp eq i32 %i.bid, 0
  br i1 %.not850.1, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.bie = and i32 %.2750.1, -33
  %i.bif = and i32 %.1743.1, 1
  %.not851.1 = icmp eq i32 %i.bif, 0
  %i.big = and i32 %i.bgq, 1888
  %i.bih = select i1 %.not851.1, i32 0, i32 %i.big
  %.3751.1 = or i32 %i.bih, %i.bie
  %i.bii = lshr i32 %.1743.1, 1
  %i.bij = add nuw nsw i32 %.1736.1, 1
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.4752.1 = phi i32 [ %.3751.1, %bb.db ], [ %.2750.1, %bb.da ] ; 3 uses
  %.2744.1 = phi i32 [ %i.bii, %bb.db ], [ %.1743.1, %bb.da ] ; 3 uses
  %.2737.1 = phi i32 [ %i.bij, %bb.db ], [ %.1736.1, %bb.da ] ; 2 uses
  %i.bik = and i32 %.4752.1, 64
  %.not852.1 = icmp eq i32 %i.bik, 0
  br i1 %.not852.1, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.bil = and i32 %.4752.1, -65
  %i.bim = and i32 %.2744.1, 1
  %.not853.1 = icmp eq i32 %i.bim, 0
  %i.bin = and i32 %i.bgq, 3776
  %i.bio = select i1 %.not853.1, i32 0, i32 %i.bin
  %.5753.1 = or i32 %i.bio, %i.bil
  %i.bip = lshr i32 %.2744.1, 1
  %i.biq = add nuw nsw i32 %.2737.1, 1
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.6754.1 = phi i32 [ %.5753.1, %bb.dd ], [ %.4752.1, %bb.dc ] ; 3 uses
  %.3745.1 = phi i32 [ %i.bip, %bb.dd ], [ %.2744.1, %bb.dc ] ; 3 uses
  %.3738.1 = phi i32 [ %i.biq, %bb.dd ], [ %.2737.1, %bb.dc ] ; 2 uses
  %i.bir = and i32 %.6754.1, 128
  %.not854.1 = icmp eq i32 %i.bir, 0
  br i1 %.not854.1, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.bis = and i32 %.6754.1, -129
  %i.bit = and i32 %.3745.1, 1
  %.not855.1 = icmp eq i32 %i.bit, 0
  %i.biu = and i32 %i.bgq, 3200
  %i.biv = select i1 %.not855.1, i32 0, i32 %i.biu
  %.7755.1 = or i32 %i.biv, %i.bis
  %i.biw = lshr i32 %.3745.1, 1
  %i.bix = add nuw nsw i32 %.3738.1, 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.cx
  %.9757.1 = phi i32 [ %.9757, %bb.cx ], [ %.7755.1, %bb.df ], [ %.6754.1, %bb.de ] ; 5 uses
  %.5747.1 = phi i32 [ %.5747, %bb.cx ], [ %i.biw, %bb.df ], [ %.3745.1, %bb.de ] ; 4 uses
  %.5740.1 = phi i32 [ %.5740, %bb.cx ], [ %i.bix, %bb.df ], [ %.3738.1, %bb.de ] ; 3 uses
  %i.biy = and i32 %.9757.1, 3840
  %i.biz = icmp eq i32 %i.biy, 0
  br i1 %i.biz, label %bb.dp, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.bja = and i32 %.9757.1, 256
  %.not848.2 = icmp eq i32 %i.bja, 0
  br i1 %.not848.2, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.bjb = and i32 %.9757.1, -257
  %i.bjc = and i32 %.5747.1, 1
  %.not849.2 = icmp eq i32 %i.bjc, 0
  %i.bjd = and i32 %i.bgq, 13056
  %i.bje = select i1 %.not849.2, i32 0, i32 %i.bjd
  %.1749.2 = or i32 %i.bje, %i.bjb
  %i.bjf = lshr i32 %.5747.1, 1
  %i.bjg = add nuw nsw i32 %.5740.1, 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.2750.2 = phi i32 [ %.1749.2, %bb.di ], [ %.9757.1, %bb.dh ] ; 3 uses
  %.1743.2 = phi i32 [ %i.bjf, %bb.di ], [ %.5747.1, %bb.dh ] ; 3 uses
  %.1736.2 = phi i32 [ %i.bjg, %bb.di ], [ %.5740.1, %bb.dh ] ; 2 uses
  %i.bjh = and i32 %.2750.2, 512
  %.not850.2 = icmp eq i32 %i.bjh, 0
  br i1 %.not850.2, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bji = and i32 %.2750.2, -513
  %i.bjj = and i32 %.1743.2, 1
  %.not851.2 = icmp eq i32 %i.bjj, 0
  %i.bjk = and i32 %i.bgq, 30208
  %i.bjl = select i1 %.not851.2, i32 0, i32 %i.bjk
  %.3751.2 = or i32 %i.bjl, %i.bji
  %i.bjm = lshr i32 %.1743.2, 1
  %i.bjn = add nuw nsw i32 %.1736.2, 1
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.4752.2 = phi i32 [ %.3751.2, %bb.dk ], [ %.2750.2, %bb.dj ] ; 3 uses
  %.2744.2 = phi i32 [ %i.bjm, %bb.dk ], [ %.1743.2, %bb.dj ] ; 3 uses
  %.2737.2 = phi i32 [ %i.bjn, %bb.dk ], [ %.1736.2, %bb.dj ] ; 2 uses
  %i.bjo = and i32 %.4752.2, 1024
  %.not852.2 = icmp eq i32 %i.bjo, 0
  br i1 %.not852.2, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bjp = and i32 %.4752.2, -1025
  %i.bjq = and i32 %.2744.2, 1
  %.not853.2 = icmp eq i32 %i.bjq, 0
  %i.bjr = and i32 %i.bgq, 60416
  %i.bjs = select i1 %.not853.2, i32 0, i32 %i.bjr
  %.5753.2 = or i32 %i.bjs, %i.bjp
  %i.bjt = lshr i32 %.2744.2, 1
  %i.bju = add nuw nsw i32 %.2737.2, 1
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.6754.2 = phi i32 [ %.5753.2, %bb.dm ], [ %.4752.2, %bb.dl ] ; 3 uses
  %.3745.2 = phi i32 [ %i.bjt, %bb.dm ], [ %.2744.2, %bb.dl ] ; 3 uses
  %.3738.2 = phi i32 [ %i.bju, %bb.dm ], [ %.2737.2, %bb.dl ] ; 2 uses
  %i.bjv = and i32 %.6754.2, 2048
  %.not854.2 = icmp eq i32 %i.bjv, 0
  br i1 %.not854.2, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.bjw = and i32 %.6754.2, -2049
  %i.bjx = and i32 %.3745.2, 1
  %.not855.2 = icmp eq i32 %i.bjx, 0
  %i.bjy = and i32 %i.bgq, 51200
  %i.bjz = select i1 %.not855.2, i32 0, i32 %i.bjy
  %.7755.2 = or i32 %i.bjz, %i.bjw
  %i.bka = lshr i32 %.3745.2, 1
  %i.bkb = add nuw nsw i32 %.3738.2, 1
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dg
  %.9757.2 = phi i32 [ %.9757.1, %bb.dg ], [ %.7755.2, %bb.do ], [ %.6754.2, %bb.dn ] ; 5 uses
  %.5747.2 = phi i32 [ %.5747.1, %bb.dg ], [ %i.bka, %bb.do ], [ %.3745.2, %bb.dn ] ; 4 uses
  %.5740.2 = phi i32 [ %.5740.1, %bb.dg ], [ %i.bkb, %bb.do ], [ %.3738.2, %bb.dn ] ; 3 uses
  %i.bkc = and i32 %.9757.2, 61440
  %i.bkd = icmp eq i32 %i.bkc, 0
  br i1 %i.bkd, label %bb.dy, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.bke = and i32 %.9757.2, 4096
  %.not848.3 = icmp eq i32 %i.bke, 0
  br i1 %.not848.3, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.bkf = and i32 %.9757.2, -4097
  %i.bkg = and i32 %.5747.2, 1
  %.not849.3 = icmp eq i32 %i.bkg, 0
  %i.bkh = and i32 %i.bgq, 12288
  %i.bki = select i1 %.not849.3, i32 0, i32 %i.bkh
  %.1749.3 = or i32 %i.bki, %i.bkf
  %i.bkj = lshr i32 %.5747.2, 1
  %i.bkk = add nuw nsw i32 %.5740.2, 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.2750.3 = phi i32 [ %.1749.3, %bb.dr ], [ %.9757.2, %bb.dq ] ; 3 uses
  %.1743.3 = phi i32 [ %i.bkj, %bb.dr ], [ %.5747.2, %bb.dq ] ; 3 uses
  %.1736.3 = phi i32 [ %i.bkk, %bb.dr ], [ %.5740.2, %bb.dq ] ; 2 uses
  %i.bkl = and i32 %.2750.3, 8192
  %.not850.3 = icmp eq i32 %i.bkl, 0
  br i1 %.not850.3, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.bkm = and i32 %.2750.3, -8193
  %i.bkn = and i32 %.1743.3, 1
  %.not851.3 = icmp eq i32 %i.bkn, 0
  %i.bko = and i32 %i.bgq, 24576
  %i.bkp = select i1 %.not851.3, i32 0, i32 %i.bko
  %.3751.3 = or i32 %i.bkp, %i.bkm
  %i.bkq = lshr i32 %.1743.3, 1
  %i.bkr = add nuw nsw i32 %.1736.3, 1
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.4752.3 = phi i32 [ %.3751.3, %bb.dt ], [ %.2750.3, %bb.ds ] ; 3 uses
  %.2744.3 = phi i32 [ %i.bkq, %bb.dt ], [ %.1743.3, %bb.ds ] ; 3 uses
  %.2737.3 = phi i32 [ %i.bkr, %bb.dt ], [ %.1736.3, %bb.ds ] ; 2 uses
  %i.bks = and i32 %.4752.3, 16384
  %.not852.3 = icmp eq i32 %i.bks, 0
  br i1 %.not852.3, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.bkt = and i32 %.4752.3, -16385
  %i.bku = and i32 %.2744.3, 1
  %.not853.3 = icmp eq i32 %i.bku, 0
  %i.bkv = and i32 %i.bgq, 49152
  %i.bkw = select i1 %.not853.3, i32 0, i32 %i.bkv
  %.5753.3 = or i32 %i.bkw, %i.bkt
  %i.bkx = lshr i32 %.2744.3, 1
  %i.bky = add nuw nsw i32 %.2737.3, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.6754.3 = phi i32 [ %.5753.3, %bb.dv ], [ %.4752.3, %bb.du ] ; 3 uses
  %.3745.3 = phi i32 [ %i.bkx, %bb.dv ], [ %.2744.3, %bb.du ] ; 3 uses
  %.3738.3 = phi i32 [ %i.bky, %bb.dv ], [ %.2737.3, %bb.du ] ; 2 uses
  %i.bkz = and i32 %.6754.3, 32768
  %.not854.3 = icmp eq i32 %i.bkz, 0
  br i1 %.not854.3, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bla = and i32 %.6754.3, -32769
  %i.blb = and i32 %.3745.3, 1
  %.not855.3 = icmp eq i32 %i.blb, 0
  %i.blc = and i32 %i.bgq, 32768
  %i.bld = select i1 %.not855.3, i32 0, i32 %i.blc
  %.7755.3 = or disjoint i32 %i.bld, %i.bla
  %i.ble = lshr i32 %.3745.3, 1
  %i.blf = add nuw nsw i32 %.3738.3, 1
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dp
  %.9757.3 = phi i32 [ %.9757.2, %bb.dp ], [ %.7755.3, %bb.dx ], [ %.6754.3, %bb.dw ] ; 3 uses
  %.5747.3 = phi i32 [ %.5747.2, %bb.dp ], [ %i.ble, %bb.dx ], [ %.3745.3, %bb.dw ]
  %.5740.3 = phi i32 [ %.5740.2, %bb.dp ], [ %i.blf, %bb.dx ], [ %.3738.3, %bb.dw ] ; 3 uses
  %.not847 = icmp eq i32 %.9757.3, 0
  br i1 %.not847, label %.loopexit948, label %.loopexit948.loopexit

.loopexit948.loopexit:                            ; preds = %bb.dy
  %i.blg = extractelement <8 x i16> %i.bgn, i64 1
  %i.blh = zext i16 %i.blg to i32
  %i.bli = sub nuw nsw i32 16, %.5740.3
  %i.blj = shl nuw i32 %i.blh, %i.bli
  %i.blk = or i32 %i.blj, %.5747.3
  %i.bll = trunc nuw i32 %.9757.3 to i16
  %i.blm = insertelement <8 x i16> poison, i16 %i.bll, i64 0
  %i.bln = bitcast <8 x i16> %i.blm to <16 x i8>
  %i.blo = shufflevector <16 x i8> %i.bln, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.blp = and <16 x i8> %i.blo, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %i.blq = icmp ne <16 x i8> %i.blp, zeroinitializer ; 2 uses
  %.neg945 = zext <16 x i1> %i.blq to <16 x i8>   ; 2 uses
  %i.blr = sext <16 x i1> %i.blq to <16 x i8>     ; 4 uses
  %54 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %.neg945, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.bls = add nuw nsw <16 x i8> %54, %.neg945    ; 2 uses
  %55 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.bls, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.blt = add nuw nsw <16 x i8> %55, %i.bls      ; 2 uses
  %56 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.blt, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.blu = add nuw nsw <16 x i8> %56, %i.blt      ; 2 uses
  %57 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.blu, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.blv = add <16 x i8> %57, %i.blu              ; 2 uses
  %58 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.blv, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.blw = trunc i32 %i.blk to i16
  %i.blx = insertelement <8 x i16> poison, i16 %i.blw, i64 0
  %i.bly = bitcast <8 x i16> %i.blx to <16 x i8>
  %i.blz = shufflevector <16 x i8> %i.bly, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bma = and <16 x i8> %i.blz, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %i.bmb = icmp ne <16 x i8> %i.bma, zeroinitializer
  %.neg946 = zext <16 x i1> %i.bmb to <16 x i8>
  %i.bmc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.neg946, <16 x i8> %58) ; 4 uses
  %i.bmd = load <2 x i64>, ptr %.07611088, align 16, !tbaa !10
  %i.bme = shufflevector <16 x i8> %i.blr, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bmf = bitcast <16 x i8> %i.bme to <4 x i32>
  %i.bmg = icmp eq <4 x i32> %i.bmf, splat (i32 255)
  %i.bmh = shufflevector <16 x i8> %i.bmc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bmi = bitcast <16 x i8> %i.bmh to <4 x i32>
  %i.bmj = shl <4 x i32> %i.bmi, splat (i32 31)
  %i.bmk = or disjoint <4 x i32> %i.bmj, %i.aza
  %i.bml = select <4 x i1> %i.bmg, <4 x i32> %i.bmk, <4 x i32> zeroinitializer
  %i.bmm = bitcast <4 x i32> %i.bml to <2 x i64>
  %i.bmn = or <2 x i64> %i.bmd, %i.bmm
  store <2 x i64> %i.bmn, ptr %.07611088, align 16, !tbaa !10
  %i.bmo = getelementptr inbounds nuw [4 x i8], ptr %.07611088, i64 %i.azb ; 3 uses
  %i.bmp = load <2 x i64>, ptr %i.bmo, align 16, !tbaa !10
  %i.bmq = shufflevector <16 x i8> %i.blr, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %i.bmr = bitcast <16 x i8> %i.bmq to <4 x i32>
  %i.bms = icmp eq <4 x i32> %i.bmr, splat (i32 255)
  %i.bmt = shufflevector <16 x i8> %i.bmc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %i.bmu = bitcast <16 x i8> %i.bmt to <4 x i32>
  %i.bmv = shl <4 x i32> %i.bmu, splat (i32 31)
  %i.bmw = or disjoint <4 x i32> %i.bmv, %i.aza
  %i.bmx = select <4 x i1> %i.bms, <4 x i32> %i.bmw, <4 x i32> zeroinitializer
  %i.bmy = bitcast <4 x i32> %i.bmx to <2 x i64>
  %i.bmz = or <2 x i64> %i.bmp, %i.bmy
  store <2 x i64> %i.bmz, ptr %i.bmo, align 16, !tbaa !10
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %i.bmo, i64 %i.azb ; 3 uses
  %i.bnb = load <2 x i64>, ptr %i.bna, align 16, !tbaa !10
  %i.bnc = shufflevector <16 x i8> %i.blr, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %i.bnd = bitcast <16 x i8> %i.bnc to <4 x i32>
  %i.bne = icmp eq <4 x i32> %i.bnd, splat (i32 255)
  %i.bnf = shufflevector <16 x i8> %i.bmc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %i.bng = bitcast <16 x i8> %i.bnf to <4 x i32>
  %i.bnh = shl <4 x i32> %i.bng, splat (i32 31)
  %i.bni = or disjoint <4 x i32> %i.bnh, %i.aza
  %i.bnj = select <4 x i1> %i.bne, <4 x i32> %i.bni, <4 x i32> zeroinitializer
  %i.bnk = bitcast <4 x i32> %i.bnj to <2 x i64>
  %i.bnl = or <2 x i64> %i.bnb, %i.bnk
  store <2 x i64> %i.bnl, ptr %i.bna, align 16, !tbaa !10
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %i.bna, i64 %i.azb ; 2 uses
  %i.bnn = load <2 x i64>, ptr %i.bnm, align 16, !tbaa !10
  %i.bno = shufflevector <16 x i8> %i.blr, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 3, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 11, i32 16, i32 16, i32 16, i32 15, i32 16, i32 16, i32 16>
  %i.bnp = bitcast <16 x i8> %i.bno to <4 x i32>
  %i.bnq = icmp eq <4 x i32> %i.bnp, splat (i32 255)
  %i.bnr = shufflevector <16 x i8> %i.bmc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 3, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 11, i32 16, i32 16, i32 16, i32 15, i32 16, i32 16, i32 16>
  %i.bns = bitcast <16 x i8> %i.bnr to <4 x i32>
  %i.bnt = shl <4 x i32> %i.bns, splat (i32 31)
  %i.bnu = or disjoint <4 x i32> %i.bnt, %i.aza
  %i.bnv = select <4 x i1> %i.bnq, <4 x i32> %i.bnu, <4 x i32> zeroinitializer
  %i.bnw = bitcast <4 x i32> %i.bnv to <2 x i64>
  %i.bnx = or <2 x i64> %i.bnn, %i.bnw
  store <2 x i64> %i.bnx, ptr %i.bnm, align 16, !tbaa !10
  %i.bny = bitcast <16 x i8> %i.blv to <8 x i16>
  %i.bnz = extractelement <8 x i16> %i.bny, i64 7
  %i.boa = lshr i16 %i.bnz, 8
  %i.bob = zext nneg i16 %i.boa to i32
  %i.boc = add nuw nsw i32 %.5740.3, %i.bob
  br label %.loopexit948

.loopexit948:                                     ; preds = %.loopexit948.loopexit, %bb.dy
  %.6741 = phi i32 [ %.5740.3, %bb.dy ], [ %i.boc, %.loopexit948.loopexit ] ; 3 uses
  %i.bod = sub i32 %i.bgl, %.6741
  store i32 %i.bod, ptr %i.ayt, align 8, !tbaa !29
  %i.boe = lshr i32 %.6741, 3
  %i.bof = and i32 %i.boe, 24
  %i.bog = zext nneg i32 %i.bof to i64
  %i.boh = getelementptr inbounds nuw i8, ptr %i.ayw, i64 %i.bog ; 2 uses
  %i.boi = and i32 %.6741, 63                     ; 2 uses
  %i.boj = load <2 x i64>, ptr %i.boh, align 8, !tbaa !10 ; 2 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boh, i64 16
  %i.bol = load <2 x i64>, ptr %i.bok, align 8, !tbaa !10 ; 3 uses
  %i.bom = zext nneg i32 %i.boi to i64
  %i.bon = insertelement <2 x i64> poison, i64 %i.bom, i64 0
  %i.boo = shufflevector <2 x i64> %i.bon, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bop = lshr <2 x i64> %i.boj, %i.boo
  %i.boq = shufflevector <2 x i64> %i.boj, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bor = sub nuw nsw i32 64, %i.boi
  %i.bos = zext nneg i32 %i.bor to i64
  %i.bot = insertelement <2 x i64> poison, i64 %i.bos, i64 0
  %i.bou = shufflevector <2 x i64> %i.bot, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bov = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.boq, <2 x i64> %i.bou)
  %i.bow = or <2 x i64> %i.bov, %i.bop
  %59 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.bol, <2 x i32> <i32 1, i32 2>
  %i.box = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %59, <2 x i64> %i.bou)
  %i.boy = or <2 x i64> %i.bow, %i.box
  store <2 x i64> %i.boy, ptr %i.ayw, align 8, !tbaa !10
  %i.boz = lshr <2 x i64> %i.bol, %i.boo
  %i.bpa = shufflevector <2 x i64> %i.bol, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bpb = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.bpa, <2 x i64> %i.bou)
  %i.bpc = or <2 x i64> %i.bpb, %i.boz
  store <2 x i64> %i.bpc, ptr %i.azc, align 8, !tbaa !10
  %i.bpd = or i32 %.9757.3, %i.baf                ; 3 uses
  %.pre = shl i32 %i.bpd, 1
  %.pre1223 = lshr i32 %i.bpd, 1
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit948, %bb.cl
  %.pre-phi1224 = phi i32 [ %.pre1223, %.loopexit948 ], [ %i.bai, %bb.cl ]
  %.pre-phi = phi i32 [ %.pre, %.loopexit948 ], [ %i.bag, %bb.cl ]
  %i.bpe = phi ptr [ %i.bgm, %.loopexit948 ], [ %i.azr, %bb.cl ] ; 2 uses
  %.10758 = phi i32 [ %i.bpd, %.loopexit948 ], [ %i.baf, %bb.cl ] ; 2 uses
  %i.bpf = trunc i32 %.10758 to i16
  store i16 %i.bpf, ptr %.07631086, align 4, !tbaa !66
  %i.bpg = and i32 %.pre-phi, 57344
  %i.bph = and i32 %.pre-phi1224, 28672
  %i.bpi = or i32 %i.bph, %i.bpg
  %i.bpj = or i32 %i.bpi, %.0759
  %i.bpk = or i32 %i.bpj, %.10758
  %i.bpl = and i32 %i.bpk, 61440
  %i.bpm = getelementptr inbounds nuw i8, ptr %.07611088, i64 16
  %i.bpn = getelementptr inbounds nuw i8, ptr %.07621087, i64 2
  %i.bpo = getelementptr inbounds nuw i8, ptr %.07631086, i64 2
  %i.bpp = icmp ult i32 %i.azs, %6
  br i1 %i.bpp, label %.lr.ph1092, label %._crit_edge1093, !llvm.loop !58

bb.ea:                                            ; preds = %._crit_edge1101
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call fastcc void @_ZN4ojph5localL12rev_init_mrpEPNS0_10rev_structEPhii(ptr noundef %15, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5)
  %.promoted1130 = load ptr, ptr %15, align 8
  br i1 %.not1161, label %._crit_edge1136, label %.lr.ph1135

.lr.ph1135:                                       ; preds = %bb.ea
  %i.bpq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 3 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.bpu = sub nsw i32 28, %2                     ; 4 uses
  %i.bpv = zext i32 %8 to i64                     ; 3 uses
  br i1 %.not1155, label %._crit_edge1136, label %.lr.ph1119.us.preheader

.lr.ph1119.us.preheader:                          ; preds = %.lr.ph1135
  %.promoted1148 = load i8, ptr %i.bps, align 8
  %.promoted1145 = load i32, ptr %i.bpq, align 8
  %.promoted1144 = load i64, ptr %i.bpt, align 8
  %.promoted1137 = load i32, ptr %i.bpr, align 4
  %i.bpw = zext i32 %7 to i64
  br label %.lr.ph1119.us

.lr.ph1119.us:                                    ; preds = %.lr.ph1119.us.preheader, %._crit_edge1120.us
  %indvars.iv1221 = phi i64 [ 0, %.lr.ph1119.us.preheader ], [ %indvars.iv.next1222, %._crit_edge1120.us ] ; 3 uses
  %.promoted11291152.us = phi i8 [ %.promoted1148, %.lr.ph1119.us.preheader ], [ %.promoted11291150.us, %._crit_edge1120.us ] ; 2 uses
  %.promoted11221147.us = phi i32 [ %.promoted1145, %.lr.ph1119.us.preheader ], [ %i.bxp, %._crit_edge1120.us ]
  %i.bpx = phi i64 [ %.promoted1144, %.lr.ph1119.us.preheader ], [ %i.bxo, %._crit_edge1120.us ]
  %.promoted11241143.us = phi i32 [ %.promoted1137, %.lr.ph1119.us.preheader ], [ %.promoted11241139.us, %._crit_edge1120.us ] ; 2 uses
  %.lcssa11041113.lcssa11311132.us = phi ptr [ %.promoted1130, %.lr.ph1119.us.preheader ], [ %.lcssa11041110.us, %._crit_edge1120.us ]
  %i.bpy = lshr exact i64 %indvars.iv1221, 2
  %i.bpz = trunc nuw nsw i64 %i.bpy to i32
  %i.bqa = mul i32 %i.avi, %i.bpz
  %i.bqb = zext i32 %i.bqa to i64
  %i.bqc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bqb
  %i.bqd = trunc nuw i64 %indvars.iv1221 to i32
  %i.bqe = mul i32 %8, %i.bqd
  %i.bqf = zext i32 %i.bqe to i64
  %i.bqg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bqf
  br label %bb.eb

bb.eb:                                            ; preds = %.lr.ph1119.us, %.loopexit.us
  %.promoted11291151.us = phi i8 [ %.promoted11291152.us, %.lr.ph1119.us ], [ %.promoted11291150.us, %.loopexit.us ]
  %.promoted11241142.us = phi i32 [ %.promoted11241143.us, %.lr.ph1119.us ], [ %.promoted11241139.us, %.loopexit.us ] ; 2 uses
  %i.bqh = phi i8 [ %.promoted11291152.us, %.lr.ph1119.us ], [ %i.bvc, %.loopexit.us ] ; 2 uses
  %.lcssa11051128.us = phi i32 [ %.promoted11241143.us, %.lr.ph1119.us ], [ %.lcssa11051125.us, %.loopexit.us ] ; 7 uses
  %.pre.i9061123.us = phi i64 [ %i.bpx, %.lr.ph1119.us ], [ %i.bxo, %.loopexit.us ] ; 2 uses
  %i.bqi = phi i32 [ %.promoted11221147.us, %.lr.ph1119.us ], [ %i.bxp, %.loopexit.us ] ; 4 uses
  %.07161117.us = phi i32 [ 0, %.lr.ph1119.us ], [ %i.bxq, %.loopexit.us ]
  %.07171116.us = phi ptr [ %i.bqg, %.lr.ph1119.us ], [ %i.bxr, %.loopexit.us ] ; 4 uses
  %.07181115.us = phi ptr [ %i.bqc, %.lr.ph1119.us ], [ %i.bvf, %.loopexit.us ] ; 2 uses
  %.lcssa110411131114.us = phi ptr [ %.lcssa11041113.lcssa11311132.us, %.lr.ph1119.us ], [ %.lcssa11041110.us, %.loopexit.us ] ; 6 uses
  %i.bqj = icmp ult i32 %i.bqi, 32
  br i1 %i.bqj, label %bb.ec, label %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us

bb.ec:                                            ; preds = %bb.eb
  %i.bqk = icmp sgt i32 %.lcssa11051128.us, 3
  br i1 %i.bqk, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bql = icmp sgt i32 %.lcssa11051128.us, 0
  br i1 %i.bql, label %.preheader.i.i909.us, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us

.preheader.i.i909.us:                             ; preds = %bb.ed, %.preheader.i.i909.us
  %i.bqm = phi ptr [ %i.bqo, %.preheader.i.i909.us ], [ %.lcssa110411131114.us, %bb.ed ] ; 2 uses
  %.047.i.i.us = phi i32 [ %i.bqs, %.preheader.i.i909.us ], [ 0, %bb.ed ]
  %.04446.i.i.us = phi i32 [ %i.bqu, %.preheader.i.i909.us ], [ 24, %bb.ed ] ; 2 uses
  %i.bqn = phi i32 [ %i.bqt, %.preheader.i.i909.us ], [ %.lcssa11051128.us, %bb.ed ] ; 2 uses
  %i.bqo = getelementptr inbounds i8, ptr %i.bqm, i64 -1
  %i.bqp = load i8, ptr %i.bqm, align 1, !tbaa !10
  %i.bqq = zext i8 %i.bqp to i32
  %i.bqr = shl i32 %i.bqq, %.04446.i.i.us
  %i.bqs = or i32 %i.bqr, %.047.i.i.us            ; 2 uses
  %i.bqt = add nsw i32 %i.bqn, -1
  %i.bqu = add nsw i32 %.04446.i.i.us, -8
  %i.bqv = icmp samesign ugt i32 %i.bqn, 1
  br i1 %i.bqv, label %.preheader.i.i909.us, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us, !llvm.loop !59

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us: ; preds = %.preheader.i.i909.us
  %scevgep1217 = getelementptr i8, ptr %.lcssa110411131114.us, i64 -1
  %i.bqw = add nsw i32 %.lcssa11051128.us, -1
  %i.bqx = zext nneg i32 %i.bqw to i64
  %i.bqy = sub nsw i64 0, %i.bqx
  %scevgep1218 = getelementptr i8, ptr %scevgep1217, i64 %i.bqy
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split

bb.ee:                                            ; preds = %bb.ec
  %i.bqz = getelementptr inbounds i8, ptr %.lcssa110411131114.us, i64 -3
  %i.bra = load i32, ptr %i.bqz, align 4, !tbaa !21
  %i.brb = getelementptr inbounds i8, ptr %.lcssa110411131114.us, i64 -4
  %i.brc = add nsw i32 %.lcssa11051128.us, -4
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us, %bb.ee
  %.sink1299 = phi i32 [ %i.brc, %bb.ee ], [ 0, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us ] ; 3 uses
  %.lcssa11041112.us.ph = phi ptr [ %i.brb, %bb.ee ], [ %scevgep1218, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us ]
  %.1.i.i907.us.ph = phi i32 [ %i.bra, %bb.ee ], [ %i.bqs, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us ]
  store i32 %.sink1299, ptr %i.bpr, align 4, !tbaa !25
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split, %bb.ed
  %.promoted11241141.us = phi i32 [ %.promoted11241142.us, %bb.ed ], [ %.sink1299, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 2 uses
  %.lcssa11051127.us = phi i32 [ %.lcssa11051128.us, %bb.ed ], [ %.sink1299, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 7 uses
  %.lcssa11041112.us = phi ptr [ %.lcssa110411131114.us, %bb.ed ], [ %.lcssa11041112.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 6 uses
  %.1.i.i907.us = phi i32 [ 0, %bb.ed ], [ %.1.i.i907.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 9 uses
  %i.brd = lshr i32 %.1.i.i907.us, 24
  %i.bre = trunc nuw i8 %i.bqh to i1
  %i.brf = and i32 %.1.i.i907.us, 2130706432
  %i.brg = icmp eq i32 %i.brf, 2130706432
  %i.brh = select i1 %i.bre, i1 %i.brg, i1 false
  %i.bri = select i1 %i.brh, i32 7, i32 8         ; 2 uses
  %i.brj = icmp ugt i32 %.1.i.i907.us, -1879048193
  %i.brk = lshr i32 %.1.i.i907.us, 16
  %i.brl = and i32 %i.brk, 255                    ; 2 uses
  %i.brm = shl nuw nsw i32 %i.brl, %i.bri
  %i.brn = or i32 %i.brm, %i.brd
  %i.bro = and i32 %.1.i.i907.us, 8323072
  %i.brp = icmp eq i32 %i.bro, 8323072
  %i.brq = and i1 %i.brj, %i.brp
  %i.brr = select i1 %i.brq, i32 7, i32 8
  %i.brs = add nuw nsw i32 %i.bri, %i.brr         ; 2 uses
  %i.brt = icmp samesign ugt i32 %i.brl, 143
  %i.bru = lshr i32 %.1.i.i907.us, 8
  %i.brv = and i32 %i.bru, 255                    ; 2 uses
  %i.brw = shl nuw nsw i32 %i.brv, %i.brs
  %i.brx = or i32 %i.brn, %i.brw
  %i.bry = and i32 %.1.i.i907.us, 32512
  %i.brz = icmp eq i32 %i.bry, 32512
  %i.bsa = select i1 %i.brt, i1 %i.brz, i1 false
  %i.bsb = select i1 %i.bsa, i32 7, i32 8
  %i.bsc = add nuw nsw i32 %i.brs, %i.bsb         ; 2 uses
  %i.bsd = icmp samesign ugt i32 %i.brv, 143
  %i.bse = and i32 %.1.i.i907.us, 255             ; 2 uses
  %i.bsf = shl nuw i32 %i.bse, %i.bsc
  %i.bsg = or i32 %i.brx, %i.bsf
  %i.bsh = and i32 %.1.i.i907.us, 127
  %i.bsi = icmp eq i32 %i.bsh, 127
  %i.bsj = select i1 %i.bsd, i1 %i.bsi, i1 false
  %i.bsk = select i1 %i.bsj, i32 7, i32 8
  %i.bsl = icmp samesign ugt i32 %i.bse, 143      ; 2 uses
  %i.bsm = zext i1 %i.bsl to i8                   ; 3 uses
  %i.bsn = zext i32 %i.bsg to i64
  %i.bso = zext nneg i32 %i.bqi to i64
  %i.bsp = shl nuw nsw i64 %i.bsn, %i.bso
  %i.bsq = or i64 %i.bsp, %.pre.i9061123.us       ; 3 uses
  store i64 %i.bsq, ptr %i.bpt, align 8, !tbaa !27
  %i.bsr = add nuw nsw i32 %i.bsk, %i.bqi
  %i.bss = add nuw nsw i32 %i.bsr, %i.bsc         ; 5 uses
  store i32 %i.bss, ptr %i.bpq, align 8, !tbaa !20
  store i8 %i.bsm, ptr %i.bps, align 8, !tbaa !26
  %i.bst = icmp samesign ult i32 %i.bss, 32
  br i1 %i.bst, label %bb.ef, label %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us

bb.ef:                                            ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us
  %i.bsu = icmp sgt i32 %.lcssa11051127.us, 3
  br i1 %i.bsu, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bsv = icmp sgt i32 %.lcssa11051127.us, 0
  br i1 %i.bsv, label %.preheader.i7.i.us, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us

.preheader.i7.i.us:                               ; preds = %bb.eg, %.preheader.i7.i.us
  %i.bsw = phi ptr [ %i.bsy, %.preheader.i7.i.us ], [ %.lcssa11041112.us, %bb.eg ] ; 2 uses
  %.047.i9.i.us = phi i32 [ %i.btc, %.preheader.i7.i.us ], [ 0, %bb.eg ]
  %.04446.i10.i.us = phi i32 [ %i.bte, %.preheader.i7.i.us ], [ 24, %bb.eg ] ; 2 uses
  %i.bsx = phi i32 [ %i.btd, %.preheader.i7.i.us ], [ %.lcssa11051127.us, %bb.eg ] ; 2 uses
  %i.bsy = getelementptr inbounds i8, ptr %i.bsw, i64 -1
  %i.bsz = load i8, ptr %i.bsw, align 1, !tbaa !10
  %i.bta = zext i8 %i.bsz to i32
  %i.btb = shl i32 %i.bta, %.04446.i10.i.us
  %i.btc = or i32 %i.btb, %.047.i9.i.us           ; 2 uses
  %i.btd = add nsw i32 %i.bsx, -1
  %i.bte = add nsw i32 %.04446.i10.i.us, -8
  %i.btf = icmp samesign ugt i32 %i.bsx, 1
  br i1 %i.btf, label %.preheader.i7.i.us, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us, !llvm.loop !60

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us: ; preds = %.preheader.i7.i.us
  %scevgep1219 = getelementptr i8, ptr %.lcssa11041112.us, i64 -1
  %i.btg = add nsw i32 %.lcssa11051127.us, -1
  %i.bth = zext nneg i32 %i.btg to i64
  %i.bti = sub nsw i64 0, %i.bth
  %scevgep1220 = getelementptr i8, ptr %scevgep1219, i64 %i.bti
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split

bb.eh:                                            ; preds = %bb.ef
  %i.btj = getelementptr inbounds i8, ptr %.lcssa11041112.us, i64 -3
  %i.btk = load i32, ptr %i.btj, align 4, !tbaa !21
  %i.btl = getelementptr inbounds i8, ptr %.lcssa11041112.us, i64 -4
  %i.btm = add nsw i32 %.lcssa11051127.us, -4
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us, %bb.eh
  %.sink1300 = phi i32 [ %i.btm, %bb.eh ], [ 0, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us ] ; 3 uses
  %.lcssa11041111.us.ph = phi ptr [ %i.btl, %bb.eh ], [ %scevgep1220, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us ]
  %.1.i6.i908.us.ph = phi i32 [ %i.btk, %bb.eh ], [ %i.btc, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us ]
  store i32 %.sink1300, ptr %i.bpr, align 4, !tbaa !25
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split, %bb.eg
  %.promoted11241140.us = phi i32 [ %.promoted11241141.us, %bb.eg ], [ %.sink1300, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.lcssa11051126.us = phi i32 [ %.lcssa11051127.us, %bb.eg ], [ %.sink1300, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.lcssa11041111.us = phi ptr [ %.lcssa11041112.us, %bb.eg ], [ %.lcssa11041111.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.1.i6.i908.us = phi i32 [ 0, %bb.eg ], [ %.1.i6.i908.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ] ; 9 uses
  %i.btn = lshr i32 %.1.i6.i908.us, 24
  %i.bto = and i32 %.1.i6.i908.us, 2130706432
  %i.btp = icmp eq i32 %i.bto, 2130706432
  %i.btq = select i1 %i.bsl, i1 %i.btp, i1 false
  %i.btr = select i1 %i.btq, i32 7, i32 8         ; 2 uses
  %i.bts = icmp ugt i32 %.1.i6.i908.us, -1879048193
  %i.btt = lshr i32 %.1.i6.i908.us, 16
  %i.btu = and i32 %i.btt, 255                    ; 2 uses
  %i.btv = shl nuw nsw i32 %i.btu, %i.btr
  %i.btw = or i32 %i.btv, %i.btn
  %i.btx = and i32 %.1.i6.i908.us, 8323072
  %i.bty = icmp eq i32 %i.btx, 8323072
  %i.btz = and i1 %i.bts, %i.bty
  %i.bua = select i1 %i.btz, i32 7, i32 8
  %i.bub = add nuw nsw i32 %i.btr, %i.bua         ; 2 uses
  %i.buc = icmp samesign ugt i32 %i.btu, 143
  %i.bud = lshr i32 %.1.i6.i908.us, 8
  %i.bue = and i32 %i.bud, 255                    ; 2 uses
  %i.buf = shl nuw nsw i32 %i.bue, %i.bub
  %i.bug = or i32 %i.btw, %i.buf
  %i.buh = and i32 %.1.i6.i908.us, 32512
  %i.bui = icmp eq i32 %i.buh, 32512
  %i.buj = select i1 %i.buc, i1 %i.bui, i1 false
  %i.buk = select i1 %i.buj, i32 7, i32 8
  %i.bul = add nuw nsw i32 %i.bub, %i.buk         ; 2 uses
  %i.bum = icmp samesign ugt i32 %i.bue, 143
  %i.bun = and i32 %.1.i6.i908.us, 255            ; 2 uses
  %i.buo = shl nuw i32 %i.bun, %i.bul
  %i.bup = or i32 %i.bug, %i.buo
  %i.buq = and i32 %.1.i6.i908.us, 127
  %i.bur = icmp eq i32 %i.buq, 127
  %i.bus = select i1 %i.bum, i1 %i.bur, i1 false
  %i.but = select i1 %i.bus, i32 7, i32 8
  %i.buu = icmp samesign ugt i32 %i.bun, 143
  %i.buv = zext i1 %i.buu to i8                   ; 3 uses
  %i.buw = zext i32 %i.bup to i64
  %i.bux = zext nneg i32 %i.bss to i64
  %i.buy = shl nuw nsw i64 %i.buw, %i.bux
  %i.buz = or i64 %i.buy, %i.bsq
  %i.bva = add nuw nsw i32 %i.but, %i.bss
  %i.bvb = add nuw nsw i32 %i.bva, %i.bul
  store i8 %i.buv, ptr %i.bps, align 8, !tbaa !26
  br label %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us

_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us: ; preds = %bb.eb, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us
  %.promoted11291150.us = phi i8 [ %i.buv, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bsm, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.promoted11291151.us, %bb.eb ] ; 2 uses
  %.promoted11241139.us = phi i32 [ %.promoted11241140.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.promoted11241141.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.promoted11241142.us, %bb.eb ] ; 2 uses
  %i.bvc = phi i8 [ %i.buv, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bsm, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %i.bqh, %bb.eb ]
  %.lcssa11051125.us = phi i32 [ %.lcssa11051126.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.lcssa11051127.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.lcssa11051128.us, %bb.eb ]
  %i.bvd = phi i32 [ %i.bvb, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bss, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %i.bqi, %bb.eb ]
  %.lcssa11041110.us = phi ptr [ %.lcssa11041111.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.lcssa11041112.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.lcssa110411131114.us, %bb.eb ] ; 3 uses
  %i.bve = phi i64 [ %i.buz, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bsq, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.pre.i9061123.us, %bb.eb ] ; 2 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %.07181115.us, i64 2
  %i.bvg = load i16, ptr %.07181115.us, align 2, !tbaa !66 ; 2 uses
  %.not844.us = icmp eq i16 %i.bvg, 0
  br i1 %.not844.us, label %.loopexit.us, label %.loopexit.us.loopexit

.loopexit.us.loopexit:                            ; preds = %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us
  %i.bvh = insertelement <8 x i16> poison, i16 %i.bvg, i64 0
  %i.bvi = bitcast <8 x i16> %i.bvh to <16 x i8>
  %i.bvj = shufflevector <16 x i8> %i.bvi, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bvk = and <16 x i8> %i.bvj, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %i.bvl = icmp ne <16 x i8> %i.bvk, zeroinitializer
  %.neg.us = zext <16 x i1> %i.bvl to <16 x i8>   ; 6 uses
  %60 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %.neg.us, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.bvm = add nuw nsw <16 x i8> %60, %.neg.us    ; 2 uses
  %61 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.bvm, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bvn = add nuw nsw <16 x i8> %61, %i.bvm      ; 2 uses
  %62 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bvn, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bvo = add nuw nsw <16 x i8> %62, %i.bvn      ; 2 uses
  %63 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bvo, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bvp = add <16 x i8> %63, %i.bvo              ; 5 uses
  %64 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.bvp, <16 x i32> <i32 15, i32 poison, i32 poison, i32 poison, i32 19, i32 poison, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 poison, i32 27, i32 poison, i32 poison, i32 poison>
  %i.bvq = trunc i64 %i.bve to i16
  %i.bvr = insertelement <8 x i16> poison, i16 %i.bvq, i64 0
  %i.bvs = bitcast <8 x i16> %i.bvr to <16 x i8>
  %i.bvt = shufflevector <16 x i8> %i.bvs, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bvu = and <16 x i8> %i.bvt, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %.not943.us = icmp eq <16 x i8> %i.bvu, zeroinitializer
  %i.bvv = select <16 x i1> %.not943.us, <16 x i8> splat (i8 3), <16 x i8> splat (i8 1) ; 4 uses
  %i.bvw = load <2 x i64>, ptr %.07171116.us, align 16, !tbaa !10
  %i.bvx = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %.not944.us = icmp eq <16 x i8> %i.bvx, zeroinitializer
  %i.bvy = shufflevector <16 x i8> %64, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bvz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bvv, <16 x i8> %i.bvy)
  %i.bwa = select <16 x i1> %.not944.us, <16 x i8> zeroinitializer, <16 x i8> %i.bvz
  %i.bwb = bitcast <16 x i8> %i.bwa to <4 x i32>
  %i.bwc = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bwb, i32 range(i32 -17, 32) %i.bpu)
  %i.bwd = bitcast <4 x i32> %i.bwc to <2 x i64>
  %i.bwe = xor <2 x i64> %i.bvw, %i.bwd
  store <2 x i64> %i.bwe, ptr %.07171116.us, align 16, !tbaa !10
  %i.bwf = getelementptr inbounds nuw [4 x i8], ptr %.07171116.us, i64 %i.bpv ; 3 uses
  %i.bwg = load <2 x i64>, ptr %i.bwf, align 16, !tbaa !10
  %i.bwh = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %.not944.us.1 = icmp eq <16 x i8> %i.bwh, zeroinitializer
  %i.bwi = shufflevector <16 x i8> %i.bvp, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bwj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bvv, <16 x i8> %i.bwi)
  %i.bwk = select <16 x i1> %.not944.us.1, <16 x i8> zeroinitializer, <16 x i8> %i.bwj
  %i.bwl = bitcast <16 x i8> %i.bwk to <4 x i32>
  %i.bwm = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bwl, i32 range(i32 -17, 32) %i.bpu)
  %i.bwn = bitcast <4 x i32> %i.bwm to <2 x i64>
  %i.bwo = xor <2 x i64> %i.bwg, %i.bwn
  store <2 x i64> %i.bwo, ptr %i.bwf, align 16, !tbaa !10
  %i.bwp = getelementptr inbounds nuw [4 x i8], ptr %i.bwf, i64 %i.bpv ; 3 uses
  %i.bwq = load <2 x i64>, ptr %i.bwp, align 16, !tbaa !10
  %i.bwr = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %.not944.us.2 = icmp eq <16 x i8> %i.bwr, zeroinitializer
  %i.bws = shufflevector <16 x i8> %i.bvp, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %i.bwt = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bvv, <16 x i8> %i.bws)
  %i.bwu = select <16 x i1> %.not944.us.2, <16 x i8> zeroinitializer, <16 x i8> %i.bwt
  %i.bwv = bitcast <16 x i8> %i.bwu to <4 x i32>
  %i.bww = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bwv, i32 range(i32 -17, 32) %i.bpu)
  %i.bwx = bitcast <4 x i32> %i.bww to <2 x i64>
  %i.bwy = xor <2 x i64> %i.bwq, %i.bwx
  store <2 x i64> %i.bwy, ptr %i.bwp, align 16, !tbaa !10
  %i.bwz = getelementptr inbounds nuw [4 x i8], ptr %i.bwp, i64 %i.bpv ; 2 uses
  %i.bxa = load <2 x i64>, ptr %i.bwz, align 16, !tbaa !10
  %i.bxb = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 3, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 11, i32 16, i32 16, i32 16, i32 15, i32 16, i32 16, i32 16>
  %.not944.us.3 = icmp eq <16 x i8> %i.bxb, zeroinitializer
  %i.bxc = shufflevector <16 x i8> %i.bvp, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %i.bxd = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bvv, <16 x i8> %i.bxc)
  %i.bxe = select <16 x i1> %.not944.us.3, <16 x i8> zeroinitializer, <16 x i8> %i.bxd
  %i.bxf = bitcast <16 x i8> %i.bxe to <4 x i32>
  %i.bxg = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bxf, i32 range(i32 -17, 32) %i.bpu)
  %i.bxh = bitcast <4 x i32> %i.bxg to <2 x i64>
  %i.bxi = xor <2 x i64> %i.bxa, %i.bxh
  store <2 x i64> %i.bxi, ptr %i.bwz, align 16, !tbaa !10
  %i.bxj = bitcast <16 x i8> %i.bvp to <8 x i16>
  %i.bxk = extractelement <8 x i16> %i.bxj, i64 7
  %i.bxl = lshr i16 %i.bxk, 8
  %i.bxm = zext nneg i16 %i.bxl to i32
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us
  %.0715.us = phi i32 [ 0, %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us ], [ %i.bxm, %.loopexit.us.loopexit ] ; 2 uses
  %i.bxn = zext nneg i32 %.0715.us to i64
  %i.bxo = lshr i64 %i.bve, %i.bxn                ; 3 uses
  store i64 %i.bxo, ptr %i.bpt, align 8, !tbaa !27
  %i.bxp = sub i32 %i.bvd, %.0715.us              ; 3 uses
  store i32 %i.bxp, ptr %i.bpq, align 8, !tbaa !20
  %i.bxq = add nuw i32 %.07161117.us, 4           ; 2 uses
  %i.bxr = getelementptr inbounds nuw i8, ptr %.07171116.us, i64 16
  %i.bxs = icmp ult i32 %i.bxq, %6
  br i1 %i.bxs, label %bb.eb, label %._crit_edge1120.us, !llvm.loop !61

._crit_edge1120.us:                               ; preds = %.loopexit.us
  store ptr %.lcssa11041110.us, ptr %15, align 8
  %indvars.iv.next1222 = add nuw nsw i64 %indvars.iv1221, 4 ; 2 uses
  %i.bxt = icmp samesign ult i64 %indvars.iv.next1222, %i.bpw
  br i1 %i.bxt, label %.lr.ph1119.us, label %._crit_edge1136, !llvm.loop !62

._crit_edge1136:                                  ; preds = %._crit_edge1120.us, %.lr.ph1135, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br label %bb.ei

bb.ei:                                            ; preds = %.thread933, %.critedge860.thread928, %bb.cd, %._crit_edge1136, %._crit_edge1101
  %.18 = phi i1 [ false, %.thread933 ], [ false, %.critedge860.thread928 ], [ true, %._crit_edge1101 ], [ true, %._crit_edge1136 ], [ true, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ej

bb.ej:                                            ; preds = %bb.n, %bb.o, %bb.p, %bb.ei, %bb.h, %bb.i, %bb.e, %bb.f, %bb.c
  %.21 = phi i1 [ false, %bb.c ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.i ], [ false, %bb.n ], [ %.18, %bb.ei ], [ false, %bb.p ], [ false, %bb.o ]
  ret i1 %.21
}

declare noundef ptr @_ZN4ojph11get_warningEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 25), (28, 36), (40, 48)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 2, 4080) %3) unnamed_addr #4 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = zext nneg i32 %3 to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i8 0, ptr %i.h, align 8, !tbaa !35
  %i.i = add nsw i32 %3, -1                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.k, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !18
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3                          ; 3 uses
  %i.q = load i8, ptr %i.e, align 1, !tbaa !10
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp eq i32 %i.i, 1
  %i.t = or i64 %i.r, 15
  %spec.select = select i1 %i.s, i64 %i.t, i64 %i.r ; 4 uses
  %i.u = add nsw i32 %3, -2                       ; 2 uses
  store i32 %i.u, ptr %i.j, align 4, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !32
  store i64 %spec.select, ptr %i.g, align 8, !tbaa !34
  store i32 8, ptr %i.f, align 8, !tbaa !33
  %i.w = icmp eq i64 %spec.select, 255            ; 2 uses
  %i.x = zext i1 %i.w to i8
  store i8 %i.x, ptr %i.h, align 8, !tbaa !35
  %exitcond.not = icmp eq i32 %i.p, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.a
  %.lcssa40 = phi i64 [ %spec.select, %bb.a ], [ %i.am, %bb.e ], [ %i.bb, %bb.h ], [ %i.bq, %bb.k ]
  %.lcssa = phi i32 [ 8, %bb.a ], [ %i.an, %bb.e ], [ %i.bc, %bb.h ], [ %i.br, %bb.k ]
  %i.y = sub nsw i32 64, %.lcssa
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl i64 %.lcssa40, %i.z
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.ab = icmp samesign ugt i32 %3, 2             ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !10
  %i.ad = zext i8 %i.ac to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i64 [ %i.ad, %bb.d ], [ 255, %bb.c ] ; 2 uses
  %i.af = icmp eq i32 %i.u, 1
  %i.ag = or i64 %i.ae, 15
  %spec.select.1 = select i1 %i.af, i64 %i.ag, i64 %i.ae ; 2 uses
  %i.ah = add nsw i32 %3, -3                      ; 2 uses
  store i32 %i.ah, ptr %i.j, align 4, !tbaa !36
  %i.ai = zext i1 %i.ab to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ai ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !32
  %narrow.1 = select i1 %i.w, i8 7, i8 8          ; 2 uses
  %i.ak = zext nneg i8 %narrow.1 to i64
  %i.al = shl i64 %spec.select, %i.ak
  %i.am = or i64 %i.al, %spec.select.1            ; 3 uses
  store i64 %i.am, ptr %i.g, align 8, !tbaa !34
  %narrow = add nuw nsw i8 %narrow.1, 8           ; 2 uses
  %i.an = zext nneg i8 %narrow to i32             ; 2 uses
  store i32 %i.an, ptr %i.f, align 8, !tbaa !33
  %i.ao = icmp eq i64 %spec.select.1, 255         ; 2 uses
  %i.ap = zext i1 %i.ao to i8
  store i8 %i.ap, ptr %i.h, align 8, !tbaa !35
  %exitcond.not.1 = icmp eq i32 %i.p, 2
  br i1 %exitcond.not.1, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp samesign ugt i32 %3, 3             ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.as = zext i8 %i.ar to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = phi i64 [ %i.as, %bb.g ], [ 255, %bb.f ] ; 2 uses
  %i.au = icmp eq i32 %i.ah, 1
  %i.av = or i64 %i.at, 15
  %spec.select.2 = select i1 %i.au, i64 %i.av, i64 %i.at ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ojph5localL8mel_initEPNS0_10dec_mel_stEPhii:bb.a
  %i.ba = shl i64 %i.am, %i.az
  %i.bb = or i64 %i.ba, %spec.select.2            ; 3 uses
  store i64 %i.bb, ptr %i.g, align 8, !tbaa !34
  %narrow41 = add nuw nsw i8 %narrow, %narrow.2   ; 2 uses
  %i.bc = zext nneg i8 %narrow41 to i32           ; 2 uses
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !33
  %i.bd = icmp eq i64 %spec.select.2, 255         ; 2 uses
  %i.be = zext i1 %i.bd to i8
  store i8 %i.be, ptr %i.h, align 8, !tbaa !35
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
  store i32 %i.bl, ptr %i.j, align 4, !tbaa !36
  %i.bm = zext i1 %i.bf to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bm
  store ptr %i.bn, ptr %0, align 8, !tbaa !32
  %narrow.3 = select i1 %i.bd, i8 7, i8 8         ; 2 uses
  %i.bo = zext nneg i8 %narrow.3 to i64
  %i.bp = shl i64 %i.bb, %i.bo
  %i.bq = or i64 %i.bp, %spec.select.3            ; 2 uses
  store i64 %i.bq, ptr %i.g, align 8, !tbaa !34
  %narrow42 = add nuw nsw i8 %narrow41, %narrow.3
  %i.br = zext nneg i8 %narrow42 to i32           ; 2 uses
  store i32 %i.br, ptr %i.f, align 8, !tbaa !33
  %i.bs = icmp eq i64 %spec.select.3, 255
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %i.h, align 8, !tbaa !35
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
  store i32 %i.d, ptr %i.e, align 4, !tbaa !25
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !37
  %i.g = load i8, ptr %i.c, align 1, !tbaa !10    ; 2 uses
  %i.h = lshr i8 %i.g, 4
  %i.i = zext nneg i8 %i.h to i64                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !27
  %i.k = and i64 %i.i, 7
  %i.l = icmp eq i64 %i.k, 7
  %i.m = select i1 %i.l, i32 3, i32 4             ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !20
  %i.o = icmp ugt i8 %i.g, -113                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.q = zext i1 %i.o to i8                       ; 2 uses
  store i8 %i.q, ptr %i.p, align 8, !tbaa !26
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
  %.lcssa99 = phi ptr [ %i.f, %.lr.ph ], [ %i.cf, %.lr.ph.1 ], [ %i.cs, %.lr.ph.2 ], [ %i.df, %.lr.ph.3 ] ; 2 uses
  %.lcssa98 = phi ptr [ %i.cf, %.lr.ph ], [ %i.cs, %.lr.ph.1 ], [ %i.df, %.lr.ph.2 ], [ %i.ds, %.lr.ph.3 ] ; 2 uses
  %.lcssa97 = phi i64 [ %i.co, %.lr.ph ], [ %i.db, %.lr.ph.1 ], [ %i.do, %.lr.ph.2 ], [ %i.eb, %.lr.ph.3 ] ; 4 uses
  %.lcssa96 = phi i32 [ %i.cp, %.lr.ph ], [ %i.dc, %.lr.ph.1 ], [ %i.dp, %.lr.ph.2 ], [ %i.ec, %.lr.ph.3 ] ; 5 uses
  %.lcssa95 = phi i8 [ %i.cr, %.lr.ph ], [ %i.de, %.lr.ph.1 ], [ %i.dr, %.lr.ph.2 ], [ %i.ee, %.lr.ph.3 ] ; 4 uses
  %i.w = sub nsw i32 %i.d, %.                     ; 9 uses
  store i32 %i.w, ptr %i.e, align 4, !tbaa !25
  %i.x = icmp ugt i32 %.lcssa96, 32
  br i1 %i.x, label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = icmp samesign ugt i32 %i.w, 3
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %.lcssa99, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  %i.ab = getelementptr inbounds i8, ptr %.lcssa99, i64 -5
  store ptr %i.ab, ptr %0, align 8, !tbaa !37
  %i.ac = add nsw i32 %i.w, -4
  br label %.loopexit.i.sink.split

bb.d:                                             ; preds = %bb.b
  %.not48 = icmp eq i32 %i.w, 0
  br i1 %.not48, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.d
  %i.ad = add nsw i32 %3, -3
  %xtraiter = and i32 %i.w, 1
  %i.ae = icmp eq i32 %i.ad, %.
  br i1 %i.ae, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i32 %i.w, 2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %i.af = phi ptr [ %.lcssa98, %.preheader.i.preheader.new ], [ %i.ao, %.preheader.i ] ; 3 uses
  %.050.i = phi i32 [ 0, %.preheader.i.preheader.new ], [ %i.as, %.preheader.i ]
  %.04649.i = phi i32 [ 24, %.preheader.i.preheader.new ], [ %i.au, %.preheader.i ] ; 3 uses
  %i.ag = phi i32 [ %i.w, %.preheader.i.preheader.new ], [ %i.at, %.preheader.i ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -1 ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !37
  %i.ai = load i8, ptr %i.af, align 1, !tbaa !10
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl i32 %i.aj, %.04649.i
  %i.al = or i32 %i.ak, %.050.i
  %i.am = add nsw i32 %i.ag, -1
  store i32 %i.am, ptr %i.e, align 4, !tbaa !25
  %i.an = add nsw i32 %.04649.i, -8
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 -2 ; 3 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !37
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl i32 %i.aq, %i.an
  %i.as = or i32 %i.ar, %i.al                     ; 3 uses
  %i.at = add nsw i32 %i.ag, -2                   ; 3 uses
  store i32 %i.at, ptr %i.e, align 4, !tbaa !25
  %i.au = add nsw i32 %.04649.i, -16              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !68

.loopexit.i.sink.split:                           ; preds = %bb.c, %.thread41
  %.sink = phi i32 [ %i.v, %.thread41 ], [ %i.ac, %bb.c ]
  %.ph = phi i64 [ %i.i, %.thread41 ], [ %.lcssa97, %bb.c ]
  %.ph46 = phi i8 [ %i.q, %.thread41 ], [ %.lcssa95, %bb.c ]
  %.ph47 = phi i32 [ %i.m, %.thread41 ], [ %.lcssa96, %bb.c ]
  %.1.i.ph = phi i32 [ 0, %.thread41 ], [ %i.aa, %bb.c ]
  store i32 %.sink, ptr %i.e, align 4, !tbaa !25
  br label %.loopexit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi ptr [ %.lcssa98, %.preheader.i.preheader ], [ %i.ao, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.050.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %i.as, %.loopexit.i.loopexit.unr-lcssa ]
  %.04649.i.epil.init = phi i32 [ 24, %.preheader.i.preheader ], [ %i.au, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init101 = phi i32 [ %i.w, %.preheader.i.preheader ], [ %i.at, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod103 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.av = getelementptr inbounds i8, ptr %.epil.init, i64 -1
  store ptr %i.av, ptr %0, align 8, !tbaa !37
  %i.aw = load i8, ptr %.epil.init, align 1, !tbaa !10
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl i32 %i.ax, %.04649.i.epil.init
  %i.az = or i32 %i.ay, %.050.i.epil.init
  %i.ba = add nsw i32 %.epil.init101, -1
  store i32 %i.ba, ptr %i.e, align 4, !tbaa !25
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.loopexit.i.sink.split, %bb.d
  %i.bb = phi i64 [ %.ph, %.loopexit.i.sink.split ], [ %.lcssa97, %bb.d ], [ %.lcssa97, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa97, %.preheader.i.epil.preheader ]
  %i.bc = phi i8 [ %.ph46, %.loopexit.i.sink.split ], [ %.lcssa95, %bb.d ], [ %.lcssa95, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa95, %.preheader.i.epil.preheader ]
  %i.bd = phi i32 [ %.ph47, %.loopexit.i.sink.split ], [ %.lcssa96, %bb.d ], [ %.lcssa96, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa96, %.preheader.i.epil.preheader ] ; 2 uses
  %.1.i = phi i32 [ %.1.i.ph, %.loopexit.i.sink.split ], [ 0, %bb.d ], [ %i.as, %.loopexit.i.loopexit.unr-lcssa ], [ %i.az, %.preheader.i.epil.preheader ]
  %i.be = insertelement <4 x i32> poison, i32 %.1.i, i64 0
  %i.bf = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bg = lshr <4 x i32> %i.bf, <i32 24, i32 16, i32 8, i32 0> ; 2 uses
  %i.bh = and <4 x i32> %i.bg, splat (i32 255)    ; 2 uses
  %i.bi = icmp samesign ugt <4 x i32> %i.bh, splat (i32 143)
  %i.bj = sext <4 x i1> %i.bi to <4 x i32>        ; 2 uses
  %i.bk = extractelement <4 x i32> %i.bj, i64 3
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i8
  %i.bn = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.bo = zext nneg i8 %i.bc to i32
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = insertelement <4 x i32> %i.bn, i32 %i.bp, i64 0
  %i.br = and <4 x i32> %i.bg, splat (i32 127)
  %i.bs = icmp eq <4 x i32> %i.br, splat (i32 127)
  %.neg.i = ashr <4 x i32> %i.bq, splat (i32 31)
  %i.bt = add nsw <4 x i32> %.neg.i, splat (i32 8)
  %i.bu = select <4 x i1> %i.bs, <4 x i32> %i.bt, <4 x i32> splat (i32 8) ; 2 uses
  %4 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.bu, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = add nsw <4 x i32> %i.bu, %4             ; 2 uses
  %5 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.bv, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bw = add nsw <4 x i32> %i.bv, %5             ; 2 uses
  %i.bx = extractelement <4 x i32> %i.bw, i64 3
  %6 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.bw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.by = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %i.bh, <4 x i32> %6)
  %i.bz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.by)
  %i.ca = zext i32 %i.bz to i64
  store i8 %i.bm, ptr %i.p, align 8, !tbaa !26
  %i.cb = zext nneg i32 %i.bd to i64
  %i.cc = shl nuw i64 %i.ca, %i.cb
  %i.cd = or i64 %i.cc, %i.bb
  store i64 %i.cd, ptr %i.j, align 8, !tbaa !27
  %i.ce = add i32 %i.bx, %i.bd
  store i32 %i.ce, ptr %i.n, align 8, !tbaa !20
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit: ; preds = %._crit_edge, %.loopexit.i
  ret void

.lr.ph:                                           ; preds = %bb.a
  %i.cf = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 4 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !37
  %i.cg = load i8, ptr %i.f, align 1, !tbaa !10   ; 2 uses
  %i.ch = zext i8 %i.cg to i64                    ; 2 uses
  %i.ci = and i64 %i.ch, 127
  %i.cj = icmp eq i64 %i.ci, 127
  %i.ck = select i1 %i.o, i1 %i.cj, i1 false
  %i.cl = select i1 %i.ck, i32 7, i32 8
  %i.cm = zext nneg i32 %i.m to i64
  %i.cn = shl nuw nsw i64 %i.ch, %i.cm
  %i.co = or i64 %i.cn, %i.i                      ; 3 uses
  store i64 %i.co, ptr %i.j, align 8, !tbaa !27
  %i.cp = add nuw nsw i32 %i.cl, %i.m             ; 4 uses
  store i32 %i.cp, ptr %i.n, align 8, !tbaa !20
  %i.cq = icmp ugt i8 %i.cg, -113                 ; 2 uses
  %i.cr = zext i1 %i.cq to i8                     ; 2 uses
  store i8 %i.cr, ptr %i.p, align 8, !tbaa !26
  %exitcond.not = icmp eq i32 %., 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.cs = getelementptr inbounds i8, ptr %i.b, i64 -5 ; 4 uses
  store ptr %i.cs, ptr %0, align 8, !tbaa !37
  %i.ct = load i8, ptr %i.cf, align 1, !tbaa !10  ; 2 uses
  %i.cu = zext i8 %i.ct to i64                    ; 2 uses
  %i.cv = and i64 %i.cu, 127
  %i.cw = icmp eq i64 %i.cv, 127
  %i.cx = select i1 %i.cq, i1 %i.cw, i1 false
  %i.cy = select i1 %i.cx, i32 7, i32 8
  %i.cz = zext nneg i32 %i.cp to i64
  %i.da = shl nuw nsw i64 %i.cu, %i.cz
  %i.db = or i64 %i.da, %i.co                     ; 3 uses
  store i64 %i.db, ptr %i.j, align 8, !tbaa !27
  %i.dc = add nuw nsw i32 %i.cy, %i.cp            ; 4 uses
  store i32 %i.dc, ptr %i.n, align 8, !tbaa !20
  %i.dd = icmp ugt i8 %i.ct, -113                 ; 2 uses
  %i.de = zext i1 %i.dd to i8                     ; 2 uses
  store i8 %i.de, ptr %i.p, align 8, !tbaa !26
  %exitcond.not.1 = icmp eq i32 %., 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.df = getelementptr inbounds i8, ptr %i.b, i64 -6 ; 4 uses
  store ptr %i.df, ptr %0, align 8, !tbaa !37
  %i.dg = load i8, ptr %i.cs, align 1, !tbaa !10  ; 2 uses
  %i.dh = zext i8 %i.dg to i64                    ; 2 uses
  %i.di = and i64 %i.dh, 127
  %i.dj = icmp eq i64 %i.di, 127
  %i.dk = select i1 %i.dd, i1 %i.dj, i1 false
  %i.dl = select i1 %i.dk, i32 7, i32 8
  %i.dm = zext nneg i32 %i.dc to i64
  %i.dn = shl i64 %i.dh, %i.dm
  %i.do = or i64 %i.dn, %i.db                     ; 3 uses
  store i64 %i.do, ptr %i.j, align 8, !tbaa !27
  %i.dp = add nuw nsw i32 %i.dl, %i.dc            ; 4 uses
  store i32 %i.dp, ptr %i.n, align 8, !tbaa !20
  %i.dq = icmp ugt i8 %i.dg, -113                 ; 2 uses
  %i.dr = zext i1 %i.dq to i8                     ; 2 uses
  store i8 %i.dr, ptr %i.p, align 8, !tbaa !26
  %exitcond.not.2 = icmp eq i32 %., 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ds = getelementptr inbounds i8, ptr %i.b, i64 -7 ; 2 uses
  store ptr %i.ds, ptr %0, align 8, !tbaa !37
  %i.dt = load i8, ptr %i.df, align 1, !tbaa !10  ; 2 uses
  %i.du = zext i8 %i.dt to i64                    ; 2 uses
  %i.dv = and i64 %i.du, 127
  %i.dw = icmp eq i64 %i.dv, 127
  %i.dx = select i1 %i.dq, i1 %i.dw, i1 false
  %i.dy = select i1 %i.dx, i32 7, i32 8
  %i.dz = zext nneg i32 %i.dp to i64
  %i.ea = shl i64 %i.du, %i.dz
  %i.eb = or i64 %i.ea, %i.do                     ; 2 uses
  store i64 %i.eb, ptr %i.j, align 8, !tbaa !27
  %i.ec = add nuw nsw i32 %i.dy, %i.dp            ; 2 uses
  store i32 %i.ec, ptr %i.n, align 8, !tbaa !20
  %i.ed = icmp ugt i8 %i.dt, -113
  %i.ee = zext i1 %i.ed to i8                     ; 2 uses
  store i8 %i.ee, ptr %i.p, align 8, !tbaa !26
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33   ; 3 uses
  %i.f = icmp slt i32 %i.e, 6
  br i1 %i.f, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !34
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 9 uses
  %i.i = icmp sgt i32 %i.h, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.l, ptr %0, align 8, !tbaa !32
  %i.m = add nsw i32 %i.h, -4
  br label %.sink.split.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %i.h, 0
  br i1 %i.n, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.h, 1
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !32 ; 3 uses
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
  store ptr %i.s, ptr %0, align 8, !tbaa !32
  %i.t = load i8, ptr %i.q, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i32
  %i.v = shl i32 255, %.05357.i.i
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %.058.i.i, %i.w
  %i.y = shl i32 %i.u, %.05357.i.i
  %i.z = or i32 %i.y, %i.x
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.g, align 4, !tbaa !36
  %i.ab = or disjoint i32 %.05357.i.i, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 4 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !32
  %i.ad = load i8, ptr %i.s, align 1, !tbaa !10
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl i32 65280, %.05357.i.i
  %i.ag = xor i32 %i.af, -1
  %i.ah = and i32 %i.z, %i.ag
  %i.ai = shl i32 %i.ae, %i.ab
  %i.aj = or i32 %i.ai, %i.ah                     ; 3 uses
  %i.ak = add nsw i32 %i.r, -2                    ; 3 uses
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !36
  %i.al = add nuw nsw i32 %.05357.i.i, 16         ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !69

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
  store ptr %i.am, ptr %0, align 8, !tbaa !32
  %i.an = load i8, ptr %.epil.init, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i32
end_hunk_2
begin_hunk_3_@_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE:bb.a
  %i.ij = phi i32 [ %spec.select34.i.5, %bb.ab ], [ %spec.select.i.5, %bb.aa ] ; 4 uses
  %.pn.i.5 = phi i64 [ %i.if, %bb.ab ], [ 1, %bb.aa ]
  %.sink.i.5 = phi i32 [ %i.ig, %bb.ab ], [ %i.hv, %bb.aa ] ; 4 uses
  %.0.i.5 = phi i32 [ %i.ii, %bb.ab ], [ %i.hw, %bb.aa ]
  %.sink41.i.5 = shl i64 %.sink41.i.4, %.pn.i.5   ; 4 uses
  store i32 %i.ij, ptr %i.cr, align 4, !tbaa !16
  store i64 %.sink41.i.5, ptr %i.cs, align 8, !tbaa !34
  store i32 %.sink.i.5, ptr %i.d, align 8, !tbaa !33
  %i.ik = and i64 %i.ho, -2164663517185
  %i.il = zext i32 %.0.i.5 to i64
  %i.im = shl i64 %i.il, 35
  %i.in = or i64 %i.ik, %i.im                     ; 2 uses
  store i64 %i.in, ptr %i.ct, align 8, !tbaa !18
  %i.io = icmp sgt i32 %.sink.i.5, 5
  br i1 %i.io, label %bb.ad, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ip = sext i32 %i.ij to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !21 ; 4 uses
  %.not.i.6 = icmp sgt i64 %.sink41.i.5, -1
  br i1 %.not.i.6, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %notmask33.i.6 = shl nsw i32 -1, %i.ir
  %i.is = xor i32 %notmask33.i.6, -1
  %i.it = tail call i32 @llvm.smin.i32(i32 %i.ij, i32 11)
  %spec.select.i.6 = add nsw i32 %i.it, 1
  %i.iu = add nsw i32 %.sink.i.5, -1
  %i.iv = shl nuw i32 %i.is, 1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.iw = sub nsw i32 63, %i.ir
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = lshr i64 %.sink41.i.5, %i.ix
  %i.iz = trunc i64 %i.iy to i32
  %notmask.i.6 = shl nsw i32 -1, %i.ir
  %i.ja = xor i32 %notmask.i.6, -1
  %i.jb = and i32 %i.iz, %i.ja
  %i.jc = tail call i32 @llvm.smax.i32(i32 %i.ij, i32 1)
  %spec.select34.i.6 = add nsw i32 %i.jc, -1
  %i.jd = add nsw i32 %i.ir, 1                    ; 2 uses
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = sub nsw i32 %.sink.i.5, %i.jd
  %i.jg = shl nuw i32 %i.jb, 1
  %i.jh = or disjoint i32 %i.jg, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ji = phi i32 [ %spec.select34.i.6, %bb.af ], [ %spec.select.i.6, %bb.ae ] ; 4 uses
  %.pn.i.6 = phi i64 [ %i.je, %bb.af ], [ 1, %bb.ae ]
  %.sink.i.6 = phi i32 [ %i.jf, %bb.af ], [ %i.iu, %bb.ae ] ; 4 uses
  %.0.i.6 = phi i32 [ %i.jh, %bb.af ], [ %i.iv, %bb.ae ]
  %.sink41.i.6 = shl i64 %.sink41.i.5, %.pn.i.6   ; 4 uses
  store i32 %i.ji, ptr %i.cr, align 4, !tbaa !16
  store i64 %.sink41.i.6, ptr %i.cs, align 8, !tbaa !34
  store i32 %.sink.i.6, ptr %i.d, align 8, !tbaa !33
  %i.jj = and i64 %i.in, -277076930199553
  %i.jk = zext i32 %.0.i.6 to i64
  %i.jl = shl i64 %i.jk, 42
  %i.jm = or i64 %i.jj, %i.jl                     ; 2 uses
  store i64 %i.jm, ptr %i.ct, align 8, !tbaa !18
  %i.jn = icmp sgt i32 %.sink.i.6, 5
  br i1 %i.jn, label %bb.ah, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.jo = sext i32 %i.ji to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !21 ; 4 uses
  %.not.i.7 = icmp sgt i64 %.sink41.i.6, -1
  br i1 %.not.i.7, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %notmask33.i.7 = shl nsw i32 -1, %i.jq
  %i.jr = xor i32 %notmask33.i.7, -1
  %i.js = tail call i32 @llvm.smin.i32(i32 %i.ji, i32 11)
  %spec.select.i.7 = add nsw i32 %i.js, 1
  %i.jt = add nsw i32 %.sink.i.6, -1
  %i.ju = shl nuw i32 %i.jr, 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jv = sub nsw i32 63, %i.jq
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = lshr i64 %.sink41.i.6, %i.jw
  %i.jy = trunc i64 %i.jx to i32
  %notmask.i.7 = shl nsw i32 -1, %i.jq
  %i.jz = xor i32 %notmask.i.7, -1
  %i.ka = and i32 %i.jy, %i.jz
  %i.kb = tail call i32 @llvm.smax.i32(i32 %i.ji, i32 1)
  %spec.select34.i.7 = add nsw i32 %i.kb, -1
  %i.kc = add nsw i32 %i.jq, 1                    ; 2 uses
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = sub nsw i32 %.sink.i.6, %i.kc
  %i.kf = shl nuw i32 %i.ka, 1
  %i.kg = or disjoint i32 %i.kf, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %spec.select.sink.i.7 = phi i32 [ %spec.select34.i.7, %bb.aj ], [ %spec.select.i.7, %bb.ai ]
  %.pn.i.7 = phi i64 [ %i.kd, %bb.aj ], [ 1, %bb.ai ]
  %.sink.i.7 = phi i32 [ %i.ke, %bb.aj ], [ %i.jt, %bb.ai ]
  %.0.i.7 = phi i32 [ %i.kg, %bb.aj ], [ %i.ju, %bb.ai ]
  %.sink41.i.7 = shl i64 %.sink41.i.6, %.pn.i.7
  store i32 %spec.select.sink.i.7, ptr %i.cr, align 4, !tbaa !16
  store i64 %.sink41.i.7, ptr %i.cs, align 8, !tbaa !34
  store i32 %.sink.i.7, ptr %i.d, align 8, !tbaa !33
  %i.kh = and i64 %i.jm, -35465847065542657
  %i.ki = zext i32 %.0.i.7 to i64
  %i.kj = shl i64 %i.ki, 49
  %i.kk = or i64 %i.kh, %i.kj
  store i64 %i.kk, ptr %i.ct, align 8, !tbaa !18
  br label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit: ; preds = %bb.ak, %bb.i, %bb.m, %bb.q, %bb.u, %bb.y, %bb.ac, %bb.ag, %bb.f, %bb.a
  %i.kl = phi i32 [ %i.b, %bb.a ], [ 0, %bb.f ], [ 1, %bb.i ], [ 2, %bb.m ], [ 8, %bb.ak ], [ 7, %bb.ag ], [ 6, %bb.ac ], [ 5, %bb.y ], [ 4, %bb.u ], [ 3, %bb.q ]
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !18 ; 2 uses
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = and i32 %i.ko, 127
  %i.kq = lshr i64 %i.kn, 7
  store i64 %i.kq, ptr %i.km, align 8, !tbaa !18
  %i.kr = add nsw i32 %i.kl, -1
  store i32 %i.kr, ptr %i.a, align 8, !tbaa !17
  ret i32 %i.kp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_16frwd_struct_avx2EPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 68)) %0, ptr noundef %1, i32 noundef range(i32 -4077, 2147483646) %2) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  store i32 %2, ptr %i.b, align 8, !tbaa !30
  %i.c = load <2 x i64>, ptr %1, align 1, !tbaa !10
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %2, i32 16) ; 3 uses
  %i.d = trunc i32 %spec.select.i to i8
  %i.e = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.g = sext i32 %spec.select.i to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  store ptr %i.h, ptr %0, align 8, !tbaa !38
  %i.i = sub nsw i32 %2, %spec.select.i
  store i32 %i.i, ptr %i.b, align 8, !tbaa !30
  %i.j = icmp sgt <16 x i8> %i.f, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.k = xor <16 x i1> %i.j, splat (i1 true)
  %i.l = sext <16 x i1> %i.k to <16 x i8>
  %i.m = bitcast <16 x i8> %i.l to <2 x i64>
  %i.n = or <2 x i64> %i.c, %i.m                  ; 3 uses
  %i.o = bitcast <2 x i64> %i.n to <16 x i8>      ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, splat (i8 -1)
  %i.q = and <16 x i1> %i.j, %i.p
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = shl nuw nsw i32 %i.s, 1
  %i.u = and i32 %i.t, 65534                      ; 2 uses
  %.not76.i = icmp eq i32 %i.u, 0
  br i1 %.not76.i, label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.079.i = phi <2 x i64> [ %i.am, %.lr.ph.i ], [ %i.n, %bb.a ] ; 2 uses
  %.07378.i = phi i32 [ %i.v, %.lr.ph.i ], [ 128, %bb.a ]
  %.07477.i = phi i32 [ %i.y, %.lr.ph.i ], [ %i.u, %bb.a ] ; 3 uses
  %i.v = add nsw i32 %.07378.i, -1                ; 2 uses
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07477.i, i1 true) ; 2 uses
  %i.x = lshr exact i32 -2147483648, %i.w         ; 2 uses
  %i.y = xor i32 %i.x, %.07477.i
  %i.z = trunc nuw nsw i32 %i.w to i8
  %i.aa = xor i8 %i.z, 31
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = icmp samesign ult <16 x i8> %i.ac, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.ae = sext <16 x i1> %i.ad to <16 x i8>       ; 2 uses
  %i.af = bitcast <16 x i8> %i.ae to <2 x i64>
  %i.ag = and <2 x i64> %.079.i, %i.af            ; 2 uses
  %i.ah = shufflevector <2 x i64> %i.ag, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ai = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ah, <2 x i64> %i.ag, <2 x i64> splat (i64 63))
  %i.aj = bitcast <16 x i8> %i.ae to <2 x i64>
  %i.ak = xor <2 x i64> %i.aj, splat (i64 -1)
  %i.al = and <2 x i64> %.079.i, %i.ak
  %i.am = or <2 x i64> %i.ai, %i.al               ; 3 uses
  %.not.i = icmp eq i32 %i.x, %.07477.i
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = bitcast <2 x i64> %i.am to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit

_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.pre-phi.i = phi <16 x i8> [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.o, %bb.a ]
  %.073.lcssa.i = phi i32 [ %i.v, %._crit_edge.loopexit.i ], [ 128, %bb.a ] ; 2 uses
  %.0.lcssa.i = phi <2 x i64> [ %i.am, %._crit_edge.loopexit.i ], [ %i.n, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = lshr i32 %i.s, 15
  %3 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aq = bitcast <16 x i8> %3 to <2 x i64>
  %i.ar = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.aq, <2 x i64> <i64 64, i64 poison>)
  %i.as = or <2 x i64> %i.ar, %.0.lcssa.i
  store <2 x i64> %i.as, ptr %i.a, align 8, !tbaa !10
  %i.at = tail call i32 @llvm.smin.i32(i32 %.073.lcssa.i, i32 128) ; 2 uses
  %i.au = add nsw i32 %i.at, 7
  %i.av = lshr i32 %i.au, 3
  %i.aw = bitcast <2 x i64> %.0.lcssa.i to <8 x i16>
  %i.ax = extractelement <8 x i16> %i.aw, i64 7
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nsw i32 %i.at, -112
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = zext nneg i32 %i.av to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !10
  %i.be = load i32, ptr %i.ao, align 8, !tbaa !29
  %i.bf = add i32 %i.be, %.073.lcssa.i
  store i32 %i.bf, ptr %i.ao, align 8, !tbaa !29
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !31
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL9frwd_initILi0EEEvPNS0_16frwd_struct_avx2EPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 68)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  store i32 %2, ptr %i.b, align 8, !tbaa !30
  %i.c = load <2 x i64>, ptr %1, align 1, !tbaa !10
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %2, i32 16) ; 3 uses
  %i.d = trunc i32 %spec.select.i to i8
  %i.e = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.g = sext i32 %spec.select.i to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  store ptr %i.h, ptr %0, align 8, !tbaa !38
  %i.i = sub nsw i32 %2, %spec.select.i
  store i32 %i.i, ptr %i.b, align 8, !tbaa !30
  %i.j = icmp sgt <16 x i8> %i.f, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.k = sext <16 x i1> %i.j to <16 x i8>
  %i.l = bitcast <16 x i8> %i.k to <2 x i64>
  %i.m = and <2 x i64> %i.c, %i.l                 ; 3 uses
  %i.n = bitcast <2 x i64> %i.m to <16 x i8>      ; 2 uses
  %i.o = icmp eq <16 x i8> %i.n, splat (i8 -1)
  %i.p = and <16 x i1> %i.j, %i.o
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = and i32 %i.s, 65534                      ; 2 uses
  %.not74.i = icmp eq i32 %i.t, 0
  br i1 %.not74.i, label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.077.i = phi <2 x i64> [ %i.al, %.lr.ph.i ], [ %i.m, %bb.a ] ; 2 uses
  %.07176.i = phi i32 [ %i.u, %.lr.ph.i ], [ 128, %bb.a ]
  %.07275.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.t, %bb.a ] ; 3 uses
  %i.u = add nsw i32 %.07176.i, -1                ; 2 uses
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07275.i, i1 true) ; 2 uses
  %i.w = lshr exact i32 -2147483648, %i.v         ; 2 uses
  %i.x = xor i32 %i.w, %.07275.i
  %i.y = trunc nuw nsw i32 %i.v to i8
  %i.z = xor i8 %i.y, 31
  %i.aa = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = icmp samesign ult <16 x i8> %i.ab, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.ad = sext <16 x i1> %i.ac to <16 x i8>       ; 2 uses
  %i.ae = bitcast <16 x i8> %i.ad to <2 x i64>
  %i.af = and <2 x i64> %.077.i, %i.ae            ; 2 uses
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ah = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ag, <2 x i64> %i.af, <2 x i64> splat (i64 63))
  %i.ai = bitcast <16 x i8> %i.ad to <2 x i64>
  %i.aj = xor <2 x i64> %i.ai, splat (i64 -1)
  %i.ak = and <2 x i64> %.077.i, %i.aj
  %i.al = or <2 x i64> %i.ah, %i.ak               ; 3 uses
  %.not.i = icmp eq i32 %i.w, %.07275.i
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = bitcast <2 x i64> %i.al to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit

_ZN4ojph5localL9frwd_readILi0EEEvPNS0_16frwd_struct_avx2E.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.pre-phi.i = phi <16 x i8> [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.n, %bb.a ]
  %.071.lcssa.i = phi i32 [ %i.u, %._crit_edge.loopexit.i ], [ 128, %bb.a ] ; 2 uses
  %.0.lcssa.i = phi <2 x i64> [ %i.al, %._crit_edge.loopexit.i ], [ %i.m, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ao = lshr i32 %i.r, 15
  %3 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ap = bitcast <16 x i8> %3 to <2 x i64>
  %i.aq = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.ap, <2 x i64> <i64 64, i64 poison>)
  %i.ar = or <2 x i64> %i.aq, %.0.lcssa.i
  store <2 x i64> %i.ar, ptr %i.a, align 8, !tbaa !10
  %i.as = tail call i32 @llvm.smin.i32(i32 %.071.lcssa.i, i32 128) ; 2 uses
  %i.at = add nsw i32 %i.as, 7
  %i.au = lshr i32 %i.at, 3
  %i.av = bitcast <2 x i64> %.0.lcssa.i to <8 x i16>
  %i.aw = extractelement <8 x i16> %i.av, i64 7
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nsw i32 %i.as, -112
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i8
  %i.bb = zext nneg i32 %i.au to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !10
  %i.bd = load i32, ptr %i.an, align 8, !tbaa !29
  %i.be = add i32 %i.bd, %.071.lcssa.i
  store i32 %i.be, ptr %i.an, align 8, !tbaa !29
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !31
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL12rev_init_mrpEPNS0_10rev_structEPhii(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 25)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i8 1, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 0, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.i, align 8, !tbaa !27
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 3                          ; 7 uses
  %i.m = add nsw i32 %3, -1                       ; 3 uses
  store i32 %i.m, ptr %i.f, align 4, !tbaa !25
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.b:                                             ; preds = %bb.p, %bb.m, %bb.j, %bb.g
  %.lcssa95 = phi ptr [ %i.em, %bb.g ], [ %i.ey, %bb.j ], [ %i.fp, %bb.m ], [ %i.gg, %bb.p ] ; 12 uses
  %.lcssa94 = phi i64 [ %i.en, %bb.g ], [ %i.fg, %bb.j ], [ %i.fx, %bb.m ], [ %i.go, %bb.p ]
  %.lcssa93 = phi i32 [ %i.eq, %bb.g ], [ %i.fh, %bb.j ], [ %i.fy, %bb.m ], [ %i.gp, %bb.p ] ; 3 uses
  %.lcssa92 = phi i1 [ %i.er, %bb.g ], [ %i.fi, %bb.j ], [ %i.fz, %bb.m ], [ %i.gq, %bb.p ]
  %.lcssa91 = phi i32 [ %3, %bb.g ], [ %i.m, %bb.j ], [ %i.et, %bb.m ], [ %i.fk, %bb.p ] ; 4 uses
  %.lcssa90 = phi i32 [ %i.m, %bb.g ], [ %i.et, %bb.j ], [ %i.fk, %bb.m ], [ %i.gb, %bb.p ] ; 5 uses
  %i.o = icmp ugt i32 %.lcssa93, 32
  br i1 %i.o, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp sgt i32 %.lcssa91, 4
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %.lcssa95, i64 -3
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21
  %i.s = getelementptr inbounds i8, ptr %.lcssa95, i64 -4
  store ptr %i.s, ptr %0, align 8, !tbaa !37
  %i.t = add nsw i32 %.lcssa91, -5
  store i32 %i.t, ptr %i.f, align 4, !tbaa !25
  br label %.loopexit.i

bb.e:                                             ; preds = %bb.c
  %i.u = icmp sgt i32 %.lcssa91, 1
  br i1 %i.u, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %bb.e
  %i.v = add i32 %3, -1                           ; 2 uses
  %i.w = icmp ne i32 %i.v, %i.l
  %umin.neg = sext i1 %i.w to i32
  %i.x = add i32 %i.v, %umin.neg
  %i.y = sub i32 %i.x, %i.l                       ; 3 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 3
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ab = getelementptr i8, ptr %0, i64 24
  %i.ac = add i32 %3, -1                          ; 2 uses
  %i.ad = icmp ne i32 %i.ac, %i.l
  %.neg = sext i1 %i.ad to i32
  %i.ae = add i32 %i.ac, %.neg
  %i.af = sub i32 %i.ae, %i.l
  %i.ag = zext i32 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr i8, ptr %.lcssa95, i64 %i.ah
  %i.aj = getelementptr i8, ptr %.lcssa95, i64 1
  %bound0 = icmp ult ptr %0, %i.aj
  %bound1 = icmp ult ptr %i.ai, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check44 = icmp ult i32 %i.y, 15
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 8589934576              ; 5 uses
  %i.al = sub nsw i64 0, %n.vec
  %i.am = getelementptr i8, ptr %.lcssa95, i64 %i.al
  %i.an = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ao = mul i32 %i.an, -8
  %i.ap = or disjoint i32 %i.ao, 24               ; 2 uses
  %i.aq = sub i32 %.lcssa90, %i.an                ; 2 uses
  %i.ar = add nsw i32 %.lcssa91, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi45 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi46 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi47 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 24, i32 16, i32 8, i32 0>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.as = phi i32 [ %i.ar, %vector.ph ], [ %i.bn, %vector.body ] ; 2 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 -32)
  %step.add.2 = add nsw <4 x i32> %vec.ind, splat (i32 -64)
  %step.add.3 = add nsw <4 x i32> %vec.ind, splat (i32 -96)
  %i.at = sub i64 0, %index
  %i.au = sub nuw nsw i64 -15, %index
  %next.gep = getelementptr i8, ptr %.lcssa95, i64 %i.at ; 4 uses
  %next.gep52 = getelementptr i8, ptr %.lcssa95, i64 %i.au
  %i.av = getelementptr inbounds i8, ptr %next.gep52, i64 -1
  %i.aw = getelementptr i8, ptr %next.gep, i64 -3
  %i.ax = getelementptr i8, ptr %next.gep, i64 -7
  %i.ay = getelementptr i8, ptr %next.gep, i64 -11
  %i.az = getelementptr i8, ptr %next.gep, i64 -15
  %wide.load = load <4 x i8>, ptr %i.aw, align 1, !tbaa !10, !alias.scope !78
  %wide.load53 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !10, !alias.scope !78
  %wide.load54 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !10, !alias.scope !78
  %wide.load55 = load <4 x i8>, ptr %i.az, align 1, !tbaa !10, !alias.scope !78
  %reverse = shufflevector <4 x i8> %wide.load, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse56 = shufflevector <4 x i8> %wide.load53, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse57 = shufflevector <4 x i8> %wide.load54, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse58 = shufflevector <4 x i8> %wide.load55, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ba = zext <4 x i8> %reverse to <4 x i32>
  %i.bb = zext <4 x i8> %reverse56 to <4 x i32>
  %i.bc = zext <4 x i8> %reverse57 to <4 x i32>
  %i.bd = zext <4 x i8> %reverse58 to <4 x i32>
  %i.be = shl <4 x i32> %i.ba, %vec.ind
  %i.bf = shl <4 x i32> %i.bb, %step.add
  %i.bg = shl <4 x i32> %i.bc, %step.add.2
  %i.bh = shl <4 x i32> %i.bd, %step.add.3
  %i.bi = or <4 x i32> %i.be, %vec.phi            ; 2 uses
  %i.bj = or <4 x i32> %i.bf, %vec.phi45          ; 2 uses
  %i.bk = or <4 x i32> %i.bg, %vec.phi46          ; 2 uses
  %i.bl = or <4 x i32> %i.bh, %vec.phi47          ; 2 uses
  %i.bm = add nsw i32 %i.as, -13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 -128)
  %i.bn = add nsw i32 %i.as, -16
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  store ptr %i.av, ptr %0, align 8, !tbaa !37, !alias.scope !79, !noalias !78
  store i32 %i.bm, ptr %i.f, align 4, !tbaa !25, !alias.scope !79, !noalias !78
  %bin.rdx = or <4 x i32> %i.bj, %i.bi
  %bin.rdx60 = or <4 x i32> %i.bk, %bin.rdx
  %bin.rdx61 = or <4 x i32> %i.bl, %bin.rdx60
  %i.bp = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx61) ; 3 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !80

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bp, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.ap, %vec.epilog.iter.check ], [ 24, %vector.main.loop.iter.check ]
  %bc.resume.val62 = phi i32 [ %i.aq, %vec.epilog.iter.check ], [ %.lcssa90, %vector.main.loop.iter.check ]
  %n.vec63 = and i64 %i.aa, 8589934588            ; 4 uses
  %i.bq = sub nsw i64 0, %n.vec63
  %i.br = getelementptr i8, ptr %.lcssa95, i64 %i.bq
  %i.bs = trunc i64 %n.vec63 to i32               ; 2 uses
  %i.bt = mul i32 %i.bs, -8
  %i.bu = or disjoint i32 %i.bt, 24
  %i.bv = sub i32 %.lcssa90, %i.bs
  %i.bw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert64 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat65 = shufflevector <4 x i32> %broadcast.splatinsert64, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat65, <i32 0, i32 -8, i32 -16, i32 -24>
  %i.bx = add nsw i32 %bc.resume.val62, -3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi69 = phi <4 x i32> [ %i.bw, %vec.epilog.ph ], [ %i.cf, %vec.epilog.vector.body ]
end_hunk_3
begin_hunk_4_@_ZN4ojph5localL12rev_init_mrpEPNS0_10rev_structEPhii:bb.a

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.em = phi ptr [ %i.ej, %bb.f ], [ %i.e, %bb.a ] ; 4 uses
  %i.en = phi i64 [ %i.el, %bb.f ], [ 0, %bb.a ]  ; 5 uses
  %i.eo = and i64 %i.en, 127
  %i.ep = icmp eq i64 %i.eo, 127
  %i.eq = select i1 %i.ep, i32 7, i32 8           ; 4 uses
  store i64 %i.en, ptr %i.i, align 8, !tbaa !27
  store i32 %i.eq, ptr %i.h, align 8, !tbaa !20
  %i.er = icmp samesign ugt i64 %i.en, 143        ; 3 uses
  %i.es = zext i1 %i.er to i8
  store i8 %i.es, ptr %i.g, align 8, !tbaa !26
  %exitcond.not = icmp eq i32 %i.l, 0
  br i1 %exitcond.not, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.et = add nsw i32 %3, -2                      ; 3 uses
  store i32 %i.et, ptr %i.f, align 4, !tbaa !25
  %i.eu = icmp sgt i32 %3, 1
  br i1 %i.eu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ev = getelementptr inbounds i8, ptr %i.em, i64 -1 ; 2 uses
  store ptr %i.ev, ptr %0, align 8, !tbaa !37
  %i.ew = load i8, ptr %i.em, align 1, !tbaa !10
  %i.ex = zext i8 %i.ew to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ey = phi ptr [ %i.ev, %bb.i ], [ %i.em, %bb.h ] ; 4 uses
  %i.ez = phi i64 [ %i.ex, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %i.fa = and i64 %i.ez, 127
  %i.fb = icmp eq i64 %i.fa, 127
  %i.fc = select i1 %i.er, i1 %i.fb, i1 false
  %i.fd = select i1 %i.fc, i32 7, i32 8
  %i.fe = zext nneg i32 %i.eq to i64
  %i.ff = shl nuw nsw i64 %i.ez, %i.fe
  %i.fg = or i64 %i.ff, %i.en                     ; 3 uses
  store i64 %i.fg, ptr %i.i, align 8, !tbaa !27
  %i.fh = add nuw nsw i32 %i.fd, %i.eq            ; 4 uses
  store i32 %i.fh, ptr %i.h, align 8, !tbaa !20
  %i.fi = icmp samesign ugt i64 %i.ez, 143        ; 3 uses
  %i.fj = zext i1 %i.fi to i8
  store i8 %i.fj, ptr %i.g, align 8, !tbaa !26
  %exitcond.not.1 = icmp eq i32 %i.l, 1
  br i1 %exitcond.not.1, label %bb.b, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fk = add nsw i32 %3, -3                      ; 3 uses
  store i32 %i.fk, ptr %i.f, align 4, !tbaa !25
  %i.fl = icmp sgt i32 %3, 2
  br i1 %i.fl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fm = getelementptr inbounds i8, ptr %i.ey, i64 -1 ; 2 uses
  store ptr %i.fm, ptr %0, align 8, !tbaa !37
  %i.fn = load i8, ptr %i.ey, align 1, !tbaa !10
  %i.fo = zext i8 %i.fn to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fp = phi ptr [ %i.fm, %bb.l ], [ %i.ey, %bb.k ] ; 4 uses
  %i.fq = phi i64 [ %i.fo, %bb.l ], [ 0, %bb.k ]  ; 3 uses
  %i.fr = and i64 %i.fq, 127
  %i.fs = icmp eq i64 %i.fr, 127
  %i.ft = select i1 %i.fi, i1 %i.fs, i1 false
  %i.fu = select i1 %i.ft, i32 7, i32 8
  %i.fv = zext nneg i32 %i.fh to i64
  %i.fw = shl nuw nsw i64 %i.fq, %i.fv
  %i.fx = or i64 %i.fw, %i.fg                     ; 3 uses
  store i64 %i.fx, ptr %i.i, align 8, !tbaa !27
  %i.fy = add nuw nsw i32 %i.fu, %i.fh            ; 4 uses
  store i32 %i.fy, ptr %i.h, align 8, !tbaa !20
  %i.fz = icmp samesign ugt i64 %i.fq, 143        ; 3 uses
  %i.ga = zext i1 %i.fz to i8
  store i8 %i.ga, ptr %i.g, align 8, !tbaa !26
  %exitcond.not.2 = icmp eq i32 %i.l, 2
  br i1 %exitcond.not.2, label %bb.b, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gb = add nsw i32 %3, -4                      ; 2 uses
  store i32 %i.gb, ptr %i.f, align 4, !tbaa !25
  %i.gc = icmp sgt i32 %3, 3
  br i1 %i.gc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gd = getelementptr inbounds i8, ptr %i.fp, i64 -1 ; 2 uses
  store ptr %i.gd, ptr %0, align 8, !tbaa !37
  %i.ge = load i8, ptr %i.fp, align 1, !tbaa !10
  %i.gf = zext i8 %i.ge to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gg = phi ptr [ %i.gd, %bb.o ], [ %i.fp, %bb.n ]
  %i.gh = phi i64 [ %i.gf, %bb.o ], [ 0, %bb.n ]  ; 3 uses
  %i.gi = and i64 %i.gh, 127
  %i.gj = icmp eq i64 %i.gi, 127
  %i.gk = select i1 %i.fz, i1 %i.gj, i1 false
  %i.gl = select i1 %i.gk, i32 7, i32 8
  %i.gm = zext nneg i32 %i.fy to i64
  %i.gn = shl i64 %i.gh, %i.gm
  %i.go = or i64 %i.gn, %i.fx                     ; 2 uses
  store i64 %i.go, ptr %i.i, align 8, !tbaa !27
  %i.gp = add nuw nsw i32 %i.gl, %i.fy            ; 2 uses
  store i32 %i.gp, ptr %i.h, align 8, !tbaa !20
  %i.gq = icmp samesign ugt i64 %i.gh, 143        ; 2 uses
  %i.gr = zext i1 %i.gq to i8
  store i8 %i.gr, ptr %i.g, align 8, !tbaa !26
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx.ptestz.256(<4 x i64>, <4 x i64>) #8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = icmp ult i32 %i.b, 129
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 16) ; 3 uses
  %i.h = trunc i32 %spec.select.i to i8
  %i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = sext i32 %spec.select.i to i64
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 %i.k ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !38
  %i.m = sub nsw i32 %i.g, %spec.select.i
  store i32 %i.m, ptr %i.f, align 8, !tbaa !30
  %i.n = icmp sgt <16 x i8> %i.j, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.o = xor <16 x i1> %i.n, splat (i1 true)
  %i.p = sext <16 x i1> %i.o to <16 x i8>
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>
  %i.r = or <2 x i64> %i.e, %i.q                  ; 3 uses
  %i.s = bitcast <2 x i64> %i.r to <16 x i8>      ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, splat (i8 -1)
  %i.u = and <16 x i1> %i.n, %i.t
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31
  %i.aa = or i32 %i.x, %i.z
  %i.ab = and i32 %i.aa, 65535                    ; 2 uses
  %.not76.i = icmp eq i32 %i.ab, 0
  br i1 %.not76.i, label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.079.i = phi <2 x i64> [ %i.at, %.lr.ph.i ], [ %i.r, %bb.b ] ; 2 uses
  %.07378.i = phi i32 [ %i.ac, %.lr.ph.i ], [ 128, %bb.b ]
  %.07477.i = phi i32 [ %i.af, %.lr.ph.i ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = add nsw i32 %.07378.i, -1               ; 2 uses
  %i.ad = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07477.i, i1 true) ; 2 uses
  %i.ae = lshr exact i32 -2147483648, %i.ad       ; 2 uses
  %i.af = xor i32 %i.ae, %.07477.i
  %i.ag = trunc nuw nsw i32 %i.ad to i8
  %i.ah = xor i8 %i.ag, 31
  %i.ai = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ak = icmp samesign ult <16 x i8> %i.aj, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.al = sext <16 x i1> %i.ak to <16 x i8>       ; 2 uses
  %i.am = bitcast <16 x i8> %i.al to <2 x i64>
  %i.an = and <2 x i64> %.079.i, %i.am            ; 2 uses
  %i.ao = shufflevector <2 x i64> %i.an, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ap = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ao, <2 x i64> %i.an, <2 x i64> splat (i64 63))
  %i.aq = bitcast <16 x i8> %i.al to <2 x i64>
  %i.ar = xor <2 x i64> %i.aq, splat (i64 -1)
  %i.as = and <2 x i64> %.079.i, %i.ar
  %i.at = or <2 x i64> %i.ap, %i.as               ; 3 uses
  %.not.i = icmp eq i32 %i.ae, %.07477.i
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1

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
  %1 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bb = bitcast <16 x i8> %1 to <2 x i64>
  %i.bc = sub nuw nsw i32 64, %i.aw
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %i.bf = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.bb, <2 x i64> %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bh = zext nneg i32 %i.av to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.bi, align 1, !tbaa !10
  %i.bk = or <2 x i64> %i.ba, %i.bf
  %i.bl = or <2 x i64> %i.bk, %i.bj
  store <2 x i64> %i.bl, ptr %i.bi, align 1, !tbaa !10
  %i.bm = sub nuw nsw i32 128, %i.aw
  %i.bn = tail call i32 @llvm.smin.i32(i32 %.073.lcssa.i, i32 %i.bm) ; 2 uses
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !29
  %i.bp = add nsw i32 %i.bn, 7
  %i.bq = add i32 %i.bp, %i.bo
  %i.br = lshr i32 %i.bq, 3
  %i.bs = bitcast <2 x i64> %.0.lcssa.i to <8 x i16>
  %i.bt = extractelement <8 x i16> %i.bs, i64 7
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nsw i32 %i.bn, -112
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i8
  %i.by = zext nneg i32 %i.br to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.by
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !10
  %i.ca = load i32, ptr %i.a, align 8, !tbaa !29
  %i.cb = add i32 %i.ca, %.073.lcssa.i            ; 4 uses
  store i32 %i.cb, ptr %i.a, align 8, !tbaa !29
  store i32 %i.au, ptr %i.y, align 4, !tbaa !31
  %i.cc = icmp ult i32 %i.cb, 129
  br i1 %i.cc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit
  %i.cd = load <2 x i64>, ptr %i.l, align 1, !tbaa !10
  %i.ce = load i32, ptr %i.f, align 8, !tbaa !30  ; 2 uses
  %spec.select.i5 = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 16) ; 3 uses
  %i.cf = trunc i32 %spec.select.i5 to i8
  %i.cg = insertelement <16 x i8> poison, i8 %i.cf, i64 0
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ci = sext i32 %spec.select.i5 to i64
  %i.cj = getelementptr inbounds i8, ptr %i.l, i64 %i.ci
  store ptr %i.cj, ptr %0, align 8, !tbaa !38
  %i.ck = sub nsw i32 %i.ce, %spec.select.i5
  store i32 %i.ck, ptr %i.f, align 8, !tbaa !30
  %i.cl = icmp sgt <16 x i8> %i.ch, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.cm = xor <16 x i1> %i.cl, splat (i1 true)
  %i.cn = sext <16 x i1> %i.cm to <16 x i8>
  %i.co = bitcast <16 x i8> %i.cn to <2 x i64>
  %i.cp = or <2 x i64> %i.cd, %i.co               ; 3 uses
  %i.cq = bitcast <2 x i64> %i.cp to <16 x i8>    ; 2 uses
  %i.cr = icmp eq <16 x i8> %i.cq, splat (i8 -1)
  %i.cs = and <16 x i1> %i.cl, %i.cr
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %.masked = and i32 %i.cv, 65534
  %i.cw = or disjoint i32 %.masked, %i.au         ; 2 uses
  %.not76.i6 = icmp eq i32 %i.cw, 0
  br i1 %.not76.i6, label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit17, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.c, %.lr.ph.i7
  %.079.i8 = phi <2 x i64> [ %i.do, %.lr.ph.i7 ], [ %i.cp, %bb.c ] ; 2 uses
  %.07378.i9 = phi i32 [ %i.cx, %.lr.ph.i7 ], [ 128, %bb.c ]
  %.07477.i10 = phi i32 [ %i.da, %.lr.ph.i7 ], [ %i.cw, %bb.c ] ; 3 uses
  %i.cx = add nsw i32 %.07378.i9, -1              ; 2 uses
  %i.cy = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.07477.i10, i1 true) ; 2 uses
  %i.cz = lshr exact i32 -2147483648, %i.cy       ; 2 uses
  %i.da = xor i32 %i.cz, %.07477.i10
  %i.db = trunc nuw nsw i32 %i.cy to i8
  %i.dc = xor i8 %i.db, 31
  %i.dd = insertelement <16 x i8> poison, i8 %i.dc, i64 0
  %i.de = shufflevector <16 x i8> %i.dd, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.df = icmp samesign ult <16 x i8> %i.de, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.dg = sext <16 x i1> %i.df to <16 x i8>       ; 2 uses
  %i.dh = bitcast <16 x i8> %i.dg to <2 x i64>
  %i.di = and <2 x i64> %.079.i8, %i.dh           ; 2 uses
  %i.dj = shufflevector <2 x i64> %i.di, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.dk = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.dj, <2 x i64> %i.di, <2 x i64> splat (i64 63))
  %i.dl = bitcast <16 x i8> %i.dg to <2 x i64>
  %i.dm = xor <2 x i64> %i.dl, splat (i64 -1)
  %i.dn = and <2 x i64> %.079.i8, %i.dm
  %i.do = or <2 x i64> %i.dk, %i.dn               ; 3 uses
  %.not.i11 = icmp eq i32 %i.cz, %.07477.i10
  br i1 %.not.i11, label %._crit_edge.loopexit.i12, label %.lr.ph.i7, !llvm.loop !1

._crit_edge.loopexit.i12:                         ; preds = %.lr.ph.i7
  %.pre.i13 = bitcast <2 x i64> %i.do to <16 x i8>
  br label %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit17

_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit17: ; preds = %bb.c, %._crit_edge.loopexit.i12
  %.pre-phi.i14 = phi <16 x i8> [ %.pre.i13, %._crit_edge.loopexit.i12 ], [ %i.cq, %bb.c ]
  %.073.lcssa.i15 = phi i32 [ %i.cx, %._crit_edge.loopexit.i12 ], [ 128, %bb.c ] ; 2 uses
  %.0.lcssa.i16 = phi <2 x i64> [ %i.do, %._crit_edge.loopexit.i12 ], [ %i.cp, %bb.c ] ; 2 uses
  %i.dp = lshr i32 %i.cu, 15
  %i.dq = lshr i32 %i.cb, 3
  %i.dr = and i32 %i.cb, 7                        ; 3 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = insertelement <2 x i64> poison, i64 %i.ds, i64 0
  %i.du = shufflevector <2 x i64> %i.dt, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dv = shl <2 x i64> %.0.lcssa.i16, %i.du
  %2 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.pre-phi.i14, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dw = bitcast <16 x i8> %2 to <2 x i64>
  %i.dx = sub nuw nsw i32 64, %i.dr
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %i.ea = tail call noundef <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %i.dw, <2 x i64> %i.dz)
  %i.eb = zext nneg i32 %i.dq to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.eb ; 2 uses
  %i.ed = load <2 x i64>, ptr %i.ec, align 1, !tbaa !10
  %i.ee = or <2 x i64> %i.dv, %i.ea
  %i.ef = or <2 x i64> %i.ee, %i.ed
  store <2 x i64> %i.ef, ptr %i.ec, align 1, !tbaa !10
  %i.eg = sub nuw nsw i32 128, %i.dr
  %i.eh = tail call i32 @llvm.smin.i32(i32 %.073.lcssa.i15, i32 %i.eg) ; 2 uses
  %i.ei = load i32, ptr %i.a, align 8, !tbaa !29
  %i.ej = add nsw i32 %i.eh, 7
  %i.ek = add i32 %i.ej, %i.ei
  %i.el = lshr i32 %i.ek, 3
  %i.em = bitcast <2 x i64> %.0.lcssa.i16 to <8 x i16>
  %i.en = extractelement <8 x i16> %i.em, i64 7
  %i.eo = zext i16 %i.en to i32
  %i.ep = add nsw i32 %i.eh, -112
  %i.eq = lshr i32 %i.eo, %i.ep
  %i.er = trunc i32 %i.eq to i8
  %i.es = zext nneg i32 %i.el to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.es
  store i8 %i.er, ptr %i.et, align 1, !tbaa !10
  %i.eu = load i32, ptr %i.a, align 8, !tbaa !29
  %i.ev = add i32 %i.eu, %.073.lcssa.i15
  store i32 %i.ev, ptr %i.a, align 8, !tbaa !29
  store i32 %i.dp, ptr %i.y, align 4, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit, %_ZN4ojph5localL9frwd_readILi255EEEvPNS0_16frwd_struct_avx2E.exit17, %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = load <2 x i64>, ptr %i.ew, align 8, !tbaa !10
  ret <2 x i64> %i.ex
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

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

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"bool", !6, i64 0}
!15 = !{!"_ZTSN4ojph5local10dec_mel_stE", !12, i64 0, !13, i64 8, !7, i64 16, !7, i64 20, !14, i64 24, !7, i64 28, !7, i64 32, !13, i64 40}
!16 = !{!15, !7, i64 28}
!17 = !{!15, !7, i64 32}
!18 = !{!15, !13, i64 40}
!19 = !{!"_ZTSN4ojph5local10rev_structE", !12, i64 0, !13, i64 8, !7, i64 16, !7, i64 20, !14, i64 24}
!20 = !{!19, !7, i64 16}
!21 = !{!7, !7, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!19, !7, i64 20}
!26 = !{!19, !14, i64 24}
!27 = !{!19, !13, i64 8}
!28 = !{!"_ZTSN4ojph5local16frwd_struct_avx2E", !12, i64 0, !6, i64 8, !7, i64 56, !7, i64 60, !7, i64 64}
!29 = !{!28, !7, i64 56}
!30 = !{!28, !7, i64 64}
!31 = !{!28, !7, i64 60}
!32 = !{!15, !12, i64 0}
!33 = !{!15, !7, i64 16}
!34 = !{!15, !13, i64 8}
!35 = !{!15, !14, i64 24}
!36 = !{!15, !7, i64 20}
!37 = !{!19, !12, i64 0}
!38 = !{!28, !12, i64 0}
!39 = distinct !{!39, !22, !23, !24}
!40 = distinct !{!40, !22, !23, !24}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22, !23, !24}
!44 = distinct !{!44, !22, !23, !24}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !67}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22, !23, !24}
!60 = distinct !{!60, !22, !23, !24}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !22}
!63 = !{!"vtable pointer", !5, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"short", !6, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !22, !24}
!69 = distinct !{!69, !22}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = distinct !{!72, i1 false, !"LVerDomain"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !22, !24, !23}
!75 = distinct !{!75, !72}
!76 = distinct !{!76, !22, !24, !23}
!77 = distinct !{!77, !22, !24}
!78 = !{!73}
!79 = !{!75}
!80 = !{!"branch_weights", i32 4, i32 12}
end_hunk_4
