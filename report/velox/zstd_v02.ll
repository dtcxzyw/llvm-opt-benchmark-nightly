Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v02?download=true
inline.NumInlined: 356
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0_@HUF_decompress4X2:bb.a
  %i.rt = getelementptr inbounds i8, ptr %i.kh, i64 %i.rs ; 2 uses
  %i.ru = shl i32 %.024.i.i, 3
  %i.rv = sub i32 %i.pt, %i.ru
  %.val.i191.i = load i64, ptr %i.rt, align 1
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.au, %bb.at, %bb.ar, %bb.ap
  %i.rw = phi ptr [ %i.rt, %bb.au ], [ %i.rg, %bb.ar ], [ %i.kh, %bb.at ], [ %i.kh, %bb.ap ] ; 2 uses
  %.val7.i275.i = phi i32 [ %i.rv, %bb.au ], [ %i.rh, %bb.ar ], [ %i.pt, %bb.at ], [ %i.pt, %bb.ap ] ; 2 uses
  %.val.i191248.i = phi i64 [ %.val.i191.i, %bb.au ], [ %.val30.i.i, %bb.ar ], [ %.val.i191249262.i, %bb.at ], [ %.val.i191249262.i, %bb.ap ] ; 2 uses
  %.025.i.i = phi i32 [ %.0.i.i, %bb.au ], [ 0, %bb.ar ], [ %..i.i, %bb.at ], [ 3, %bb.ap ]
  %i.rx = icmp ugt i32 %i.qe, 64
  br i1 %i.rx, label %BIT_reloadDStream.exit200.i, label %bb.av

bb.av:                                            ; preds = %BIT_reloadDStream.exit.i
  %.not.i192.i = icmp ult ptr %i.kg, %i.jw
  br i1 %.not.i192.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ry = lshr i32 %i.qe, 3
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = sub nsw i64 0, %i.rz
  %i.sb = getelementptr inbounds i8, ptr %i.kg, i64 %i.sa ; 2 uses
  %i.sc = and i32 %i.qe, 7
  %.val30.i193.i = load i64, ptr %i.sb, align 1
  br label %BIT_reloadDStream.exit200.i

bb.ax:                                            ; preds = %bb.av
  %i.sd = icmp eq ptr %i.kg, %i.jv
  br i1 %i.sd, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %.not29.i198.i = icmp eq i32 %i.qe, 64
  %..i199.i = select i1 %.not29.i198.i, i32 2, i32 1
  br label %BIT_reloadDStream.exit200.i

bb.az:                                            ; preds = %bb.ax
  %i.se = lshr i32 %i.qe, 3                       ; 2 uses
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = sub nsw i64 0, %i.sf
  %i.sh = getelementptr inbounds i8, ptr %i.kg, i64 %i.sg
  %i.si = icmp ult ptr %i.sh, %i.jv               ; 2 uses
  %i.sj = ptrtoint ptr %i.kg to i64
  %i.sk = sub i64 %i.sj, %i.jx
  %i.sl = trunc i64 %i.sk to i32
  %.024.i195.i = select i1 %i.si, i32 %i.sl, i32 %i.se ; 2 uses
  %.0.i196.i = zext i1 %i.si to i32
  %i.sm = zext i32 %.024.i195.i to i64
  %i.sn = sub nsw i64 0, %i.sm
  %i.so = getelementptr inbounds i8, ptr %i.kg, i64 %i.sn ; 2 uses
  %i.sp = shl i32 %.024.i195.i, 3
  %i.sq = sub i32 %i.qe, %i.sp
  %.val.i197.i = load i64, ptr %i.so, align 1
  br label %BIT_reloadDStream.exit200.i

BIT_reloadDStream.exit200.i:                      ; preds = %bb.az, %bb.ay, %bb.aw, %BIT_reloadDStream.exit.i
  %i.sr = phi ptr [ %i.so, %bb.az ], [ %i.sb, %bb.aw ], [ %i.kg, %bb.ay ], [ %i.kg, %BIT_reloadDStream.exit.i ] ; 2 uses
  %.val7.i162278.i = phi i32 [ %i.sq, %bb.az ], [ %i.sc, %bb.aw ], [ %i.qe, %bb.ay ], [ %i.qe, %BIT_reloadDStream.exit.i ] ; 2 uses
  %.val.i197251.i = phi i64 [ %.val.i197.i, %bb.az ], [ %.val30.i193.i, %bb.aw ], [ %.val.i197252261.i, %bb.ay ], [ %.val.i197252261.i, %BIT_reloadDStream.exit.i ] ; 2 uses
  %.025.i194.i = phi i32 [ %.0.i196.i, %bb.az ], [ 0, %bb.aw ], [ %..i199.i, %bb.ay ], [ 3, %BIT_reloadDStream.exit.i ]
  %i.ss = or i32 %.025.i194.i, %.025.i.i
  %i.st = icmp ugt i32 %i.qp, 64
  br i1 %i.st, label %BIT_reloadDStream.exit209.i, label %bb.ba

bb.ba:                                            ; preds = %BIT_reloadDStream.exit200.i
  %.not.i201.i = icmp ult ptr %i.kf, %i.jz
  br i1 %.not.i201.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.su = lshr i32 %i.qp, 3
  %i.sv = zext nneg i32 %i.su to i64
  %i.sw = sub nsw i64 0, %i.sv
  %i.sx = getelementptr inbounds i8, ptr %i.kf, i64 %i.sw ; 2 uses
  %i.sy = and i32 %i.qp, 7
  %.val30.i202.i = load i64, ptr %i.sx, align 1
  br label %BIT_reloadDStream.exit209.i

bb.bc:                                            ; preds = %bb.ba
  %i.sz = icmp eq ptr %i.kf, %i.jy
  br i1 %i.sz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %.not29.i207.i = icmp eq i32 %i.qp, 64
  %..i208.i = select i1 %.not29.i207.i, i32 2, i32 1
  br label %BIT_reloadDStream.exit209.i

bb.be:                                            ; preds = %bb.bc
  %i.ta = lshr i32 %i.qp, 3                       ; 2 uses
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = sub nsw i64 0, %i.tb
  %i.td = getelementptr inbounds i8, ptr %i.kf, i64 %i.tc
  %i.te = icmp ult ptr %i.td, %i.jy               ; 2 uses
  %i.tf = ptrtoint ptr %i.kf to i64
  %i.tg = sub i64 %i.tf, %i.ka
  %i.th = trunc i64 %i.tg to i32
  %.024.i204.i = select i1 %i.te, i32 %i.th, i32 %i.ta ; 2 uses
  %.0.i205.i = zext i1 %i.te to i32
  %i.ti = zext i32 %.024.i204.i to i64
  %i.tj = sub nsw i64 0, %i.ti
  %i.tk = getelementptr inbounds i8, ptr %i.kf, i64 %i.tj ; 2 uses
  %i.tl = shl i32 %.024.i204.i, 3
  %i.tm = sub i32 %i.qp, %i.tl
  %.val.i206.i = load i64, ptr %i.tk, align 1
  br label %BIT_reloadDStream.exit209.i

BIT_reloadDStream.exit209.i:                      ; preds = %bb.be, %bb.bd, %bb.bb, %BIT_reloadDStream.exit200.i
  %i.tn = phi ptr [ %i.tk, %bb.be ], [ %i.sx, %bb.bb ], [ %i.kf, %bb.bd ], [ %i.kf, %BIT_reloadDStream.exit200.i ] ; 2 uses
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
  br i1 %i.un, label %bb.ap, label %._crit_edge.i20, !llvm.loop !68

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
  %i.uu = icmp ne i32 %i.ut, 64
  %i.uv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.uw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ux = load i32, ptr %i.uw, align 8
  %i.uy = icmp ne i32 %i.ux, 64
  %i.uz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.va = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.vb = load i32, ptr %i.va, align 8
  %i.vc = icmp ne i32 %i.vb, 64
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
  %op.rdx = select i1 %i.vu, i1 true, i1 %i.uu
  %8 = select i1 %op.rdx, i1 true, i1 %i.uy
  %op.rdx113 = select i1 %8, i1 true, i1 %i.vc
  %op.rdx114 = select i1 %op.rdx113, i1 true, i1 %i.vr
  %..i = select i1 %op.rdx114, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread.i

BIT_initDStream.exit.thread.i:                    ; preds = %BIT_endOfDStream.exit.i, %bb.bj, %bb.an, %bb.am, %bb.ae, %bb.ac, %bb.ab, %bb.t, %bb.r, %bb.q, %bb.i, %bb.g, %bb.f
  %.0136.i = phi i64 [ %..i, %BIT_endOfDStream.exit.i ], [ -20, %bb.f ], [ -20, %bb.bj ], [ -72, %bb.r ], [ -72, %bb.g ], [ %i.it, %bb.an ], [ -1, %bb.i ], [ -1, %bb.q ], [ -1, %bb.t ], [ -1, %bb.ab ], [ -1, %bb.ae ], [ -1, %bb.am ], [ -72, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %HUF_decompress4X2_usingDTable.exit

HUF_decompress4X2_usingDTable.exit:               ; preds = %BIT_initDStream.exit.thread.i, %bb.e, %HUF_readDTableX2.exit.thread, %HUF_readDTableX2.exit.thread23
  %.0 = phi i64 [ %.034.i.ph, %HUF_readDTableX2.exit.thread ], [ -20, %bb.e ], [ -72, %HUF_readDTableX2.exit.thread23 ], [ %.0136.i, %BIT_initDStream.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16388) %i.i, i8 0, i64 16388, i1 false)
  store i32 12, ptr %i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.d, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 23 uses
  %i.l = call fastcc i64 @HUF_readStats(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.g, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.m = icmp ult i64 %i.l, -119
  br i1 %i.m, label %bb.b, label %HUF_readDTableX4.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.g, align 4, !tbaa !22   ; 9 uses
  %i.o = icmp ugt i32 %i.n, 12
  br i1 %i.o, label %HUF_readDTableX4.exit.thread, label %.preheader83.i

.preheader83.i:                                   ; preds = %bb.b
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.preheader, label %.preheader82.i

.lr.ph.i.preheader:                               ; preds = %.preheader83.i
  %.not81.i112 = icmp eq i32 %i.n, 0
  br i1 %.not81.i112, label %HUF_readDTableX4.exit.thread, label %.lr.ph

.preheader82.loopexit.i:                          ; preds = %.lr.ph
  %i.t = trunc nuw nsw i64 %i.w to i32
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %.preheader82.loopexit.i, %.preheader83.i
  %.071.lcssa.i = phi i32 [ %i.n, %.preheader83.i ], [ %i.t, %.preheader82.loopexit.i ] ; 11 uses
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
  br i1 %.not81.i, label %HUF_readDTableX4.exit.thread, label %.lr.ph, !llvm.loop !69

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i113 = phi i64 [ %i.w, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %i.w = add nsw i64 %indvars.iv.i113, -1         ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %.preheader82.loopexit.i, !llvm.loop !69

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
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph89.i, !llvm.loop !70

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph89.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph89.i.epil.preheader

.lr.ph89.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph89.preheader.i
  %indvars.iv111.i.epil.init = phi i64 [ 1, %.lr.ph89.preheader.i ], [ %indvars.iv.next112.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07388.i.epil.init = phi i32 [ 0, %.lr.ph89.preheader.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod169.a = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod169.a)
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
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph89.i.epil, !llvm.loop !71

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph89.i.epil, %.preheader82.i
  %.073.lcssa.i = phi i32 [ 0, %.preheader82.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph89.i.epil ] ; 5 uses
  store i32 %.073.lcssa.i, ptr %i.j, align 4, !tbaa !22
  %i.au = load i32, ptr %i.h, align 4, !tbaa !22  ; 4 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %._crit_edge94.i, label %.lr.ph93.preheader.i

.lr.ph93.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count117.i = zext i32 %i.au to i64   ; 2 uses
  %xtraiter170 = and i64 %wide.trip.count117.i, 1
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.lr.ph93.i.epil.preheader, label %.lr.ph93.preheader.i.new

.lr.ph93.preheader.i.new:                         ; preds = %.lr.ph93.preheader.i
  %unroll_iter174 = and i64 %wide.trip.count117.i, 4294967294
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i, %.lr.ph93.preheader.i.new
  %indvars.iv114.i = phi i64 [ 0, %.lr.ph93.preheader.i.new ], [ %indvars.iv.next115.i.1, %.lr.ph93.i ] ; 4 uses
  %niter175 = phi i64 [ 0, %.lr.ph93.preheader.i.new ], [ %niter175.next.1, %.lr.ph93.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv114.i
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !15  ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !22 ; 2 uses
  %i.bb = add nuw i32 %i.ba, 1
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
  %i.bl = add nuw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !22
  %i.bm = trunc i64 %indvars.iv.next115.i to i8
  %i.bn = zext i32 %i.bk to i64
end_hunk_0
begin_hunk_1_@HUF_decompress4X4:bb.a
  %i.zn = getelementptr inbounds i8, ptr %i.qf, i64 %i.zm ; 2 uses
  %i.zo = shl i32 %.024.i.i, 3
  %i.zp = sub i32 %i.xb, %i.zo
  %.val.i207.i = load i64, ptr %i.zn, align 1
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.av, %bb.au, %bb.as, %bb.aq
  %i.zq = phi ptr [ %i.zn, %bb.av ], [ %i.za, %bb.as ], [ %i.qf, %bb.au ], [ %i.qf, %bb.aq ] ; 2 uses
  %.val9.i291.i = phi i32 [ %i.zp, %bb.av ], [ %i.zb, %bb.as ], [ %i.xb, %bb.au ], [ %i.xb, %bb.aq ] ; 2 uses
  %.val.i207264.i = phi i64 [ %.val.i207.i, %bb.av ], [ %.val30.i.i, %bb.as ], [ %.val.i207265278.i, %bb.au ], [ %.val.i207265278.i, %bb.aq ] ; 2 uses
  %.025.i.i = phi i32 [ %.0.i.i, %bb.av ], [ 0, %bb.as ], [ %..i.i, %bb.au ], [ 3, %bb.aq ]
  %i.zr = icmp ugt i32 %i.xp, 64
  br i1 %i.zr, label %BIT_reloadDStream.exit216.i, label %bb.aw

bb.aw:                                            ; preds = %BIT_reloadDStream.exit.i
  %.not.i208.i = icmp ult ptr %i.qe, %i.pu
  br i1 %.not.i208.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.zs = lshr i32 %i.xp, 3
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = sub nsw i64 0, %i.zt
  %i.zv = getelementptr inbounds i8, ptr %i.qe, i64 %i.zu ; 2 uses
  %i.zw = and i32 %i.xp, 7
  %.val30.i209.i = load i64, ptr %i.zv, align 1
  br label %BIT_reloadDStream.exit216.i

bb.ay:                                            ; preds = %bb.aw
  %i.zx = icmp eq ptr %i.qe, %i.pt
  br i1 %i.zx, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.not29.i214.i = icmp eq i32 %i.xp, 64
  %..i215.i = select i1 %.not29.i214.i, i32 2, i32 1
  br label %BIT_reloadDStream.exit216.i

bb.ba:                                            ; preds = %bb.ay
  %i.zy = lshr i32 %i.xp, 3                       ; 2 uses
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = sub nsw i64 0, %i.zz
  %i.aab = getelementptr inbounds i8, ptr %i.qe, i64 %i.aaa
  %i.aac = icmp ult ptr %i.aab, %i.pt             ; 2 uses
  %i.aad = ptrtoint ptr %i.qe to i64
  %i.aae = sub i64 %i.aad, %i.pv
  %i.aaf = trunc i64 %i.aae to i32
  %.024.i211.i = select i1 %i.aac, i32 %i.aaf, i32 %i.zy ; 2 uses
  %.0.i212.i = zext i1 %i.aac to i32
  %i.aag = zext i32 %.024.i211.i to i64
  %i.aah = sub nsw i64 0, %i.aag
  %i.aai = getelementptr inbounds i8, ptr %i.qe, i64 %i.aah ; 2 uses
  %i.aaj = shl i32 %.024.i211.i, 3
  %i.aak = sub i32 %i.xp, %i.aaj
  %.val.i213.i = load i64, ptr %i.aai, align 1
  br label %BIT_reloadDStream.exit216.i

BIT_reloadDStream.exit216.i:                      ; preds = %bb.ba, %bb.az, %bb.ax, %BIT_reloadDStream.exit.i
  %i.aal = phi ptr [ %i.aai, %bb.ba ], [ %i.zv, %bb.ax ], [ %i.qe, %bb.az ], [ %i.qe, %BIT_reloadDStream.exit.i ] ; 2 uses
  %.val9.i178294.i = phi i32 [ %i.aak, %bb.ba ], [ %i.zw, %bb.ax ], [ %i.xp, %bb.az ], [ %i.xp, %BIT_reloadDStream.exit.i ] ; 2 uses
  %.val.i213267.i = phi i64 [ %.val.i213.i, %bb.ba ], [ %.val30.i209.i, %bb.ax ], [ %.val.i213268277.i, %bb.az ], [ %.val.i213268277.i, %BIT_reloadDStream.exit.i ] ; 2 uses
  %.025.i210.i = phi i32 [ %.0.i212.i, %bb.ba ], [ 0, %bb.ax ], [ %..i215.i, %bb.az ], [ 3, %BIT_reloadDStream.exit.i ]
  %i.aam = or i32 %.025.i210.i, %.025.i.i
  %i.aan = icmp ugt i32 %i.yd, 64
  br i1 %i.aan, label %BIT_reloadDStream.exit225.i, label %bb.bb

bb.bb:                                            ; preds = %BIT_reloadDStream.exit216.i
  %.not.i217.i = icmp ult ptr %i.qd, %i.px
  br i1 %.not.i217.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.aao = lshr i32 %i.yd, 3
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = sub nsw i64 0, %i.aap
  %i.aar = getelementptr inbounds i8, ptr %i.qd, i64 %i.aaq ; 2 uses
  %i.aas = and i32 %i.yd, 7
  %.val30.i218.i = load i64, ptr %i.aar, align 1
  br label %BIT_reloadDStream.exit225.i

bb.bd:                                            ; preds = %bb.bb
  %i.aat = icmp eq ptr %i.qd, %i.pw
  br i1 %i.aat, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %.not29.i223.i = icmp eq i32 %i.yd, 64
  %..i224.i = select i1 %.not29.i223.i, i32 2, i32 1
  br label %BIT_reloadDStream.exit225.i

bb.bf:                                            ; preds = %bb.bd
  %i.aau = lshr i32 %i.yd, 3                      ; 2 uses
  %i.aav = zext nneg i32 %i.aau to i64
  %i.aaw = sub nsw i64 0, %i.aav
  %i.aax = getelementptr inbounds i8, ptr %i.qd, i64 %i.aaw
  %i.aay = icmp ult ptr %i.aax, %i.pw             ; 2 uses
  %i.aaz = ptrtoint ptr %i.qd to i64
  %i.aba = sub i64 %i.aaz, %i.py
  %i.abb = trunc i64 %i.aba to i32
  %.024.i220.i = select i1 %i.aay, i32 %i.abb, i32 %i.aau ; 2 uses
  %.0.i221.i = zext i1 %i.aay to i32
  %i.abc = zext i32 %.024.i220.i to i64
  %i.abd = sub nsw i64 0, %i.abc
  %i.abe = getelementptr inbounds i8, ptr %i.qd, i64 %i.abd ; 2 uses
  %i.abf = shl i32 %.024.i220.i, 3
  %i.abg = sub i32 %i.yd, %i.abf
  %.val.i222.i = load i64, ptr %i.abe, align 1
  br label %BIT_reloadDStream.exit225.i

BIT_reloadDStream.exit225.i:                      ; preds = %bb.bf, %bb.be, %bb.bc, %BIT_reloadDStream.exit216.i
  %i.abh = phi ptr [ %i.abe, %bb.bf ], [ %i.aar, %bb.bc ], [ %i.qd, %bb.be ], [ %i.qd, %BIT_reloadDStream.exit216.i ] ; 2 uses
  %.val9.i180297.i = phi i32 [ %i.abg, %bb.bf ], [ %i.aas, %bb.bc ], [ %i.yd, %bb.be ], [ %i.yd, %BIT_reloadDStream.exit216.i ] ; 2 uses
  %.val.i222270.i = phi i64 [ %.val.i222.i, %bb.bf ], [ %.val30.i218.i, %bb.bc ], [ %.val.i222271276.i, %bb.be ], [ %.val.i222271276.i, %BIT_reloadDStream.exit216.i ] ; 2 uses
  %.025.i219.i = phi i32 [ %.0.i221.i, %bb.bf ], [ 0, %bb.bc ], [ %..i224.i, %bb.be ], [ 3, %BIT_reloadDStream.exit216.i ]
  %i.abi = or i32 %i.aam, %.025.i219.i
  %i.abj = icmp ugt i32 %i.yr, 64
  br i1 %i.abj, label %BIT_reloadDStream.exit234.i, label %bb.bg

bb.bg:                                            ; preds = %BIT_reloadDStream.exit225.i
  %.not.i226.i = icmp ult ptr %i.qc, %i.qa
  br i1 %.not.i226.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.abk = lshr i32 %i.yr, 3
  %i.abl = zext nneg i32 %i.abk to i64
  %i.abm = sub nsw i64 0, %i.abl
  %i.abn = getelementptr inbounds i8, ptr %i.qc, i64 %i.abm ; 2 uses
  %i.abo = and i32 %i.yr, 7
  %.val30.i227.i = load i64, ptr %i.abn, align 1
  br label %BIT_reloadDStream.exit234.i

bb.bi:                                            ; preds = %bb.bg
  %i.abp = icmp eq ptr %i.qc, %i.pz
  br i1 %i.abp, label %BIT_reloadDStream.exit234.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.abq = lshr i32 %i.yr, 3                      ; 2 uses
  %i.abr = zext nneg i32 %i.abq to i64
  %i.abs = sub nsw i64 0, %i.abr
  %i.abt = getelementptr inbounds i8, ptr %i.qc, i64 %i.abs
  %i.abu = icmp ult ptr %i.abt, %i.pz             ; 2 uses
  %i.abv = ptrtoint ptr %i.qc to i64
  %i.abw = sub i64 %i.abv, %i.qb
  %i.abx = trunc i64 %i.abw to i32
  %.024.i229.i = select i1 %i.abu, i32 %i.abx, i32 %i.abq ; 2 uses
  %.0.i230.i = zext i1 %i.abu to i32
  %i.aby = zext i32 %.024.i229.i to i64
  %i.abz = sub nsw i64 0, %i.aby
  %i.aca = getelementptr inbounds i8, ptr %i.qc, i64 %i.abz ; 2 uses
  %i.acb = shl i32 %.024.i229.i, 3
  %i.acc = sub i32 %i.yr, %i.acb
  %.val.i231.i = load i64, ptr %i.aca, align 1
  br label %BIT_reloadDStream.exit234.i

BIT_reloadDStream.exit234.i:                      ; preds = %bb.bj, %bb.bi, %bb.bh, %BIT_reloadDStream.exit225.i
  %i.acd = phi ptr [ %i.aca, %bb.bj ], [ %i.abn, %bb.bh ], [ %i.qc, %BIT_reloadDStream.exit225.i ], [ %i.qc, %bb.bi ] ; 2 uses
  %.val9.i182300.i = phi i32 [ %i.acc, %bb.bj ], [ %i.abo, %bb.bh ], [ %i.yr, %BIT_reloadDStream.exit225.i ], [ %i.yr, %bb.bi ] ; 2 uses
  %.val.i231273.i = phi i64 [ %.val.i231.i, %bb.bj ], [ %.val30.i227.i, %bb.bh ], [ %.val.i231274275.i, %BIT_reloadDStream.exit225.i ], [ %.val.i231274275.i, %bb.bi ] ; 2 uses
  %.025.i228.i = phi i32 [ %.0.i230.i, %bb.bj ], [ 0, %bb.bh ], [ 3, %BIT_reloadDStream.exit225.i ], [ 3, %bb.bi ]
  %i.ace = or i32 %i.abi, %.025.i228.i
  %i.acf = icmp eq i32 %i.ace, 0
  %i.acg = icmp ult ptr %i.yv, %i.pd
  %i.ach = select i1 %i.acf, i1 %i.acg, i1 false
  br i1 %i.ach, label %bb.aq, label %._crit_edge.i21, !llvm.loop !86

._crit_edge.i21:                                  ; preds = %BIT_reloadDStream.exit234.i
  store i32 %.val9.i291.i, ptr %i.ph, align 8, !tbaa !37
  store i32 %.val9.i178294.i, ptr %i.pi, align 8, !tbaa !37
  store i32 %.val9.i180297.i, ptr %i.pj, align 8, !tbaa !37
  store i32 %.val9.i182300.i, ptr %i.pk, align 8, !tbaa !37
  store ptr %i.zq, ptr %i.pl, align 8
  store ptr %i.aal, ptr %i.pm, align 8
  store ptr %i.abh, ptr %i.pn, align 8
  store ptr %i.acd, ptr %i.po, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i21, %bb.ap
  %.val.i231274.lcssa.i = phi i64 [ %.val.i231273.i, %._crit_edge.i21 ], [ %.promoted272.i, %bb.ap ]
  %.val.i222271.lcssa.i = phi i64 [ %.val.i222270.i, %._crit_edge.i21 ], [ %.promoted269.i, %bb.ap ]
  %.val.i213268.lcssa.i = phi i64 [ %.val.i213267.i, %._crit_edge.i21 ], [ %.promoted266.i, %bb.ap ]
  %.val.i207265.lcssa.i = phi i64 [ %.val.i207264.i, %._crit_edge.i21 ], [ %.promoted.i, %bb.ap ]
  %.0149.lcssa.i = phi ptr [ %i.xf, %._crit_edge.i21 ], [ %0, %bb.ap ] ; 2 uses
  %.0146.lcssa.i = phi ptr [ %i.xt, %._crit_edge.i21 ], [ %i.hr, %bb.ap ] ; 2 uses
  %.0143.lcssa.i = phi ptr [ %i.yh, %._crit_edge.i21 ], [ %i.hs, %bb.ap ] ; 2 uses
  %.0142.lcssa.i = phi ptr [ %i.yv, %._crit_edge.i21 ], [ %i.ht, %bb.ap ]
  store i64 %.val.i207265.lcssa.i, ptr %4, align 8
  store i64 %.val.i213268.lcssa.i, ptr %5, align 8
  store i64 %.val.i222271.lcssa.i, ptr %6, align 8
  store i64 %.val.i231274.lcssa.i, ptr %7, align 8
  %i.aci = icmp ugt ptr %.0149.lcssa.i, %i.hr
  %i.acj = icmp ugt ptr %.0146.lcssa.i, %i.hs
  %or.cond.i = select i1 %i.aci, i1 true, i1 %i.acj
  %i.ack = icmp ugt ptr %.0143.lcssa.i, %i.ht
  %or.cond163.i = select i1 %or.cond.i, i1 true, i1 %i.ack
  br i1 %or.cond163.i, label %BIT_initDStream.exit.thread.i, label %BIT_endOfDStream.exit.i

BIT_endOfDStream.exit.i:                          ; preds = %bb.bk
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0149.lcssa.i, ptr noundef %4, ptr noundef %i.hr, ptr noundef readonly %i.k, i32 noundef 12)
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0146.lcssa.i, ptr noundef %5, ptr noundef %i.hs, ptr noundef readonly %i.k, i32 noundef 12)
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0143.lcssa.i, ptr noundef %6, ptr noundef %i.ht, ptr noundef readonly %i.k, i32 noundef 12)
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0142.lcssa.i, ptr noundef %7, ptr noundef %i.hf, ptr noundef readonly %i.k, i32 noundef 12)
  %i.acl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.acm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.acn = load i32, ptr %i.acm, align 8
  %i.aco = icmp ne i32 %i.acn, 64
  %i.acp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.acq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.acr = load i32, ptr %i.acq, align 8
  %i.acs = icmp ne i32 %i.acr, 64
  %i.act = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.acu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.acv = load i32, ptr %i.acu, align 8
  %i.acw = icmp ne i32 %i.acv, 64
  %i.acx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.acy = load <2 x ptr>, ptr %i.acl, align 8, !tbaa !41 ; 2 uses
  %i.acz = load <2 x ptr>, ptr %i.acp, align 8, !tbaa !41 ; 2 uses
  %i.ada = load <2 x ptr>, ptr %i.act, align 8, !tbaa !41 ; 2 uses
  %i.adb = load <2 x ptr>, ptr %i.acx, align 8, !tbaa !41 ; 2 uses
  %i.adc = shufflevector <2 x ptr> %i.acy, <2 x ptr> %i.acz, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.add = shufflevector <2 x ptr> %i.ada, <2 x ptr> %i.adb, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.ade = shufflevector <4 x ptr> %i.adc, <4 x ptr> %i.add, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adf = shufflevector <2 x ptr> %i.acy, <2 x ptr> %i.acz, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.adg = shufflevector <2 x ptr> %i.ada, <2 x ptr> %i.adb, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.adh = shufflevector <4 x ptr> %i.adf, <4 x ptr> %i.adg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adi = icmp ne <4 x ptr> %i.ade, %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.adk = load i32, ptr %i.adj, align 8
  %i.adl = icmp ne i32 %i.adk, 64
  %i.adm = freeze <4 x i1> %i.adi
  %i.adn = bitcast <4 x i1> %i.adm to i4
  %i.ado = icmp ne i4 %i.adn, 0
  %op.rdx = select i1 %i.ado, i1 true, i1 %i.aco
  %9 = select i1 %op.rdx, i1 true, i1 %i.acs
  %op.rdx152 = select i1 %9, i1 true, i1 %i.acw
  %op.rdx153 = select i1 %op.rdx152, i1 true, i1 %i.adl
  %..i = select i1 %op.rdx153, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread.i

BIT_initDStream.exit.thread.i:                    ; preds = %BIT_endOfDStream.exit.i, %bb.bk, %bb.ao, %bb.an, %bb.af, %bb.ad, %bb.ac, %bb.u, %bb.s, %bb.r, %bb.j, %bb.h, %bb.g
  %.0152.i = phi i64 [ %..i, %BIT_endOfDStream.exit.i ], [ -20, %bb.g ], [ -20, %bb.bk ], [ -72, %bb.s ], [ -72, %bb.h ], [ %i.ou, %bb.ao ], [ -1, %bb.j ], [ -1, %bb.r ], [ -1, %bb.u ], [ -1, %bb.ac ], [ -1, %bb.af ], [ -1, %bb.an ], [ -72, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %HUF_decompress4X4_usingDTable.exit

HUF_decompress4X4_usingDTable.exit:               ; preds = %BIT_initDStream.exit.thread.i, %bb.f, %HUF_readDTableX4.exit.thread, %HUF_readDTableX4.exit
  %.0 = phi i64 [ %.0.i.ph, %HUF_readDTableX4.exit.thread ], [ -20, %bb.f ], [ -72, %HUF_readDTableX4.exit ], [ %.0152.i, %BIT_initDStream.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  ret i64 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @HUF_decompress4X6(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #10 {
bb.a:
  %4 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %5 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %6 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %7 = alloca %struct.BIT_DStream_t, align 8      ; 12 uses
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %8 = alloca [256 x %struct.sortedSymbol_t], align 16 ; 7 uses
  %i.b = alloca [17 x i32], align 16              ; 14 uses
  %i.c = alloca [18 x i32], align 16              ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca [16 x [17 x i32]], align 16       ; 14 uses
  %i.g = alloca [6145 x i32], align 16            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24580) %i.g, i8 0, i64 24580, i1 false)
  store i32 12, ptr %i.g, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.i = call fastcc i64 @HUF_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.e, ptr noundef %i.d, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.j = icmp ult i64 %i.i, -119
  br i1 %i.j, label %bb.b, label %HUF_readDTableX6.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.d, align 4, !tbaa !22   ; 8 uses
  %i.l = icmp ugt i32 %i.k, 12
  br i1 %i.l, label %HUF_readDTableX6.exit.thread, label %.preheader88.i

.preheader88.i:                                   ; preds = %bb.b
  %i.m = zext nneg i32 %i.k to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.preheader, label %.preheader87.i

.lr.ph.i.preheader:                               ; preds = %.preheader88.i
  %.not86.i105 = icmp eq i32 %i.k, 0
  br i1 %.not86.i105, label %HUF_readDTableX6.exit.thread, label %.lr.ph

.preheader87.loopexit.i:                          ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %i.t to i32
  br label %.preheader87.i

.preheader87.i:                                   ; preds = %.preheader87.loopexit.i, %.preheader88.i
  %.073.lcssa.i = phi i32 [ %i.k, %.preheader88.i ], [ %i.q, %.preheader87.loopexit.i ] ; 12 uses
  %.not8291.i = icmp eq i32 %.073.lcssa.i, 0      ; 2 uses
  br i1 %.not8291.i, label %._crit_edge.i, label %.lr.ph94.preheader.i

.lr.ph94.preheader.i:                             ; preds = %.preheader87.i
  %i.r = zext i32 %.073.lcssa.i to i64            ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = icmp ult i32 %.073.lcssa.i, 4
  br i1 %i.s, label %.lr.ph94.i.epil.preheader, label %.lr.ph94.preheader.i.new

.lr.ph94.preheader.i.new:                         ; preds = %.lr.ph94.preheader.i
  %unroll_iter = and i64 %i.r, 4294967292
  br label %.lr.ph94.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not86.i = icmp eq i64 %i.t, 0
  br i1 %.not86.i, label %HUF_readDTableX6.exit.thread, label %.lr.ph, !llvm.loop !87

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i106 = phi i64 [ %i.t, %.lr.ph.i ], [ %i.m, %.lr.ph.i.preheader ]
  %i.t = add nsw i64 %indvars.iv.i106, -1         ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !22
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %.preheader87.loopexit.i, !llvm.loop !87

.lr.ph94.i:                                       ; preds = %.lr.ph94.i, %.lr.ph94.preheader.i.new
  %indvars.iv116.i = phi i64 [ 1, %.lr.ph94.preheader.i.new ], [ %indvars.iv.next117.i.3, %.lr.ph94.i ] ; 6 uses
  %.07892.i = phi i32 [ 0, %.lr.ph94.preheader.i.new ], [ %i.al, %.lr.ph94.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph94.preheader.i.new ], [ %niter.next.3, %.lr.ph94.i ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %i.z = add i32 %i.y, %.07892.i                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv116.i
  store i32 %.07892.i, ptr %i.aa, align 4, !tbaa !22
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = add i32 %i.ac, %i.z                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next117.i
  store i32 %i.z, ptr %i.ae, align 4, !tbaa !22
  %indvars.iv.next117.i.1 = add nuw nsw i64 %indvars.iv116.i, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.i.1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next117.i.1
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !22
  %indvars.iv.next117.i.2 = add nuw nsw i64 %indvars.iv116.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.i.2
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !22
  %i.al = add i32 %i.ak, %i.ah                    ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next117.i.2
  store i32 %i.ah, ptr %i.am, align 4, !tbaa !22
  %indvars.iv.next117.i.3 = add nuw nsw i64 %indvars.iv116.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph94.i, !llvm.loop !88

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph94.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph94.i.epil.preheader

.lr.ph94.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph94.preheader.i
  %indvars.iv116.i.epil.init = phi i64 [ 1, %.lr.ph94.preheader.i ], [ %indvars.iv.next117.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07892.i.epil.init = phi i32 [ 0, %.lr.ph94.preheader.i ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod126.a = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod126.a)
  br label %.lr.ph94.i.epil

.lr.ph94.i.epil:                                  ; preds = %.lr.ph94.i.epil, %.lr.ph94.i.epil.preheader
  %indvars.iv116.i.epil = phi i64 [ %indvars.iv116.i.epil.init, %.lr.ph94.i.epil.preheader ], [ %indvars.iv.next117.i.epil, %.lr.ph94.i.epil ] ; 3 uses
  %.07892.i.epil = phi i32 [ %.07892.i.epil.init, %.lr.ph94.i.epil.preheader ], [ %i.ap, %.lr.ph94.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph94.i.epil.preheader ], [ %epil.iter.next, %.lr.ph94.i.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116.i.epil
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = add i32 %i.ao, %.07892.i.epil           ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv116.i.epil
  store i32 %.07892.i.epil, ptr %i.aq, align 4, !tbaa !22
  %indvars.iv.next117.i.epil = add nuw nsw i64 %indvars.iv116.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph94.i.epil, !llvm.loop !89

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph94.i.epil, %.preheader87.i
  %.078.lcssa.i = phi i32 [ 0, %.preheader87.i ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph94.i.epil ] ; 2 uses
  store i32 %.078.lcssa.i, ptr %i.h, align 4, !tbaa !22
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !22  ; 4 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %._crit_edge99.i, label %.lr.ph98.preheader.i

.lr.ph98.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count122.i = zext i32 %i.ar to i64   ; 2 uses
  %xtraiter127 = and i64 %wide.trip.count122.i, 1
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph98.i.epil.preheader, label %.lr.ph98.preheader.i.new

.lr.ph98.preheader.i.new:                         ; preds = %.lr.ph98.preheader.i
  %unroll_iter131 = and i64 %wide.trip.count122.i, 4294967294
  br label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.i, %.lr.ph98.preheader.i.new
  %indvars.iv119.i = phi i64 [ 0, %.lr.ph98.preheader.i.new ], [ %indvars.iv.next120.i.1, %.lr.ph98.i ] ; 4 uses
  %niter132 = phi i64 [ 0, %.lr.ph98.preheader.i.new ], [ %niter132.next.1, %.lr.ph98.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv119.i
  %i.au = load i8, ptr %i.at, align 2, !tbaa !15  ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !22 ; 2 uses
  %i.ay = add nuw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !22
  %i.az = trunc i64 %indvars.iv119.i to i8
  %i.ba = zext i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ba ; 2 uses
  store i8 %i.az, ptr %i.bb, align 2, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.au, ptr %i.bc, align 1, !tbaa !40
  %indvars.iv.next120.i = or disjoint i64 %indvars.iv119.i, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next120.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15  ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22 ; 2 uses
  %i.bi = add nuw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !22
  %i.bj = trunc i64 %indvars.iv.next120.i to i8
  %i.bk = zext i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bk ; 2 uses
  store i8 %i.bj, ptr %i.bl, align 2, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
end_hunk_1
begin_hunk_2_@HUF_decompress4X6:bb.a
  %i.xb = sub i32 %i.un, %i.xa
  %.val.i232.i = load i64, ptr %i.wz, align 1
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.as, %bb.ar, %bb.ap, %bb.an
  %i.xc = phi ptr [ %i.wz, %bb.as ], [ %i.wm, %bb.ap ], [ %i.nr, %bb.ar ], [ %i.nr, %bb.an ] ; 2 uses
  %.val9.i321.i = phi i32 [ %i.xb, %bb.as ], [ %i.wn, %bb.ap ], [ %i.un, %bb.ar ], [ %i.un, %bb.an ] ; 2 uses
  %.val.i232291.i = phi i64 [ %.val.i232.i, %bb.as ], [ %.val30.i.i, %bb.ap ], [ %.val.i232292308.i, %bb.ar ], [ %.val.i232292308.i, %bb.an ] ; 2 uses
  %.025.i.i = phi i32 [ %.0.i.i, %bb.as ], [ 0, %bb.ap ], [ %..i.i, %bb.ar ], [ 3, %bb.an ]
  %i.xd = icmp ugt i32 %i.vb, 64
  br i1 %i.xd, label %BIT_reloadDStream.exit241.i, label %bb.at

bb.at:                                            ; preds = %BIT_reloadDStream.exit.i
  %.not.i233.i = icmp ult ptr %i.nq, %i.ng
  br i1 %.not.i233.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.xe = lshr i32 %i.vb, 3
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = sub nsw i64 0, %i.xf
  %i.xh = getelementptr inbounds i8, ptr %i.nq, i64 %i.xg ; 2 uses
  %i.xi = and i32 %i.vb, 7
  %.val30.i234.i = load i64, ptr %i.xh, align 1
  br label %BIT_reloadDStream.exit241.i

bb.av:                                            ; preds = %bb.at
  %i.xj = icmp eq ptr %i.nq, %i.nf
  br i1 %i.xj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %.not29.i239.i = icmp eq i32 %i.vb, 64
  %..i240.i = select i1 %.not29.i239.i, i32 2, i32 1
  br label %BIT_reloadDStream.exit241.i

bb.ax:                                            ; preds = %bb.av
  %i.xk = lshr i32 %i.vb, 3                       ; 2 uses
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = sub nsw i64 0, %i.xl
  %i.xn = getelementptr inbounds i8, ptr %i.nq, i64 %i.xm
  %i.xo = icmp ult ptr %i.xn, %i.nf               ; 2 uses
  %i.xp = ptrtoint ptr %i.nq to i64
  %i.xq = sub i64 %i.xp, %i.nh
  %i.xr = trunc i64 %i.xq to i32
  %.024.i236.i = select i1 %i.xo, i32 %i.xr, i32 %i.xk ; 2 uses
  %.0.i237.i = zext i1 %i.xo to i32
  %i.xs = zext i32 %.024.i236.i to i64
  %i.xt = sub nsw i64 0, %i.xs
  %i.xu = getelementptr inbounds i8, ptr %i.nq, i64 %i.xt ; 2 uses
  %i.xv = shl i32 %.024.i236.i, 3
  %i.xw = sub i32 %i.vb, %i.xv
  %.val.i238.i = load i64, ptr %i.xu, align 1
  br label %BIT_reloadDStream.exit241.i

BIT_reloadDStream.exit241.i:                      ; preds = %bb.ax, %bb.aw, %bb.au, %BIT_reloadDStream.exit.i
  %i.xx = phi ptr [ %i.xu, %bb.ax ], [ %i.xh, %bb.au ], [ %i.nq, %bb.aw ], [ %i.nq, %BIT_reloadDStream.exit.i ] ; 2 uses
  %.val9.i203324.i = phi i32 [ %i.xw, %bb.ax ], [ %i.xi, %bb.au ], [ %i.vb, %bb.aw ], [ %i.vb, %BIT_reloadDStream.exit.i ] ; 2 uses
  %.val.i238294.i = phi i64 [ %.val.i238.i, %bb.ax ], [ %.val30.i234.i, %bb.au ], [ %.val.i238295307.i, %bb.aw ], [ %.val.i238295307.i, %BIT_reloadDStream.exit.i ] ; 2 uses
  %.025.i235.i = phi i32 [ %.0.i237.i, %bb.ax ], [ 0, %bb.au ], [ %..i240.i, %bb.aw ], [ 3, %BIT_reloadDStream.exit.i ]
  %i.xy = or i32 %.025.i235.i, %.025.i.i
  %i.xz = icmp ugt i32 %i.vp, 64
  br i1 %i.xz, label %BIT_reloadDStream.exit250.i, label %bb.ay

bb.ay:                                            ; preds = %BIT_reloadDStream.exit241.i
  %.not.i242.i = icmp ult ptr %i.np, %i.nj
  br i1 %.not.i242.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ya = lshr i32 %i.vp, 3
  %i.yb = zext nneg i32 %i.ya to i64
  %i.yc = sub nsw i64 0, %i.yb
  %i.yd = getelementptr inbounds i8, ptr %i.np, i64 %i.yc ; 2 uses
  %i.ye = and i32 %i.vp, 7
  %.val30.i243.i = load i64, ptr %i.yd, align 1
  br label %BIT_reloadDStream.exit250.i

bb.ba:                                            ; preds = %bb.ay
  %i.yf = icmp eq ptr %i.np, %i.ni
  br i1 %i.yf, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.not29.i248.i = icmp eq i32 %i.vp, 64
  %..i249.i = select i1 %.not29.i248.i, i32 2, i32 1
  br label %BIT_reloadDStream.exit250.i

bb.bc:                                            ; preds = %bb.ba
  %i.yg = lshr i32 %i.vp, 3                       ; 2 uses
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = sub nsw i64 0, %i.yh
  %i.yj = getelementptr inbounds i8, ptr %i.np, i64 %i.yi
  %i.yk = icmp ult ptr %i.yj, %i.ni               ; 2 uses
  %i.yl = ptrtoint ptr %i.np to i64
  %i.ym = sub i64 %i.yl, %i.nk
  %i.yn = trunc i64 %i.ym to i32
  %.024.i245.i = select i1 %i.yk, i32 %i.yn, i32 %i.yg ; 2 uses
  %.0.i246.i = zext i1 %i.yk to i32
  %i.yo = zext i32 %.024.i245.i to i64
  %i.yp = sub nsw i64 0, %i.yo
  %i.yq = getelementptr inbounds i8, ptr %i.np, i64 %i.yp ; 2 uses
  %i.yr = shl i32 %.024.i245.i, 3
  %i.ys = sub i32 %i.vp, %i.yr
  %.val.i247.i = load i64, ptr %i.yq, align 1
  br label %BIT_reloadDStream.exit250.i

BIT_reloadDStream.exit250.i:                      ; preds = %bb.bc, %bb.bb, %bb.az, %BIT_reloadDStream.exit241.i
  %i.yt = phi ptr [ %i.yq, %bb.bc ], [ %i.yd, %bb.az ], [ %i.np, %bb.bb ], [ %i.np, %BIT_reloadDStream.exit241.i ] ; 2 uses
  %.val9.i205327.i = phi i32 [ %i.ys, %bb.bc ], [ %i.ye, %bb.az ], [ %i.vp, %bb.bb ], [ %i.vp, %BIT_reloadDStream.exit241.i ] ; 2 uses
  %.val.i247297.i = phi i64 [ %.val.i247.i, %bb.bc ], [ %.val30.i243.i, %bb.az ], [ %.val.i247298306.i, %bb.bb ], [ %.val.i247298306.i, %BIT_reloadDStream.exit241.i ] ; 2 uses
  %.025.i244.i = phi i32 [ %.0.i246.i, %bb.bc ], [ 0, %bb.az ], [ %..i249.i, %bb.bb ], [ 3, %BIT_reloadDStream.exit241.i ]
  %i.yu = or i32 %i.xy, %.025.i244.i
  %i.yv = icmp ugt i32 %i.wd, 64
  br i1 %i.yv, label %BIT_reloadDStream.exit259.i, label %bb.bd

bb.bd:                                            ; preds = %BIT_reloadDStream.exit250.i
  %.not.i251.i = icmp ult ptr %i.no, %i.nm
  br i1 %.not.i251.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.yw = lshr i32 %i.wd, 3
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = sub nsw i64 0, %i.yx
  %i.yz = getelementptr inbounds i8, ptr %i.no, i64 %i.yy ; 2 uses
  %i.za = and i32 %i.wd, 7
  %.val30.i252.i = load i64, ptr %i.yz, align 1
  br label %BIT_reloadDStream.exit259.i

bb.bf:                                            ; preds = %bb.bd
  %i.zb = icmp eq ptr %i.no, %i.nl
  br i1 %i.zb, label %BIT_reloadDStream.exit259.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.zc = lshr i32 %i.wd, 3                       ; 2 uses
  %i.zd = zext nneg i32 %i.zc to i64
  %i.ze = sub nsw i64 0, %i.zd
  %i.zf = getelementptr inbounds i8, ptr %i.no, i64 %i.ze
  %i.zg = icmp ult ptr %i.zf, %i.nl               ; 2 uses
  %i.zh = ptrtoint ptr %i.no to i64
  %i.zi = sub i64 %i.zh, %i.nn
  %i.zj = trunc i64 %i.zi to i32
  %.024.i254.i = select i1 %i.zg, i32 %i.zj, i32 %i.zc ; 2 uses
  %.0.i255.i = zext i1 %i.zg to i32
  %i.zk = zext i32 %.024.i254.i to i64
  %i.zl = sub nsw i64 0, %i.zk
  %i.zm = getelementptr inbounds i8, ptr %i.no, i64 %i.zl ; 2 uses
  %i.zn = shl i32 %.024.i254.i, 3
  %i.zo = sub i32 %i.wd, %i.zn
  %.val.i256.i = load i64, ptr %i.zm, align 1
  br label %BIT_reloadDStream.exit259.i

BIT_reloadDStream.exit259.i:                      ; preds = %bb.bg, %bb.bf, %bb.be, %BIT_reloadDStream.exit250.i
  %i.zp = phi ptr [ %i.zm, %bb.bg ], [ %i.yz, %bb.be ], [ %i.no, %BIT_reloadDStream.exit250.i ], [ %i.no, %bb.bf ] ; 2 uses
  %.val9.i207330.i = phi i32 [ %i.zo, %bb.bg ], [ %i.za, %bb.be ], [ %i.wd, %BIT_reloadDStream.exit250.i ], [ %i.wd, %bb.bf ] ; 2 uses
  %.val.i256300.i = phi i64 [ %.val.i256.i, %bb.bg ], [ %.val30.i252.i, %bb.be ], [ %.val.i256301305.i, %BIT_reloadDStream.exit250.i ], [ %.val.i256301305.i, %bb.bf ] ; 2 uses
  %.025.i253.i = phi i32 [ %.0.i255.i, %bb.bg ], [ 0, %bb.be ], [ 3, %BIT_reloadDStream.exit250.i ], [ 3, %bb.bf ]
  %i.zq = or i32 %i.yu, %.025.i253.i
  %i.zr = icmp ugt ptr %i.vt, %i.fe
  %i.zs = icmp ne i32 %i.zq, 0
  %or.cond.not270.i = select i1 %i.zr, i1 true, i1 %i.zs
  %.not184.i = icmp ugt ptr %i.wh, %i.mo
  %or.cond186.i = select i1 %or.cond.not270.i, i1 true, i1 %.not184.i
  br i1 %or.cond186.i, label %..critedge_crit_edge.i, label %bb.an, !llvm.loop !96

..critedge_crit_edge.i:                           ; preds = %BIT_reloadDStream.exit259.i
  store i32 %.val9.i321.i, ptr %i.mq, align 8, !tbaa !37
  store i32 %.val9.i203324.i, ptr %i.mu, align 8, !tbaa !37
  store i32 %.val9.i205327.i, ptr %i.mv, align 8, !tbaa !37
  store i32 %.val9.i207330.i, ptr %i.mw, align 8, !tbaa !37
  store ptr %i.xc, ptr %i.mx, align 8
  store ptr %i.xx, ptr %i.my, align 8
  store ptr %i.yt, ptr %i.mz, align 8
  store ptr %i.zp, ptr %i.na, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.am
  %.val.i256301.lcssa.i = phi i64 [ %.val.i256300.i, %..critedge_crit_edge.i ], [ %.promoted299.i, %bb.am ]
  %.val.i247298.lcssa.i = phi i64 [ %.val.i247297.i, %..critedge_crit_edge.i ], [ %.promoted296.i, %bb.am ]
  %.val.i238295.lcssa.i = phi i64 [ %.val.i238294.i, %..critedge_crit_edge.i ], [ %.promoted293.i, %bb.am ]
  %.val.i232292.lcssa.i = phi i64 [ %.val.i232291.i, %..critedge_crit_edge.i ], [ %.promoted.i, %bb.am ]
  %.0171.lcssa.i = phi ptr [ %i.ur, %..critedge_crit_edge.i ], [ %0, %bb.am ] ; 2 uses
  %.0168.lcssa.i = phi ptr [ %i.vf, %..critedge_crit_edge.i ], [ %i.fc, %bb.am ] ; 2 uses
  %.0165.lcssa.i = phi ptr [ %i.vt, %..critedge_crit_edge.i ], [ %i.fd, %bb.am ] ; 2 uses
  %.0164.lcssa.i = phi ptr [ %i.wh, %..critedge_crit_edge.i ], [ %i.fe, %bb.am ]
  store i64 %.val.i232292.lcssa.i, ptr %4, align 8
  store i64 %.val.i238295.lcssa.i, ptr %5, align 8
  store i64 %.val.i247298.lcssa.i, ptr %6, align 8
  store i64 %.val.i256301.lcssa.i, ptr %7, align 8
  %i.zt = icmp ugt ptr %.0171.lcssa.i, %i.fc
  %i.zu = icmp ugt ptr %.0168.lcssa.i, %i.fd
  %or.cond187.i = select i1 %i.zt, i1 true, i1 %i.zu
  %i.zv = icmp ugt ptr %.0165.lcssa.i, %i.fe
  %or.cond188.i = select i1 %or.cond187.i, i1 true, i1 %i.zv
  br i1 %or.cond188.i, label %BIT_initDStream.exit.thread.i, label %BIT_endOfDStream.exit.i

BIT_endOfDStream.exit.i:                          ; preds = %.critedge.i
  call fastcc void @HUF_decodeStreamX6(ptr noundef %.0171.lcssa.i, ptr noundef %4, ptr noundef %i.fc, ptr noundef nonnull readonly %i.g, i32 noundef %i.em)
  call fastcc void @HUF_decodeStreamX6(ptr noundef %.0168.lcssa.i, ptr noundef %5, ptr noundef %i.fd, ptr noundef nonnull readonly %i.g, i32 noundef %i.em)
  call fastcc void @HUF_decodeStreamX6(ptr noundef %.0165.lcssa.i, ptr noundef %6, ptr noundef %i.fe, ptr noundef nonnull readonly %i.g, i32 noundef %i.em)
  call fastcc void @HUF_decodeStreamX6(ptr noundef %.0164.lcssa.i, ptr noundef %7, ptr noundef %i.el, ptr noundef nonnull readonly %i.g, i32 noundef %i.em)
  %i.zw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.zx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.zy = load i32, ptr %i.zx, align 8
  %i.zz = icmp ne i32 %i.zy, 64
  %i.aaa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aac = load i32, ptr %i.aab, align 8
  %i.aad = icmp ne i32 %i.aac, 64
  %i.aae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aaf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aag = load i32, ptr %i.aaf, align 8
  %i.aah = icmp ne i32 %i.aag, 64
  %i.aai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aaj = load <2 x ptr>, ptr %i.zw, align 8, !tbaa !41 ; 2 uses
  %i.aak = load <2 x ptr>, ptr %i.aaa, align 8, !tbaa !41 ; 2 uses
  %i.aal = load <2 x ptr>, ptr %i.aae, align 8, !tbaa !41 ; 2 uses
  %i.aam = load <2 x ptr>, ptr %i.aai, align 8, !tbaa !41 ; 2 uses
  %i.aan = shufflevector <2 x ptr> %i.aaj, <2 x ptr> %i.aak, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aao = shufflevector <2 x ptr> %i.aal, <2 x ptr> %i.aam, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.aap = shufflevector <4 x ptr> %i.aan, <4 x ptr> %i.aao, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aaq = shufflevector <2 x ptr> %i.aaj, <2 x ptr> %i.aak, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aar = shufflevector <2 x ptr> %i.aal, <2 x ptr> %i.aam, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.aas = shufflevector <4 x ptr> %i.aaq, <4 x ptr> %i.aar, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aat = icmp ne <4 x ptr> %i.aap, %i.aas
  %i.aau = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aav = load i32, ptr %i.aau, align 8
  %i.aaw = icmp ne i32 %i.aav, 64
  %i.aax = freeze <4 x i1> %i.aat
  %i.aay = bitcast <4 x i1> %i.aax to i4
  %i.aaz = icmp ne i4 %i.aay, 0
  %op.rdx = select i1 %i.aaz, i1 true, i1 %i.zz
  %9 = select i1 %op.rdx, i1 true, i1 %i.aad
  %op.rdx109 = select i1 %9, i1 true, i1 %i.aah
  %op.rdx110 = select i1 %op.rdx109, i1 true, i1 %i.aaw
  %..i = select i1 %op.rdx110, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread.i

BIT_initDStream.exit.thread.i:                    ; preds = %BIT_endOfDStream.exit.i, %.critedge.i, %bb.al, %bb.ak, %bb.ac, %bb.aa, %bb.z, %bb.r, %bb.p, %bb.o, %bb.g, %bb.e, %bb.d
  %.0174.i = phi i64 [ %..i, %BIT_endOfDStream.exit.i ], [ -20, %bb.d ], [ -20, %.critedge.i ], [ -72, %bb.p ], [ -72, %bb.e ], [ %i.mf, %bb.al ], [ -1, %bb.g ], [ -1, %bb.o ], [ -1, %bb.r ], [ -1, %bb.z ], [ -1, %bb.ac ], [ -1, %bb.ak ], [ -72, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %HUF_decompress4X6_usingDTable.exit

HUF_decompress4X6_usingDTable.exit:               ; preds = %BIT_initDStream.exit.thread.i, %bb.c, %HUF_readDTableX6.exit.thread, %HUF_readDTableX6.exit
  %.0 = phi i64 [ %.0.i.ph, %HUF_readDTableX6.exit.thread ], [ -20, %bb.c ], [ -72, %HUF_readDTableX6.exit ], [ %.0174.i, %BIT_initDStream.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -119, -9223372036854775808) i64 @HUF_readStats(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [256 x i16], align 16             ; 8 uses
  %i.c = alloca [4097 x i32], align 16            ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %4, align 1, !tbaa !15      ; 4 uses
  %i.g = zext i8 %i.f to i64                      ; 14 uses
  %i.h = icmp slt i8 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i8 %i.f, -15
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr [4 x i8], ptr @HUF_readStats.l, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 -968
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %i.m = sext i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 1, i64 256, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.n = add nsw i64 %i.g, -127                   ; 5 uses
  %i.o = add nsw i64 %i.g, -126
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %.not84 = icmp ult i64 %i.p, %5
  br i1 %.not84, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 2)
  %i.r = add nsw i64 %umax, -1
  %i.s = lshr i64 %i.r, 1
  %i.t = add nuw i64 %i.s, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.n, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.u = add nsw i64 %i.g, -128
  %i.v = lshr i64 %i.u, 1
  %i.w = and i64 %i.g, 126
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 2
  %i.z = getelementptr i8, ptr %4, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 2
  %bound0 = icmp ult ptr %0, %i.aa
  %bound1 = icmp ult ptr %i.q, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check76 = icmp ult i64 %i.n, 31
  br i1 %min.iters.check76, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.t, 12
  %n.vec = and i64 %i.t, -16                      ; 5 uses
  %i.ac = shl i64 %n.vec, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 9
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !tbaa !15, !alias.scope !104 ; 2 uses
  %wide.load77 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !15, !alias.scope !104 ; 2 uses
  %i.ae = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.af = lshr <8 x i8> %wide.load77, splat (i8 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = and <8 x i8> %wide.load, splat (i8 15)
  %i.ai = and <8 x i8> %wide.load77, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.ae, <8 x i8> %i.ah, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !15, !alias.scope !105, !noalias !104
  %interleaved.vec78 = shufflevector <8 x i8> %i.af, <8 x i8> %i.ai, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec78, ptr %i.ag, align 1, !tbaa !15, !alias.scope !105, !noalias !104
  %i.aj = icmp eq i64 %n.vec, 16
  br i1 %i.aj, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 25
  %wide.load.1 = load <8 x i8>, ptr %i.ak, align 1, !tbaa !15, !alias.scope !104 ; 2 uses
  %wide.load77.1 = load <8 x i8>, ptr %i.al, align 1, !tbaa !15, !alias.scope !104 ; 2 uses
  %i.am = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.an = lshr <8 x i8> %wide.load77.1, splat (i8 4)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.ar = and <8 x i8> %wide.load77.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.am, <8 x i8> %i.aq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.ao, align 1, !tbaa !15, !alias.scope !105, !noalias !104
  %interleaved.vec78.1 = shufflevector <8 x i8> %i.an, <8 x i8> %i.ar, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec78.1, ptr %i.ap, align 1, !tbaa !15, !alias.scope !105, !noalias !104
  %i.as = icmp eq i64 %n.vec, 32
  br i1 %i.as, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 41
  %wide.load.2 = load <8 x i8>, ptr %i.at, align 1, !tbaa !15, !alias.scope !104 ; 2 uses
  %wide.load77.2 = load <8 x i8>, ptr %i.au, align 1, !tbaa !15, !alias.scope !104 ; 2 uses
  %i.av = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.aw = lshr <8 x i8> %wide.load77.2, splat (i8 4)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.ba = and <8 x i8> %wide.load77.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.av, <8 x i8> %i.az, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.ax, align 1, !tbaa !15, !alias.scope !105, !noalias !104
  %interleaved.vec78.2 = shufflevector <8 x i8> %i.aw, <8 x i8> %i.ba, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec78.2, ptr %i.ay, align 1, !tbaa !15, !alias.scope !105, !noalias !104
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec79 = and i64 %i.t, -4                     ; 3 uses
  %i.bb = shl i64 %n.vec79, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 3 uses
  %i.bc = shl nuw i64 %index80, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 %index80
  %wide.load81 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !15, !alias.scope !104 ; 2 uses
  %i.be = lshr <4 x i8> %wide.load81, splat (i8 4)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.bg = and <4 x i8> %wide.load81, splat (i8 15)
  %interleaved.vec82 = shufflevector <4 x i8> %i.be, <4 x i8> %i.bg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec82, ptr %i.bf, align 1, !tbaa !15, !alias.scope !105, !noalias !104
  %index.next83 = add nuw i64 %index80, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !100

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %i.t, %n.vec79
  br i1 %cmp.n84, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bi = phi i64 [ %i.bs, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.bm = lshr i8 %i.bl, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !15
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.bp = and i8 %i.bo, 15
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !15
  %i.bs = add nuw nsw i64 %i.bi, 2                ; 2 uses
  %i.bt = icmp samesign ugt i64 %i.n, %i.bs
  br i1 %i.bt, label %.lr.ph, label %.loopexit.thread, !llvm.loop !101

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph167.preheader

bb.f:                                             ; preds = %bb.b
  %.not82 = icmp ugt i64 %5, %i.g
  br i1 %.not82, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
end_hunk_2
