Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/shufflechannel_x86_fma?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn22ShuffleChannel_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.k, label %_ZN4ncnn3Mat7releaseEv.exit964

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !102 ; 3 uses
  %.not3.i963 = icmp eq ptr %i.ap, null
  %i.aq = load ptr, ptr %2, align 8, !tbaa !103   ; 3 uses
  br i1 %.not3.i963, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef %i.aq), !inline_history !28
  br label %_ZN4ncnn3Mat7releaseEv.exit964

bb.m:                                             ; preds = %bb.k
  %.not.i965 = icmp eq ptr %i.aq, null
  br i1 %.not.i965, label %_ZN4ncnn3Mat7releaseEv.exit964, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.aq) #14
  br label %_ZN4ncnn3Mat7releaseEv.exit964

_ZN4ncnn3Mat7releaseEv.exit964:                   ; preds = %bb.n, %bb.m, %bb.i, %bb.j, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aw, i8 0, i64 20, i1 false)
  %i.az = load <2 x ptr>, ptr %1, align 8, !tbaa !105
  store <2 x ptr> %i.az, ptr %2, align 8, !tbaa !105
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !91
  store i64 %i.ba, ptr %i.au, align 8, !tbaa !91
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !90
  store i32 %i.bb, ptr %i.av, align 8, !tbaa !90
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !102
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !102
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load <4 x i32>, ptr %i.bf, align 8, !tbaa !106
  store <4 x i32> %i.bg, ptr %i.aw, align 8, !tbaa !106
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !97
  store i32 %i.bh, ptr %i.ax, align 8, !tbaa !97
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !104
  store i64 %i.bj, ptr %i.ay, align 8, !tbaa !104
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.o:                                             ; preds = %bb.e
  switch i32 %i.b, label %bb.cv [
    i32 8, label %bb.p
    i32 4, label %bb.bh
  ]

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp ne i32 %i.ac, 2                    ; 2 uses
  %i.bl = and i32 %i.r, 1
  %.not597 = icmp eq i32 %i.bl, 0
  %or.cond = select i1 %i.bk, i1 true, i1 %.not597
  br i1 %or.cond, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.bn)
  %i.bo = load ptr, ptr %2, align 8, !tbaa !103   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit615

_ZNK4ncnn3Mat5emptyEv.exit615:                    ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !104 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !97
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.br, %i.bu
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN4ncnn3MataSERKS0_.exit, label %.preheader1915

.preheader1915:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit615
  %i.bx = icmp sgt i32 %i.ad, 0
  br i1 %i.bx, label %_ZN4ncnn3MatD2Ev.exit701.lr.ph, label %_ZN4ncnn3MatD2Ev.exit696

_ZN4ncnn3MatD2Ev.exit701.lr.ph:                   ; preds = %.preheader1915
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = icmp sgt i32 %i.t, 0
  br i1 %i.ca, label %_ZN4ncnn3MatD2Ev.exit701.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit701.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit701.lr.ph
  %i.cb = zext nneg i32 %i.ad to i64              ; 2 uses
  br label %_ZN4ncnn3MatD2Ev.exit701

_ZN4ncnn3MatD2Ev.exit696.loopexit:                ; preds = %._crit_edge1974
  %.pre2066 = load ptr, ptr %2, align 8, !tbaa !103, !noalias !109
  %.pre2067 = load i64, ptr %i.bq, align 8, !tbaa !104, !noalias !109
  br label %_ZN4ncnn3MatD2Ev.exit696

_ZN4ncnn3MatD2Ev.exit696:                         ; preds = %_ZN4ncnn3MatD2Ev.exit696.loopexit, %.preheader1915
  %i.cc = phi i64 [ %.pre2067, %_ZN4ncnn3MatD2Ev.exit696.loopexit ], [ %i.br, %.preheader1915 ]
  %i.cd = phi ptr [ %.pre2066, %_ZN4ncnn3MatD2Ev.exit696.loopexit ], [ %i.bo, %.preheader1915 ]
  %i.ce = icmp sgt i32 %i.t, 0
  br i1 %i.ce, label %.lr.ph1980.preheader, label %_ZN4ncnn3MataSERKS0_.exit

.lr.ph1980.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit696
  %i.cf = load ptr, ptr %1, align 8, !tbaa !103, !noalias !110 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !104, !noalias !110 ; 2 uses
  %i.ci = shl nsw i32 %i.ad, 1
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = mul i64 %i.ch, %i.cj
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !91, !noalias !110 ; 2 uses
  %i.cm = mul i64 %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cp = mul i64 %i.cc, %i.cj
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !91, !noalias !109
  %i.cs = mul i64 %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cs ; 2 uses
  %i.cu = sext i32 %i.ad to i64
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.cl
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cw ; 2 uses
  %xtraiter2155 = and i32 %i.t, 1
  %i.cy = icmp eq i32 %i.t, 1
  br i1 %i.cy, label %.lr.ph1980.epil.preheader, label %.lr.ph1980.preheader.new

.lr.ph1980.preheader.new:                         ; preds = %.lr.ph1980.preheader
  %unroll_iter2159 = and i32 %i.t, 2147483646
  br label %.lr.ph1980

_ZN4ncnn3MatD2Ev.exit701:                         ; preds = %_ZN4ncnn3MatD2Ev.exit701.preheader, %._crit_edge1974
  %indvars.iv2041 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit701.preheader ], [ %indvars.iv.next2042, %._crit_edge1974 ] ; 4 uses
  %i.cz = load ptr, ptr %1, align 8, !tbaa !103, !noalias !111 ; 3 uses
  %i.da = load i64, ptr %i.by, align 8, !tbaa !104, !noalias !111 ; 3 uses
  %i.db = mul i64 %i.da, %indvars.iv2041
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !91, !noalias !111 ; 3 uses
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dd
  %i.df = add nuw nsw i64 %indvars.iv2041, %i.cb  ; 2 uses
  %i.dg = mul i64 %i.da, %i.df
  %i.dh = mul i64 %i.dg, %i.dc
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dh
  %i.dj = add nuw nsw i64 %i.df, 1
  %i.dk = mul i64 %i.da, %i.dj
  %i.dl = mul i64 %i.dk, %i.dc
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dl
  %i.dn = shl nuw nsw i64 %indvars.iv2041, 1      ; 2 uses
  %i.do = load ptr, ptr %2, align 8, !tbaa !103, !noalias !112 ; 2 uses
  %i.dp = load i64, ptr %i.bq, align 8, !tbaa !104, !noalias !112 ; 2 uses
  %i.dq = mul i64 %i.dp, %i.dn
  %i.dr = load i64, ptr %i.bz, align 8, !tbaa !91, !noalias !112 ; 2 uses
  %i.ds = mul i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ds
  %i.du = or disjoint i64 %i.dn, 1
  %i.dv = mul i64 %i.dp, %i.du
  %i.dw = mul i64 %i.dv, %i.dr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  br label %bb.r

._crit_edge1974:                                  ; preds = %bb.r
  %indvars.iv.next2042 = add nuw nsw i64 %indvars.iv2041, 1 ; 2 uses
  %exitcond2045.not = icmp eq i64 %indvars.iv.next2042, %i.cb
  br i1 %exitcond2045.not, label %_ZN4ncnn3MatD2Ev.exit696.loopexit, label %_ZN4ncnn3MatD2Ev.exit701, !llvm.loop !37

bb.r:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit701, %bb.r
  %.05201972 = phi ptr [ %i.de, %_ZN4ncnn3MatD2Ev.exit701 ], [ %i.ef, %bb.r ] ; 2 uses
  %.05271971 = phi ptr [ %i.dy, %_ZN4ncnn3MatD2Ev.exit701 ], [ %i.eg, %bb.r ] ; 2 uses
  %.05281970 = phi ptr [ %i.dm, %_ZN4ncnn3MatD2Ev.exit701 ], [ %i.eh, %bb.r ] ; 2 uses
  %.05291969 = phi ptr [ %i.dt, %_ZN4ncnn3MatD2Ev.exit701 ], [ %i.ei, %bb.r ] ; 2 uses
  %.05301968 = phi ptr [ %i.dx, %_ZN4ncnn3MatD2Ev.exit701 ], [ %i.ej, %bb.r ] ; 2 uses
  %.05311967 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit701 ], [ %i.ek, %bb.r ]
  %i.dz = load <8 x float>, ptr %.05201972, align 1, !tbaa !114 ; 2 uses
  %i.ea = load <4 x float>, ptr %.05271971, align 1, !tbaa !114
  %i.eb = load <4 x float>, ptr %.05281970, align 1, !tbaa !114
  %i.ec = shufflevector <4 x float> %i.ea, <4 x float> %i.eb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ed = shufflevector <8 x float> %i.dz, <8 x float> %i.ec, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ee = shufflevector <8 x float> %i.dz, <8 x float> %i.ec, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.ed, ptr %.05291969, align 1, !tbaa !114
  store <8 x float> %i.ee, ptr %.05301968, align 1, !tbaa !114
  %i.ef = getelementptr inbounds nuw i8, ptr %.05201972, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %.05271971, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %.05281970, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.05291969, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.05301968, i64 32
  %i.ek = add nuw nsw i32 %.05311967, 1           ; 2 uses
  %exitcond2040.not = icmp eq i32 %i.ek, %i.t
  br i1 %exitcond2040.not, label %._crit_edge1974, label %bb.r, !llvm.loop !38

.lr.ph1980:                                       ; preds = %.lr.ph1980, %.lr.ph1980.preheader.new
  %.05321979 = phi ptr [ %i.cx, %.lr.ph1980.preheader.new ], [ %i.es, %.lr.ph1980 ] ; 3 uses
  %.05331978 = phi ptr [ %i.co, %.lr.ph1980.preheader.new ], [ %i.et, %.lr.ph1980 ] ; 3 uses
  %.05341977 = phi ptr [ %i.ct, %.lr.ph1980.preheader.new ], [ %i.eu, %.lr.ph1980 ] ; 5 uses
  %niter2160 = phi i32 [ 0, %.lr.ph1980.preheader.new ], [ %niter2160.next.1, %.lr.ph1980 ]
  %i.el = load <4 x float>, ptr %.05321979, align 1, !tbaa !114 ; 2 uses
  %i.em = load <4 x float>, ptr %.05331978, align 1, !tbaa !114 ; 2 uses
  %10 = shufflevector <4 x float> %i.el, <4 x float> %i.em, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %11 = shufflevector <4 x float> %i.el, <4 x float> %i.em, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %10, ptr %.05341977, align 1, !tbaa !114
  %12 = getelementptr inbounds nuw i8, ptr %.05341977, i64 16
  store <4 x float> %11, ptr %12, align 1, !tbaa !114
  %i.en = getelementptr inbounds nuw i8, ptr %.05321979, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %.05331978, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %.05341977, i64 32
  %i.eq = load <4 x float>, ptr %i.en, align 1, !tbaa !114 ; 2 uses
  %i.er = load <4 x float>, ptr %i.eo, align 1, !tbaa !114 ; 2 uses
  %13 = shufflevector <4 x float> %i.eq, <4 x float> %i.er, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %14 = shufflevector <4 x float> %i.eq, <4 x float> %i.er, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %13, ptr %i.ep, align 1, !tbaa !114
  %15 = getelementptr inbounds nuw i8, ptr %.05341977, i64 48
  store <4 x float> %14, ptr %15, align 1, !tbaa !114
  %i.es = getelementptr inbounds nuw i8, ptr %.05321979, i64 64 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.05331978, i64 64 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.05341977, i64 64 ; 2 uses
  %niter2160.next.1 = add i32 %niter2160, 2       ; 2 uses
  %niter2160.ncmp.1 = icmp eq i32 %niter2160.next.1, %unroll_iter2159
  br i1 %niter2160.ncmp.1, label %_ZN4ncnn3MataSERKS0_.exit.loopexit2133.unr-lcssa, label %.lr.ph1980, !llvm.loop !39

bb.s:                                             ; preds = %bb.p
  %i.ev = icmp sgt i32 %i.ac, 4
  br i1 %i.ev, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = srem i32 %i.r, %i.ac
  %.not598 = icmp eq i32 %i.ew, 0
  br i1 %.not598, label %bb.bc, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !117
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !118
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.fd, align 8, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fb, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fe = load ptr, ptr %5, align 8, !tbaa !103
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZNK4ncnn3Mat5emptyEv.exit614.thread, label %_ZNK4ncnn3Mat5emptyEv.exit614

_ZNK4ncnn3Mat5emptyEv.exit614:                    ; preds = %bb.v
  %i.fg = load i64, ptr %i.fd, align 8, !tbaa !104
  %i.fh = load i32, ptr %i.fc, align 8, !tbaa !97
  %i.fi = sext i32 %i.fh to i64
  %i.fj = mul i64 %i.fg, %i.fi
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_ZNK4ncnn3Mat5emptyEv.exit614.thread, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.x:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit614
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.fo, align 8, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fn, i8 0, i64 28, i1 false)
  %i.fp = invoke noundef i32 @_ZNK4ncnn14ShuffleChannel7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.y unwind label %bb.z       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %.not603 = icmp eq i32 %i.fp, 0
  br i1 %.not603, label %bb.ag, label %bb.ai

bb.z:                                             ; preds = %bb.ag, %bb.x
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !101 ; 2 uses
  %.not.i754 = icmp eq ptr %i.fr, null
  br i1 %.not.i754, label %_ZN4ncnn3MatD2Ev.exit693, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fs = atomicrmw add ptr %i.fr, i32 -1 acq_rel, align 4
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.ab, label %_ZN4ncnn3MatD2Ev.exit693

bb.ab:                                            ; preds = %bb.aa
  %i.fu = load ptr, ptr %i.fn, align 8, !tbaa !102 ; 3 uses
  %.not3.i755 = icmp eq ptr %i.fu, null
  %i.fv = load ptr, ptr %6, align 8, !tbaa !103   ; 3 uses
  br i1 %.not3.i755, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !27
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  invoke void %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef %i.fv)
          to label %_ZN4ncnn3MatD2Ev.exit693 unwind label %bb.af, !inline_history !28

bb.ad:                                            ; preds = %bb.ab
  %.not.i1068 = icmp eq ptr %i.fv, null
  br i1 %.not.i1068, label %_ZN4ncnn3MatD2Ev.exit693, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.fv) #14
  br label %_ZN4ncnn3MatD2Ev.exit693

bb.af:                                            ; preds = %bb.ac
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit693:                         ; preds = %bb.aa, %bb.z, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.av

bb.ag:                                            ; preds = %bb.y
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ah unwind label %bb.z

bb.ah:                                            ; preds = %bb.ag
  %i.gb = load ptr, ptr %2, align 8, !tbaa !103
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_ZNK4ncnn3Mat5emptyEv.exit613.thread, label %_ZNK4ncnn3Mat5emptyEv.exit613

_ZNK4ncnn3Mat5emptyEv.exit613:                    ; preds = %bb.ah
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !104
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !97
  %i.gh = sext i32 %i.gg to i64
  %i.gi = mul i64 %i.ge, %i.gh
  %.fr = freeze i64 %i.gi
  %i.gj = icmp eq i64 %.fr, 0
  br i1 %i.gj, label %_ZNK4ncnn3Mat5emptyEv.exit613.thread, label %bb.ai

_ZNK4ncnn3Mat5emptyEv.exit613.thread:             ; preds = %bb.ah, %_ZNK4ncnn3Mat5emptyEv.exit613
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit613.thread, %_ZNK4ncnn3Mat5emptyEv.exit613, %bb.y
  %.0 = phi i32 [ %i.fp, %bb.y ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit613.thread ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit613 ]
  %i.gk = load ptr, ptr %i.fm, align 8, !tbaa !101 ; 2 uses
  %.not.i758 = icmp eq ptr %i.gk, null
  br i1 %.not.i758, label %_ZN4ncnn3MatD2Ev.exit692, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gl = atomicrmw add ptr %i.gk, i32 -1 acq_rel, align 4
  %i.gm = icmp eq i32 %i.gl, 1
  br i1 %i.gm, label %bb.ak, label %_ZN4ncnn3MatD2Ev.exit692

bb.ak:                                            ; preds = %bb.aj
  %i.gn = load ptr, ptr %i.fn, align 8, !tbaa !102 ; 3 uses
  %.not3.i759 = icmp eq ptr %i.gn, null
  %i.go = load ptr, ptr %6, align 8, !tbaa !103   ; 3 uses
  br i1 %.not3.i759, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !27
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef %i.go)
          to label %_ZN4ncnn3MatD2Ev.exit692 unwind label %bb.ao, !inline_history !28

bb.am:                                            ; preds = %bb.ak
  %.not.i1066 = icmp eq ptr %i.go, null
  br i1 %.not.i1066, label %_ZN4ncnn3MatD2Ev.exit692, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.go) #14
  br label %_ZN4ncnn3MatD2Ev.exit692

bb.ao:                                            ; preds = %bb.al
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit692:                         ; preds = %bb.aj, %bb.ai, %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZNK4ncnn3Mat5emptyEv.exit614.thread

_ZNK4ncnn3Mat5emptyEv.exit614.thread:             ; preds = %bb.v, %_ZNK4ncnn3Mat5emptyEv.exit614, %_ZN4ncnn3MatD2Ev.exit692
  %.1 = phi i32 [ %.0, %_ZN4ncnn3MatD2Ev.exit692 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit614 ], [ -100, %bb.v ]
  %i.gu = load ptr, ptr %i.fa, align 8, !tbaa !101 ; 2 uses
  %.not.i762 = icmp eq ptr %i.gu, null
  br i1 %.not.i762, label %_ZN4ncnn3MatD2Ev.exit691, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit614.thread
  %i.gv = atomicrmw add ptr %i.gu, i32 -1 acq_rel, align 4
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.aq, label %_ZN4ncnn3MatD2Ev.exit691

bb.aq:                                            ; preds = %bb.ap
  %i.gx = load ptr, ptr %i.fb, align 8, !tbaa !102 ; 3 uses
  %.not3.i763 = icmp eq ptr %i.gx, null
  %i.gy = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  br i1 %.not3.i763, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !27
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  invoke void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef %i.gy)
          to label %_ZN4ncnn3MatD2Ev.exit691 unwind label %bb.au, !inline_history !28
end_hunk_0
begin_hunk_1_@_ZNK4ncnn22ShuffleChannel_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a

_ZN4ncnn3MatD2Ev.exit649.lr.ph:                   ; preds = %.preheader1918
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ya = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.yb = icmp sgt i32 %i.t, 0
  br i1 %i.yb, label %_ZN4ncnn3MatD2Ev.exit649.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit649.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit649.lr.ph
  %i.yc = mul nuw nsw i32 %i.ad, 3
  %i.yd = shl nuw nsw i32 %i.ad, 1
  %i.ye = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.yf = zext nneg i32 %i.yd to i64
  %i.yg = zext nneg i32 %i.yc to i64
  br label %_ZN4ncnn3MatD2Ev.exit649

.preheader1916:                                   ; preds = %bb.cs
  %i.yh = icmp sgt i32 %i.ad, 0
  br i1 %i.yh, label %_ZN4ncnn3MatD2Ev.exit655.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit655.lr.ph:                   ; preds = %.preheader1916
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.yj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.yk = icmp sgt i32 %i.t, 0
  br i1 %i.yk, label %_ZN4ncnn3MatD2Ev.exit655.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit655.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit655.lr.ph
  %i.yl = shl nuw nsw i32 %i.ad, 1
  %i.ym = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.yn = zext nneg i32 %i.yl to i64
  br label %_ZN4ncnn3MatD2Ev.exit655

_ZN4ncnn3MatD2Ev.exit655:                         ; preds = %_ZN4ncnn3MatD2Ev.exit655.preheader, %._crit_edge1965
  %indvars.iv2035 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit655.preheader ], [ %indvars.iv.next2036, %._crit_edge1965 ] ; 5 uses
  %i.yo = load ptr, ptr %1, align 8, !tbaa !103, !noalias !134 ; 3 uses
  %i.yp = load i64, ptr %i.yi, align 8, !tbaa !104, !noalias !134 ; 3 uses
  %i.yq = mul i64 %i.yp, %indvars.iv2035
  %i.yr = load i64, ptr %i.c, align 8, !tbaa !91, !noalias !134 ; 3 uses
  %i.ys = mul i64 %i.yq, %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.ys
  %i.yu = add nuw nsw i64 %indvars.iv2035, %i.ym
  %i.yv = mul i64 %i.yp, %i.yu
  %i.yw = mul i64 %i.yv, %i.yr
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yw
  %i.yy = add nuw nsw i64 %indvars.iv2035, %i.yn
  %i.yz = mul i64 %i.yp, %i.yy
  %i.za = mul i64 %i.yz, %i.yr
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.za
  %i.zc = mul nuw nsw i64 %indvars.iv2035, 3      ; 3 uses
  %i.zd = load ptr, ptr %2, align 8, !tbaa !103, !noalias !135 ; 3 uses
  %i.ze = load i64, ptr %i.vw, align 8, !tbaa !104, !noalias !135 ; 3 uses
  %i.zf = mul i64 %i.ze, %i.zc
  %i.zg = load i64, ptr %i.yj, align 8, !tbaa !91, !noalias !135 ; 3 uses
  %i.zh = mul i64 %i.zf, %i.zg
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.zh
  %i.zj = add nuw nsw i64 %i.zc, 1
  %i.zk = mul i64 %i.ze, %i.zj
  %i.zl = mul i64 %i.zk, %i.zg
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.zl
  %i.zn = add nuw nsw i64 %i.zc, 2
  %i.zo = mul i64 %i.ze, %i.zn
  %i.zp = mul i64 %i.zo, %i.zg
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.zp
  br label %bb.ct

._crit_edge1965:                                  ; preds = %bb.ct
  %indvars.iv.next2036 = add nuw nsw i64 %indvars.iv2035, 1 ; 2 uses
  %exitcond2039.not = icmp eq i64 %indvars.iv.next2036, %i.ym
  br i1 %exitcond2039.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit655, !llvm.loop !80

bb.ct:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit655, %bb.ct
  %.05351963 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit655 ], [ %i.aai, %bb.ct ]
  %.05361962 = phi ptr [ %i.zq, %_ZN4ncnn3MatD2Ev.exit655 ], [ %i.aah, %bb.ct ] ; 2 uses
  %.05371961 = phi ptr [ %i.zm, %_ZN4ncnn3MatD2Ev.exit655 ], [ %i.aag, %bb.ct ] ; 2 uses
  %.05381960 = phi ptr [ %i.zi, %_ZN4ncnn3MatD2Ev.exit655 ], [ %i.aaf, %bb.ct ] ; 2 uses
  %.05391959 = phi ptr [ %i.zb, %_ZN4ncnn3MatD2Ev.exit655 ], [ %i.aae, %bb.ct ] ; 2 uses
  %.05401958 = phi ptr [ %i.yx, %_ZN4ncnn3MatD2Ev.exit655 ], [ %i.aad, %bb.ct ] ; 2 uses
  %.05411957 = phi ptr [ %i.yt, %_ZN4ncnn3MatD2Ev.exit655 ], [ %i.aac, %bb.ct ] ; 2 uses
  %i.zr = load <4 x float>, ptr %.05411957, align 1, !tbaa !114 ; 3 uses
  %i.zs = load <4 x float>, ptr %.05401958, align 1, !tbaa !114 ; 4 uses
  %i.zt = load <4 x float>, ptr %.05391959, align 1, !tbaa !114 ; 3 uses
  %i.zu = shufflevector <4 x float> %i.zr, <4 x float> %i.zs, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.zv = shufflevector <4 x float> %i.zr, <4 x float> %i.zs, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.zw = shufflevector <4 x float> %i.zs, <4 x float> %i.zt, <4 x i32> <i32 poison, i32 poison, i32 1, i32 5>
  %i.zx = shufflevector <4 x float> %i.zs, <4 x float> %i.zt, <4 x i32> <i32 poison, i32 poison, i32 3, i32 7>
  %i.zy = shufflevector <4 x float> %i.zr, <4 x float> %i.zt, <4 x i32> <i32 1, i32 3, i32 4, i32 6> ; 2 uses
  %i.zz = shufflevector <4 x float> %i.zu, <4 x float> %i.zy, <4 x i32> <i32 0, i32 1, i32 6, i32 4>
  %i.aaa = shufflevector <4 x float> %i.zw, <4 x float> %i.zv, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.aab = shufflevector <4 x float> %i.zy, <4 x float> %i.zx, <4 x i32> <i32 3, i32 1, i32 6, i32 7>
  store <4 x float> %i.zz, ptr %.05381960, align 1, !tbaa !114
  store <4 x float> %i.aaa, ptr %.05371961, align 1, !tbaa !114
  store <4 x float> %i.aab, ptr %.05361962, align 1, !tbaa !114
  %i.aac = getelementptr inbounds nuw i8, ptr %.05411957, i64 16
  %i.aad = getelementptr inbounds nuw i8, ptr %.05401958, i64 16
  %i.aae = getelementptr inbounds nuw i8, ptr %.05391959, i64 16
  %i.aaf = getelementptr inbounds nuw i8, ptr %.05381960, i64 16
  %i.aag = getelementptr inbounds nuw i8, ptr %.05371961, i64 16
  %i.aah = getelementptr inbounds nuw i8, ptr %.05361962, i64 16
  %i.aai = add nuw nsw i32 %.05351963, 1          ; 2 uses
  %exitcond2034.not = icmp eq i32 %i.aai, %i.t
  br i1 %exitcond2034.not, label %._crit_edge1965, label %bb.ct, !llvm.loop !81

_ZN4ncnn3MatD2Ev.exit649:                         ; preds = %_ZN4ncnn3MatD2Ev.exit649.preheader, %._crit_edge1955
  %indvars.iv2029 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit649.preheader ], [ %indvars.iv.next2030, %._crit_edge1955 ] ; 6 uses
  %i.aaj = load ptr, ptr %1, align 8, !tbaa !103, !noalias !136 ; 4 uses
  %i.aak = load i64, ptr %i.xz, align 8, !tbaa !104, !noalias !136 ; 4 uses
  %i.aal = mul i64 %i.aak, %indvars.iv2029
  %i.aam = load i64, ptr %i.c, align 8, !tbaa !91, !noalias !136 ; 4 uses
  %i.aan = mul i64 %i.aal, %i.aam
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.aan
  %i.aap = add nuw nsw i64 %indvars.iv2029, %i.ye
  %i.aaq = mul i64 %i.aak, %i.aap
  %i.aar = mul i64 %i.aaq, %i.aam
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.aar
  %i.aat = add nuw nsw i64 %indvars.iv2029, %i.yf
  %i.aau = mul i64 %i.aak, %i.aat
  %i.aav = mul i64 %i.aau, %i.aam
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.aav
  %i.aax = add nuw nsw i64 %indvars.iv2029, %i.yg
  %i.aay = mul i64 %i.aak, %i.aax
  %i.aaz = mul i64 %i.aay, %i.aam
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.aaz
  %i.abb = shl nuw nsw i64 %indvars.iv2029, 2     ; 4 uses
  %i.abc = load ptr, ptr %2, align 8, !tbaa !103, !noalias !137 ; 4 uses
  %i.abd = load i64, ptr %i.vw, align 8, !tbaa !104, !noalias !137 ; 4 uses
  %i.abe = mul i64 %i.abd, %i.abb
  %i.abf = load i64, ptr %i.ya, align 8, !tbaa !91, !noalias !137 ; 4 uses
  %i.abg = mul i64 %i.abe, %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.abg
  %i.abi = or disjoint i64 %i.abb, 1
  %i.abj = mul i64 %i.abd, %i.abi
  %i.abk = mul i64 %i.abj, %i.abf
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.abk
  %i.abm = or disjoint i64 %i.abb, 2
  %i.abn = mul i64 %i.abd, %i.abm
  %i.abo = mul i64 %i.abn, %i.abf
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.abo
  %i.abq = or disjoint i64 %i.abb, 3
  %i.abr = mul i64 %i.abd, %i.abq
  %i.abs = mul i64 %i.abr, %i.abf
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.abs
  br label %bb.cu

._crit_edge1955:                                  ; preds = %bb.cu
  %indvars.iv.next2030 = add nuw nsw i64 %indvars.iv2029, 1 ; 2 uses
  %exitcond2033.not = icmp eq i64 %indvars.iv.next2030, %i.ye
  br i1 %exitcond2033.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit649, !llvm.loop !86

bb.cu:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit649, %bb.cu
  %.05101953 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit649 ], [ %i.aco, %bb.cu ]
  %.05111952 = phi ptr [ %i.abt, %_ZN4ncnn3MatD2Ev.exit649 ], [ %i.acn, %bb.cu ] ; 2 uses
  %.05121951 = phi ptr [ %i.abp, %_ZN4ncnn3MatD2Ev.exit649 ], [ %i.acm, %bb.cu ] ; 2 uses
  %.05131950 = phi ptr [ %i.abl, %_ZN4ncnn3MatD2Ev.exit649 ], [ %i.acl, %bb.cu ] ; 2 uses
  %.05141949 = phi ptr [ %i.abh, %_ZN4ncnn3MatD2Ev.exit649 ], [ %i.ack, %bb.cu ] ; 2 uses
  %.05151948 = phi ptr [ %i.aba, %_ZN4ncnn3MatD2Ev.exit649 ], [ %i.acj, %bb.cu ] ; 2 uses
  %.05161947 = phi ptr [ %i.aaw, %_ZN4ncnn3MatD2Ev.exit649 ], [ %i.aci, %bb.cu ] ; 2 uses
  %.05171946 = phi ptr [ %i.aas, %_ZN4ncnn3MatD2Ev.exit649 ], [ %i.ach, %bb.cu ] ; 2 uses
  %.05181945 = phi ptr [ %i.aao, %_ZN4ncnn3MatD2Ev.exit649 ], [ %i.acg, %bb.cu ] ; 2 uses
  %i.abu = load <4 x float>, ptr %.05181945, align 1, !tbaa !114 ; 2 uses
  %i.abv = load <4 x float>, ptr %.05171946, align 1, !tbaa !114 ; 2 uses
  %i.abw = load <4 x float>, ptr %.05161947, align 1, !tbaa !114 ; 2 uses
  %i.abx = load <4 x float>, ptr %.05151948, align 1, !tbaa !114 ; 2 uses
  %i.aby = shufflevector <4 x float> %i.abu, <4 x float> %i.abw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.abz = shufflevector <4 x float> %i.abu, <4 x float> %i.abw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aca = shufflevector <4 x float> %i.abv, <4 x float> %i.abx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.acb = shufflevector <4 x float> %i.abv, <4 x float> %i.abx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.acc = shufflevector <4 x float> %i.aby, <4 x float> %i.aca, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.acd = shufflevector <4 x float> %i.aby, <4 x float> %i.aca, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ace = shufflevector <4 x float> %i.abz, <4 x float> %i.acb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.acf = shufflevector <4 x float> %i.abz, <4 x float> %i.acb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.acc, ptr %.05141949, align 1, !tbaa !114
  store <4 x float> %i.acd, ptr %.05131950, align 1, !tbaa !114
  store <4 x float> %i.ace, ptr %.05121951, align 1, !tbaa !114
  store <4 x float> %i.acf, ptr %.05111952, align 1, !tbaa !114
  %i.acg = getelementptr inbounds nuw i8, ptr %.05181945, i64 16
  %i.ach = getelementptr inbounds nuw i8, ptr %.05171946, i64 16
  %i.aci = getelementptr inbounds nuw i8, ptr %.05161947, i64 16
  %i.acj = getelementptr inbounds nuw i8, ptr %.05151948, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %.05141949, i64 16
  %i.acl = getelementptr inbounds nuw i8, ptr %.05131950, i64 16
  %i.acm = getelementptr inbounds nuw i8, ptr %.05121951, i64 16
  %i.acn = getelementptr inbounds nuw i8, ptr %.05111952, i64 16
  %i.aco = add nuw nsw i32 %.05101953, 1          ; 2 uses
  %exitcond2028.not = icmp eq i32 %i.aco, %i.t
  br i1 %exitcond2028.not, label %._crit_edge1955, label %bb.cu, !llvm.loop !87

bb.cv:                                            ; preds = %bb.be, %bb.cs, %bb.o
  %i.acp = tail call noundef i32 @_ZNK4ncnn14ShuffleChannel7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.cw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit660, %_ZN4ncnn3MatD2Ev.exit690
  %.pn604.pn = phi { ptr, i32 } [ %.pn604, %_ZN4ncnn3MatD2Ev.exit690 ], [ %.pn, %_ZN4ncnn3MatD2Ev.exit660 ]
  resume { ptr, i32 } %.pn604.pn

_ZN4ncnn3MataSERKS0_.exit.loopexit2133.unr-lcssa: ; preds = %.lr.ph1980
  %lcmp.mod2157.not = icmp eq i32 %xtraiter2155, 0
  br i1 %lcmp.mod2157.not, label %_ZN4ncnn3MataSERKS0_.exit, label %.lr.ph1980.epil.preheader

.lr.ph1980.epil.preheader:                        ; preds = %_ZN4ncnn3MataSERKS0_.exit.loopexit2133.unr-lcssa, %.lr.ph1980.preheader
  %.05321979.epil.init = phi ptr [ %i.cx, %.lr.ph1980.preheader ], [ %i.es, %_ZN4ncnn3MataSERKS0_.exit.loopexit2133.unr-lcssa ]
  %.05331978.epil.init = phi ptr [ %i.co, %.lr.ph1980.preheader ], [ %i.et, %_ZN4ncnn3MataSERKS0_.exit.loopexit2133.unr-lcssa ]
  %.05341977.epil.init = phi ptr [ %i.ct, %.lr.ph1980.preheader ], [ %i.eu, %_ZN4ncnn3MataSERKS0_.exit.loopexit2133.unr-lcssa ] ; 2 uses
  %lcmp.mod2158 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod2158)
  %i.acq = load <4 x float>, ptr %.05321979.epil.init, align 1, !tbaa !114 ; 2 uses
  %i.acr = load <4 x float>, ptr %.05331978.epil.init, align 1, !tbaa !114 ; 2 uses
  %16 = shufflevector <4 x float> %i.acq, <4 x float> %i.acr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %17 = shufflevector <4 x float> %i.acq, <4 x float> %i.acr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %16, ptr %.05341977.epil.init, align 1, !tbaa !114
  %18 = getelementptr inbounds nuw i8, ptr %.05341977.epil.init, i64 16
  store <4 x float> %17, ptr %18, align 1, !tbaa !114
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %._crit_edge1943, %._crit_edge1955, %._crit_edge1965, %.lr.ph1980.epil.preheader, %_ZN4ncnn3MataSERKS0_.exit.loopexit2133.unr-lcssa, %._crit_edge1987, %._crit_edge1999, %._crit_edge2009, %_ZN4ncnn3MatD2Ev.exit701.lr.ph, %.preheader1920, %_ZN4ncnn3MatD2Ev.exit659.lr.ph, %.preheader1918, %_ZN4ncnn3MatD2Ev.exit649.lr.ph, %.preheader1916, %_ZN4ncnn3MatD2Ev.exit655.lr.ph, %_ZN4ncnn3MatD2Ev.exit696, %.preheader1912, %_ZN4ncnn3MatD2Ev.exit689.lr.ph, %.preheader1910, %_ZN4ncnn3MatD2Ev.exit679.lr.ph, %.preheader, %_ZN4ncnn3MatD2Ev.exit685.lr.ph, %bb.cq, %bb.bi, %bb.bc, %bb.q, %_ZN4ncnn3Mat7releaseEv.exit964, %bb.f, %_ZN4ncnn3MatD2Ev.exit691, %._crit_edge1934, %_ZN4ncnn3MatD2Ev.exit661, %bb.cv, %_ZNK4ncnn3Mat5emptyEv.exit615, %_ZNK4ncnn3Mat5emptyEv.exit612, %_ZNK4ncnn3Mat5emptyEv.exit611, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %.4 = phi i32 [ -100, %_ZNK4ncnn3Mat8elembitsEv.exit.thread ], [ 0, %_ZN4ncnn3MatD2Ev.exit696 ], [ %i.acp, %bb.cv ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit615 ], [ %.1, %_ZN4ncnn3MatD2Ev.exit691 ], [ 0, %.preheader1910 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit612 ], [ 0, %.preheader ], [ -100, %bb.cq ], [ 0, %.preheader1918 ], [ 0, %._crit_edge1934 ], [ %i.ub, %_ZN4ncnn3MatD2Ev.exit661 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit611 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %.preheader1916 ], [ 0, %.preheader1912 ], [ 0, %bb.f ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit964 ], [ -100, %bb.bi ], [ -100, %bb.q ], [ -100, %bb.bc ], [ 0, %_ZN4ncnn3MatD2Ev.exit685.lr.ph ], [ 0, %.preheader1920 ], [ 0, %_ZN4ncnn3MatD2Ev.exit679.lr.ph ], [ 0, %._crit_edge2009 ], [ 0, %_ZN4ncnn3MatD2Ev.exit689.lr.ph ], [ 0, %_ZN4ncnn3MatD2Ev.exit701.lr.ph ], [ 0, %._crit_edge1999 ], [ 0, %_ZN4ncnn3MatD2Ev.exit655.lr.ph ], [ 0, %._crit_edge1987 ], [ 0, %_ZN4ncnn3MatD2Ev.exit649.lr.ph ], [ 0, %.lr.ph1980.epil.preheader ], [ 0, %_ZN4ncnn3MatD2Ev.exit659.lr.ph ], [ 0, %._crit_edge1965 ], [ 0, %._crit_edge1955 ], [ 0, %_ZN4ncnn3MataSERKS0_.exit.loopexit2133.unr-lcssa ], [ 0, %._crit_edge1943 ]
  ret i32 %.4
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22ShuffleChannel_x86_fmaC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4ncnn14ShuffleChannelC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn22ShuffleChannel_x86_fmaE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !138
  ret void
}

declare void @_ZN4ncnn14ShuffleChannelC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i32 @_ZNK4ncnn14ShuffleChannel7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !11, i64 8, !5, i64 16}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIiSaIiEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4ncnn3MatE", !9, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !23, i64 0}
!25 = !{!"_ZTSN4ncnn5LayerE", !12, i64 8, !12, i64 9, !12, i64 10, !12, i64 11, !12, i64 12, !12, i64 13, !12, i64 14, !12, i64 15, !12, i64 16, !12, i64 17, !12, i64 18, !12, i64 19, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !12, i64 24, !12, i64 25, !12, i64 26, !12, i64 27, !6, i64 28, !9, i64 32, !6, i64 40, !15, i64 48, !15, i64 80, !19, i64 112, !19, i64 136, !24, i64 160, !24, i64 184}
!26 = !{!"vtable pointer", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = distinct !{null}
!29 = distinct !{!29, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!30 = distinct !{!30, !29, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!31 = distinct !{!31, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!32 = distinct !{!32, !31, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!33 = distinct !{!33, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!34 = distinct !{!34, !33, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!35 = distinct !{!35, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!36 = distinct !{!36, !35, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!37 = distinct !{!37, !113}
!38 = distinct !{!38, !113}
!39 = distinct !{!39, !113}
!40 = distinct !{!40, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!41 = distinct !{!41, !40, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!42 = distinct !{!42, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!43 = distinct !{!43, !42, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!44 = distinct !{!44, !113}
!45 = distinct !{!45, !113}
!46 = distinct !{!46, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!47 = distinct !{!47, !46, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!48 = distinct !{!48, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!49 = distinct !{!49, !48, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!50 = distinct !{!50, !113}
!51 = distinct !{!51, !113}
!52 = distinct !{!52, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!53 = distinct !{!53, !52, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!54 = distinct !{!54, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!55 = distinct !{!55, !54, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!56 = distinct !{!56, !113}
!57 = distinct !{!57, !113}
!58 = distinct !{!58, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!59 = distinct !{!59, !58, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!60 = distinct !{!60, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!61 = distinct !{!61, !60, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!62 = distinct !{!62, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!63 = distinct !{!63, !62, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!64 = distinct !{!64, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!65 = distinct !{!65, !64, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!66 = distinct !{!66, !113}
!67 = distinct !{!67, !113}
!68 = distinct !{!68, !129}
!69 = distinct !{!69, !113}
!70 = distinct !{!70, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!71 = distinct !{!71, !70, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!72 = distinct !{!72, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!73 = distinct !{!73, !72, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!74 = distinct !{!74, !113}
!75 = distinct !{!75, !113}
!76 = distinct !{!76, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!77 = distinct !{!77, !76, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!78 = distinct !{!78, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!79 = distinct !{!79, !78, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!80 = distinct !{!80, !113}
!81 = distinct !{!81, !113}
!82 = distinct !{!82, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!83 = distinct !{!83, !82, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!84 = distinct !{!84, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!85 = distinct !{!85, !84, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!86 = distinct !{!86, !113}
!87 = distinct !{!87, !113}
!88 = !{!"p1 _ZTSN4ncnn9AllocatorE", !9, i64 0}
!89 = !{!"_ZTSN4ncnn3MatE", !9, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !88, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !11, i64 64}
!90 = !{!89, !6, i64 24}
!91 = !{!89, !11, i64 16}
!92 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!89, !6, i64 44}
!95 = !{!89, !6, i64 48}
!96 = !{!89, !6, i64 52}
!97 = !{!89, !6, i64 56}
!98 = !{!"_ZTSN4ncnn14ShuffleChannelE", !25, i64 0, !6, i64 208, !6, i64 212}
!99 = !{!98, !6, i64 212}
!100 = !{!98, !6, i64 208}
!101 = !{!89, !10, i64 8}
!102 = !{!89, !88, i64 32}
!103 = !{!89, !9, i64 0}
!104 = !{!89, !11, i64 64}
!105 = !{!9, !9, i64 0}
end_hunk_1
