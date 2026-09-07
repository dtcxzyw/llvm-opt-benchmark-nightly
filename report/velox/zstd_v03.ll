Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v03?download=true
inline.NumInlined: 289
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@HUF_decompress4X2:bb.a
  %.val7.i164281.i = phi i32 [ %i.tm, %bb.be ], [ %i.sy, %bb.bb ], [ %i.qp, %bb.bd ], [ %i.qp, %BIT_reloadDStream.exit200.i ] ; 2 uses
  %.val.i206254.i = phi i64 [ %.val.i206.i, %bb.be ], [ %.val30.i202.i, %bb.bb ], [ %.val.i206255260.i, %bb.bd ], [ %.val.i206255260.i, %BIT_reloadDStream.exit200.i ] ; 2 uses
  %.025.i203.i = phi i32 [ %.0.i205.i, %bb.be ], [ 0, %bb.bb ], [ %..i208.i, %bb.bd ], [ 3, %BIT_reloadDStream.exit200.i ]
  %i.to = or i32 %i.ss, %.025.i203.i
  %i.tp = icmp ugt i32 %i.ra, 64
  br i1 %i.tp, label %BIT_reloadDStream.exit218.i, label %bb.bf

bb.bf:                                            ; preds = %BIT_reloadDStream.exit209.i
  %.not.i210.i = icmp ult ptr %i.ke, %i.kc
  br i1 %.not.i210.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.tq = lshr i32 %i.ra, 3
  %i.tr = zext nneg i32 %i.tq to i64
  %i.ts = sub nsw i64 0, %i.tr
  %i.tt = getelementptr inbounds i8, ptr %i.ke, i64 %i.ts ; 2 uses
  %i.tu = and i32 %i.ra, 7
  %.val30.i211.i = load i64, ptr %i.tt, align 1
  br label %BIT_reloadDStream.exit218.i

bb.bh:                                            ; preds = %bb.bf
  %i.tv = icmp eq ptr %i.ke, %i.kb
  br i1 %i.tv, label %BIT_reloadDStream.exit218.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.tw = lshr i32 %i.ra, 3                       ; 2 uses
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = sub nsw i64 0, %i.tx
  %i.tz = getelementptr inbounds i8, ptr %i.ke, i64 %i.ty
  %i.ua = icmp ult ptr %i.tz, %i.kb               ; 2 uses
  %i.ub = ptrtoint ptr %i.ke to i64
  %i.uc = sub i64 %i.ub, %i.kd
  %i.ud = trunc i64 %i.uc to i32
  %.024.i213.i = select i1 %i.ua, i32 %i.ud, i32 %i.tw ; 2 uses
  %.0.i214.i = zext i1 %i.ua to i32
  %i.ue = zext i32 %.024.i213.i to i64
  %i.uf = sub nsw i64 0, %i.ue
  %i.ug = getelementptr inbounds i8, ptr %i.ke, i64 %i.uf ; 2 uses
  %i.uh = shl i32 %.024.i213.i, 3
  %i.ui = sub i32 %i.ra, %i.uh
  %.val.i215.i = load i64, ptr %i.ug, align 1
  br label %BIT_reloadDStream.exit218.i

BIT_reloadDStream.exit218.i:                      ; preds = %bb.bi, %bb.bh, %bb.bg, %BIT_reloadDStream.exit209.i
  %i.uj = phi ptr [ %i.ug, %bb.bi ], [ %i.tt, %bb.bg ], [ %i.ke, %BIT_reloadDStream.exit209.i ], [ %i.ke, %bb.bh ] ; 2 uses
  %.val7.i166284.i = phi i32 [ %i.ui, %bb.bi ], [ %i.tu, %bb.bg ], [ %i.ra, %BIT_reloadDStream.exit209.i ], [ %i.ra, %bb.bh ] ; 2 uses
  %.val.i215257.i = phi i64 [ %.val.i215.i, %bb.bi ], [ %.val30.i211.i, %bb.bg ], [ %.val.i215258259.i, %BIT_reloadDStream.exit209.i ], [ %.val.i215258259.i, %bb.bh ] ; 2 uses
  %.025.i212.i = phi i32 [ %.0.i214.i, %bb.bi ], [ 0, %bb.bg ], [ 3, %BIT_reloadDStream.exit209.i ], [ 3, %bb.bh ]
  %i.uk = or i32 %i.to, %.025.i212.i
  %i.ul = icmp eq i32 %i.uk, 0
  %i.um = icmp ult ptr %i.rb, %i.jc
  %i.un = select i1 %i.ul, i1 %i.um, i1 false
  br i1 %i.un, label %bb.ap, label %._crit_edge.i20, !llvm.loop !67

._crit_edge.i20:                                  ; preds = %BIT_reloadDStream.exit218.i
  store i32 %.val7.i275.i, ptr %i.jg, align 8, !tbaa !37
  store i32 %.val7.i162278.i, ptr %i.jk, align 8, !tbaa !37
  store i32 %.val7.i164281.i, ptr %i.jl, align 8, !tbaa !37
  store i32 %.val7.i166284.i, ptr %i.jm, align 8, !tbaa !37
  store ptr %i.rw, ptr %i.jn, align 8
  store ptr %i.sr, ptr %i.jo, align 8
  store ptr %i.tn, ptr %i.jp, align 8
  store ptr %i.uj, ptr %i.jq, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i20, %bb.ao
  %.val.i215258.lcssa.i = phi i64 [ %.val.i215257.i, %._crit_edge.i20 ], [ %.promoted256.i, %bb.ao ]
  %.val.i206255.lcssa.i = phi i64 [ %.val.i206254.i, %._crit_edge.i20 ], [ %.promoted253.i, %bb.ao ]
  %.val.i197252.lcssa.i = phi i64 [ %.val.i197251.i, %._crit_edge.i20 ], [ %.promoted250.i, %bb.ao ]
  %.val.i191249.lcssa.i = phi i64 [ %.val.i191248.i, %._crit_edge.i20 ], [ %.promoted.i, %bb.ao ]
  %.0133.lcssa.i = phi ptr [ %i.pu, %._crit_edge.i20 ], [ %0, %bb.ao ] ; 2 uses
  %.0130.lcssa.i = phi ptr [ %i.qf, %._crit_edge.i20 ], [ %i.bq, %bb.ao ] ; 2 uses
  %.0127.lcssa.i = phi ptr [ %i.qq, %._crit_edge.i20 ], [ %i.br, %bb.ao ] ; 2 uses
  %.0126.lcssa.i = phi ptr [ %i.rb, %._crit_edge.i20 ], [ %i.bs, %bb.ao ]
  store i64 %.val.i191249.lcssa.i, ptr %4, align 8
  store i64 %.val.i197252.lcssa.i, ptr %5, align 8
  store i64 %.val.i206255.lcssa.i, ptr %6, align 8
  store i64 %.val.i215258.lcssa.i, ptr %7, align 8
  %i.uo = icmp ugt ptr %.0133.lcssa.i, %i.bq
  %i.up = icmp ugt ptr %.0130.lcssa.i, %i.br
  %or.cond.i = select i1 %i.uo, i1 true, i1 %i.up
  %i.uq = icmp ugt ptr %.0127.lcssa.i, %i.bs
  %or.cond147.i = select i1 %or.cond.i, i1 true, i1 %i.uq
  br i1 %or.cond147.i, label %BIT_initDStream.exit.thread.i, label %BIT_endOfDStream.exit.i

BIT_endOfDStream.exit.i:                          ; preds = %bb.bj
  call fastcc void @HUF_decodeStreamX2(ptr noundef %.0133.lcssa.i, ptr noundef %4, ptr noundef %i.bq, ptr noundef readonly %i.f, i32 noundef %i.i)
  call fastcc void @HUF_decodeStreamX2(ptr noundef %.0130.lcssa.i, ptr noundef %5, ptr noundef %i.br, ptr noundef readonly %i.f, i32 noundef %i.i)
  call fastcc void @HUF_decodeStreamX2(ptr noundef %.0127.lcssa.i, ptr noundef %6, ptr noundef %i.bs, ptr noundef readonly %i.f, i32 noundef %i.i)
  call fastcc void @HUF_decodeStreamX2(ptr noundef %.0126.lcssa.i, ptr noundef %7, ptr noundef %i.be, ptr noundef readonly %i.f, i32 noundef %i.i)
  %i.ur = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.us = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ut = load i32, ptr %i.us, align 8
  %.fr117 = freeze i32 %i.ut
  %i.uu = icmp ne i32 %.fr117, 64
  %i.uv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.uw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ux = load i32, ptr %i.uw, align 8
  %.fr = freeze i32 %i.ux
  %i.uy = icmp ne i32 %.fr, 64
  %i.uz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.va = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.vb = load i32, ptr %i.va, align 8
  %.fr119 = freeze i32 %i.vb
  %i.vc = icmp ne i32 %.fr119, 64
  %i.vd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ve = load <2 x ptr>, ptr %i.ur, align 8, !tbaa !41 ; 2 uses
  %i.vf = load <2 x ptr>, ptr %i.uv, align 8, !tbaa !41 ; 2 uses
  %i.vg = load <2 x ptr>, ptr %i.uz, align 8, !tbaa !41 ; 2 uses
  %i.vh = load <2 x ptr>, ptr %i.vd, align 8, !tbaa !41 ; 2 uses
  %i.vi = shufflevector <2 x ptr> %i.ve, <2 x ptr> %i.vf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.vj = shufflevector <2 x ptr> %i.vg, <2 x ptr> %i.vh, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.vk = shufflevector <4 x ptr> %i.vi, <4 x ptr> %i.vj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.vl = shufflevector <2 x ptr> %i.ve, <2 x ptr> %i.vf, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.vm = shufflevector <2 x ptr> %i.vg, <2 x ptr> %i.vh, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.vn = shufflevector <4 x ptr> %i.vl, <4 x ptr> %i.vm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.vo = icmp ne <4 x ptr> %i.vk, %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.vq = load i32, ptr %i.vp, align 8
  %i.vr = icmp ne i32 %i.vq, 64
  %i.vs = freeze <4 x i1> %i.vo
  %i.vt = bitcast <4 x i1> %i.vs to i4
  %i.vu = icmp ne i4 %i.vt, 0
  %op.rdx = or i1 %i.vu, %i.uu
  %i.vv = or i1 %op.rdx, %i.uy
  %op.rdx114 = or i1 %i.vv, %i.vc
  %op.rdx115 = select i1 %op.rdx114, i1 true, i1 %i.vr
  %..i = select i1 %op.rdx115, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread.i

BIT_initDStream.exit.thread.i:                    ; preds = %BIT_endOfDStream.exit.i, %bb.bj, %bb.an, %bb.am, %bb.ae, %bb.ac, %bb.ab, %bb.t, %bb.r, %bb.q, %bb.i, %bb.g, %bb.f
  %.0136.i = phi i64 [ %..i, %BIT_endOfDStream.exit.i ], [ -20, %bb.f ], [ -20, %bb.bj ], [ -72, %bb.r ], [ -72, %bb.g ], [ %i.it, %bb.an ], [ -1, %bb.i ], [ -1, %bb.q ], [ -1, %bb.t ], [ -1, %bb.ab ], [ -1, %bb.ae ], [ -1, %bb.am ], [ -72, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %HUF_decompress4X2_usingDTable.exit

HUF_decompress4X2_usingDTable.exit:               ; preds = %BIT_initDStream.exit.thread.i, %bb.e, %HUF_readDTableX2.exit.thread, %HUF_readDTableX2.exit.thread23
  %.0 = phi i64 [ %.034.i.ph, %HUF_readDTableX2.exit.thread ], [ -20, %bb.e ], [ -72, %HUF_readDTableX2.exit.thread23 ], [ %.0136.i, %BIT_initDStream.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @HUF_decompress4X4(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #9 {
bb.a:
  %4 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %5 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %6 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %7 = alloca %struct.BIT_DStream_t, align 8      ; 12 uses
  %i.a = alloca [17 x i32], align 16              ; 5 uses
  %i.b = alloca [17 x i32], align 16              ; 4 uses
  %i.c = alloca [256 x i8], align 16              ; 7 uses
  %8 = alloca [256 x %struct.sortedSymbol_t], align 16 ; 8 uses
  %i.d = alloca [17 x i32], align 16              ; 14 uses
  %i.e = alloca [18 x i32], align 16              ; 6 uses
  %i.f = alloca [16 x [17 x i32]], align 16       ; 15 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca [4097 x i32], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16388) %i.i, i8 0, i64 16388, i1 false)
  store i32 12, ptr %i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.d, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 23 uses
  %i.l = call fastcc i64 @HUF_readStats(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.g, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.m = icmp ult i64 %i.l, -119
  br i1 %i.m, label %bb.b, label %HUF_readDTableX4.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.g, align 4, !tbaa !22   ; 8 uses
  %i.o = icmp ugt i32 %i.n, 12
  br i1 %i.o, label %HUF_readDTableX4.exit.thread, label %.preheader83.i

.preheader83.i:                                   ; preds = %bb.b
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.preheader, label %.preheader82.i

.lr.ph.i.preheader:                               ; preds = %.preheader83.i
  %.not81.i113 = icmp eq i32 %i.n, 0
  br i1 %.not81.i113, label %HUF_readDTableX4.exit.thread, label %.lr.ph

.preheader82.loopexit.i:                          ; preds = %.lr.ph
  %i.t = trunc nuw nsw i64 %i.w to i32
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %.preheader82.loopexit.i, %.preheader83.i
  %.071.lcssa.i = phi i32 [ %i.n, %.preheader83.i ], [ %i.t, %.preheader82.loopexit.i ] ; 9 uses
  %.not7786.i = icmp eq i32 %.071.lcssa.i, 0      ; 2 uses
  br i1 %.not7786.i, label %._crit_edge.i, label %.lr.ph89.preheader.i

.lr.ph89.preheader.i:                             ; preds = %.preheader82.i
  %i.u = zext i32 %.071.lcssa.i to i64            ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.v = icmp ult i32 %.071.lcssa.i, 4
  br i1 %i.v, label %.lr.ph89.i.epil.preheader, label %.lr.ph89.preheader.i.new

.lr.ph89.preheader.i.new:                         ; preds = %.lr.ph89.preheader.i
  %unroll_iter = and i64 %i.u, 4294967292
  br label %.lr.ph89.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not81.i = icmp eq i64 %i.w, 0
  br i1 %.not81.i, label %HUF_readDTableX4.exit.thread, label %.lr.ph, !llvm.loop !68

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i114 = phi i64 [ %i.w, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %i.w = add nsw i64 %indvars.iv.i114, -1         ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %.preheader82.loopexit.i, !llvm.loop !68

.lr.ph89.i:                                       ; preds = %.lr.ph89.i, %.lr.ph89.preheader.i.new
  %indvars.iv111.i = phi i64 [ 1, %.lr.ph89.preheader.i.new ], [ %indvars.iv.next112.i.3, %.lr.ph89.i ] ; 6 uses
  %.07388.i = phi i32 [ 0, %.lr.ph89.preheader.i.new ], [ %i.ao, %.lr.ph89.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph89.preheader.i.new ], [ %niter.next.3, %.lr.ph89.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv111.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22
  %i.ac = add i32 %i.ab, %.07388.i                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv111.i
  store i32 %.07388.i, ptr %i.ad, align 4, !tbaa !22
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next112.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.ag = add i32 %i.af, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next112.i
  store i32 %i.ac, ptr %i.ah, align 4, !tbaa !22
  %indvars.iv.next112.i.1 = add nuw nsw i64 %indvars.iv111.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next112.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !22
  %i.ak = add i32 %i.aj, %i.ag                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next112.i.1
  store i32 %i.ag, ptr %i.al, align 4, !tbaa !22
  %indvars.iv.next112.i.2 = add nuw nsw i64 %indvars.iv111.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next112.i.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22
  %i.ao = add i32 %i.an, %i.ak                    ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next112.i.2
  store i32 %i.ak, ptr %i.ap, align 4, !tbaa !22
  %indvars.iv.next112.i.3 = add nuw nsw i64 %indvars.iv111.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph89.i, !llvm.loop !69

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph89.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph89.i.epil.preheader

.lr.ph89.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph89.preheader.i
  %indvars.iv111.i.epil.init = phi i64 [ 1, %.lr.ph89.preheader.i ], [ %indvars.iv.next112.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07388.i.epil.init = phi i32 [ 0, %.lr.ph89.preheader.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph89.i.epil

.lr.ph89.i.epil:                                  ; preds = %.lr.ph89.i.epil, %.lr.ph89.i.epil.preheader
  %indvars.iv111.i.epil = phi i64 [ %indvars.iv111.i.epil.init, %.lr.ph89.i.epil.preheader ], [ %indvars.iv.next112.i.epil, %.lr.ph89.i.epil ] ; 3 uses
  %.07388.i.epil = phi i32 [ %.07388.i.epil.init, %.lr.ph89.i.epil.preheader ], [ %i.as, %.lr.ph89.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph89.i.epil.preheader ], [ %epil.iter.next, %.lr.ph89.i.epil ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv111.i.epil
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22
  %i.as = add i32 %i.ar, %.07388.i.epil           ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv111.i.epil
  store i32 %.07388.i.epil, ptr %i.at, align 4, !tbaa !22
  %indvars.iv.next112.i.epil = add nuw nsw i64 %indvars.iv111.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph89.i.epil, !llvm.loop !70

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph89.i.epil, %.preheader82.i
  %.073.lcssa.i = phi i32 [ 0, %.preheader82.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph89.i.epil ] ; 5 uses
  store i32 %.073.lcssa.i, ptr %i.j, align 4, !tbaa !22
  %i.au = load i32, ptr %i.h, align 4, !tbaa !22  ; 4 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %._crit_edge94.i, label %.lr.ph93.preheader.i

.lr.ph93.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count117.i = zext i32 %i.au to i64   ; 2 uses
  %xtraiter171 = and i64 %wide.trip.count117.i, 1
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.lr.ph93.i.epil.preheader, label %.lr.ph93.preheader.i.new

.lr.ph93.preheader.i.new:                         ; preds = %.lr.ph93.preheader.i
  %unroll_iter175 = and i64 %wide.trip.count117.i, 4294967294
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i, %.lr.ph93.preheader.i.new
  %indvars.iv114.i = phi i64 [ 0, %.lr.ph93.preheader.i.new ], [ %indvars.iv.next115.i.1, %.lr.ph93.i ] ; 4 uses
  %niter176 = phi i64 [ 0, %.lr.ph93.preheader.i.new ], [ %niter176.next.1, %.lr.ph93.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv114.i
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !15  ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !22 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !22
  %i.bc = trunc i64 %indvars.iv114.i to i8
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bd ; 2 uses
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.ax, ptr %i.bf, align 1, !tbaa !40
  %indvars.iv.next115.i = or disjoint i64 %indvars.iv114.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next115.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15  ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !22 ; 2 uses
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !22
  %i.bm = trunc i64 %indvars.iv.next115.i to i8
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bn ; 2 uses
  store i8 %i.bm, ptr %i.bo, align 2, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !40
  %indvars.iv.next115.i.1 = add nuw nsw i64 %indvars.iv114.i, 2 ; 2 uses
  %niter176.next.1 = add i64 %niter176, 2         ; 2 uses
  %niter176.ncmp.1 = icmp eq i64 %niter176.next.1, %unroll_iter175
  br i1 %niter176.ncmp.1, label %._crit_edge94.i.loopexit.unr-lcssa, label %.lr.ph93.i, !llvm.loop !71

._crit_edge94.i.loopexit.unr-lcssa:               ; preds = %.lr.ph93.i
  %lcmp.mod173.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %._crit_edge94.i, label %.lr.ph93.i.epil.preheader

.lr.ph93.i.epil.preheader:                        ; preds = %._crit_edge94.i.loopexit.unr-lcssa, %.lr.ph93.preheader.i
  %indvars.iv114.i.epil.init = phi i64 [ 0, %.lr.ph93.preheader.i ], [ %indvars.iv.next115.i.1, %._crit_edge94.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod174 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv114.i.epil.init
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !15  ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !22 ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !22
  %i.bw = trunc i64 %indvars.iv114.i.epil.init to i8
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bx ; 2 uses
  store i8 %i.bw, ptr %i.by, align 2, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.br, ptr %i.bz, align 1, !tbaa !40
  br label %._crit_edge94.i

._crit_edge94.i:                                  ; preds = %.lr.ph93.i.epil.preheader, %._crit_edge94.i.loopexit.unr-lcssa, %._crit_edge.i
  store i32 0, ptr %i.j, align 4, !tbaa !22
  %i.ca = add nuw nsw i32 %i.n, 1                 ; 3 uses
  %i.cb = sub nsw i32 %i.ca, %.071.lcssa.i        ; 4 uses
  br i1 %.not7786.i, label %._crit_edge108.split.i, label %.lr.ph99.preheader.i

.lr.ph99.preheader.i:                             ; preds = %._crit_edge94.i
  %i.cc = add nuw nsw i32 %.071.lcssa.i, 1        ; 2 uses
  %wide.trip.count122.i = zext nneg i32 %i.cc to i64 ; 2 uses
  %i.cd = zext i32 %.071.lcssa.i to i64           ; 3 uses
  %xtraiter177 = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.cc, 2
  br i1 %i.ce, label %.lr.ph99.i.epil.preheader, label %.lr.ph99.preheader.i.new

.lr.ph99.preheader.i.new:                         ; preds = %.lr.ph99.preheader.i
  %unroll_iter181 = and i64 %i.cd, 4294967294
  %invariant.op = sub i32 11, %i.n
  %invariant.op197 = sub i32 11, %i.n
  br label %.lr.ph99.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph99.i
  %lcmp.mod179.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod179.not, label %.preheader.i, label %.lr.ph99.i.epil.preheader

.lr.ph99.i.epil.preheader:                        ; preds = %.preheader.i.unr-lcssa, %.lr.ph99.preheader.i
  %indvars.iv119.i.epil.init = phi i64 [ 1, %.lr.ph99.preheader.i ], [ %indvars.iv.next120.i.1, %.preheader.i.unr-lcssa ]
  %.07096.i.epil.init = phi i32 [ 0, %.lr.ph99.preheader.i ], [ %i.ct, %.preheader.i.unr-lcssa ]
  %lcmp.mod180 = trunc i32 %.071.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv119.i.epil.init
  store i32 %.07096.i.epil.init, ptr %i.cf, align 4, !tbaa !22
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.lr.ph99.i.epil.preheader
  %i.cg = sub nsw i32 12, %i.cb                   ; 2 uses
  %.not79105.i = icmp ugt i32 %i.cb, %i.cg
  br i1 %.not79105.i, label %._crit_edge108.split.i, label %.lr.ph103.i.preheader

.lr.ph103.i.preheader:                            ; preds = %.preheader.i
  %i.ch = zext i32 %.071.lcssa.i to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.071.lcssa.i, 8
  %n.vec = and i64 %i.ch, 4294967288              ; 3 uses
  %i.ci = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ch
  br label %.lr.ph103.i

.lr.ph99.i:                                       ; preds = %.lr.ph99.i, %.lr.ph99.preheader.i.new
  %indvars.iv119.i = phi i64 [ 1, %.lr.ph99.preheader.i.new ], [ %indvars.iv.next120.i.1, %.lr.ph99.i ] ; 5 uses
  %.07096.i = phi i32 [ 0, %.lr.ph99.preheader.i.new ], [ %i.ct, %.lr.ph99.i ] ; 2 uses
  %niter182 = phi i64 [ 0, %.lr.ph99.preheader.i.new ], [ %niter182.next.1, %.lr.ph99.i ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv119.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !22
  %i.cl = trunc nuw nsw i64 %indvars.iv119.i to i32
  %.reass.reass = add i32 %i.cl, %invariant.op
  %i.cm = shl i32 %i.ck, %.reass.reass
  %i.cn = add i32 %i.cm, %.07096.i                ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv119.i
  store i32 %.07096.i, ptr %i.co, align 4, !tbaa !22
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next120.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !22
  %i.cr = trunc nuw nsw i64 %indvars.iv.next120.i to i32
  %.reass.1.reass = add i32 %i.cr, %invariant.op197
  %i.cs = shl i32 %i.cq, %.reass.1.reass
  %i.ct = add i32 %i.cs, %i.cn                    ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next120.i
  store i32 %i.cn, ptr %i.cu, align 4, !tbaa !22
  %indvars.iv.next120.i.1 = add nuw nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %niter182.next.1 = add nuw i64 %niter182, 2     ; 2 uses
  %niter182.ncmp.1 = icmp eq i64 %niter182.next.1, %unroll_iter181
  br i1 %niter182.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph99.i, !llvm.loop !72

.lr.ph103.i:                                      ; preds = %.lr.ph103.i.preheader, %._crit_edge104.i
  %.068106.i = phi i32 [ %i.ef, %._crit_edge104.i ], [ %i.cb, %.lr.ph103.i.preheader ] ; 9 uses
  %i.cv = zext i32 %.068106.i to i64
  %i.cw = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.cv ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph103.i
  %i.cx = zext i32 %.068106.i to i64
  %i.cy = mul nuw nsw i64 %i.cx, 68
  %i.cz = add nsw i64 %i.cy, -1
  %diff.check = icmp ult i64 %i.cz, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.068106.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = or disjoint i64 %index, 1               ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <4 x i32>, ptr %i.db, align 4, !tbaa !22
  %wide.load115 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !22
  %i.dd = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.de = lshr <4 x i32> %wide.load115, %broadcast.splat
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.da ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x i32> %i.dd, ptr %i.df, align 4, !tbaa !22
  store <4 x i32> %i.de, ptr %i.dg, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge104.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph103.i, %middle.block
  %indvars.iv124.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph103.i ], [ %i.ci, %middle.block ] ; 4 uses
  %i.di = sub nsw i64 %wide.trip.count122.i, %indvars.iv124.i.ph
  %i.dj = sub nsw i64 %i.cd, %indvars.iv124.i.ph
  %xtraiter183 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv124.i.prol = phi i64 [ %indvars.iv.next125.i.prol, %scalar.ph.prol ], [ %indvars.iv124.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i.prol
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !22
  %i.dm = lshr i32 %i.dl, %.068106.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv124.i.prol
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !22
  %indvars.iv.next125.i.prol = add nuw nsw i64 %indvars.iv124.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter183
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !74

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv124.i.unr = phi i64 [ %indvars.iv124.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next125.i.prol, %scalar.ph.prol ]
  %i.do = icmp ult i64 %i.dj, 3
  br i1 %i.do, label %._crit_edge104.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i.3, %scalar.ph ], [ %indvars.iv124.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !22
  %i.dr = lshr i32 %i.dq, %.068106.i
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv124.i
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !22
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !22
  %i.dv = lshr i32 %i.du, %.068106.i
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next125.i
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !22
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i.1
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !22
  %i.dz = lshr i32 %i.dy, %.068106.i
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next125.i.1
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !22
  %indvars.iv.next125.i.2 = add nuw nsw i64 %indvars.iv124.i, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i.2
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !22
  %i.ed = lshr i32 %i.ec, %.068106.i
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next125.i.2
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !22
  %indvars.iv.next125.i.3 = add nuw nsw i64 %indvars.iv124.i, 4 ; 2 uses
  %exitcond128.not.i.3 = icmp eq i64 %indvars.iv.next125.i.3, %wide.trip.count122.i
  br i1 %exitcond128.not.i.3, label %._crit_edge104.i, label %scalar.ph, !llvm.loop !75

._crit_edge104.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ef = add i32 %.068106.i, 1                   ; 2 uses
  %.not79.i = icmp ugt i32 %i.ef, %i.cg
  br i1 %.not79.i, label %._crit_edge108.split.i, label %.lr.ph103.i, !llvm.loop !76

._crit_edge108.split.i:                           ; preds = %._crit_edge104.i, %.preheader.i, %._crit_edge94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.eg = add nsw i32 %i.n, -11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i.i = icmp eq i32 %.073.lcssa.i, 0
  br i1 %.not56.i.i, label %HUF_readDTableX4.exit, label %.lr.ph55.preheader.i.i

.lr.ph55.preheader.i.i:                           ; preds = %._crit_edge108.split.i
  %wide.trip.count61.i.i = zext i32 %.073.lcssa.i to i64
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph55.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph55.preheader.i.i ], [ %indvars.iv.next59.i.i, %.loopexit.i.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv58.i.i ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !39
  %i.ej = zext i8 %i.ei to i32                    ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !40  ; 2 uses
  %i.em = zext i8 %i.el to i32
  %i.en = sub nsw i32 %i.ca, %i.em                ; 6 uses
  %i.eo = zext i8 %i.el to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !22 ; 5 uses
  %i.er = sub nsw i32 12, %i.en                   ; 3 uses
  %i.es = shl nuw i32 1, %i.er                    ; 2 uses
  %.not.i.i = icmp ult i32 %i.er, %i.cb
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph55.i.i
  %i.et = add nsw i32 %i.eg, %i.en                ; 2 uses
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.et, i32 1)
  %i.eu = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !22 ; 3 uses
  %i.ex = zext i32 %i.eq to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ex ; 4 uses
  %i.ez = zext i32 %i.en to i64
  %i.fa = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.ez
  %i.fb = zext i32 %i.ew to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.fb
  %i.fd = sub i32 %.073.lcssa.i, %i.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.fa, i64 68, i1 false)
  %i.fe = icmp sgt i32 %i.et, 1
  br i1 %i.fe, label %bb.d, label %.loopexit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eu
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !22 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %.sroa.6.0.insert.ext42.i.i.i = shl nuw nsw i32 %i.en, 16
  %.sroa.6.0.insert.shift43.i.i.i = and i32 %.sroa.6.0.insert.ext42.i.i.i, 16711680
  %.sroa.6.0.insert.insert45.i.i.i = or disjoint i32 %.sroa.6.0.insert.shift43.i.i.i, %i.ej
  %.sroa.0.0.insert.insert40.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert45.i.i.i, 16777216 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.fg to i64  ; 3 uses
  %min.iters.check141 = icmp ult i32 %i.fg, 8
  br i1 %min.iters.check141, label %scalar.ph140.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %.lr.ph.i.i.i
  %n.vec143 = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert40.i.i.i, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph142
  %index147 = phi i64 [ 0, %vector.ph142 ], [ %index.next148, %vector.body146 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index147 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <4 x i32> %broadcast.splat145, ptr %i.fh, align 4
  store <4 x i32> %broadcast.splat145, ptr %i.fi, align 4
  %index.next148 = add nuw i64 %index147, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.fj, label %middle.block149, label %vector.body146, !llvm.loop !77

middle.block149:                                  ; preds = %vector.body146
  %cmp.n150 = icmp eq i64 %n.vec143, %wide.trip.count.i.i.i
  br i1 %cmp.n150, label %.loopexit.i.i.i, label %scalar.ph140.preheader

scalar.ph140.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block149
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec143, %middle.block149 ]
  br label %scalar.ph140

scalar.ph140:                                     ; preds = %scalar.ph140.preheader, %scalar.ph140
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph140 ], [ %indvars.iv.i.i.i.ph, %scalar.ph140.preheader ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.i.i.i
  store i32 %.sroa.0.0.insert.insert40.i.i.i, ptr %i.fk, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %scalar.ph140, !llvm.loop !78

.loopexit.i.i.i:                                  ; preds = %scalar.ph140, %middle.block149, %bb.d, %bb.c
  %.not54.i.i.i = icmp eq i32 %.073.lcssa.i, %i.ew
  br i1 %.not54.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.preheader.i.i.i

.lr.ph53.preheader.i.i.i:                         ; preds = %.loopexit.i.i.i
  %wide.trip.count59.i.i.i = zext i32 %i.fd to i64
  %invariant.op.i.i = or disjoint i32 %i.ej, 33554432
  br label %.lr.ph53.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.loopexit, %.lr.ph53.preheader.i.i.i
  %indvars.iv56.i.i.i = phi i64 [ 0, %.lr.ph53.preheader.i.i.i ], [ %indvars.iv.next57.i.i.i, %.loopexit ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %indvars.iv56.i.i.i ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !39
  %i.fn = zext i8 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !40  ; 2 uses
  %i.fq = zext i8 %i.fp to i32
  %i.fr = sub nsw i32 %i.ca, %i.fq                ; 2 uses
  %i.fs = sub nsw i32 %i.er, %i.fr
  %i.ft = shl nuw i32 1, %i.fs
  %i.fu = zext i8 %i.fp to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !22 ; 9 uses
  %i.fx = add i32 %i.ft, %i.fw                    ; 4 uses
  %i.fy = shl nuw nsw i32 %i.fn, 8
  %i.fz = add nsw i32 %i.fr, %i.en
  %.sroa.6.0.insert.ext.i.i.i = shl nsw i32 %i.fz, 16
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 16711680
  %i.ga = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i, %i.fy
  %.sroa.0.0.insert.insert.i.reass.i.i = or disjoint i32 %i.ga, %invariant.op.i.i ; 2 uses
  %i.gb = add i32 %i.fw, 1
  %i.gc = tail call i32 @llvm.umax.i32(i32 %i.fx, i32 %i.gb)
  %i.gd = sub i32 %i.gc, %i.fw                    ; 3 uses
  %min.iters.check129 = icmp ult i32 %i.gd, 16
  br i1 %min.iters.check129, label %scalar.ph128.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph53.i.i.i
  %i.ge = add i32 %i.fw, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.fx, i32 %i.ge)
  %i.gf = add i32 %umax, -1
  %i.gg = icmp ult i32 %i.gf, %i.fw
  br i1 %i.gg, label %scalar.ph128.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %vector.scevcheck
  %n.vec131 = and i32 %i.gd, -8                   ; 3 uses
  %i.gh = add i32 %i.fw, %n.vec131
  %broadcast.splatinsert132 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.reass.i.i, i64 0
  %broadcast.splat133 = shufflevector <4 x i32> %broadcast.splatinsert132, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph130
end_hunk_0
