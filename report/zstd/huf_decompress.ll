Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_decompress?download=true
inline.NumInlined: 744
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
begin_hunk_0_@HUF_readDTableX2_wksp:bb.a

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.preheader.i, %.lr.ph115.i.prol
  %.5114.i.prol = phi ptr [ %i.adf, %.lr.ph115.i.prol ], [ %.4118.i, %.lr.ph115.preheader.i ] ; 2 uses
  %prol.iter415 = phi i64 [ %prol.iter415.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.preheader.i ]
  store <4 x i64> %i.ade, ptr %.5114.i.prol, align 2
  %i.adf = getelementptr inbounds nuw i8, ptr %.5114.i.prol, i64 32 ; 2 uses
  %prol.iter415.next = add i64 %prol.iter415, 1   ; 2 uses
  %prol.iter415.cmp.not = icmp eq i64 %prol.iter415.next, %xtraiter413
  br i1 %prol.iter415.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !124

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.preheader.i
  %.5114.i.unr = phi ptr [ %.4118.i, %.lr.ph115.preheader.i ], [ %i.adf, %.lr.ph115.i.prol ]
  br i1 %i.acw, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %.5114.i = phi ptr [ %i.adn, %.lr.ph115.i ], [ %.5114.i.unr, %.lr.ph115.i.prol.loopexit ] ; 9 uses
  store <4 x i64> %i.ade, ptr %.5114.i, align 2
  %i.adg = getelementptr inbounds nuw i8, ptr %.5114.i, i64 32
  store <4 x i64> %i.ade, ptr %i.adg, align 2
  %i.adh = getelementptr inbounds nuw i8, ptr %.5114.i, i64 64
  store <4 x i64> %i.ade, ptr %i.adh, align 2
  %i.adi = getelementptr inbounds nuw i8, ptr %.5114.i, i64 96
  store <4 x i64> %i.ade, ptr %i.adi, align 2
  %i.adj = getelementptr inbounds nuw i8, ptr %.5114.i, i64 128
  store <4 x i64> %i.ade, ptr %i.adj, align 2
  %i.adk = getelementptr inbounds nuw i8, ptr %.5114.i, i64 160
  store <4 x i64> %i.ade, ptr %i.adk, align 2
  %i.adl = getelementptr inbounds nuw i8, ptr %.5114.i, i64 192
  store <4 x i64> %i.ade, ptr %i.adl, align 2
  %i.adm = getelementptr inbounds nuw i8, ptr %.5114.i, i64 224
  store <4 x i64> %i.ade, ptr %i.adm, align 2
  %i.adn = getelementptr inbounds nuw i8, ptr %.5114.i, i64 256 ; 2 uses
  %.not83.i.7 = icmp eq ptr %i.adn, %i.adc
  br i1 %.not83.i.7, label %._crit_edge.i, label %.lr.ph115.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %.lr.ph115.i, %.lr.ph115.i.prol.loopexit
  %i.ado = getelementptr inbounds nuw i8, ptr %.478117.i, i64 1 ; 2 uses
  %.not82.i = icmp eq ptr %i.ado, %i.vm
  br i1 %.not82.i, label %.loopexit.i, label %.lr.ph115.preheader.i, !llvm.loop !113

.loopexit.i:                                      ; preds = %HUF_fillDTableX2Level2.exit.loopexit.i, %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i, %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i, %.loopexit.i.us.i, %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99, %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i, %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i, %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i, %._crit_edge.i, %middle.block274, %middle.block241, %.preheader.i, %.preheader84.i, %.preheader86.i, %.preheader88.i, %.preheader90.i, %bb.h
  %exitcond.not.i = icmp eq i64 %indvars.iv.next97.i, %i.ax
  br i1 %exitcond.not.i, label %HUF_fillDTableX2.exit, label %.lr.ph78.i, !llvm.loop !125

HUF_fillDTableX2.exit:                            ; preds = %.loopexit.i, %._crit_edge121, %._crit_edge134.split
  %i.adp = trunc nuw nsw i32 %spec.store.select to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.adp, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %HUF_fillDTableX2.exit
  %.088 = phi i64 [ %i.m, %HUF_fillDTableX2.exit ], [ -1, %bb.a ], [ -44, %bb.b ], [ %i.m, %bb.c ], [ -44, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i64 %.088
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i64 @HUF_decompress1X2_DCtx_wksp(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp ult i64 %i.a, %4
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %HUF_decompress1X2_usingDTable_internal_default.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %HUF_decompress1X2_usingDTable_internal_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = icmp ugt i64 %3, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.ptr.i = getelementptr inbounds i8, ptr %2, i64 %3
  %i.f = getelementptr i8, ptr %.ptr.i, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17    ; 2 uses
  %.not51.i.i = icmp eq i8 %i.g, 0
  br i1 %.not51.i.i, label %HUF_decompress1X2_usingDTable_internal_default.exit, label %BIT_initDStream.exit.i

bb.f:                                             ; preds = %bb.d
  %i.h = load i8, ptr %2, align 1, !tbaa !17
  %i.i = zext i8 %i.h to i64                      ; 7 uses
  switch i64 %3, label %bb.m [
    i64 7, label %bb.g
    i64 6, label %bb.h
    i64 5, label %bb.i
    i64 4, label %bb.j
    i64 3, label %bb.k
    i64 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 48
  %i.n = or disjoint i64 %i.m, %i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi i64 [ %i.n, %bb.g ], [ %i.i, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 40
  %i.t = add nuw nsw i64 %i.s, %i.o
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.u = phi i64 [ %i.t, %bb.h ], [ %i.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = add nuw nsw i64 %i.y, %i.u
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aa = phi i64 [ %i.z, %bb.i ], [ %i.i, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 24
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.ag = phi i64 [ %i.af, %bb.j ], [ %i.i, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 16
  %i.al = add nuw nsw i64 %i.ak, %i.ag
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.am = phi i64 [ %i.al, %bb.k ], [ %i.i, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 8
  %i.ar = add nuw nsw i64 %i.aq, %i.am
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0.9.i = phi i64 [ %i.i, %bb.f ], [ %i.ar, %bb.l ] ; 2 uses
  %i.as = getelementptr i8, ptr %2, i64 %3
  %i.at = getelementptr i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17  ; 2 uses
  %.not.i58.i = icmp eq i8 %i.au, 0
  br i1 %.not.i58.i, label %HUF_decompress1X2_usingDTable_internal_default.exit, label %.thread.i

BIT_initDStream.exit.i:                           ; preds = %bb.e
  %.add.i = add nsw i64 %3, -8                    ; 4 uses
  %.ptr190.i = getelementptr inbounds i8, ptr %2, i64 %.add.i ; 4 uses
  %.val.i.i = load i64, ptr %.ptr190.i, align 1, !tbaa !23 ; 2 uses
  %i.av = zext i8 %i.g to i32
  %i.aw = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.av, i1 true)
  %i.ax = xor i32 %i.aw, 31
  %i.ay = sub nuw nsw i32 8, %i.ax                ; 6 uses
  %i.az = icmp ult i64 %3, -119
  br i1 %i.az, label %bb.n, label %HUF_decompress1X2_usingDTable_internal_default.exit

bb.n:                                             ; preds = %BIT_initDStream.exit.i
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %.val.i = load i32, ptr %4, align 4             ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 4 uses
  %i.bc = icmp sgt i64 %1, 7
  br i1 %i.bc, label %bb.o, label %bb.z

.thread.i:                                        ; preds = %bb.m
  %i.bd = zext i8 %i.au to i32
  %i.be = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bd, i1 true)
  %i.bf = trunc nuw nsw i64 %3 to i32
  %i.bg = shl nuw nsw i32 %i.bf, 3
  %reass.sub.i = sub nsw i32 %i.be, %i.bg
  %i.bh = add nsw i32 %reass.sub.i, 41            ; 2 uses
  %.idx.i292.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i292.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.val293.i = load i32, ptr %4, align 4          ; 2 uses
  %.sroa.3.0.extract.shift.i294.i = lshr i32 %.val293.i, 16 ; 2 uses
  %i.bk = icmp sgt i64 %1, 7
  br i1 %i.bk, label %bb.o, label %BIT_reloadDStream.exit29.i

bb.o:                                             ; preds = %.thread.i, %bb.n
  %.sroa.3.0.extract.shift.i303.i = phi i32 [ %.sroa.3.0.extract.shift.i294.i, %.thread.i ], [ %.sroa.3.0.extract.shift.i.i, %bb.n ] ; 7 uses
  %.val302.i = phi i32 [ %.val293.i, %.thread.i ], [ %.val.i, %bb.n ]
  %i.bl = phi ptr [ %i.bj, %.thread.i ], [ %i.bb, %bb.n ] ; 6 uses
  %i.bm = phi ptr [ %i.bi, %.thread.i ], [ %i.ba, %bb.n ] ; 8 uses
  %.sroa.0.10175299.i = phi i64 [ %.sroa.0.9.i, %.thread.i ], [ %.val.i.i, %bb.n ] ; 2 uses
  %.sroa.31.12176298.i = phi i32 [ %i.bh, %.thread.i ], [ %i.ay, %bb.n ] ; 2 uses
  %.sroa.9790.9177.idx296.i = phi i64 [ 0, %.thread.i ], [ %.add.i, %bb.n ] ; 2 uses
  %i.bn = and i32 %.val302.i, 16515072
  %i.bo = icmp samesign ult i32 %i.bn, 786432
  %i.bp = sub nsw i32 0, %.sroa.3.0.extract.shift.i303.i
  %i.bq = and i32 %i.bp, 63
  %i.br = zext nneg i32 %i.bq to i64              ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 9 uses
  br i1 %i.bo, label %.lr.ph240.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.bt = getelementptr inbounds i8, ptr %i.bm, i64 -7
  br label %bb.u

.lr.ph240.i:                                      ; preds = %bb.o
  %i.bu = getelementptr inbounds i8, ptr %i.bm, i64 -9
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph240.i
  %.0.i239.i = phi ptr [ %0, %.lr.ph240.i ], [ %i.ey, %bb.t ] ; 5 uses
  %.sroa.9790.4.idx238.i = phi i64 [ %.sroa.9790.9177.idx296.i, %.lr.ph240.i ], [ %.sroa.9790.5.idx.i, %bb.t ] ; 5 uses
  %.sroa.31.5237.i = phi i32 [ %.sroa.31.12176298.i, %.lr.ph240.i ], [ %i.eu, %bb.t ] ; 5 uses
  %.sroa.0.4236.i = phi i64 [ %.sroa.0.10175299.i, %.lr.ph240.i ], [ %.sroa.0.5.i, %bb.t ]
  %.not.i6.i = icmp slt i64 %.sroa.9790.4.idx238.i, 8
  br i1 %.not.i6.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = lshr i32 %.sroa.31.5237.i, 3
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = and i32 %.sroa.31.5237.i, 7
  br label %BIT_reloadDStream.exit.i

bb.r:                                             ; preds = %bb.p
  %i.by = icmp eq i64 %.sroa.9790.4.idx238.i, 0
  br i1 %i.by, label %BIT_reloadDStream.exit29.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = lshr i32 %.sroa.31.5237.i, 3
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = icmp sge i64 %.sroa.9790.4.idx238.i, %i.ca
  %.021.i199.i = tail call i64 @llvm.smin.i64(i64 %.sroa.9790.4.idx238.i, i64 %i.ca) ; 2 uses
  %.021.i.i = trunc i64 %.021.i199.i to i32
  %i.cc = and i64 %.021.i199.i, 4294967295
  %i.cd = shl i32 %.021.i.i, 3
  %i.ce = sub i32 %.sroa.31.5237.i, %i.cd
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.s, %bb.q
  %.sroa.31.7.i = phi i32 [ %i.bx, %bb.q ], [ %i.ce, %bb.s ] ; 3 uses
  %.pn200.i = phi i64 [ %i.bw, %bb.q ], [ %i.cc, %bb.s ]
  %.022.i.i = phi i1 [ true, %bb.q ], [ %i.cb, %bb.s ]
  %.sroa.9790.5.idx.i = sub nsw i64 %.sroa.9790.4.idx238.i, %.pn200.i ; 3 uses
  %.sroa.9790.5.i = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.5.idx.i
  %.sroa.0.5.i = load i64, ptr %.sroa.9790.5.i, align 1, !tbaa !23 ; 8 uses
  %i.cf = icmp ult ptr %.0.i239.i, %i.bu
  %i.cg = and i1 %i.cf, %.022.i.i
  br i1 %i.cg, label %bb.t, label %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit

bb.t:                                             ; preds = %BIT_reloadDStream.exit.i
  %i.ch = and i32 %.sroa.31.7.i, 63
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl i64 %.sroa.0.5.i, %i.ci
  %i.ck = lshr i64 %i.cj, %i.br
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ck ; 3 uses
  %i.cm = load i16, ptr %i.cl, align 2
  store i16 %i.cm, ptr %.0.i239.i, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !26
  %i.cp = zext i8 %i.co to i32
  %i.cq = add i32 %.sroa.31.7.i, %i.cp            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !27
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i239.i, i64 %i.ct ; 2 uses
  %i.cv = and i32 %i.cq, 63
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl i64 %.sroa.0.5.i, %i.cw
  %i.cy = lshr i64 %i.cx, %i.br
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cy ; 3 uses
  %i.da = load i16, ptr %i.cz, align 2
  store i16 %i.da, ptr %i.cu, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !26
  %i.dd = zext i8 %i.dc to i32
  %i.de = add i32 %i.cq, %i.dd                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !27
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dh ; 2 uses
  %i.dj = and i32 %i.de, 63
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl i64 %.sroa.0.5.i, %i.dk
  %i.dm = lshr i64 %i.dl, %i.br
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.dm ; 3 uses
  %i.do = load i16, ptr %i.dn, align 2
  store i16 %i.do, ptr %i.di, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !26
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add i32 %i.de, %i.dr                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !27
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dv ; 2 uses
  %i.dx = and i32 %i.ds, 63
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl i64 %.sroa.0.5.i, %i.dy
  %i.ea = lshr i64 %i.dz, %i.br
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ea ; 3 uses
  %i.ec = load i16, ptr %i.eb, align 2
  store i16 %i.ec, ptr %i.dw, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !26
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add i32 %i.ds, %i.ef                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 3
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !27
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ej ; 2 uses
  %i.el = and i32 %i.eg, 63
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl i64 %.sroa.0.5.i, %i.em
  %i.eo = lshr i64 %i.en, %i.br
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.eo ; 3 uses
  %i.eq = load i16, ptr %i.ep, align 2
  store i16 %i.eq, ptr %i.ek, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.es = load i8, ptr %i.er, align 2, !tbaa !26
  %i.et = zext i8 %i.es to i32
  %i.eu = add i32 %i.eg, %i.et                    ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !27
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ex ; 2 uses
  %i.ez = icmp ugt i32 %i.eu, 64
  br i1 %i.ez, label %BIT_reloadDStream.exit29.i, label %bb.p, !prof !28, !llvm.loop !0

bb.u:                                             ; preds = %bb.y, %.lr.ph.i
  %.1.i5222.i = phi ptr [ %0, %.lr.ph.i ], [ %i.hp, %bb.y ] ; 5 uses
  %.sroa.9790.3.idx221.i = phi i64 [ %.sroa.9790.9177.idx296.i, %.lr.ph.i ], [ %.sroa.9790.6.idx.i, %bb.y ] ; 5 uses
  %.sroa.31.4220.i = phi i32 [ %.sroa.31.12176298.i, %.lr.ph.i ], [ %i.hl, %bb.y ] ; 5 uses
  %.sroa.0.3219.i = phi i64 [ %.sroa.0.10175299.i, %.lr.ph.i ], [ %.sroa.0.6.i, %bb.y ]
  %.not.i9.i = icmp slt i64 %.sroa.9790.3.idx221.i, 8
  br i1 %.not.i9.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fa = lshr i32 %.sroa.31.4220.i, 3
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = and i32 %.sroa.31.4220.i, 7
  br label %BIT_reloadDStream.exit15.i

bb.w:                                             ; preds = %bb.u
  %i.fd = icmp eq i64 %.sroa.9790.3.idx221.i, 0
  br i1 %i.fd, label %BIT_reloadDStream.exit29.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fe = lshr i32 %.sroa.31.4220.i, 3
  %i.ff = zext nneg i32 %i.fe to i64              ; 2 uses
  %i.fg = icmp sge i64 %.sroa.9790.3.idx221.i, %i.ff
  %.021.i11195.i = tail call i64 @llvm.smin.i64(i64 %.sroa.9790.3.idx221.i, i64 %i.ff) ; 2 uses
  %.021.i11.i = trunc i64 %.021.i11195.i to i32
  %i.fh = and i64 %.021.i11195.i, 4294967295
  %i.fi = shl i32 %.021.i11.i, 3
  %i.fj = sub i32 %.sroa.31.4220.i, %i.fi
  br label %BIT_reloadDStream.exit15.i

BIT_reloadDStream.exit15.i:                       ; preds = %bb.x, %bb.v
  %.sroa.31.8.i = phi i32 [ %i.fc, %bb.v ], [ %i.fj, %bb.x ] ; 3 uses
  %.pn.i = phi i64 [ %i.fb, %bb.v ], [ %i.fh, %bb.x ]
  %.022.i10.i = phi i1 [ true, %bb.v ], [ %i.fg, %bb.x ]
  %.sroa.9790.6.idx.i = sub nsw i64 %.sroa.9790.3.idx221.i, %.pn.i ; 3 uses
  %.sroa.9790.6.i = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.6.idx.i
  %.sroa.0.6.i = load i64, ptr %.sroa.9790.6.i, align 1, !tbaa !23 ; 7 uses
  %i.fk = icmp ult ptr %.1.i5222.i, %i.bt
  %i.fl = and i1 %i.fk, %.022.i10.i
  br i1 %i.fl, label %bb.y, label %BIT_reloadDStream.exit29.i.loopexit75.split.loop.exit

bb.y:                                             ; preds = %BIT_reloadDStream.exit15.i
  %i.fm = and i32 %.sroa.31.8.i, 63
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl i64 %.sroa.0.6.i, %i.fn
  %i.fp = lshr i64 %i.fo, %i.br
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.fp ; 3 uses
  %i.fr = load i16, ptr %i.fq, align 2
  store i16 %i.fr, ptr %.1.i5222.i, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.ft = load i8, ptr %i.fs, align 2, !tbaa !26
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add i32 %.sroa.31.8.i, %i.fu            ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 3
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !27
  %i.fy = zext i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %.1.i5222.i, i64 %i.fy ; 2 uses
  %i.ga = and i32 %i.fv, 63
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = shl i64 %.sroa.0.6.i, %i.gb
  %i.gd = lshr i64 %i.gc, %i.br
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.gd ; 3 uses
  %i.gf = load i16, ptr %i.ge, align 2
  store i16 %i.gf, ptr %i.fz, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gh = load i8, ptr %i.gg, align 2, !tbaa !26
  %i.gi = zext i8 %i.gh to i32
  %i.gj = add i32 %i.fv, %i.gi                    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !27
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gm ; 2 uses
  %i.go = and i32 %i.gj, 63
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl i64 %.sroa.0.6.i, %i.gp
  %i.gr = lshr i64 %i.gq, %i.br
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.gr ; 3 uses
  %i.gt = load i16, ptr %i.gs, align 2
  store i16 %i.gt, ptr %i.gn, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.gv = load i8, ptr %i.gu, align 2, !tbaa !26
  %i.gw = zext i8 %i.gv to i32
  %i.gx = add i32 %i.gj, %i.gw                    ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !27
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.ha ; 2 uses
  %i.hc = and i32 %i.gx, 63
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl i64 %.sroa.0.6.i, %i.hd
  %i.hf = lshr i64 %i.he, %i.br
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.hf ; 3 uses
  %i.hh = load i16, ptr %i.hg, align 2
  store i16 %i.hh, ptr %i.hb, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %i.hj = load i8, ptr %i.hi, align 2, !tbaa !26
  %i.hk = zext i8 %i.hj to i32
  %i.hl = add i32 %i.gx, %i.hk                    ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 3
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !27
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.ho ; 2 uses
  %i.hq = icmp ugt i32 %i.hl, 64
  br i1 %i.hq, label %BIT_reloadDStream.exit29.i, label %bb.u, !prof !28, !llvm.loop !1

bb.z:                                             ; preds = %bb.n
  %.not.i23.i = icmp slt i64 %3, 16
  br i1 %.not.i23.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hr = lshr i32 %i.ay, 3
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = sub nsw i64 0, %i.hs
  %i.hu = getelementptr inbounds i8, ptr %.ptr190.i, i64 %i.ht ; 2 uses
  %i.hv = and i32 %i.ay, 7
  %.val.i61.i = load i64, ptr %i.hu, align 1, !tbaa !23
  br label %BIT_reloadDStream.exit29.i

bb.ab:                                            ; preds = %bb.z
  %i.hw = icmp eq i64 %.add.i, 0
  br i1 %i.hw, label %BIT_reloadDStream.exit29.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hx = lshr i32 %i.ay, 3
  %i.hy = zext nneg i32 %i.hx to i64
  %.021.i25191.i = tail call i64 @llvm.smin.i64(i64 %.add.i, i64 %i.hy) ; 2 uses
  %.021.i25.i = trunc i64 %.021.i25191.i to i32
  %i.hz = and i64 %.021.i25191.i, 4294967295
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = getelementptr inbounds i8, ptr %.ptr190.i, i64 %i.ia ; 2 uses
  %i.ic = shl i32 %.021.i25.i, 3
  %i.id = sub i32 %i.ay, %i.ic
  %.val30.i = load i64, ptr %i.ib, align 1, !tbaa !23
  br label %BIT_reloadDStream.exit29.i

BIT_reloadDStream.exit29.i.loopexit.split.loop.exit: ; preds = %BIT_reloadDStream.exit.i
  %.sroa.9790.5.i.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.5.idx.i
  br label %BIT_reloadDStream.exit29.i

BIT_reloadDStream.exit29.i.loopexit75.split.loop.exit: ; preds = %BIT_reloadDStream.exit15.i
  %.sroa.9790.6.i.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.6.idx.i
  br label %BIT_reloadDStream.exit29.i

BIT_reloadDStream.exit29.i:                       ; preds = %bb.y, %bb.w, %bb.t, %bb.r, %BIT_reloadDStream.exit29.i.loopexit75.split.loop.exit, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit, %bb.ac, %bb.ab, %bb.aa, %.thread.i
  %.sroa.3.0.extract.shift.i304.i = phi i32 [ %.sroa.3.0.extract.shift.i.i, %bb.ab ], [ %.sroa.3.0.extract.shift.i.i, %bb.aa ], [ %.sroa.3.0.extract.shift.i303.i, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %.sroa.3.0.extract.shift.i.i, %bb.ac ], [ %.sroa.3.0.extract.shift.i294.i, %.thread.i ], [ %.sroa.3.0.extract.shift.i303.i, %bb.t ], [ %.sroa.3.0.extract.shift.i303.i, %BIT_reloadDStream.exit29.i.loopexit75.split.loop.exit ], [ %.sroa.3.0.extract.shift.i303.i, %bb.r ], [ %.sroa.3.0.extract.shift.i303.i, %bb.w ], [ %.sroa.3.0.extract.shift.i303.i, %bb.y ] ; 2 uses
  %i.ie = phi ptr [ %i.bb, %bb.ab ], [ %i.bb, %bb.aa ], [ %i.bl, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %i.bb, %bb.ac ], [ %i.bj, %.thread.i ], [ %i.bl, %bb.t ], [ %i.bl, %BIT_reloadDStream.exit29.i.loopexit75.split.loop.exit ], [ %i.bl, %bb.r ], [ %i.bl, %bb.w ], [ %i.bl, %bb.y ] ; 3 uses
  %i.if = phi ptr [ %i.ba, %bb.ab ], [ %i.ba, %bb.aa ], [ %i.bm, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %i.ba, %bb.ac ], [ %i.bi, %.thread.i ], [ %i.bm, %bb.t ], [ %i.bm, %BIT_reloadDStream.exit29.i.loopexit75.split.loop.exit ], [ %i.bm, %bb.r ], [ %i.bm, %bb.w ], [ %i.bm, %bb.y ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %.val.i.i, %bb.ab ], [ %.val.i61.i, %bb.aa ], [ %.sroa.0.5.i, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %.val30.i, %bb.ac ], [ %.sroa.0.9.i, %.thread.i ], [ %.sroa.0.5.i, %bb.t ], [ %.sroa.0.6.i, %BIT_reloadDStream.exit29.i.loopexit75.split.loop.exit ], [ %.sroa.0.4236.i, %bb.r ], [ %.sroa.0.6.i, %bb.y ], [ %.sroa.0.3219.i, %bb.w ] ; 3 uses
  %.sroa.31.0.i = phi i32 [ %i.ay, %bb.ab ], [ %i.hv, %bb.aa ], [ %.sroa.31.7.i, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %i.id, %bb.ac ], [ %i.bh, %.thread.i ], [ %i.eu, %bb.t ], [ %.sroa.31.8.i, %BIT_reloadDStream.exit29.i.loopexit75.split.loop.exit ], [ %.sroa.31.5237.i, %bb.r ], [ %i.hl, %bb.y ], [ %.sroa.31.4220.i, %bb.w ] ; 4 uses
  %.sroa.9790.0.i = phi ptr [ %.ptr190.i, %bb.ab ], [ %i.hu, %bb.aa ], [ %.sroa.9790.5.i.le, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %i.ib, %bb.ac ], [ %2, %.thread.i ], [ @BIT_reloadDStream.zeroFilled, %bb.t ], [ %.sroa.9790.6.i.le, %BIT_reloadDStream.exit29.i.loopexit75.split.loop.exit ], [ %2, %bb.r ], [ @BIT_reloadDStream.zeroFilled, %bb.y ], [ %2, %bb.w ] ; 2 uses
  %.4.i.i = phi ptr [ %0, %bb.ab ], [ %0, %bb.aa ], [ %.0.i239.i, %BIT_reloadDStream.exit29.i.loopexit.split.loop.exit ], [ %0, %bb.ac ], [ %0, %.thread.i ], [ %i.ey, %bb.t ], [ %.1.i5222.i, %BIT_reloadDStream.exit29.i.loopexit75.split.loop.exit ], [ %.0.i239.i, %bb.r ], [ %i.hp, %bb.y ], [ %.1.i5222.i, %bb.w ] ; 4 uses
  %6 = ptrtoint ptr %i.if to i64
  %i.ig = ptrtoint ptr %.4.i.i to i64
  %i.ih = sub i64 %6, %i.ig
  %i.ii = icmp ugt i64 %i.ih, 1
  br i1 %i.ii, label %.preheader202.i, label %.loopexit.i

.preheader202.i:                                  ; preds = %BIT_reloadDStream.exit29.i
  %i.ij = getelementptr inbounds i8, ptr %i.if, i64 -2 ; 3 uses
  %i.ik = ptrtoint ptr %2 to i64
  %i.il = sub nsw i32 0, %.sroa.3.0.extract.shift.i304.i
  %i.im = and i32 %i.il, 63
  %i.in = zext nneg i32 %i.im to i64              ; 2 uses
  %i.io = icmp ugt i32 %.sroa.31.0.i, 64
  br i1 %i.io, label %BIT_reloadDStream.exit22.thread.i, label %.lr.ph, !prof !29

.lr.ph:                                           ; preds = %.preheader202.i, %bb.ag
  %.5.i.i45 = phi ptr [ %i.jr, %bb.ag ], [ %.4.i.i, %.preheader202.i ] ; 6 uses
  %.sroa.9790.2.i44 = phi ptr [ %.sroa.9790.7.i, %bb.ag ], [ %.sroa.9790.0.i, %.preheader202.i ] ; 5 uses
  %.sroa.31.2.i43 = phi i32 [ %i.jn, %bb.ag ], [ %.sroa.31.0.i, %.preheader202.i ] ; 5 uses
  %.sroa.0.2.i42 = phi i64 [ %.sroa.0.7.i, %bb.ag ], [ %.sroa.0.0.i, %.preheader202.i ]
  %.not.i16.i = icmp ult ptr %.sroa.9790.2.i44, %i.d
  br i1 %.not.i16.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.ip = lshr i32 %.sroa.31.2.i43, 3
  %i.iq = and i32 %.sroa.31.2.i43, 7
  br label %BIT_reloadDStream.exit22.i

bb.ae:                                            ; preds = %.lr.ph
  %i.ir = icmp eq ptr %.sroa.9790.2.i44, %2
  br i1 %i.ir, label %BIT_reloadDStream.exit22.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.is = lshr i32 %.sroa.31.2.i43, 3             ; 2 uses
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = sub nsw i64 0, %i.it
  %i.iv = getelementptr inbounds i8, ptr %.sroa.9790.2.i44, i64 %i.iu
  %i.iw = icmp uge ptr %i.iv, %2                  ; 2 uses
  %i.ix = ptrtoint ptr %.sroa.9790.2.i44 to i64
  %i.iy = sub i64 %i.ix, %i.ik
  %i.iz = trunc i64 %i.iy to i32
  %.021.i18.i = select i1 %i.iw, i32 %i.is, i32 %i.iz ; 2 uses
  %i.ja = shl i32 %.021.i18.i, 3
  %i.jb = sub i32 %.sroa.31.2.i43, %i.ja
  br label %BIT_reloadDStream.exit22.i

BIT_reloadDStream.exit22.thread.i:                ; preds = %bb.ag, %bb.ae, %.preheader202.i
  %.sroa.0.2.i.lcssa = phi i64 [ %.sroa.0.0.i, %.preheader202.i ], [ %.sroa.0.2.i42, %bb.ae ], [ %.sroa.0.7.i, %bb.ag ] ; 2 uses
  %.sroa.31.2.i.lcssa = phi i32 [ %.sroa.31.0.i, %.preheader202.i ], [ %.sroa.31.2.i43, %bb.ae ], [ %i.jn, %bb.ag ] ; 2 uses
  %.5.i.i.lcssa = phi ptr [ %.4.i.i, %.preheader202.i ], [ %.5.i.i45, %bb.ae ], [ %i.jr, %bb.ag ] ; 3 uses
  %.sroa.9790.7.ph.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %.preheader202.i ], [ %2, %bb.ae ], [ @BIT_reloadDStream.zeroFilled, %bb.ag ] ; 2 uses
  %.not367.i = icmp ugt ptr %.5.i.i.lcssa, %i.ij
  br i1 %.not367.i, label %.loopexit.i, label %.lr.ph248.i

BIT_reloadDStream.exit22.i:                       ; preds = %bb.af, %bb.ad
  %.sroa.31.9.i = phi i32 [ %i.iq, %bb.ad ], [ %i.jb, %bb.af ] ; 4 uses
  %.pn366.in.i = phi i32 [ %i.ip, %bb.ad ], [ %.021.i18.i, %bb.af ]
  %.022.i17.i = phi i1 [ true, %bb.ad ], [ %i.iw, %bb.af ]
  %.pn366.i = zext i32 %.pn366.in.i to i64
  %.pn365.i = sub nsw i64 0, %.pn366.i
  %.sroa.9790.7.i = getelementptr inbounds i8, ptr %.sroa.9790.2.i44, i64 %.pn365.i ; 4 uses
  %.sroa.0.7.i = load i64, ptr %.sroa.9790.7.i, align 1, !tbaa !23 ; 5 uses
  %i.jc = icmp ule ptr %.5.i.i45, %i.ij           ; 2 uses
  %i.jd = and i1 %i.jc, %.022.i17.i
  br i1 %i.jd, label %bb.ag, label %.preheader.i

.preheader.i:                                     ; preds = %BIT_reloadDStream.exit22.i
  br i1 %i.jc, label %.lr.ph248.i, label %.loopexit.i

.lr.ph248.i:                                      ; preds = %.preheader.i, %BIT_reloadDStream.exit22.thread.i
  %.5.i.i18 = phi ptr [ %.5.i.i.lcssa, %BIT_reloadDStream.exit22.thread.i ], [ %.5.i.i45, %.preheader.i ]
  %.sroa.0.7328333.i = phi i64 [ %.sroa.0.2.i.lcssa, %BIT_reloadDStream.exit22.thread.i ], [ %.sroa.0.7.i, %.preheader.i ] ; 2 uses
  %.sroa.31.9329332.i = phi i32 [ %.sroa.31.2.i.lcssa, %BIT_reloadDStream.exit22.thread.i ], [ %.sroa.31.9.i, %.preheader.i ]
  %.sroa.9790.7330331.i = phi ptr [ %.sroa.9790.7.ph.i, %BIT_reloadDStream.exit22.thread.i ], [ %.sroa.9790.7.i, %.preheader.i ]
  br label %bb.ah

bb.ag:                                            ; preds = %BIT_reloadDStream.exit22.i
  %i.je = and i32 %.sroa.31.9.i, 63
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = shl i64 %.sroa.0.7.i, %i.jf
  %i.jh = lshr i64 %i.jg, %i.in
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.jh ; 3 uses
  %i.jj = load i16, ptr %i.ji, align 2
  store i16 %i.jj, ptr %.5.i.i45, align 1
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !26
  %i.jm = zext i8 %i.jl to i32
  %i.jn = add i32 %.sroa.31.9.i, %i.jm            ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 3
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !27
  %i.jq = zext i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %.5.i.i45, i64 %i.jq ; 2 uses
  %i.js = icmp ugt i32 %i.jn, 64
  br i1 %i.js, label %BIT_reloadDStream.exit22.thread.i, label %.lr.ph, !prof !28, !llvm.loop !2

bb.ah:                                            ; preds = %bb.ah, %.lr.ph248.i
  %.6.i247.i = phi ptr [ %.5.i.i18, %.lr.ph248.i ], [ %i.kg, %bb.ah ] ; 2 uses
  %.sroa.31.3246.i = phi i32 [ %.sroa.31.9329332.i, %.lr.ph248.i ], [ %i.kc, %bb.ah ] ; 2 uses
  %i.jt = and i32 %.sroa.31.3246.i, 63
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = shl i64 %.sroa.0.7328333.i, %i.ju
  %i.jw = lshr i64 %i.jv, %i.in
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.jw ; 3 uses
  %i.jy = load i16, ptr %i.jx, align 2
  store i16 %i.jy, ptr %.6.i247.i, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %i.ka = load i8, ptr %i.jz, align 2, !tbaa !26
  %i.kb = zext i8 %i.ka to i32
  %i.kc = add i32 %.sroa.31.3246.i, %i.kb         ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 3
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !27
  %i.kf = zext i8 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %.6.i247.i, i64 %i.kf ; 3 uses
  %.not.i4.i = icmp ugt ptr %i.kg, %i.ij
  br i1 %.not.i4.i, label %.loopexit.i, label %bb.ah, !llvm.loop !3

.loopexit.i:                                      ; preds = %bb.ah, %.preheader.i, %BIT_reloadDStream.exit22.thread.i, %BIT_reloadDStream.exit29.i
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %BIT_reloadDStream.exit29.i ], [ %.sroa.0.7.i, %.preheader.i ], [ %.sroa.0.2.i.lcssa, %BIT_reloadDStream.exit22.thread.i ], [ %.sroa.0.7328333.i, %bb.ah ]
  %.sroa.31.1.i = phi i32 [ %.sroa.31.0.i, %BIT_reloadDStream.exit29.i ], [ %.sroa.31.9.i, %.preheader.i ], [ %.sroa.31.2.i.lcssa, %BIT_reloadDStream.exit22.thread.i ], [ %i.kc, %bb.ah ] ; 6 uses
  %.sroa.9790.1.i = phi ptr [ %.sroa.9790.0.i, %BIT_reloadDStream.exit29.i ], [ %.sroa.9790.7.i, %.preheader.i ], [ %.sroa.9790.7.ph.i, %BIT_reloadDStream.exit22.thread.i ], [ %.sroa.9790.7330331.i, %bb.ah ]
  %.7.i.i = phi ptr [ %.4.i.i, %BIT_reloadDStream.exit29.i ], [ %.5.i.i45, %.preheader.i ], [ %.5.i.i.lcssa, %BIT_reloadDStream.exit22.thread.i ], [ %i.kg, %bb.ah ] ; 2 uses
  %i.kh = icmp ult ptr %.7.i.i, %i.if
  br i1 %i.kh, label %bb.ai, label %HUF_decodeStreamX2.exit.i

bb.ai:                                            ; preds = %.loopexit.i
  %i.ki = and i32 %.sroa.31.1.i, 63
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = shl i64 %.sroa.0.1.i, %i.kj
  %i.kl = sub nsw i32 0, %.sroa.3.0.extract.shift.i304.i
  %i.km = and i32 %i.kl, 63
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = lshr i64 %i.kk, %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.ko ; 4 uses
  %i.kq = load i8, ptr %i.kp, align 2
  store i8 %i.kq, ptr %.7.i.i, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 3
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !27
  %i.kt = icmp eq i8 %i.ks, 1
  br i1 %i.kt, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  %i.kv = load i8, ptr %i.ku, align 2, !tbaa !26
  %i.kw = zext i8 %i.kv to i32
  %i.kx = add i32 %.sroa.31.1.i, %i.kw
  br label %HUF_decodeStreamX2.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.ky = icmp ult i32 %.sroa.31.1.i, 64
  br i1 %i.ky, label %bb.al, label %HUF_decodeStreamX2.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  %i.la = load i8, ptr %i.kz, align 2, !tbaa !26
  %i.lb = zext i8 %i.la to i32
  %i.lc = add nuw nsw i32 %.sroa.31.1.i, %i.lb
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.lc, i32 64)
  br label %HUF_decodeStreamX2.exit.i

HUF_decodeStreamX2.exit.i:                        ; preds = %bb.al, %bb.ak, %bb.aj, %.loopexit.i
  %.sroa.31.6.i = phi i32 [ %.sroa.31.1.i, %.loopexit.i ], [ %i.kx, %bb.aj ], [ %.sroa.31.1.i, %bb.ak ], [ %spec.select.i, %bb.al ]
  %i.ld = icmp eq ptr %.sroa.9790.1.i, %2
  %.sroa.31.6.fr.i = freeze i32 %.sroa.31.6.i
  %.not.i = icmp eq i32 %.sroa.31.6.fr.i, 64
  %or.cond.i = and i1 %i.ld, %.not.i
  %spec.select201.i = select i1 %or.cond.i, i64 %1, i64 -20
  br label %HUF_decompress1X2_usingDTable_internal_default.exit

HUF_decompress1X2_usingDTable_internal_default.exit: ; preds = %HUF_decodeStreamX2.exit.i, %BIT_initDStream.exit.i, %bb.m, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %3, %BIT_initDStream.exit.i ], [ %spec.select201.i, %HUF_decodeStreamX2.exit.i ], [ -1, %bb.e ], [ -20, %bb.m ], [ -72, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @HUF_selectDecoder(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp ult i64 %1, %0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %1, 4
  %i.b = udiv i64 %i.a, %0
  %i.c = and i64 %i.b, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 15, %bb.a ]
  %i.e = lshr i64 %0, 8
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @algoTime, i64 %i.d ; 4 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = mul i32 %i.j, %i.f
  %i.l = add i32 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = mul i32 %i.p, %i.f
  %i.r = add i32 %i.q, %i.n                       ; 2 uses
  %i.s = lshr i32 %i.r, 5
  %i.t = add i32 %i.s, %i.r
end_hunk_0
begin_hunk_1_@HUF_decompress4X1_usingDTable_internal:bb.a
BIT_initDStream.exit.thread.i:                    ; preds = %HUF_decodeStreamX1.exit.i.i, %.loopexit.i, %bb.ao, %bb.am, %bb.ae, %bb.ac, %bb.aa, %bb.s, %bb.q, %bb.o, %bb.g, %bb.e, %bb.d
  %.5.i.i = phi i64 [ %spec.select.i.i, %HUF_decodeStreamX1.exit.i.i ], [ -20, %bb.d ], [ -1, %bb.s ], [ -20, %.loopexit.i ], [ -1, %bb.g ], [ %i.gj, %bb.ao ], [ -20, %bb.o ], [ -72, %bb.e ], [ -20, %bb.aa ], [ -72, %bb.q ], [ -20, %bb.am ], [ -72, %bb.ac ], [ -1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %HUF_decompress4X1_usingDTable_internal_default.exit

bb.ck:                                            ; preds = %bb.b
  %i.akd = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) ; 2 uses
  %.not25 = icmp eq i64 %i.akd, 0
  br i1 %.not25, label %bb.cl, label %HUF_decompress4X1_usingDTable_internal_default.exit

bb.cl:                                            ; preds = %bb.ck, %bb.b
  %i.ake = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %HUF_decompress4X1_usingDTable_internal_default.exit

HUF_decompress4X1_usingDTable_internal_default.exit: ; preds = %BIT_initDStream.exit.thread.i, %bb.c, %bb.ck, %bb.cl
  %.1 = phi i64 [ %i.ake, %bb.cl ], [ %i.akd, %bb.ck ], [ %.5.i.i, %BIT_initDStream.exit.thread.i ], [ -20, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define range(i64 1, 0) i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %HUF_decompress4X2_DCtx_wksp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %HUF_decompress4X2_DCtx_wksp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult i64 %4, %2
  br i1 %.not.i, label %bb.d, label %HUF_selectDecoder.exit

bb.d:                                             ; preds = %bb.c
  %i.c = shl i64 %4, 4
  %i.d = udiv i64 %i.c, %2
  %i.e = and i64 %i.d, 4294967295
  br label %HUF_selectDecoder.exit

HUF_selectDecoder.exit:                           ; preds = %bb.c, %bb.d
  %i.f = phi i64 [ %i.e, %bb.d ], [ 15, %bb.c ]
  %i.g = lshr i64 %2, 8
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr @algoTime, i64 %i.f ; 4 uses
  %i.j = load i32, ptr %i.i, align 16, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !32
  %i.m = mul i32 %i.l, %i.h
  %i.n = add i32 %i.m, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32
  %i.s = mul i32 %i.r, %i.h
  %i.t = add i32 %i.s, %i.p                       ; 2 uses
  %i.u = lshr i32 %i.t, 5
  %i.v = add i32 %i.u, %i.t
  %.not = icmp ult i32 %i.v, %i.n
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %HUF_selectDecoder.exit
  %i.w = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef range(i64 1, 0) %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.x = icmp ult i64 %i.w, -119
  br i1 %i.x, label %bb.f, label %HUF_decompress4X2_DCtx_wksp.exit

bb.f:                                             ; preds = %bb.e
  %.not23.i = icmp ult i64 %i.w, %4
  br i1 %.not23.i, label %bb.g, label %HUF_decompress4X2_DCtx_wksp.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %i.w
  %i.z = sub nuw i64 %4, %i.w
  %i.aa = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %i.y, i64 noundef %i.z, ptr noundef %0, i32 noundef %7)
  br label %HUF_decompress4X2_DCtx_wksp.exit

bb.h:                                             ; preds = %HUF_selectDecoder.exit
  %i.ab = tail call i64 @HUF_readDTableX1_wksp(ptr noundef %0, ptr noundef %3, i64 noundef range(i64 1, 0) %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.ac = icmp ult i64 %i.ab, -119
  br i1 %i.ac, label %bb.i, label %HUF_decompress4X2_DCtx_wksp.exit

bb.i:                                             ; preds = %bb.h
  %.not23.i24 = icmp ult i64 %i.ab, %4
  br i1 %.not23.i24, label %bb.j, label %HUF_decompress4X2_DCtx_wksp.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  %i.ae = sub nuw i64 %4, %i.ab
  %i.af = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %i.ad, i64 noundef %i.ae, ptr noundef %0, i32 noundef %7)
  br label %HUF_decompress4X2_DCtx_wksp.exit

HUF_decompress4X2_DCtx_wksp.exit:                 ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %bb.a
  %.0 = phi i64 [ -20, %bb.b ], [ -70, %bb.a ], [ -72, %bb.f ], [ %i.aa, %bb.g ], [ %i.w, %bb.e ], [ %i.af, %bb.j ], [ %i.ab, %bb.h ], [ -72, %bb.i ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_decompress1X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %HUF_decompress1X2_usingDTable_internal_body.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = icmp ugt i64 %3, 7
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  %i.d = getelementptr i8, ptr %.ptr, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17    ; 2 uses
  %.not51.i = icmp eq i8 %i.e, 0
  br i1 %.not51.i, label %HUF_decompress1X2_usingDTable_internal_body.exit, label %BIT_initDStream.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load i8, ptr %2, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i64                      ; 7 uses
  switch i64 %3, label %bb.k [
    i64 7, label %bb.e
    i64 6, label %bb.f
    i64 5, label %bb.g
    i64 4, label %bb.h
    i64 3, label %bb.i
    i64 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 48
  %i.l = or disjoint i64 %i.k, %i.g
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i64 [ %i.l, %bb.e ], [ %i.g, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 40
  %i.r = add nuw nsw i64 %i.q, %i.m
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.s = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 32
  %i.x = add nuw nsw i64 %i.w, %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.y = phi i64 [ %i.x, %bb.g ], [ %i.g, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 24
  %i.ad = add nuw nsw i64 %i.ac, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ %i.g, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 16
  %i.aj = add nuw nsw i64 %i.ai, %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.ak = phi i64 [ %i.aj, %bb.i ], [ %i.g, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = add nuw nsw i64 %i.ao, %i.ak
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %.sroa.0.9 = phi i64 [ %i.g, %bb.d ], [ %i.ap, %bb.j ] ; 2 uses
  %i.aq = getelementptr i8, ptr %2, i64 %3
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17  ; 2 uses
  %.not.i58 = icmp eq i8 %i.as, 0
  br i1 %.not.i58, label %HUF_decompress1X2_usingDTable_internal_body.exit, label %.thread

BIT_initDStream.exit:                             ; preds = %bb.c
  %.add = add nsw i64 %3, -8                      ; 5 uses
  %.ptr190 = getelementptr inbounds i8, ptr %2, i64 %.add
  %.val.i = load i64, ptr %.ptr190, align 1, !tbaa !23 ; 2 uses
  %i.at = zext i8 %i.e to i32
  %i.au = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.at, i1 true)
  %i.av = xor i32 %i.au, 31
  %i.aw = sub nuw nsw i32 8, %i.av                ; 6 uses
  %i.ax = icmp ult i64 %3, -119
  br i1 %i.ax, label %bb.l, label %HUF_decompress1X2_usingDTable_internal_body.exit

bb.l:                                             ; preds = %BIT_initDStream.exit
  %.sroa.9790.9177.ptr.ptr.ptr = getelementptr inbounds i8, ptr %2, i64 %.add ; 3 uses
  %.idx.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %.val = load i32, ptr %4, align 4               ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i32 %.val, 16 ; 4 uses
  %i.ba = icmp sgt i64 %1, 7
  br i1 %i.ba, label %bb.m, label %bb.x

.thread:                                          ; preds = %bb.k
  %i.bb = zext i8 %i.as to i32
  %i.bc = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bb, i1 true)
  %i.bd = trunc nuw nsw i64 %3 to i32
  %i.be = shl nuw nsw i32 %i.bd, 3
  %reass.sub = sub nsw i32 %i.bc, %i.be
  %i.bf = add nsw i32 %reass.sub, 41              ; 2 uses
  %.idx.i292 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i292 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.val293 = load i32, ptr %4, align 4            ; 2 uses
  %.sroa.3.0.extract.shift.i294 = lshr i32 %.val293, 16 ; 2 uses
  %i.bi = icmp sgt i64 %1, 7
  br i1 %i.bi, label %bb.m, label %BIT_reloadDStream.exit29

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.3.0.extract.shift.i303 = phi i32 [ %.sroa.3.0.extract.shift.i294, %.thread ], [ %.sroa.3.0.extract.shift.i, %bb.l ] ; 7 uses
  %.val302 = phi i32 [ %.val293, %.thread ], [ %.val, %bb.l ]
  %i.bj = phi ptr [ %i.bh, %.thread ], [ %i.az, %bb.l ] ; 6 uses
  %i.bk = phi ptr [ %i.bg, %.thread ], [ %i.ay, %bb.l ] ; 8 uses
  %.sroa.0.10175299 = phi i64 [ %.sroa.0.9, %.thread ], [ %.val.i, %bb.l ] ; 2 uses
  %.sroa.31.12176298 = phi i32 [ %i.bf, %.thread ], [ %i.aw, %bb.l ] ; 2 uses
  %.sroa.9790.9177.idx296 = phi i64 [ 0, %.thread ], [ %.add, %bb.l ] ; 2 uses
  %i.bl = and i32 %.val302, 16515072
  %i.bm = icmp samesign ult i32 %i.bl, 786432
  %i.bn = sub nsw i32 0, %.sroa.3.0.extract.shift.i303
  %i.bo = and i32 %i.bn, 63
  %i.bp = zext nneg i32 %i.bo to i64              ; 9 uses
  br i1 %i.bm, label %.lr.ph240, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 -7
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.s

.lr.ph240:                                        ; preds = %bb.m
  %i.bv = getelementptr inbounds i8, ptr %i.bk, i64 -9
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph240, %bb.r
  %.0.i239 = phi ptr [ %0, %.lr.ph240 ], [ %i.fe, %bb.r ] ; 5 uses
  %.sroa.9790.4.idx238 = phi i64 [ %.sroa.9790.9177.idx296, %.lr.ph240 ], [ %.sroa.9790.5.idx, %bb.r ] ; 5 uses
  %.sroa.31.5237 = phi i32 [ %.sroa.31.12176298, %.lr.ph240 ], [ %i.fa, %bb.r ] ; 5 uses
  %.sroa.0.4236 = phi i64 [ %.sroa.0.10175299, %.lr.ph240 ], [ %.sroa.0.5, %bb.r ]
  %.not.i6 = icmp slt i64 %.sroa.9790.4.idx238, 8
  br i1 %.not.i6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = lshr i32 %.sroa.31.5237, 3
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = and i32 %.sroa.31.5237, 7
  br label %BIT_reloadDStream.exit

bb.p:                                             ; preds = %bb.n
  %i.ce = icmp eq i64 %.sroa.9790.4.idx238, 0
  br i1 %i.ce, label %BIT_reloadDStream.exit29, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = lshr i32 %.sroa.31.5237, 3
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = icmp sge i64 %.sroa.9790.4.idx238, %i.cg
  %.021.i199 = tail call i64 @llvm.smin.i64(i64 %.sroa.9790.4.idx238, i64 %i.cg) ; 2 uses
  %.021.i = trunc i64 %.021.i199 to i32
  %i.ci = and i64 %.021.i199, 4294967295
  %i.cj = shl i32 %.021.i, 3
  %i.ck = sub i32 %.sroa.31.5237, %i.cj
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.o, %bb.q
  %.sroa.31.7 = phi i32 [ %i.cd, %bb.o ], [ %i.ck, %bb.q ] ; 3 uses
  %.pn200 = phi i64 [ %i.cc, %bb.o ], [ %i.ci, %bb.q ]
  %.022.i = phi i1 [ true, %bb.o ], [ %i.ch, %bb.q ]
  %.sroa.9790.5.idx = sub nsw i64 %.sroa.9790.4.idx238, %.pn200 ; 3 uses
  %.sroa.9790.5 = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.5.idx
  %.sroa.0.5 = load i64, ptr %.sroa.9790.5, align 1, !tbaa !23 ; 8 uses
  %i.cl = icmp ult ptr %.0.i239, %i.bv
  %i.cm = and i1 %i.cl, %.022.i
  br i1 %i.cm, label %bb.r, label %BIT_reloadDStream.exit29.loopexit.split.loop.exit

bb.r:                                             ; preds = %BIT_reloadDStream.exit
  %i.cn = and i32 %.sroa.31.7, 63
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl i64 %.sroa.0.5, %i.co
  %i.cq = lshr i64 %i.cp, %i.bp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cq ; 3 uses
  %i.cs = load i16, ptr %i.cr, align 2
  store i16 %i.cs, ptr %.0.i239, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !26
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add i32 %.sroa.31.7, %i.cv              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !27
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i239, i64 %i.cz ; 2 uses
  %i.db = and i32 %i.cw, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl i64 %.sroa.0.5, %i.dc
  %i.de = lshr i64 %i.dd, %i.bp
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.de ; 3 uses
  %i.dg = load i16, ptr %i.df, align 2
  store i16 %i.dg, ptr %i.da, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !26
  %i.dj = zext i8 %i.di to i32
  %i.dk = add i32 %i.cw, %i.dj                    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 3
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !27
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dn ; 2 uses
  %i.dp = and i32 %i.dk, 63
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = shl i64 %.sroa.0.5, %i.dq
  %i.ds = lshr i64 %i.dr, %i.bp
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ds ; 3 uses
  %i.du = load i16, ptr %i.dt, align 2
  store i16 %i.du, ptr %i.do, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !26
  %i.dx = zext i8 %i.dw to i32
  %i.dy = add i32 %i.dk, %i.dx                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 3
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !27
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eb ; 2 uses
  %i.ed = and i32 %i.dy, 63
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl i64 %.sroa.0.5, %i.ee
  %i.eg = lshr i64 %i.ef, %i.bp
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.eg ; 3 uses
  %i.ei = load i16, ptr %i.eh, align 2
  store i16 %i.ei, ptr %i.ec, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !26
  %i.el = zext i8 %i.ek to i32
  %i.em = add i32 %i.dy, %i.el                    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !27
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ep ; 2 uses
  %i.er = and i32 %i.em, 63
  %i.es = zext nneg i32 %i.er to i64
  %i.et = shl i64 %.sroa.0.5, %i.es
  %i.eu = lshr i64 %i.et, %i.bp
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.eu ; 3 uses
  %i.ew = load i16, ptr %i.ev, align 2
  store i16 %i.ew, ptr %i.eq, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !26
  %i.ez = zext i8 %i.ey to i32
  %i.fa = add i32 %i.em, %i.ez                    ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 3
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !27
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.fd ; 2 uses
  %i.ff = icmp ugt i32 %i.fa, 64
  br i1 %i.ff, label %BIT_reloadDStream.exit29, label %bb.n, !prof !28, !llvm.loop !0

bb.s:                                             ; preds = %.lr.ph, %bb.w
  %.1.i5222 = phi ptr [ %0, %.lr.ph ], [ %i.hv, %bb.w ] ; 5 uses
  %.sroa.9790.3.idx221 = phi i64 [ %.sroa.9790.9177.idx296, %.lr.ph ], [ %.sroa.9790.6.idx, %bb.w ] ; 5 uses
  %.sroa.31.4220 = phi i32 [ %.sroa.31.12176298, %.lr.ph ], [ %i.hr, %bb.w ] ; 5 uses
  %.sroa.0.3219 = phi i64 [ %.sroa.0.10175299, %.lr.ph ], [ %.sroa.0.6, %bb.w ]
  %.not.i9 = icmp slt i64 %.sroa.9790.3.idx221, 8
  br i1 %.not.i9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fg = lshr i32 %.sroa.31.4220, 3
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = and i32 %.sroa.31.4220, 7
  br label %BIT_reloadDStream.exit15

bb.u:                                             ; preds = %bb.s
  %i.fj = icmp eq i64 %.sroa.9790.3.idx221, 0
  br i1 %i.fj, label %BIT_reloadDStream.exit29, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = lshr i32 %.sroa.31.4220, 3
  %i.fl = zext nneg i32 %i.fk to i64              ; 2 uses
  %i.fm = icmp sge i64 %.sroa.9790.3.idx221, %i.fl
  %.021.i11195 = tail call i64 @llvm.smin.i64(i64 %.sroa.9790.3.idx221, i64 %i.fl) ; 2 uses
  %.021.i11 = trunc i64 %.021.i11195 to i32
  %i.fn = and i64 %.021.i11195, 4294967295
  %i.fo = shl i32 %.021.i11, 3
  %i.fp = sub i32 %.sroa.31.4220, %i.fo
  br label %BIT_reloadDStream.exit15

BIT_reloadDStream.exit15:                         ; preds = %bb.t, %bb.v
  %.sroa.31.8 = phi i32 [ %i.fi, %bb.t ], [ %i.fp, %bb.v ] ; 3 uses
  %.pn = phi i64 [ %i.fh, %bb.t ], [ %i.fn, %bb.v ]
  %.022.i10 = phi i1 [ true, %bb.t ], [ %i.fm, %bb.v ]
  %.sroa.9790.6.idx = sub nsw i64 %.sroa.9790.3.idx221, %.pn ; 3 uses
  %.sroa.9790.6 = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.6.idx
  %.sroa.0.6 = load i64, ptr %.sroa.9790.6, align 1, !tbaa !23 ; 7 uses
  %i.fq = icmp ult ptr %.1.i5222, %i.bq
  %i.fr = and i1 %i.fq, %.022.i10
  br i1 %i.fr, label %bb.w, label %BIT_reloadDStream.exit29.loopexit334.split.loop.exit

bb.w:                                             ; preds = %BIT_reloadDStream.exit15
  %i.fs = and i32 %.sroa.31.8, 63
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = shl i64 %.sroa.0.6, %i.ft
  %i.fv = lshr i64 %i.fu, %i.bp
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.fv ; 3 uses
  %i.fx = load i16, ptr %i.fw, align 2
  store i16 %i.fx, ptr %.1.i5222, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !26
  %i.ga = zext i8 %i.fz to i32
  %i.gb = add i32 %.sroa.31.8, %i.ga              ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 3
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !27
  %i.ge = zext i8 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %.1.i5222, i64 %i.ge ; 2 uses
  %i.gg = and i32 %i.gb, 63
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = shl i64 %.sroa.0.6, %i.gh
  %i.gj = lshr i64 %i.gi, %i.bp
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.gj ; 3 uses
  %i.gl = load i16, ptr %i.gk, align 2
  store i16 %i.gl, ptr %i.gf, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !26
  %i.go = zext i8 %i.gn to i32
  %i.gp = add i32 %i.gb, %i.go                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !27
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gs ; 2 uses
  %i.gu = and i32 %i.gp, 63
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl i64 %.sroa.0.6, %i.gv
  %i.gx = lshr i64 %i.gw, %i.bp
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.gx ; 3 uses
  %i.gz = load i16, ptr %i.gy, align 2
  store i16 %i.gz, ptr %i.gt, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.hb = load i8, ptr %i.ha, align 2, !tbaa !26
  %i.hc = zext i8 %i.hb to i32
  %i.hd = add i32 %i.gp, %i.hc                    ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 3
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !27
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hg ; 2 uses
  %i.hi = and i32 %i.hd, 63
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl i64 %.sroa.0.6, %i.hj
  %i.hl = lshr i64 %i.hk, %i.bp
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.hl ; 3 uses
  %i.hn = load i16, ptr %i.hm, align 2
  store i16 %i.hn, ptr %i.hh, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hp = load i8, ptr %i.ho, align 2, !tbaa !26
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add i32 %i.hd, %i.hq                    ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !27
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hu ; 2 uses
  %i.hw = icmp ugt i32 %i.hr, 64
  br i1 %i.hw, label %BIT_reloadDStream.exit29, label %bb.s, !prof !28, !llvm.loop !1

bb.x:                                             ; preds = %bb.l
  %.not.i23 = icmp slt i64 %3, 16
  br i1 %.not.i23, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hx = lshr i32 %i.aw, 3
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = sub nsw i64 0, %i.hy
  %i.ia = getelementptr inbounds i8, ptr %.sroa.9790.9177.ptr.ptr.ptr, i64 %i.hz ; 2 uses
  %i.ib = and i32 %i.aw, 7
  %.val.i61 = load i64, ptr %i.ia, align 1, !tbaa !23
  br label %BIT_reloadDStream.exit29

bb.z:                                             ; preds = %bb.x
  %i.ic = icmp eq i64 %.add, 0
  br i1 %i.ic, label %BIT_reloadDStream.exit29, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.id = lshr i32 %i.aw, 3
  %i.ie = zext nneg i32 %i.id to i64
  %.021.i25191 = tail call i64 @llvm.smin.i64(i64 %.add, i64 %i.ie) ; 2 uses
  %.021.i25 = trunc i64 %.021.i25191 to i32
  %i.if = and i64 %.021.i25191, 4294967295
  %i.ig = sub nsw i64 0, %i.if
  %i.ih = getelementptr inbounds i8, ptr %.sroa.9790.9177.ptr.ptr.ptr, i64 %i.ig ; 2 uses
  %i.ii = shl i32 %.021.i25, 3
  %i.ij = sub i32 %i.aw, %i.ii
  %.val30 = load i64, ptr %i.ih, align 1, !tbaa !23
  br label %BIT_reloadDStream.exit29

BIT_reloadDStream.exit29.loopexit.split.loop.exit: ; preds = %BIT_reloadDStream.exit
  %.sroa.9790.5.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.5.idx
  br label %BIT_reloadDStream.exit29

BIT_reloadDStream.exit29.loopexit334.split.loop.exit: ; preds = %BIT_reloadDStream.exit15
  %.sroa.9790.6.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.9790.6.idx
  br label %BIT_reloadDStream.exit29

BIT_reloadDStream.exit29:                         ; preds = %bb.u, %bb.w, %bb.p, %bb.r, %BIT_reloadDStream.exit29.loopexit334.split.loop.exit, %BIT_reloadDStream.exit29.loopexit.split.loop.exit, %.thread, %bb.z, %bb.aa, %bb.y
  %.sroa.3.0.extract.shift.i304 = phi i32 [ %.sroa.3.0.extract.shift.i, %bb.z ], [ %.sroa.3.0.extract.shift.i, %bb.y ], [ %.sroa.3.0.extract.shift.i303, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %.sroa.3.0.extract.shift.i, %bb.aa ], [ %.sroa.3.0.extract.shift.i294, %.thread ], [ %.sroa.3.0.extract.shift.i303, %bb.p ], [ %.sroa.3.0.extract.shift.i303, %BIT_reloadDStream.exit29.loopexit334.split.loop.exit ], [ %.sroa.3.0.extract.shift.i303, %bb.r ], [ %.sroa.3.0.extract.shift.i303, %bb.w ], [ %.sroa.3.0.extract.shift.i303, %bb.u ] ; 2 uses
  %i.ik = phi ptr [ %i.az, %bb.z ], [ %i.az, %bb.y ], [ %i.bj, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %i.az, %bb.aa ], [ %i.bh, %.thread ], [ %i.bj, %bb.p ], [ %i.bj, %BIT_reloadDStream.exit29.loopexit334.split.loop.exit ], [ %i.bj, %bb.r ], [ %i.bj, %bb.w ], [ %i.bj, %bb.u ] ; 3 uses
  %i.il = phi ptr [ %i.ay, %bb.z ], [ %i.ay, %bb.y ], [ %i.bk, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %i.ay, %bb.aa ], [ %i.bg, %.thread ], [ %i.bk, %bb.p ], [ %i.bk, %BIT_reloadDStream.exit29.loopexit334.split.loop.exit ], [ %i.bk, %bb.r ], [ %i.bk, %bb.w ], [ %i.bk, %bb.u ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.val.i, %bb.z ], [ %.val.i61, %bb.y ], [ %.sroa.0.5, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %.val30, %bb.aa ], [ %.sroa.0.9, %.thread ], [ %.sroa.0.4236, %bb.p ], [ %.sroa.0.6, %BIT_reloadDStream.exit29.loopexit334.split.loop.exit ], [ %.sroa.0.5, %bb.r ], [ %.sroa.0.3219, %bb.u ], [ %.sroa.0.6, %bb.w ] ; 3 uses
  %.sroa.31.0 = phi i32 [ %i.aw, %bb.z ], [ %i.ib, %bb.y ], [ %.sroa.31.7, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %i.ij, %bb.aa ], [ %i.bf, %.thread ], [ %.sroa.31.5237, %bb.p ], [ %.sroa.31.8, %BIT_reloadDStream.exit29.loopexit334.split.loop.exit ], [ %i.fa, %bb.r ], [ %.sroa.31.4220, %bb.u ], [ %i.hr, %bb.w ] ; 4 uses
  %.sroa.9790.0 = phi ptr [ %.sroa.9790.9177.ptr.ptr.ptr, %bb.z ], [ %i.ia, %bb.y ], [ %.sroa.9790.5.le, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %i.ih, %bb.aa ], [ %2, %.thread ], [ %2, %bb.p ], [ %.sroa.9790.6.le, %BIT_reloadDStream.exit29.loopexit334.split.loop.exit ], [ @BIT_reloadDStream.zeroFilled, %bb.r ], [ %2, %bb.u ], [ @BIT_reloadDStream.zeroFilled, %bb.w ] ; 2 uses
  %.4.i = phi ptr [ %0, %bb.z ], [ %0, %bb.y ], [ %.0.i239, %BIT_reloadDStream.exit29.loopexit.split.loop.exit ], [ %0, %bb.aa ], [ %0, %.thread ], [ %.0.i239, %bb.p ], [ %.1.i5222, %BIT_reloadDStream.exit29.loopexit334.split.loop.exit ], [ %i.fe, %bb.r ], [ %.1.i5222, %bb.u ], [ %i.hv, %bb.w ] ; 4 uses
  %5 = ptrtoint ptr %i.il to i64
  %i.im = ptrtoint ptr %.4.i to i64
  %i.in = sub i64 %5, %i.im
  %i.io = icmp ugt i64 %i.in, 1
  br i1 %i.io, label %.preheader202, label %.loopexit

.preheader202:                                    ; preds = %BIT_reloadDStream.exit29
  %i.ip = getelementptr inbounds i8, ptr %i.il, i64 -2 ; 3 uses
  %i.iq = ptrtoint ptr %2 to i64
  %i.ir = sub nsw i32 0, %.sroa.3.0.extract.shift.i304
  %i.is = and i32 %i.ir, 63
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = icmp ugt i32 %.sroa.31.0, 64
  br i1 %i.iu, label %BIT_reloadDStream.exit22.thread, label %.lr.ph385, !prof !29

.lr.ph385:                                        ; preds = %.preheader202, %bb.ae
  %.5.i384 = phi ptr [ %i.jx, %bb.ae ], [ %.4.i, %.preheader202 ] ; 6 uses
  %.sroa.9790.2383 = phi ptr [ %.sroa.9790.7, %bb.ae ], [ %.sroa.9790.0, %.preheader202 ] ; 6 uses
  %.sroa.31.2382 = phi i32 [ %i.jt, %bb.ae ], [ %.sroa.31.0, %.preheader202 ] ; 5 uses
  %.sroa.0.2381 = phi i64 [ %.sroa.0.7, %bb.ae ], [ %.sroa.0.0, %.preheader202 ]
  %.not.i16 = icmp ult ptr %.sroa.9790.2383, %i.b
  br i1 %.not.i16, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph385
  %i.iv = lshr i32 %.sroa.31.2382, 3
  %i.iw = and i32 %.sroa.31.2382, 7
  br label %BIT_reloadDStream.exit22

bb.ac:                                            ; preds = %.lr.ph385
  %i.ix = icmp eq ptr %.sroa.9790.2383, %2
  br i1 %i.ix, label %BIT_reloadDStream.exit22.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iy = lshr i32 %.sroa.31.2382, 3              ; 2 uses
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = sub nsw i64 0, %i.iz
  %i.jb = getelementptr inbounds i8, ptr %.sroa.9790.2383, i64 %i.ja
  %i.jc = icmp uge ptr %i.jb, %2                  ; 2 uses
  %i.jd = ptrtoint ptr %.sroa.9790.2383 to i64
  %i.je = sub i64 %i.jd, %i.iq
  %i.jf = trunc i64 %i.je to i32
  %.021.i18 = select i1 %i.jc, i32 %i.iy, i32 %i.jf ; 2 uses
  %i.jg = shl i32 %.021.i18, 3
  %i.jh = sub i32 %.sroa.31.2382, %i.jg
  br label %BIT_reloadDStream.exit22

BIT_reloadDStream.exit22.thread:                  ; preds = %bb.ac, %bb.ae, %.preheader202
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.0, %.preheader202 ], [ %.sroa.0.2381, %bb.ac ], [ %.sroa.0.7, %bb.ae ] ; 2 uses
  %.sroa.31.2.lcssa = phi i32 [ %.sroa.31.0, %.preheader202 ], [ %.sroa.31.2382, %bb.ac ], [ %i.jt, %bb.ae ] ; 2 uses
  %.5.i.lcssa = phi ptr [ %.4.i, %.preheader202 ], [ %.5.i384, %bb.ac ], [ %i.jx, %bb.ae ] ; 3 uses
  %.sroa.9790.7.ph = phi ptr [ @BIT_reloadDStream.zeroFilled, %.preheader202 ], [ %.sroa.9790.2383, %bb.ac ], [ @BIT_reloadDStream.zeroFilled, %bb.ae ] ; 2 uses
  %.not367 = icmp ugt ptr %.5.i.lcssa, %i.ip
  br i1 %.not367, label %.loopexit, label %.lr.ph248

BIT_reloadDStream.exit22:                         ; preds = %bb.ab, %bb.ad
  %.sroa.31.9 = phi i32 [ %i.iw, %bb.ab ], [ %i.jh, %bb.ad ] ; 4 uses
  %.pn366.in = phi i32 [ %i.iv, %bb.ab ], [ %.021.i18, %bb.ad ]
  %.022.i17 = phi i1 [ true, %bb.ab ], [ %i.jc, %bb.ad ]
  %.pn366 = zext i32 %.pn366.in to i64
  %.pn365 = sub nsw i64 0, %.pn366
  %.sroa.9790.7 = getelementptr inbounds i8, ptr %.sroa.9790.2383, i64 %.pn365 ; 4 uses
  %.sroa.0.7 = load i64, ptr %.sroa.9790.7, align 1, !tbaa !23 ; 5 uses
  %i.ji = icmp ule ptr %.5.i384, %i.ip            ; 2 uses
  %i.jj = and i1 %i.ji, %.022.i17
  br i1 %i.jj, label %bb.ae, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit22
  br i1 %i.ji, label %.lr.ph248, label %.loopexit

.lr.ph248:                                        ; preds = %BIT_reloadDStream.exit22.thread, %.preheader
  %.5.i375 = phi ptr [ %.5.i.lcssa, %BIT_reloadDStream.exit22.thread ], [ %.5.i384, %.preheader ]
  %.sroa.0.7328333 = phi i64 [ %.sroa.0.2.lcssa, %BIT_reloadDStream.exit22.thread ], [ %.sroa.0.7, %.preheader ] ; 2 uses
  %.sroa.31.9329332 = phi i32 [ %.sroa.31.2.lcssa, %BIT_reloadDStream.exit22.thread ], [ %.sroa.31.9, %.preheader ]
  %.sroa.9790.7330331 = phi ptr [ %.sroa.9790.7.ph, %BIT_reloadDStream.exit22.thread ], [ %.sroa.9790.7, %.preheader ]
  br label %bb.af

bb.ae:                                            ; preds = %BIT_reloadDStream.exit22
  %i.jk = and i32 %.sroa.31.9, 63
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = shl i64 %.sroa.0.7, %i.jl
  %i.jn = lshr i64 %i.jm, %i.it
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.jn ; 3 uses
  %i.jp = load i16, ptr %i.jo, align 2
  store i16 %i.jp, ptr %.5.i384, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  %i.jr = load i8, ptr %i.jq, align 2, !tbaa !26
  %i.js = zext i8 %i.jr to i32
  %i.jt = add i32 %.sroa.31.9, %i.js              ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 3
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !27
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %.5.i384, i64 %i.jw ; 2 uses
  %i.jy = icmp ugt i32 %i.jt, 64
  br i1 %i.jy, label %BIT_reloadDStream.exit22.thread, label %.lr.ph385, !prof !28, !llvm.loop !2

bb.af:                                            ; preds = %.lr.ph248, %bb.af
  %.6.i247 = phi ptr [ %.5.i375, %.lr.ph248 ], [ %i.km, %bb.af ] ; 2 uses
  %.sroa.31.3246 = phi i32 [ %.sroa.31.9329332, %.lr.ph248 ], [ %i.ki, %bb.af ] ; 2 uses
  %i.jz = and i32 %.sroa.31.3246, 63
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = shl i64 %.sroa.0.7328333, %i.ka
  %i.kc = lshr i64 %i.kb, %i.it
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.kc ; 3 uses
  %i.ke = load i16, ptr %i.kd, align 2
  store i16 %i.ke, ptr %.6.i247, align 1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  %i.kg = load i8, ptr %i.kf, align 2, !tbaa !26
  %i.kh = zext i8 %i.kg to i32
  %i.ki = add i32 %.sroa.31.3246, %i.kh           ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 3
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !27
  %i.kl = zext i8 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %.6.i247, i64 %i.kl ; 3 uses
  %.not.i4 = icmp ugt ptr %i.km, %i.ip
  br i1 %.not.i4, label %.loopexit, label %bb.af, !llvm.loop !3

.loopexit:                                        ; preds = %bb.af, %BIT_reloadDStream.exit22.thread, %.preheader, %BIT_reloadDStream.exit29
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %BIT_reloadDStream.exit29 ], [ %.sroa.0.7, %.preheader ], [ %.sroa.0.2.lcssa, %BIT_reloadDStream.exit22.thread ], [ %.sroa.0.7328333, %bb.af ]
  %.sroa.31.1 = phi i32 [ %.sroa.31.0, %BIT_reloadDStream.exit29 ], [ %.sroa.31.9, %.preheader ], [ %.sroa.31.2.lcssa, %BIT_reloadDStream.exit22.thread ], [ %i.ki, %bb.af ] ; 6 uses
  %.sroa.9790.1 = phi ptr [ %.sroa.9790.0, %BIT_reloadDStream.exit29 ], [ %.sroa.9790.7, %.preheader ], [ %.sroa.9790.7.ph, %BIT_reloadDStream.exit22.thread ], [ %.sroa.9790.7330331, %bb.af ]
  %.7.i = phi ptr [ %.4.i, %BIT_reloadDStream.exit29 ], [ %.5.i384, %.preheader ], [ %.5.i.lcssa, %BIT_reloadDStream.exit22.thread ], [ %i.km, %bb.af ] ; 2 uses
  %i.kn = icmp ult ptr %.7.i, %i.il
  br i1 %i.kn, label %bb.ag, label %HUF_decodeStreamX2.exit

bb.ag:                                            ; preds = %.loopexit
  %i.ko = and i32 %.sroa.31.1, 63
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = shl i64 %.sroa.0.1, %i.kp
  %i.kr = sub nsw i32 0, %.sroa.3.0.extract.shift.i304
  %i.ks = and i32 %i.kr, 63
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = lshr i64 %i.kq, %i.kt
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ku ; 4 uses
  %i.kw = load i8, ptr %i.kv, align 2
  store i8 %i.kw, ptr %.7.i, align 1
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 3
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !27
  %i.kz = icmp eq i8 %i.ky, 1
  br i1 %i.kz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.lb = load i8, ptr %i.la, align 2, !tbaa !26
  %i.lc = zext i8 %i.lb to i32
  %i.ld = add i32 %.sroa.31.1, %i.lc
  br label %HUF_decodeStreamX2.exit

bb.ai:                                            ; preds = %bb.ag
  %i.le = icmp ult i32 %.sroa.31.1, 64
  br i1 %i.le, label %bb.aj, label %HUF_decodeStreamX2.exit

bb.aj:                                            ; preds = %bb.ai
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.lg = load i8, ptr %i.lf, align 2, !tbaa !26
  %i.lh = zext i8 %i.lg to i32
  %i.li = add nuw nsw i32 %.sroa.31.1, %i.lh
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.li, i32 64)
  br label %HUF_decodeStreamX2.exit

HUF_decodeStreamX2.exit:                          ; preds = %bb.ai, %bb.ah, %bb.aj, %.loopexit
  %.sroa.31.6 = phi i32 [ %.sroa.31.1, %.loopexit ], [ %i.ld, %bb.ah ], [ %.sroa.31.1, %bb.ai ], [ %spec.select, %bb.aj ]
  %i.lj = icmp eq ptr %.sroa.9790.1, %2
  %.sroa.31.6.fr = freeze i32 %.sroa.31.6
  %.not = icmp eq i32 %.sroa.31.6.fr, 64
  %or.cond = and i1 %i.lj, %.not
  %spec.select201 = select i1 %or.cond, i64 %1, i64 -20
  br label %HUF_decompress1X2_usingDTable_internal_body.exit

HUF_decompress1X2_usingDTable_internal_body.exit: ; preds = %HUF_decodeStreamX2.exit, %bb.k, %bb.a, %bb.c, %BIT_initDStream.exit
  %.1.i = phi i64 [ %3, %BIT_initDStream.exit ], [ %spec.select201, %HUF_decodeStreamX2.exit ], [ -1, %bb.c ], [ -20, %bb.k ], [ -72, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @BIT_initDStream(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12), (16, 40)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !40
  %i.e = icmp ugt i64 %2, 7
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !42
  %.val = load i64, ptr %i.g, align 1, !tbaa !23
  store i64 %.val, ptr %0, align 8, !tbaa !44
  %i.i = getelementptr i8, ptr %i.f, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17    ; 2 uses
  %.not51 = icmp eq i8 %i.j, 0
  br i1 %.not51, label %bb.e, label %.thread
end_hunk_1
