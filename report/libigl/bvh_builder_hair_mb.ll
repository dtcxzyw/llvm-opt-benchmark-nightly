Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_hair_mb?download=true
inline.NumInlined: 2542
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE4findERKNS_5SetMBEm:.preheader346.preheader

bb.q:                                             ; preds = %bb.p
  br label %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.146.i.2 = phi float [ %.146.i.1, %bb.n ], [ %.sroa.0398.8.vec.extract, %bb.q ], [ %.146.i.1, %bb.p ], [ %.146.i.1, %bb.o ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.n ], [ 2, %bb.q ], [ %.144.i.1, %bb.p ], [ %.144.i.1, %bb.o ] ; 2 uses
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.n ], [ %.sroa.0.8.vec.extract, %bb.q ], [ %.1.i.1, %bb.p ], [ %.1.i.1, %bb.o ]
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.rq, align 4
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.rr, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.rs, align 4
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.kg, ptr %i.rt, align 16
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rv = load <4 x float>, ptr %i.w, align 16
  store <4 x float> %i.rv, ptr %i.ru, align 16
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rx = load <4 x float>, ptr %i.x, align 16
  store <4 x float> %i.rx, ptr %i.rw, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !877
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.sa = load float, ptr %i.rz, align 4
  %i.sb = load float, ptr %i.ry, align 8
  %i.sc = fsub float %i.sa, %i.sb
  %i.sd = fmul float %.146.i.2, %i.sc
  store float %i.sd, ptr %0, align 16
  %.not = icmp eq i32 %.144.i.2, -1
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit
  store i32 1, ptr %i.rs, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS0_RKT_RKNS_12LinearSpace3INS_6Vec3faEEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::SetMB") align 16 %0, ptr noundef nonnull align 16 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(48) %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"struct.embree::BBox.29", align 8  ; 5 uses
  %5 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %6 = alloca %"struct.embree::range", align 8    ; 5 uses
  %7 = alloca %class.anon.140, align 8            ; 7 uses
  %8 = alloca %"class.embree::PrimInfoMBT", align 16 ; 22 uses
  %9 = alloca %"class.embree::PrimInfoMBT", align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr %1, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.d = load i64, ptr %i.c, align 16             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store <4 x float> splat (float +inf), ptr %9, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x float> splat (float +inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x float> splat (float -inf), ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x float> splat (float +inf), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <4 x float> splat (float -inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.l, i8 0, i64 36, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 140
  store float 0.000000e+00, ptr %i.n, align 4
  %i.o = sub i64 %i.f, %i.d                       ; 2 uses
  %i.p = icmp ult i64 %i.o, 3072
  br i1 %i.p, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.q = icmp ult i64 %i.d, %i.f
  br i1 %i.q, label %.lr.ph.i, label %_ZZNK6embree5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS0_RKT_RKNS_12LinearSpace3INS_6Vec3faEEEENKUlRKNS_5rangeImEEE_clESG_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, %.lr.ph.i
  %.094.i = phi i64 [ %i.d, %.lr.ph.i ], [ %i.di, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %i.w = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.cq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.x = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.cr, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.y = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.cs, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.z = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.ct, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.aa = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.cu, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.ab = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.cv, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.ac = phi float [ 1.000000e+00, %.lr.ph.i ], [ %i.cx, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %i.ad = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.cz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %i.ae = phi i64 [ 0, %.lr.ph.i ], [ %i.db, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.af = phi i64 [ 0, %.lr.ph.i ], [ %i.dh, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ] ; 2 uses
  %i.ag = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph.i ], [ %i.dg, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.ah = load ptr, ptr %i.r, align 16, !noalias !915
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !915
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.aj, i64 %.094.i ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.s, align 8, !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !915
  store <2 x float> %.sroa.0.0.copyload.i, ptr %4, align 8, !noalias !916
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !noalias !916 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !noalias !916 ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !noalias !916
  %i.aq = zext i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 488
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !916
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = load ptr, ptr %i.at, align 8, !noalias !916 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !916
  %i.av = zext i32 %i.ao to i64
  %i.aw = load ptr, ptr %i.au, align 16, !noalias !916
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 496
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !916
  call void %i.ay(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %5, ptr noundef nonnull align 16 dereferenceable(88) %i.au, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 noundef %i.av, ptr noundef nonnull align 4 dereferenceable(8) %4), !noalias !916, !inline_history !917
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %.sroa.0.0.copyload.i6.i = load <2 x float>, ptr %i.az, align 4, !noalias !918 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bb = load float, ptr %i.ba, align 8, !noalias !918 ; 4 uses
  %.sroa.053.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload.i6.i, i64 0 ; 3 uses
  %.sroa.053.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload.i6.i, i64 1 ; 3 uses
  %i.bc = fsub float %.sroa.053.4.vec.extract.i, %.sroa.053.0.vec.extract.i
  %i.bd = load <2 x float>, ptr %4, align 8, !noalias !919
  %i.be = shufflevector <2 x float> %.sroa.0.0.copyload.i6.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fsub <2 x float> %i.bd, %i.be
  %i.bg = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fdiv <2 x float> %i.bf, %i.bh           ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  %i.bk = fmul float %i.bj, f0x3F800002
  %i.bl = fmul float %i.bb, %i.bk
  %i.bm = call noundef float @llvm.floor.f32(float %i.bl) ; 2 uses
  %i.bn = fcmp olt float %i.bm, 0.000000e+00
  %i.bo = select i1 %i.bn, float 0.000000e+00, float %i.bm
  %i.bp = fptosi float %i.bo to i32
  %i.bq = extractelement <2 x float> %i.bi, i64 1
  %i.br = fmul float %i.bq, f0x3F7FFFFC
  %i.bs = fmul float %i.bb, %i.br
  %i.bt = call noundef float @llvm.ceil.f32(float %i.bs) ; 2 uses
  %i.bu = fcmp olt float %i.bt, %i.bb
  %i.bv = select i1 %i.bu, float %i.bt, float %i.bb
  %i.bw = fptosi float %i.bv to i32
  %i.bx = sub nsw i32 %i.bw, %i.bp                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.bz = load i32, ptr %i.by, align 4, !noalias !916
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  %i.cb = load <4 x float>, ptr %5, align 16, !noalias !915
  %i.cc = load <4 x float>, ptr %i.t, align 16, !noalias !915
  %i.cd = load <4 x float>, ptr %i.u, align 16, !noalias !915
  %i.ce = load <4 x float>, ptr %i.v, align 16, !noalias !915
  %i.cf = bitcast i32 %i.am to float
  %.sroa.0.12.vec.insert.i = insertelement <4 x float> %i.cb, float %i.cf, i64 3 ; 2 uses
  %i.cg = bitcast i32 %i.ao to float
  %.sroa.6.28.vec.insert.i = insertelement <4 x float> %i.cc, float %i.cg, i64 3 ; 2 uses
  %i.ch = bitcast i32 %i.bx to float
  %.sroa.10.44.vec.insert.i = insertelement <4 x float> %i.cd, float %i.ch, i64 3 ; 2 uses
  %i.ci = bitcast i32 %i.ca to float
  %.sroa.15.60.vec.insert.i = insertelement <4 x float> %i.ce, float %i.ci, i64 3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !915
  %i.cj = fmul <4 x float> %.sroa.10.44.vec.insert.i, splat (float 5.000000e-01)
  %i.ck = fmul <4 x float> %.sroa.0.12.vec.insert.i, splat (float 5.000000e-01)
  %i.cl = fadd <4 x float> %i.ck, %i.cj
  %i.cm = fmul <4 x float> %.sroa.15.60.vec.insert.i, splat (float 5.000000e-01)
  %i.cn = fmul <4 x float> %.sroa.6.28.vec.insert.i, splat (float 5.000000e-01)
  %i.co = fadd <4 x float> %i.cn, %i.cm
  %i.cp = fadd <4 x float> %i.co, %i.cl           ; 2 uses
  %i.cq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.w, <4 x float> %.sroa.0.12.vec.insert.i) ; 2 uses
  %i.cr = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.x, <4 x float> %.sroa.6.28.vec.insert.i) ; 2 uses
  %i.cs = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.y, <4 x float> %.sroa.10.44.vec.insert.i) ; 2 uses
  %i.ct = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.z, <4 x float> %.sroa.15.60.vec.insert.i) ; 2 uses
  %i.cu = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aa, <4 x float> %i.cp) ; 2 uses
  %i.cv = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ab, <4 x float> %i.cp) ; 2 uses
  %i.cw = fcmp olt float %i.ac, %.sroa.053.0.vec.extract.i
  %i.cx = select i1 %i.cw, float %i.ac, float %.sroa.053.0.vec.extract.i ; 2 uses
  %i.cy = fcmp olt float %i.ad, %.sroa.053.4.vec.extract.i
  %i.cz = select i1 %i.cy, float %.sroa.053.4.vec.extract.i, float %i.ad ; 2 uses
  %i.da = zext i32 %i.bx to i64
  %i.db = add i64 %i.ae, %i.da                    ; 2 uses
  %i.dc = zext i32 %i.ca to i64                   ; 2 uses
  %i.dd = icmp samesign ult i64 %i.af, %i.dc
  %i.de = insertelement <2 x i1> poison, i1 %i.dd, i64 0
  %i.df = shufflevector <2 x i1> %i.de, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dg = select <2 x i1> %i.df, <2 x float> %.sroa.0.0.copyload.i6.i, <2 x float> %i.ag ; 2 uses
  %i.dh = call i64 @llvm.umax.i64(i64 %i.af, i64 %i.dc) ; 2 uses
  %i.di = add i64 %.094.i, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.di, %i.f
  br i1 %exitcond.not, label %_ZZNK6embree5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS0_RKT_RKNS_12LinearSpace3INS_6Vec3faEEEENKUlRKNS_5rangeImEEE_clESG_.exit, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, !llvm.loop !13

_ZZNK6embree5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS0_RKT_RKNS_12LinearSpace3INS_6Vec3faEEEENKUlRKNS_5rangeImEEE_clESG_.exit: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, %bb.b
  %.lcssa85.i = phi i64 [ 0, %bb.b ], [ %i.dh, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.lcssa83.i = phi i64 [ 0, %bb.b ], [ %i.db, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.lcssa81.i = phi float [ 0.000000e+00, %bb.b ], [ %i.cz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.lcssa79.i = phi float [ 1.000000e+00, %bb.b ], [ %i.cx, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.lcssa77.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.cv, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.lcssa75.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.cu, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.lcssa73.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.ct, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.lcssa71.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.cs, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.lcssa69.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.cr, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %.lcssa.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.cq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.dj = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ], [ %i.dg, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 140
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <4 x float> %.lcssa.i, ptr %8, align 16, !alias.scope !915
  store <4 x float> %.lcssa69.i, ptr %i.dt, align 16, !alias.scope !915
  store <4 x float> %.lcssa71.i, ptr %i.ds, align 16, !alias.scope !915
  store <4 x float> %.lcssa73.i, ptr %i.dr, align 16, !alias.scope !915
  store <4 x float> %.lcssa75.i, ptr %i.dq, align 16, !alias.scope !915
  store <4 x float> %.lcssa77.i, ptr %i.dp, align 16, !alias.scope !915
  store float %.lcssa79.i, ptr %i.dl, align 8, !alias.scope !915
  store float %.lcssa81.i, ptr %i.dk, align 4, !alias.scope !915
  store i64 %.lcssa83.i, ptr %i.do, align 16, !alias.scope !915
  store i64 %.lcssa85.i, ptr %i.dn, align 8, !alias.scope !915
  store <2 x float> %i.dj, ptr %i.dm, align 16, !alias.scope !915
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS6_RKT_RKNS_12LinearSpace3IS3_EEEUlRKNS_5rangeImEEE_FKS5_RSN_SO_EEET0_SB_SB_SB_SB_RKSQ_RKT1_RKT2_.exit

bb.c:                                             ; preds = %bb.a
  %i.du = add i64 %i.o, 1023
  %i.dv = lshr i64 %i.du, 10                      ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 1
  br i1 %i.dw, label %bb.d, label %bb.e, !prof !41

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !920
  store i64 %i.d, ptr %6, align 8, !noalias !920
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.f, ptr %i.dx, align 8, !noalias !920
  call void @_ZZNK6embree5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS0_RKT_RKNS_12LinearSpace3INS_6Vec3faEEEENKUlRKNS_5rangeImEEE_clESG_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %8, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !920
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS6_RKT_RKNS_12LinearSpace3IS3_EEEUlRKNS_5rangeImEEE_FKS5_RSN_SO_EEET0_SB_SB_SB_SB_RKSQ_RKT1_RKT2_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS6_RKT_RKNS_12LinearSpace3IS3_EEEUlRKNS_5rangeImEEE_FKS5_RSN_SO_EEET0_SB_SB_SB_SB_RKSQ_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %8, i64 noundef %i.dv, i64 noundef %i.d, i64 noundef %i.f, i64 noundef 1024, ptr noundef nonnull align 16 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS6_RKT_RKNS_12LinearSpace3IS3_EEEUlRKNS_5rangeImEEE_FKS5_RSN_SO_EEET0_SB_SB_SB_SB_RKSQ_RKT1_RKT2_.exit

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS6_RKT_RKNS_12LinearSpace3IS3_EEEUlRKNS_5rangeImEEE_FKS5_RSN_SO_EEET0_SB_SB_SB_SB_RKSQ_RKT1_RKT2_.exit: ; preds = %bb.e, %bb.d, %_ZZNK6embree5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS0_RKT_RKNS_12LinearSpace3INS_6Vec3faEEEENKUlRKNS_5rangeImEEE_clESG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dz = load ptr, ptr %i.dy, align 16
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ea, align 8 ; 3 uses
  %i.eb = load <4 x float>, ptr %8, align 16
  store <4 x float> %i.eb, ptr %0, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ee = load <4 x float>, ptr %i.ed, align 16
  store <4 x float> %i.ee, ptr %i.ec, align 16
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.eh = load <4 x float>, ptr %i.eg, align 16
  store <4 x float> %i.eh, ptr %i.ef, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ek = load <4 x float>, ptr %i.ej, align 16
  store <4 x float> %i.ek, ptr %i.ei, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.en = load <4 x float>, ptr %i.em, align 16
  store <4 x float> %i.en, ptr %i.el, align 16
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.eq = load <4 x float>, ptr %i.ep, align 16
  store <4 x float> %i.eq, ptr %i.eo, align 16
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.es, ptr noundef nonnull align 16 dereferenceable(32) %i.et, i64 32, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.dz, ptr %i.eu, align 16
  %i.ev = load <2 x i64>, ptr %i.c, align 16
  store <2 x i64> %i.ev, ptr %i.er, align 16
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ex = load <2 x float>, ptr %i.ew, align 8    ; 3 uses
  %i.ey = fcmp olt <2 x float> %i.ex, %.sroa.0.0.copyload
  %i.ez = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> %i.ex, <2 x i32> <i32 0, i32 3>
  %i.fa = shufflevector <2 x float> %i.ex, <2 x float> %.sroa.0.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.fb = select <2 x i1> %i.ey, <2 x float> %i.ez, <2 x float> %i.fa
  store <2 x float> %i.fb, ptr %i.ew, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE4findERKNS_5SetMBEmRKNS_12LinearSpace3INS_6Vec3faEEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinSplit") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 16 dereferenceable(152) %2, i64 noundef %3, ptr noundef nonnull align 16 dereferenceable(48) %4) local_unnamed_addr #5 comdat align 2 {
.preheader257.preheader:
  %5 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %6 = alloca %"struct.embree::Vec3fa", align 16  ; 4 uses
  %7 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %8 = alloca %"struct.embree::Vec3fa", align 16  ; 4 uses
  %9 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %10 = alloca %"struct.embree::Vec3fa", align 16 ; 4 uses
  %11 = alloca %"struct.embree::range", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"struct.embree::sse2::BinInfoT", align 64 ; 5 uses
  %13 = alloca %class.anon.148, align 8           ; 7 uses
  %14 = alloca %class.anon.149, align 8           ; 4 uses
  %15 = alloca [32 x %"struct.embree::vfloat_impl"], align 16 ; 4 uses
  %16 = alloca [32 x %"struct.embree::vuint_impl"], align 16 ; 4 uses
  %17 = alloca %"struct.embree::sse2::UnalignedHeuristicArrayBinningMB<embree::PrimRefMB, 32>::BinBoundsAndCenter", align 16 ; 11 uses
  %18 = alloca %"struct.embree::sse2::BinInfoT", align 64 ; 17 uses
  %19 = alloca %"struct.embree::sse2::BinMapping", align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8
  store ptr %i.b, ptr %17, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %.sroa.0.0.copyload, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.h = load <4 x float>, ptr %4, align 16
  store <4 x float> %i.h, ptr %i.e, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load <4 x float>, ptr %i.i, align 16
  store <4 x float> %i.j, ptr %i.f, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.l, ptr %i.g, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 6144 ; 12 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %.preheader257.preheader, %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %.0.i12258 = phi i64 [ 0, %.preheader257.preheader ], [ %i.aa, %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 3 uses
  %i.n = getelementptr inbounds nuw [192 x i8], ptr %18, i64 %.0.i12258 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  store <4 x float> splat (float +inf), ptr %i.o, align 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  store <4 x float> splat (float -inf), ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  store <4 x float> splat (float +inf), ptr %i.q, align 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store <4 x float> splat (float -inf), ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store <4 x float> splat (float +inf), ptr %i.s, align 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store <4 x float> splat (float -inf), ptr %i.t, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store <4 x float> splat (float +inf), ptr %i.u, align 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store <4 x float> splat (float -inf), ptr %i.v, align 16
  store <4 x float> splat (float +inf), ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> splat (float -inf), ptr %i.w, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store <4 x float> splat (float +inf), ptr %i.x, align 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store <4 x float> splat (float -inf), ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.0.i12258
  store <2 x i64> zeroinitializer, ptr %i.z, align 16
  %i.aa = add nuw nsw i64 %.0.i12258, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, 32
  br i1 %exitcond.not, label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !9

_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ad = load i64, ptr %i.ac, align 8            ; 4 uses
  %i.ae = load i64, ptr %i.ab, align 16           ; 5 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 5 uses
  %i.aj = uitofp i64 %i.af to float
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 5.000000e-02, float 4.000000e+00)
  %i.al = fptoui float %i.ak to i64
  %i.am = tail call noundef i64 @llvm.umin.i64(i64 %i.al, i64 32) ; 2 uses
  store i64 %i.am, ptr %19, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = load <4 x float>, ptr %i.an, align 16, !noalias !1075
end_hunk_0
begin_hunk_1_@_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_:bb.a
  %i.as = select <2 x i1> %i.ap, <2 x float> %i.aq, <2 x float> %i.ar
  store <2 x float> %i.as, ptr %i.al, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.au = load <2 x i64>, ptr %i.r, align 16
  %i.av = load <2 x i64>, ptr %i.at, align 16
  %i.aw = add <2 x i64> %i.av, %i.au
  store <2 x i64> %i.aw, ptr %i.q, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ay = load i64, ptr %i.ax, align 16
  %i.az = load i64, ptr %i.s, align 16
  %i.ba = add i64 %i.az, %i.ay
  store i64 %i.ba, ptr %i.s, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp ult i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.b, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE5mergeERKS4_.exit

bb.b:                                             ; preds = %bb.a
  store i64 %i.be, ptr %i.bb, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bi = load <2 x float>, ptr %i.bg, align 16
  store <2 x float> %i.bi, ptr %i.bh, align 16
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE5mergeERKS4_.exit

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE5mergeERKS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZNK6embree5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS0_RKT_RKNS_12LinearSpace3INS_6Vec3faEEEENKUlRKNS_5rangeImEEE_clESG_(ptr dead_on_unwind noalias writable sret(%"class.embree::PrimInfoMBT") align 16 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %3 = alloca %"struct.embree::BBox.29", align 8  ; 5 uses
  %4 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.d = load i64, ptr %2, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

._crit_edge:                                      ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit
  store i64 %i.dg, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa85 = phi i64 [ %i.do, %._crit_edge ], [ 0, %bb.a ]
  %.lcssa83 = phi i64 [ %i.di, %._crit_edge ], [ 0, %bb.a ]
  %.lcssa81 = phi float [ %i.df, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %.lcssa79 = phi float [ %i.dd, %._crit_edge ], [ 1.000000e+00, %bb.a ]
  %.lcssa77 = phi <4 x float> [ %i.db, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa75 = phi <4 x float> [ %i.da, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %.lcssa73 = phi <4 x float> [ %i.cz, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa71 = phi <4 x float> [ %i.cy, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %.lcssa69 = phi <4 x float> [ %i.cx, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa = phi <4 x float> [ %i.cw, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %i.o = phi <2 x float> [ %i.dn, %._crit_edge ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa69, ptr %i.y, align 16
  store <4 x float> %.lcssa71, ptr %i.x, align 16
  store <4 x float> %.lcssa73, ptr %i.w, align 16
  store <4 x float> %.lcssa75, ptr %i.v, align 16
  store <4 x float> %.lcssa77, ptr %i.u, align 16
  store float %.lcssa79, ptr %i.q, align 8
  store float %.lcssa81, ptr %i.p, align 4
  store i64 %.lcssa83, ptr %i.t, align 16
  store i64 %.lcssa85, ptr %i.s, align 8
  store <2 x float> %i.o, ptr %i.r, align 16
  ret void

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit: ; preds = %.lr.ph, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit
  %i.z = phi i64 [ 0, %.lr.ph ], [ %i.dg, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.094 = phi i64 [ %i.d, %.lr.ph ], [ %i.dp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %i.aa = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %i.cw, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.ab = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %i.cx, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.ac = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %i.cy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.ad = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %i.cz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.ae = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %i.da, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.af = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %i.db, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.ag = phi float [ 1.000000e+00, %.lr.ph ], [ %i.dd, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %i.ah = phi float [ 0.000000e+00, %.lr.ph ], [ %i.df, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %i.ai = phi i64 [ 0, %.lr.ph ], [ %i.di, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.aj = phi i64 [ 0, %.lr.ph ], [ %i.do, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %i.ak = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.dn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.al = load ptr, ptr %i.h, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.an, i64 %.094 ; 2 uses
  %i.ap = load ptr, ptr %i.i, align 8, !nonnull !35, !align !37
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.j, align 8
  %i.aq = load ptr, ptr %i.k, align 8, !nonnull !35, !align !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <2 x float> %.sroa.0.0.copyload, ptr %3, align 8, !noalias !1406
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !noalias !1406 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.au = load i32, ptr %i.at, align 4, !noalias !1406 ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8, !noalias !1406
  %i.aw = zext i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 488
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1406
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1406 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !1406
  %i.bb = zext i32 %i.au to i64
  %i.bc = load ptr, ptr %i.ba, align 16, !noalias !1406
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 496
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1406
  call void %i.be(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %4, ptr noundef nonnull align 16 dereferenceable(88) %i.ba, ptr noundef nonnull align 16 dereferenceable(48) %i.aq, i64 noundef %i.bb, ptr noundef nonnull align 4 dereferenceable(8) %3), !noalias !1406, !inline_history !1401
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %.sroa.0.0.copyload.i6 = load <2 x float>, ptr %i.bf, align 4, !noalias !1407 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bh = load float, ptr %i.bg, align 8, !noalias !1407 ; 4 uses
  %.sroa.053.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i6, i64 0 ; 3 uses
  %.sroa.053.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i6, i64 1 ; 3 uses
  %i.bi = fsub float %.sroa.053.4.vec.extract, %.sroa.053.0.vec.extract
  %i.bj = load <2 x float>, ptr %3, align 8, !noalias !1408
  %i.bk = shufflevector <2 x float> %.sroa.0.0.copyload.i6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fsub <2 x float> %i.bj, %i.bk
  %i.bm = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x float> %i.bl, %i.bn           ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %i.bq = fmul float %i.bp, f0x3F800002
  %i.br = fmul float %i.bh, %i.bq
  %i.bs = call noundef float @llvm.floor.f32(float %i.br) ; 2 uses
  %i.bt = fcmp olt float %i.bs, 0.000000e+00
  %i.bu = select i1 %i.bt, float 0.000000e+00, float %i.bs
  %i.bv = fptosi float %i.bu to i32
  %i.bw = extractelement <2 x float> %i.bo, i64 1
  %i.bx = fmul float %i.bw, f0x3F7FFFFC
  %i.by = fmul float %i.bh, %i.bx
  %i.bz = call noundef float @llvm.ceil.f32(float %i.by) ; 2 uses
  %i.ca = fcmp olt float %i.bz, %i.bh
  %i.cb = select i1 %i.ca, float %i.bz, float %i.bh
  %i.cc = fptosi float %i.cb to i32
  %i.cd = sub nsw i32 %i.cc, %i.bv                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  %i.cf = load i32, ptr %i.ce, align 4, !noalias !1406
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  %i.ch = load <4 x float>, ptr %4, align 16
  %i.ci = load <4 x float>, ptr %i.l, align 16
  %i.cj = load <4 x float>, ptr %i.m, align 16
  %i.ck = load <4 x float>, ptr %i.n, align 16
  %i.cl = bitcast i32 %i.as to float
  %.sroa.0.12.vec.insert = insertelement <4 x float> %i.ch, float %i.cl, i64 3 ; 2 uses
  %i.cm = bitcast i32 %i.au to float
  %.sroa.6.28.vec.insert = insertelement <4 x float> %i.ci, float %i.cm, i64 3 ; 2 uses
  %i.cn = bitcast i32 %i.cd to float
  %.sroa.10.44.vec.insert = insertelement <4 x float> %i.cj, float %i.cn, i64 3 ; 2 uses
  %i.co = bitcast i32 %i.cg to float
  %.sroa.15.60.vec.insert = insertelement <4 x float> %i.ck, float %i.co, i64 3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !1406
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cp = fmul <4 x float> %.sroa.10.44.vec.insert, splat (float 5.000000e-01)
  %i.cq = fmul <4 x float> %.sroa.0.12.vec.insert, splat (float 5.000000e-01)
  %i.cr = fadd <4 x float> %i.cq, %i.cp
  %i.cs = fmul <4 x float> %.sroa.15.60.vec.insert, splat (float 5.000000e-01)
  %i.ct = fmul <4 x float> %.sroa.6.28.vec.insert, splat (float 5.000000e-01)
  %i.cu = fadd <4 x float> %i.ct, %i.cs
  %i.cv = fadd <4 x float> %i.cu, %i.cr           ; 2 uses
  %i.cw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aa, <4 x float> %.sroa.0.12.vec.insert) ; 2 uses
  %i.cx = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ab, <4 x float> %.sroa.6.28.vec.insert) ; 2 uses
  %i.cy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ac, <4 x float> %.sroa.10.44.vec.insert) ; 2 uses
  %i.cz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ad, <4 x float> %.sroa.15.60.vec.insert) ; 2 uses
  %i.da = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> %i.cv) ; 2 uses
  %i.db = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.af, <4 x float> %i.cv) ; 2 uses
  %i.dc = fcmp olt float %i.ag, %.sroa.053.0.vec.extract
  %i.dd = select i1 %i.dc, float %i.ag, float %.sroa.053.0.vec.extract ; 2 uses
  %i.de = fcmp olt float %i.ah, %.sroa.053.4.vec.extract
  %i.df = select i1 %i.de, float %.sroa.053.4.vec.extract, float %i.ah ; 2 uses
  %i.dg = add i64 %i.z, 1                         ; 2 uses
  %i.dh = zext i32 %i.cd to i64
  %i.di = add i64 %i.ai, %i.dh                    ; 2 uses
  %i.dj = zext i32 %i.cg to i64                   ; 2 uses
  %i.dk = icmp samesign ult i64 %i.aj, %i.dj
  %i.dl = insertelement <2 x i1> poison, i1 %i.dk, i64 0
  %i.dm = shufflevector <2 x i1> %i.dl, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dn = select <2 x i1> %i.dm, <2 x float> %.sroa.0.0.copyload.i6, <2 x float> %i.ak ; 2 uses
  %i.do = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.dj) ; 2 uses
  %i.dp = add nuw i64 %.094, 1                    ; 2 uses
  %i.dq = load i64, ptr %i.e, align 8
  %i.dr = icmp ult i64 %i.dp, %i.dq
  br i1 %i.dr, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit, label %._crit_edge, !llvm.loop !13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS6_RKT_RKNS_12LinearSpace3IS3_EEEUlRKNS_5rangeImEEE_FKS5_RSN_SO_EEET0_SB_SB_SB_SB_RKSQ_RKT1_RKT2_(ptr dead_on_unwind noalias writable sret(%"class.embree::PrimInfoMBT") align 16 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 16 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %7) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.145, align 8            ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %11 = alloca %"struct.embree::StackArray.142", align 64 ; 9 uses
  %12 = alloca %class.anon.144, align 8           ; 9 uses
  %13 = alloca %"class.embree::PrimInfoMBT", align 16 ; 12 uses
  store i64 %2, ptr %i.b, align 8
  store i64 %3, ptr %i.c, align 8
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.f = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 512) ; 4 uses
  store i64 %i.f, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8072
  store i64 %i.f, ptr %i.g, align 8
  %i.h = icmp ult i64 %i.e, 57
  br i1 %i.h, label %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = mul nuw nsw i64 %i.f, 144
  %i.j = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.i, i64 noundef 64)
  br label %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit

_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi ptr [ %i.j, %bb.b ], [ %11, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8064 ; 4 uses
  store ptr %storemerge.i, ptr %i.k, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr %i.b, ptr %12, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %6, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %12, ptr %9, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS9_RKT_RKNS_12LinearSpace3IS6_EEEUlRKNS_5rangeImEEE_FKS8_RSQ_SR_EEET0_SE_SE_SE_SE_RKST_RKT1_RKT2_EUlmE_EEvSE_SV_EUlSO_E_EEvSE_SE_SE_SV_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.f, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.g

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.d
  %i.p = load ptr, ptr %8, align 8                ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.p, ptr %10, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #27
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %10, align 8
  %.not.i15 = icmp eq ptr %i.t, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.pre.pre = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.u = icmp eq i64 %.pre.pre, 0
  br label %bb.k

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.r, %bb.g ], [ %i.s, %bb.h ], [ %i.s, %bb.i ]
  %i.v = load ptr, ptr %8, align 8
  %.not.i.i17 = icmp eq ptr %i.v, null
  br i1 %.not.i.i17, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit18, label %bb.j

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit18

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit18: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.q

bb.k:                                             ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit
  %.not21 = phi i1 [ %i.u, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ], [ true, %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EEC2Em.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.w = load <4 x float>, ptr %5, align 16
  store <4 x float> %i.w, ptr %0, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = load <4 x float>, ptr %i.y, align 16
  store <4 x float> %i.z, ptr %i.x, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = load <4 x float>, ptr %i.ab, align 16
  store <4 x float> %i.ac, ptr %i.aa, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.af = load <4 x float>, ptr %i.ae, align 16
  store <4 x float> %i.af, ptr %i.ad, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ai = load <4 x float>, ptr %i.ah, align 16
  store <4 x float> %i.ai, ptr %i.ag, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.al = load <4 x float>, ptr %i.ak, align 16
  store <4 x float> %i.al, ptr %i.aj, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ao = load <2 x i64>, ptr %i.an, align 16
  store <2 x i64> %i.ao, ptr %i.am, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ap, ptr noundef nonnull align 16 dereferenceable(32) %i.aq, i64 32, i1 false)
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 128
  br label %bb.n

._crit_edge:                                      ; preds = %bb.o, %bb.k
  %i.az = load ptr, ptr %i.k, align 64            ; 2 uses
  %.not.i11 = icmp eq ptr %i.az, %11
  br i1 %.not.i11, label %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EED2Ev.exit12, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef %i.az)
          to label %_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EED2Ev.exit12 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #29
  unreachable

_ZN6embree10StackArrayINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEELm8192EED2Ev.exit12: ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret void

bb.n:                                             ; preds = %.lr.ph, %bb.o
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.bc = load ptr, ptr %i.k, align 64
  %i.bd = getelementptr inbounds nuw [144 x i8], ptr %i.bc, i64 %.020
  invoke void %7(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %13, ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %i.bd)
          to label %bb.o unwind label %bb.p
end_hunk_1
begin_hunk_2_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKSA_RKT_RKNS_12LinearSpace3IS7_EEEUlRKNS_5rangeImEEE_FKS9_RSR_SS_EEET0_SF_SF_SF_SF_RKSU_RKT1_RKT2_EUlmE_EEvSF_SW_EUlSP_E_EEvSF_SF_SF_SW_PNS0_16TaskGroupContextEEUlvE_EEvSH_S16_mb:bb.a
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #29
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #11
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKSA_RKT_RKNS_12LinearSpace3IS7_EEEUlRKNS_5rangeImEEE_FKS9_RSR_SS_EEET0_SF_SF_SF_SF_RKSU_RKT1_RKT2_EUlmE_EEvSF_SW_EUlSP_E_EEvSF_SF_SF_SW_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS9_RKT_RKNS_12LinearSpace3IS6_EEEUlRKNS_5rangeImEEE_FKS8_RSQ_SR_EEET0_SE_SE_SE_SE_RKST_RKT1_RKT2_EUlmE_EEvSE_SV_EUlSO_E_EEvSE_SE_SE_SV_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS9_RKT_RKNS_12LinearSpace3IS6_EEEUlRKNS_5rangeImEEE_FKS8_RSQ_SR_EEET0_SE_SE_SE_SE_RKST_RKT1_RKT2_EUlmE_EEvSE_SV_EUlSO_E_EEvSE_SE_SE_SV_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %1 = alloca %"struct.embree::BBox.29", align 8  ; 5 uses
  %2 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !35, !align !37 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !35, !align !37
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !35, !align !37
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !35, !align !37
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = add i64 %i.c, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = icmp ult i64 %i.t, %i.x
  br i1 %i.y, label %.lr.ph.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS7_RKT_RKNS_12LinearSpace3IS4_EEEUlRKNS_5rangeImEEE_FKS6_RSO_SP_EEET0_SC_SC_SC_SC_RKSR_RKT1_RKT2_EUlmE_EEvSC_ST_ENKUlSM_E_clESM_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !35, !align !37 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1421 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i, %.lr.ph.i.i.i
  %i.aj = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.094.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i ], [ %i.dz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ] ; 2 uses
  %i.ak = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i ], [ %i.dg, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.al = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i ], [ %i.dh, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.am = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i ], [ %i.di, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.an = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i ], [ %i.dj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.ao = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i ], [ %i.dk, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.ap = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i ], [ %i.dl, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.aq = phi float [ 1.000000e+00, %.lr.ph.i.i.i ], [ %i.dn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ] ; 2 uses
  %i.ar = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %i.dp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ] ; 2 uses
  %i.as = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ds, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.at = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ] ; 2 uses
  %i.au = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph.i.i.i ], [ %i.dx, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.av = load ptr, ptr %i.ac, align 16, !noalias !1421
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1421
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.ax, i64 %.094.i.i.i ; 2 uses
  %i.az = load ptr, ptr %i.ad, align 8, !noalias !1421, !nonnull !35, !align !37
  %.sroa.0.0.copyload.i.i.i = load <2 x float>, ptr %i.ae, align 8, !noalias !1421
  %i.ba = load ptr, ptr %i.af, align 8, !noalias !1421, !nonnull !35, !align !43
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !1421
  store <2 x float> %.sroa.0.0.copyload.i.i.i, ptr %1, align 8, !noalias !1422
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !1422 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !noalias !1422 ; 2 uses
  %i.bf = load ptr, ptr %i.az, align 8, !noalias !1422
  %i.bg = zext i32 %i.bc to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 488
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1422
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1422 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !1422
  %i.bl = zext i32 %i.be to i64
  %i.bm = load ptr, ptr %i.bk, align 16, !noalias !1422
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 496
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !1422
  call void %i.bo(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %2, ptr noundef nonnull align 16 dereferenceable(88) %i.bk, ptr noundef nonnull align 16 dereferenceable(48) %i.ba, i64 noundef %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %1), !noalias !1422, !inline_history !1416
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  %.sroa.0.0.copyload.i6.i.i.i = load <2 x float>, ptr %i.bp, align 4, !noalias !1423 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.br = load float, ptr %i.bq, align 8, !noalias !1423 ; 4 uses
  %.sroa.053.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i6.i.i.i, i64 0 ; 3 uses
  %.sroa.053.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i6.i.i.i, i64 1 ; 3 uses
  %i.bs = fsub float %.sroa.053.4.vec.extract.i.i.i, %.sroa.053.0.vec.extract.i.i.i
  %i.bt = load <2 x float>, ptr %1, align 8, !noalias !1424
  %i.bu = shufflevector <2 x float> %.sroa.0.0.copyload.i6.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fsub <2 x float> %i.bt, %i.bu
  %i.bw = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fdiv <2 x float> %i.bv, %i.bx           ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0
  %i.ca = fmul float %i.bz, f0x3F800002
  %i.cb = fmul float %i.br, %i.ca
  %i.cc = call noundef float @llvm.floor.f32(float %i.cb) ; 2 uses
  %i.cd = fcmp olt float %i.cc, 0.000000e+00
  %i.ce = select i1 %i.cd, float 0.000000e+00, float %i.cc
  %i.cf = fptosi float %i.ce to i32
  %i.cg = extractelement <2 x float> %i.by, i64 1
  %i.ch = fmul float %i.cg, f0x3F7FFFFC
  %i.ci = fmul float %i.br, %i.ch
  %i.cj = call noundef float @llvm.ceil.f32(float %i.ci) ; 2 uses
  %i.ck = fcmp olt float %i.cj, %i.br
  %i.cl = select i1 %i.ck, float %i.cj, float %i.br
  %i.cm = fptosi float %i.cl to i32
  %i.cn = sub nsw i32 %i.cm, %i.cf                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !noalias !1422
  %i.cq = add i32 %i.cp, -1                       ; 2 uses
  %i.cr = load <4 x float>, ptr %2, align 16, !noalias !1421
  %i.cs = load <4 x float>, ptr %i.ag, align 16, !noalias !1421
  %i.ct = load <4 x float>, ptr %i.ah, align 16, !noalias !1421
  %i.cu = load <4 x float>, ptr %i.ai, align 16, !noalias !1421
  %i.cv = bitcast i32 %i.bc to float
  %.sroa.0.12.vec.insert.i.i.i = insertelement <4 x float> %i.cr, float %i.cv, i64 3 ; 2 uses
  %i.cw = bitcast i32 %i.be to float
  %.sroa.6.28.vec.insert.i.i.i = insertelement <4 x float> %i.cs, float %i.cw, i64 3 ; 2 uses
  %i.cx = bitcast i32 %i.cn to float
  %.sroa.10.44.vec.insert.i.i.i = insertelement <4 x float> %i.ct, float %i.cx, i64 3 ; 2 uses
  %i.cy = bitcast i32 %i.cq to float
  %.sroa.15.60.vec.insert.i.i.i = insertelement <4 x float> %i.cu, float %i.cy, i64 3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !1422
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !1421
  %i.cz = fmul <4 x float> %.sroa.10.44.vec.insert.i.i.i, splat (float 5.000000e-01)
  %i.da = fmul <4 x float> %.sroa.0.12.vec.insert.i.i.i, splat (float 5.000000e-01)
  %i.db = fadd <4 x float> %i.da, %i.cz
  %i.dc = fmul <4 x float> %.sroa.15.60.vec.insert.i.i.i, splat (float 5.000000e-01)
  %i.dd = fmul <4 x float> %.sroa.6.28.vec.insert.i.i.i, splat (float 5.000000e-01)
  %i.de = fadd <4 x float> %i.dd, %i.dc
  %i.df = fadd <4 x float> %i.de, %i.db           ; 2 uses
  %i.dg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ak, <4 x float> %.sroa.0.12.vec.insert.i.i.i) ; 2 uses
  %i.dh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.al, <4 x float> %.sroa.6.28.vec.insert.i.i.i) ; 2 uses
  %i.di = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.am, <4 x float> %.sroa.10.44.vec.insert.i.i.i) ; 2 uses
  %i.dj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.an, <4 x float> %.sroa.15.60.vec.insert.i.i.i) ; 2 uses
  %i.dk = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ao, <4 x float> %i.df) ; 2 uses
  %i.dl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ap, <4 x float> %i.df) ; 2 uses
  %i.dm = fcmp olt float %i.aq, %.sroa.053.0.vec.extract.i.i.i
  %i.dn = select i1 %i.dm, float %i.aq, float %.sroa.053.0.vec.extract.i.i.i ; 2 uses
  %i.do = fcmp olt float %i.ar, %.sroa.053.4.vec.extract.i.i.i
  %i.dp = select i1 %i.do, float %.sroa.053.4.vec.extract.i.i.i, float %i.ar ; 2 uses
  %i.dq = add i64 %i.aj, 1                        ; 2 uses
  %i.dr = zext i32 %i.cn to i64
  %i.ds = add i64 %i.as, %i.dr                    ; 2 uses
  %i.dt = zext i32 %i.cq to i64                   ; 2 uses
  %i.du = icmp samesign ult i64 %i.at, %i.dt
  %i.dv = insertelement <2 x i1> poison, i1 %i.du, i64 0
  %i.dw = shufflevector <2 x i1> %i.dv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dx = select <2 x i1> %i.dw, <2 x float> %.sroa.0.0.copyload.i6.i.i.i, <2 x float> %i.au ; 2 uses
  %i.dy = call i64 @llvm.umax.i64(i64 %i.at, i64 %i.dt) ; 2 uses
  %i.dz = add nuw i64 %.094.i.i.i, 1              ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.x
  br i1 %i.ea, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS7_RKT_RKNS_12LinearSpace3IS4_EEEUlRKNS_5rangeImEEE_FKS6_RSO_SP_EEET0_SC_SC_SC_SC_RKSR_RKT1_RKT2_EUlmE_EEvSC_ST_ENKUlSM_E_clESM_.exit, !llvm.loop !13

_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS7_RKT_RKNS_12LinearSpace3IS4_EEEUlRKNS_5rangeImEEE_FKS6_RSO_SP_EEET0_SC_SC_SC_SC_RKSR_RKT1_RKT2_EUlmE_EEvSC_ST_ENKUlSM_E_clESM_.exit: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i, %bb.b
  %.sroa.16.0.i.i = phi i64 [ 0, %bb.b ], [ %i.dq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa85.i.i.i = phi i64 [ 0, %bb.b ], [ %i.dy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa83.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ds, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa81.i.i.i = phi float [ 0.000000e+00, %bb.b ], [ %i.dp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa79.i.i.i = phi float [ 1.000000e+00, %bb.b ], [ %i.dn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa77.i.i.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.dl, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa75.i.i.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.dk, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa73.i.i.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.dj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa71.i.i.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.di, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa69.i.i.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.dh, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %.lcssa.i.i.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.dg, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.eb = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ], [ %i.dx, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !35, !align !48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8064
  %i.ef = load ptr, ptr %i.ee, align 64
  %i.eg = getelementptr inbounds nuw [144 x i8], ptr %i.ef, i64 %i.c ; 13 uses
  store <4 x float> %.lcssa.i.i.i, ptr %i.eg, align 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <4 x float> %.lcssa69.i.i.i, ptr %i.eh, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store <4 x float> %.lcssa71.i.i.i, ptr %i.ei, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  store <4 x float> %.lcssa73.i.i.i, ptr %i.ej, align 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  store <4 x float> %.lcssa75.i.i.i, ptr %i.ek, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  store <4 x float> %.lcssa77.i.i.i, ptr %i.el, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  store i64 0, ptr %i.em, align 16
  %.sroa.16.96..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  store i64 %.sroa.16.0.i.i, ptr %.sroa.16.96..sroa_idx.i.i, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 112
  store i64 %.lcssa83.i.i.i, ptr %i.en, align 16
  %.sroa.19.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 120
  store i64 %.lcssa85.i.i.i, ptr %.sroa.19.112..sroa_idx.i.i, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 128
  store <2 x float> %i.eb, ptr %i.eo, align 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  store float %.lcssa79.i.i.i, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 140
  store float %.lcssa81.i.i.i, ptr %i.eq, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.er = add i64 %i.c, %i.a
  %i.es = lshr i64 %i.er, 1                       ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS9_RKT_RKNS_12LinearSpace3IS6_EEEUlRKNS_5rangeImEEE_FKS8_RSQ_SR_EEET0_SE_SE_SE_SE_RKST_RKT1_RKT2_EUlmE_EEvSE_SV_EUlSO_E_EEvSE_SE_SE_SV_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.es, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.ev)
  %i.ew = load i64, ptr %0, align 8
  %i.ex = load i64, ptr %i.e, align 8
  %i.ey = load ptr, ptr %i.eu, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS9_RKT_RKNS_12LinearSpace3IS6_EEEUlRKNS_5rangeImEEE_FKS8_RSQ_SR_EEET0_SE_SE_SE_SE_RKST_RKT1_RKT2_EUlmE_EEvSE_SV_EUlSO_E_EEvSE_SE_SE_SV_PNS0_16TaskGroupContextE(i64 noundef %i.es, i64 noundef %i.ew, i64 noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.ey)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNKS_5SetMB8primInfoINS_4sse225VirtualRecalculatePrimRefEEEKS7_RKT_RKNS_12LinearSpace3IS4_EEEUlRKNS_5rangeImEEE_FKS6_RSO_SP_EEET0_SC_SC_SC_SC_RKSR_RKT1_RKT2_EUlmE_EEvSC_ST_ENKUlSM_E_clESM_.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZNK6embree4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenter18binBoundsAndCenterERKS2_RNS_5LBBoxINS_6Vec3faEEERS8_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(72) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %4 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %i.a = load ptr, ptr %0, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.h, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 496
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LBBox") align 16 %4, ptr noundef nonnull align 16 dereferenceable(88) %i.h, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(8) %i.m)
  %i.q = load <4 x float>, ptr %4, align 16       ; 2 uses
  store <4 x float> %i.q, ptr %2, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load <4 x float>, ptr %i.r, align 16     ; 2 uses
  store <4 x float> %i.t, ptr %i.s, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load <4 x float>, ptr %i.u, align 16     ; 2 uses
  store <4 x float> %i.w, ptr %i.v, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load <4 x float>, ptr %i.x, align 16     ; 2 uses
  store <4 x float> %i.z, ptr %i.y, align 16
  %i.aa = fmul <4 x float> %i.w, splat (float 5.000000e-01)
  %i.ab = fmul <4 x float> %i.q, splat (float 5.000000e-01)
  %i.ac = fadd <4 x float> %i.ab, %i.aa
  %i.ad = fmul <4 x float> %i.z, splat (float 5.000000e-01)
  %i.ae = fmul <4 x float> %i.t, splat (float 5.000000e-01)
  %i.af = fadd <4 x float> %i.ae, %i.ad
  %i.ag = fadd <4 x float> %i.ac, %i.af
  store <4 x float> %i.ag, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree12bin_parallelINS_4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenterENS1_8BinInfoTILm32ES3_NS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmmRKT1_RKT_ENKUlRKNS_5rangeImEEE_clESR_(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinInfoT") align 64 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #15 comdat align 2 {
.preheader104.preheader:
  %3 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %4 = alloca %"struct.embree::Vec3fa", align 16  ; 4 uses
  %5 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %6 = alloca %"struct.embree::Vec3fa", align 16  ; 4 uses
  %7 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %8 = alloca %"struct.embree::Vec3fa", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 10 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %.preheader104.preheader, %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %.0.i105 = phi i64 [ 0, %.preheader104.preheader ], [ %i.o, %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 3 uses
  %i.b = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %.0.i105 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store <4 x float> splat (float +inf), ptr %i.c, align 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store <4 x float> splat (float -inf), ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store <4 x float> splat (float +inf), ptr %i.e, align 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store <4 x float> splat (float -inf), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store <4 x float> splat (float +inf), ptr %i.g, align 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <4 x float> splat (float -inf), ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x float> splat (float +inf), ptr %i.i, align 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store <4 x float> splat (float -inf), ptr %i.j, align 16
  store <4 x float> splat (float +inf), ptr %i.b, align 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> splat (float -inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x float> splat (float +inf), ptr %i.l, align 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x float> splat (float -inf), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0.i105
  store <2 x i64> zeroinitializer, ptr %i.n, align 16
  %i.o = add nuw nsw i64 %.0.i105, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, 32
  br i1 %exitcond.not, label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !9

_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  %i.p = load ptr, ptr %1, align 8, !nonnull !35, !align !37
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %2, align 8                ; 3 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sub i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !35, !align !43 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !35, !align !43 ; 3 uses
  %i.aa = icmp eq i64 %i.u, %i.r
  br i1 %i.aa, label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE3binINS0_32UnalignedHeuristicArrayBinningMBIS2_Lm32EE18BinBoundsAndCenterEEEvPKS2_mRKNS0_10BinMappingILm32EEERKT_.exit, label %.preheader

.preheader:                                       ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5clearEv.exit
  %i.ab = add i64 %i.v, -1                        ; 2 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %.0.i3106 = phi i64 [ 0, %.lr.ph ], [ %i.gb, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.s, i64 %.0.i3106 ; 4 uses
  call void @_ZNK6embree4sse232UnalignedHeuristicArrayBinningMBINS_9PrimRefMBELm32EE18BinBoundsAndCenter18binBoundsAndCenterERKS2_RNS_5LBBoxINS_6Vec3faEEERS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.z, ptr noundef nonnull align 16 dereferenceable(72) %i.ak, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(16) %4)
end_hunk_2
