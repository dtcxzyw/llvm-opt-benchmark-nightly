Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a

.lr.ph242.i:                                      ; preds = %.lr.ph242.i.preheader, %.lr.ph242.i
  %.0240.i = phi i32 [ %i.yz, %.lr.ph242.i ], [ %.0240.i.ph, %.lr.ph242.i.preheader ]
  %.0459239.i = phi ptr [ %i.yy, %.lr.ph242.i ], [ %.0459239.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %.13238.i = phi ptr [ %i.yx, %.lr.ph242.i ], [ %.13238.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %i.yu = load <2 x i32>, ptr %.0459239.i, align 4, !tbaa !22
  %i.yv = lshr <2 x i32> %i.yu, splat (i32 16)
  %i.yw = trunc nuw <2 x i32> %i.yv to <2 x i16>
  store <2 x i16> %i.yw, ptr %.13238.i, align 2, !tbaa !24
  %i.yx = getelementptr inbounds nuw i8, ptr %.13238.i, i64 4 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.0459239.i, i64 8 ; 2 uses
  %i.yz = add nuw nsw i32 %.0240.i, 2             ; 2 uses
  %i.za = or disjoint i32 %i.yz, 1
  %i.zb = icmp slt i32 %i.za, %.sroa.speculated
  br i1 %i.zb, label %.lr.ph242.i, label %.preheader.i, !llvm.loop !395

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.preheader, %.lr.ph249.i
  %.1248.i = phi i32 [ %i.zh, %.lr.ph249.i ], [ %.1248.i.ph, %.lr.ph249.i.preheader ]
  %.1460247.i = phi ptr [ %i.zg, %.lr.ph249.i ], [ %.1460247.i.ph, %.lr.ph249.i.preheader ] ; 2 uses
  %.14246.i = phi ptr [ %i.zf, %.lr.ph249.i ], [ %.14246.i.ph, %.lr.ph249.i.preheader ] ; 2 uses
  %i.zc = load i32, ptr %.1460247.i, align 4, !tbaa !22
  %i.zd = lshr i32 %i.zc, 16
  %i.ze = trunc nuw i32 %i.zd to i16
  store i16 %i.ze, ptr %.14246.i, align 2, !tbaa !24
  %i.zf = getelementptr inbounds nuw i8, ptr %.14246.i, i64 2 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.1460247.i, i64 4
  %i.zh = add nuw nsw i32 %.1248.i, 1             ; 2 uses
  %exitcond328.not.i = icmp eq i32 %i.zh, %.sroa.speculated
  br i1 %exitcond328.not.i, label %._crit_edge250.i, label %.lr.ph249.i, !llvm.loop !396

._crit_edge250.i:                                 ; preds = %.lr.ph249.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader.i ], [ %i.yo, %vec.epilog.middle.block ], [ %i.xr, %middle.block ], [ %i.zf, %.lr.ph249.i ]
  %indvars.iv.next330.i = add nuw nsw i64 %indvars.iv329.i, 1 ; 2 uses
  %exitcond332.not.i = icmp eq i64 %indvars.iv.next330.i, %i.ap
  br i1 %exitcond332.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f, !llvm.loop !397

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge250.i, %.preheader3.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ab ; 2 uses
  %i.zi = icmp slt i64 %indvars.iv.next, %i.ac
  %indvar.next = add i32 %indvar, 1
  br i1 %i.zi, label %.noexc, label %._crit_edge, !llvm.loop !398

._crit_edge109.split:                             ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge109.split, %bb.a
  ret void
}

declare noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv() local_unnamed_addr #2

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #2

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn40convolution_im2col_gemm_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %13) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.q = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !30
  store i32 %5, ptr %i.b, align 4, !tbaa !30
  store i32 %6, ptr %i.c, align 4, !tbaa !30
  store i32 %7, ptr %i.d, align 4, !tbaa !30
  store i32 %8, ptr %i.e, align 4, !tbaa !30
  store i32 %9, ptr %i.f, align 4, !tbaa !30
  store i32 %10, ptr %i.g, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load <4 x i32>, ptr %i.r, align 8
  %i.t = shufflevector <4 x i32> %i.s, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load <4 x i32>, ptr %i.u, align 8
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !35
  %i.ab = mul nsw i32 %i.aa, %i.y                 ; 3 uses
  store i32 %i.ab, ptr %i.i, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !32
  %i.ag = mul i32 %5, %4
  %i.ah = mul i32 %i.ag, %i.ad
  %i.ai = insertelement <2 x i32> %i.w, i32 %i.ah, i64 1
  %i.aj = insertelement <2 x i32> %i.t, i32 %i.af, i64 1
  %i.ak = mul <2 x i32> %i.ai, %i.aj              ; 3 uses
  %i.al = extractelement <2 x i32> %i.ak, i64 0   ; 2 uses
  store i32 %i.al, ptr %i.h, align 4, !tbaa !30
  %i.am = extractelement <2 x i32> %i.ak, i64 1   ; 2 uses
  store i32 %i.am, ptr %i.j, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.an = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.ao = ashr i32 %i.an, 1                       ; 2 uses
  %i.ap = icmp eq i32 %12, 0
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0120.i.i = phi i32 [ %i.aq, %bb.b ], [ %12, %bb.a ] ; 3 uses
  %i.ar = add nsw i32 %i.ao, -64
  %i.as = sdiv i32 %i.ar, 256
  %i.at = shl nsw i32 %i.as, 4
  %.sroa.speculated110.i.i = tail call i32 @llvm.smax.i32(i32 %i.at, i32 16) ; 3 uses
  %i.au = add <2 x i32> %i.ak, splat (i32 -1)     ; 3 uses
  %i.av = extractelement <2 x i32> %i.au, i64 1   ; 2 uses
  %i.aw = add i32 %.sroa.speculated110.i.i, %i.av
  %i.ax = sdiv i32 %i.aw, %.sroa.speculated110.i.i ; 2 uses
  %i.ay = add i32 %i.ax, %i.av
  %i.az = sdiv i32 %i.ay, %i.ax
  %i.ba = add nsw i32 %i.az, 15
  %i.bb = sdiv i32 %i.ba, 16
  %i.bc = shl nsw i32 %i.bb, 4
  %.sroa.speculated105.i.i = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %.sroa.speculated110.i.i) ; 6 uses
  store i32 %.sroa.speculated105.i.i, ptr %i.m, align 4, !tbaa !30
  %i.bd = add nsw i32 %i.al, 63
  %i.be = sdiv i32 %i.bd, 64                      ; 2 uses
  %i.bf = extractelement <2 x i32> %i.au, i64 0   ; 3 uses
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = sdiv i32 %i.bg, %i.be
  %i.bi = add nsw i32 %i.bh, 15
  %i.bj = sdiv i32 %i.bi, 16
  %i.bk = shl nsw i32 %i.bj, 4
  %.sroa.speculated98.i.i = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 16)
  %i.bl = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated93.i.i = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %.0120.i.i)
  %i.bm = mul nsw i32 %.sroa.speculated98.i.i, %.sroa.speculated93.i.i ; 3 uses
  %i.bn = add i32 %i.bm, %i.bf
  %i.bo = sdiv i32 %i.bn, %i.bm                   ; 2 uses
  %i.bp = add i32 %i.bo, %i.bf
  %i.bq = sdiv i32 %i.bp, %i.bo
  %i.br = add nsw i32 %i.bq, 15
  %i.bs = sdiv i32 %i.br, 16
  %i.bt = shl nsw i32 %i.bs, 4
  %.sroa.speculated88.i.i = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.bm) ; 3 uses
  %i.bu = icmp sgt i32 %.0120.i.i, 1
  br i1 %i.bu, label %bb.d, label %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i

bb.d:                                             ; preds = %bb.c
  %i.bv = sdiv i32 %.sroa.speculated88.i.i, %.0120.i.i
  %.sroa.speculated76.i.i = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 1)
  %i.bw = add nuw nsw i32 %.sroa.speculated76.i.i, 15
  %i.bx = and i32 %i.bw, 2147483632
  %.sroa.speculated83.i.i = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %.sroa.speculated88.i.i)
  br label %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i

_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i: ; preds = %bb.d, %bb.c
  %i.by = phi i32 [ %.sroa.speculated83.i.i, %bb.d ], [ %.sroa.speculated88.i.i, %bb.c ] ; 5 uses
  store i32 %i.by, ptr %i.k, align 4, !tbaa !30
  %i.bz = icmp sgt i32 %i.ab, 0
  tail call void @llvm.assume(i1 %i.bz)
  %.not.i47.i = icmp slt i32 %.sroa.speculated105.i.i, %i.am
  %i.ca = mul nsw i32 %i.by, %.sroa.speculated105.i.i
  %i.cb = sub nsw i32 %i.ao, %i.ca
  %i.cc = select i1 %.not.i47.i, i32 %i.by, i32 0
  %.sink.i.i = add nsw i32 %i.cc, %.sroa.speculated105.i.i
  %i.cd = sdiv i32 %i.cb, %.sink.i.i
  %i.ce = sdiv i32 %i.cd, 16
  %i.cf = shl nsw i32 %i.ce, 4
  %.sroa.speculated69.i.i = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 16) ; 3 uses
  %i.cg = add nsw i32 %i.ab, -1                   ; 3 uses
  %i.ch = add nuw i32 %.sroa.speculated69.i.i, %i.cg
  %16 = sdiv i32 %i.ch, %.sroa.speculated69.i.i   ; 2 uses
  %i.ci = add i32 %16, %i.cg
  %17 = sdiv i32 %i.ci, %16
  %i.cj = add nsw i32 %17, 15
  %18 = sdiv i32 %i.cj, 16
  %19 = shl nsw i32 %18, 4
  %.sroa.speculated64.i.i = tail call i32 @llvm.smin.i32(i32 %19, i32 %.sroa.speculated69.i.i)
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated64.i.i, i32 16) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %i.l, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  %i.ck = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %i.cl = insertelement <2 x i32> %i.ck, i32 %.sroa.speculated105.i.i, i64 1 ; 2 uses
  %i.cm = add <2 x i32> %i.au, %i.cl
  %i.cn = add nuw i32 %.sroa.speculated.i.i, %i.cg
  %i.co = sdiv i32 %i.cn, %.sroa.speculated.i.i   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  %i.cp = sdiv <2 x i32> %i.cm, %i.cl             ; 2 uses
  %i.cq = extractelement <2 x i32> %i.cp, i64 0
  store i32 %i.cq, ptr %i.n, align 4, !tbaa !30
  %i.cr = extractelement <2 x i32> %i.cp, i64 1   ; 2 uses
  store i32 %i.cr, ptr %i.o, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.cs = mul nsw i32 %.sroa.speculated.i.i, %.sroa.speculated105.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !49
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  store i64 0, ptr %i.cx, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cw, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.cs, i32 noundef %i.cr, i32 noundef %i.co, i64 noundef 2, ptr noundef %i.cu)
  %i.cy = load ptr, ptr %14, align 8, !tbaa !15
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZNK4ncnn3Mat5emptyEv.exit46.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit46.i

_ZNK4ncnn3Mat5emptyEv.exit46.i:                   ; preds = %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.db = load i64, ptr %i.cx, align 8, !tbaa !16
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !33
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul i64 %i.db, %i.dd
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_ZNK4ncnn3Mat5emptyEv.exit46.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit46.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
  %i.dg = load i32, ptr %i.o, align 4, !tbaa !30
  %i.dh = mul nsw i32 %i.dg, %i.co
  store i32 %i.dh, ptr %i.p, align 4, !tbaa !30
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.q, i32 %12)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 14, ptr nonnull @_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined, ptr nonnull %i.p, ptr nonnull %i.o, ptr nonnull %i.l, ptr nonnull %i.m, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %14, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  store i64 0, ptr %i.dl, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %15, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dj, i8 0, i64 28, i1 false)
  %i.dm = load i32, ptr %i.j, align 4, !tbaa !30
  %i.dn = load i32, ptr %i.m, align 4, !tbaa !30
  %i.do = icmp sgt i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.dp = load i32, ptr %i.l, align 4, !tbaa !30
  %i.dq = mul nsw i32 %i.dp, %i.by
  %i.dr = load ptr, ptr %i.ct, align 8, !tbaa !49
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.dq, i32 noundef 1, i32 noundef %12, i64 noundef 4, ptr noundef %i.dr)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ds = load ptr, ptr %15, align 8, !tbaa !15
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit.i

_ZNK4ncnn3Mat5emptyEv.exit.i:                     ; preds = %bb.g
  %i.du = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.dv = load i32, ptr %i.dk, align 8, !tbaa !33
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.du, %i.dw
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %i.di, align 8, !tbaa !45 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit26.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eb = atomicrmw add ptr %i.ea, i32 -1 acq_rel, align 4
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit26.i

bb.j:                                             ; preds = %bb.i
  %i.ed = load ptr, ptr %i.dj, align 8, !tbaa !46 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.ed, null
  %i.ee = load ptr, ptr %15, align 8, !tbaa !15   ; 3 uses
  br i1 %.not3.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !48
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef %i.ee)
          to label %_ZN4ncnn3MatD2Ev.exit26.i unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i44.i = icmp eq ptr %i.ee, null
  br i1 %.not.i44.i, label %_ZN4ncnn3MatD2Ev.exit26.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ee) #10
  br label %_ZN4ncnn3MatD2Ev.exit26.i

bb.n:                                             ; preds = %bb.k
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit26.i:                        ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #10
  %i.ek = load ptr, ptr %i.cv, align 8, !tbaa !45 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.ek, null
  br i1 %.not.i35.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ab

bb.o:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i, %bb.e
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.q, i32 %12)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 14, ptr nonnull @_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined.1, ptr nonnull %i.n, ptr nonnull %i.k, ptr nonnull %i.j, ptr nonnull %i.m, ptr nonnull %15, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %14, ptr nonnull align 8 dereferenceable(72) %3, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %11)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i

_ZNK4ncnn3Mat5emptyEv.exit.thread.i:              ; preds = %bb.o, %_ZNK4ncnn3Mat5emptyEv.exit.i, %bb.g
  %.022.i = phi i32 [ 0, %bb.o ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.i ], [ -100, %bb.g ]
  %i.el = load ptr, ptr %i.di, align 8, !tbaa !45 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.el, null
  br i1 %.not.i27.i, label %_ZN4ncnn3MatD2Ev.exit25.i, label %bb.p

bb.p:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread.i
  %i.em = atomicrmw add ptr %i.el, i32 -1 acq_rel, align 4
  %i.en = icmp eq i32 %i.em, 1
  br i1 %i.en, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit25.i

bb.q:                                             ; preds = %bb.p
  %i.eo = load ptr, ptr %i.dj, align 8, !tbaa !46 ; 3 uses
  %.not3.i28.i = icmp eq ptr %i.eo, null
  %i.ep = load ptr, ptr %15, align 8, !tbaa !15   ; 3 uses
  br i1 %.not3.i28.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !48
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.ep)
          to label %_ZN4ncnn3MatD2Ev.exit25.i unwind label %bb.u, !inline_history !0

bb.s:                                             ; preds = %bb.q
  %.not.i42.i = icmp eq ptr %i.ep, null
  br i1 %.not.i42.i, label %_ZN4ncnn3MatD2Ev.exit25.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ep) #10
  br label %_ZN4ncnn3MatD2Ev.exit25.i

bb.u:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit25.i:                        ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %_ZNK4ncnn3Mat5emptyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit46.thread.i

_ZNK4ncnn3Mat5emptyEv.exit46.thread.i:            ; preds = %_ZN4ncnn3MatD2Ev.exit25.i, %_ZNK4ncnn3Mat5emptyEv.exit46.i, %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i
  %.1.i = phi i32 [ %.022.i, %_ZN4ncnn3MatD2Ev.exit25.i ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit46.i ], [ -100, %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i ]
  %i.ev = load ptr, ptr %i.cv, align 8, !tbaa !45 ; 2 uses
  %.not.i31.i = icmp eq ptr %i.ev, null
  br i1 %.not.i31.i, label %_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit46.thread.i
  %i.ew = atomicrmw add ptr %i.ev, i32 -1 acq_rel, align 4
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.w, label %_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.exit

bb.w:                                             ; preds = %bb.v
  %i.ey = load ptr, ptr %i.cw, align 8, !tbaa !46 ; 3 uses
  %.not3.i32.i = icmp eq ptr %i.ey, null
  %i.ez = load ptr, ptr %14, align 8, !tbaa !15   ; 3 uses
  br i1 %.not3.i32.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef %i.ez)
          to label %_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.exit unwind label %bb.aa, !inline_history !0

bb.y:                                             ; preds = %bb.w
  %.not.i40.i = icmp eq ptr %i.ez, null
  br i1 %.not.i40.i, label %_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.exit, label %bb.z
end_hunk_0
begin_hunk_1_@_ZN4ncnn37conv3x3s1_winograd23_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE:bb.a
  call void @__clang_call_terminate(ptr %i.ho) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao, %.critedge80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.au

bb.au:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %_ZN4ncnn3MatD2Ev.exit81.i, %_ZN4ncnn3MatD2Ev.exit84.i
  %.366.i = phi i32 [ %.265.i, %_ZN4ncnn3MatD2Ev.exit84.i ], [ -100, %_ZN4ncnn3MatD2Ev.exit81.i ], [ -100, %_ZN4ncnn3MatD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i

bb.av:                                            ; preds = %bb.aa, %bb.r, %bb.d
  %.pn75.pn.i = phi { ptr, i32 } [ %i.gk, %bb.aa ], [ %i.ck, %bb.d ], [ %i.fj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  %i.hp = load ptr, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %.not.i130.i = icmp eq ptr %i.hp, null
  br i1 %.not.i130.i, label %_ZN4ncnn3MatD2Ev.exit82.i, label %bb.bc

_ZNK4ncnn3Mat5emptyEv.exit172.thread.i:           ; preds = %bb.au, %_ZNK4ncnn3Mat5emptyEv.exit172.i, %bb.a
  %.467.i = phi i32 [ %.366.i, %bb.au ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit172.i ], [ -100, %bb.a ]
  %i.hq = load ptr, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %.not.i126.i = icmp eq ptr %i.hq, null
  br i1 %.not.i126.i, label %_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i
  %i.hr = atomicrmw add ptr %i.hq, i32 -1 acq_rel, align 4
  %i.hs = icmp eq i32 %i.hr, 1
  br i1 %i.hs, label %bb.ax, label %_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ht = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 3 uses
  %.not3.i127.i = icmp eq ptr %i.ht, null
  %i.hu = load ptr, ptr %8, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i127.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !48
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef %i.hu)
          to label %_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit unwind label %bb.bb, !inline_history !0

bb.az:                                            ; preds = %bb.ax
  %.not.i147.i = icmp eq ptr %i.hu, null
  br i1 %.not.i147.i, label %_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.hu) #10
  br label %_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit

bb.bb:                                            ; preds = %bb.ay
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #26
  unreachable

bb.bc:                                            ; preds = %bb.av
  %i.ia = atomicrmw add ptr %i.hp, i32 -1 acq_rel, align 4
  %i.ib = icmp eq i32 %i.ia, 1
  br i1 %i.ib, label %bb.bd, label %_ZN4ncnn3MatD2Ev.exit82.i

bb.bd:                                            ; preds = %bb.bc
  %i.ic = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 3 uses
  %.not3.i131.i = icmp eq ptr %i.ic, null
  %i.id = load ptr, ptr %8, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i131.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !48
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8
  invoke void %i.ig(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef %i.id)
          to label %_ZN4ncnn3MatD2Ev.exit82.i unwind label %bb.bh, !inline_history !0

bb.bf:                                            ; preds = %bb.bd
  %.not.i145.i = icmp eq ptr %i.id, null
  br i1 %.not.i145.i, label %_ZN4ncnn3MatD2Ev.exit82.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @free(ptr noundef nonnull %i.id) #10
  br label %_ZN4ncnn3MatD2Ev.exit82.i

bb.bh:                                            ; preds = %bb.be
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit82.i:                        ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  resume { ptr, i32 } %.pn75.pn.i

_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit: ; preds = %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i, %bb.aw, %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i32 %.467.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = sext i32 %i.a to i64
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %6, %bb.a ]    ; 3 uses
  %i.e = uitofp fast i64 %i.b to float            ; 2 uses
  %i.f = fmul fast float %i.e, 2.500000e-01       ; 2 uses
  %i.g = fmul fast float %i.e, f0x3DAAAAAB
  %i.h = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.g)
  %i.i = fptosi float %i.h to i32
  %i.j = and i32 %i.i, 2147483632
  %.sroa.speculated86 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 16)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !30
  %i.k = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %.0)
  %i.l = load i32, ptr %3, align 4, !tbaa !30
  %i.m = mul nsw i32 %i.l, %.sroa.speculated82    ; 3 uses
  %i.n = add i32 %0, -1                           ; 2 uses
  %i.o = add i32 %i.n, %i.m
  %i.p = sdiv i32 %i.o, %i.m                      ; 2 uses
  %i.q = add i32 %i.n, %i.p
  %i.r = sdiv i32 %i.q, %i.p
  %i.s = add nsw i32 %i.r, 15
  %i.t = sdiv i32 %i.s, 16
  %i.u = shl nsw i32 %i.t, 4
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.m) ; 3 uses
  %i.v = icmp sgt i32 %.0, 1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.x = add nuw nsw i32 %.sroa.speculated68, 15
  %i.y = and i32 %i.x, 2147483632
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !30
  %i.z = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.aa = sitofp fast i32 %storemerge to float
  %i.ab = fsub fast float %i.z, %i.aa
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sdiv i32 %i.ac, 16
  %i.ae = shl nsw i32 %i.ad, 4
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 16) ; 3 uses
  %i.af = add i32 %2, -1                          ; 2 uses
  %i.ag = add i32 %i.af, %.sroa.speculated62
  %i.ah = sdiv i32 %i.ag, %.sroa.speculated62     ; 2 uses
  %i.ai = add i32 %i.af, %i.ah
  %i.aj = sdiv i32 %i.ai, %i.ah
  %i.ak = add nsw i32 %i.aj, 15
  %i.al = sdiv i32 %i.ak, 16
  %i.am = shl nsw i32 %i.al, 4
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !30
  %i.an = icmp sgt i32 %1, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %3, align 4, !tbaa !30    ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %.sroa.speculated58
  %i.aq = sitofp fast i32 %i.ap to float
  %i.ar = fsub fast float %i.f, %i.aq
  %i.as = add nsw i32 %i.ao, %.sroa.speculated58
  %i.at = sitofp fast i32 %i.as to float
  %i.au = fdiv fast float %i.ar, %i.at
  %i.av = fptosi float %i.au to i32
  %i.aw = sdiv i32 %i.av, 16
  %i.ax = shl nsw i32 %i.aw, 4
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 16) ; 3 uses
  %i.ay = add nsw i32 %1, -1                      ; 2 uses
  %i.az = add nuw i32 %i.ay, %.sroa.speculated52
  %7 = sdiv i32 %i.az, %.sroa.speculated52        ; 2 uses
  %i.ba = add i32 %i.ay, %7
  %8 = sdiv i32 %i.ba, %7
  %i.bb = add nsw i32 %8, 15
  %9 = sdiv i32 %i.bb, 16
  %10 = shl nsw i32 %9, 4
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %10, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 %i.j, ptr %i.e, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 1, ptr %i.f, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store i32 0, ptr %i.g, align 4, !tbaa !30
  %i.k = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !30
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !30
  %i.n = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %.not68 = icmp sgt i32 %i.n, %i.m
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.069 = phi i32 [ %i.n, %.lr.ph ], [ %i.ea, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !30    ; 2 uses
  %i.au = sdiv i32 %.069, %i.at
  %i.av = srem i32 %.069, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !30    ; 2 uses
  %i.ax = load i32, ptr %5, align 4, !tbaa !30    ; 2 uses
  %i.ay = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.az = mul nsw i32 %i.ax, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !30
  %i.bb = sub nsw i32 %i.ba, %i.ay
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !30
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !31, !noalias !689 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !35, !noalias !689 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !50, !noalias !689
  %i.bi = load ptr, ptr %8, align 8, !tbaa !15, !noalias !689
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !689
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !17, !noalias !689 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !32, !noalias !689
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !46, !noalias !689
  store ptr %i.bo, ptr %11, align 8, !tbaa !15
  store ptr null, ptr %i.v, align 8, !tbaa !45
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !17
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !32
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !46
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !31
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !35
  store i32 1, ptr %i.ac, align 4, !tbaa !50
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !33
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !16
  %i.by = load i32, ptr %i.af, align 8, !tbaa !51, !noalias !689 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !51, !alias.scope !689
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit34

bb.d:                                             ; preds = %.noexc33
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !16, !alias.scope !689
  br label %_ZN4ncnn3Mat7channelEi.exit34

_ZN4ncnn3Mat7channelEi.exit34:                    ; preds = %bb.d, %.noexc33
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ay, i32 noundef %.sroa.speculated65, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.cb = load i32, ptr %4, align 4, !tbaa !30
  %i.cc = load ptr, ptr %10, align 8, !tbaa !15, !noalias !690
  %i.cd = load i64, ptr %i.ai, align 8, !tbaa !16, !noalias !690
  %i.ce = load i64, ptr %i.aj, align 8, !tbaa !17, !noalias !690 ; 3 uses
  %i.cf = load i32, ptr %i.ak, align 8, !tbaa !32, !noalias !690
  %i.cg = load ptr, ptr %i.al, align 8, !tbaa !46, !noalias !690
  %i.ch = load i32, ptr %5, align 4, !tbaa !30
  %i.ci = insertelement <2 x i32> poison, i32 %i.ay, i64 0
  %i.cj = insertelement <2 x i32> %i.ci, i32 %i.az, i64 1
  %i.ck = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %i.cl = insertelement <2 x i32> %i.ck, i32 %i.ch, i64 1
  %i.cm = sdiv <2 x i32> %i.cj, %i.cl             ; 2 uses
  %i.cn = extractelement <2 x i32> %i.cm, i64 0
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %i.cd, %i.co
  %i.cq = mul i64 %i.cp, %i.ce
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cq
  %i.cs = extractelement <2 x i32> %i.cm, i64 1
  %i.ct = sext i32 %i.cs to i64
  store ptr null, ptr %i.am, align 8, !tbaa !45, !alias.scope !691
  store i64 %i.ce, ptr %i.an, align 8, !tbaa !17, !alias.scope !691
  store i32 %i.cf, ptr %i.ao, align 8, !tbaa !32, !alias.scope !691
  store ptr %i.cg, ptr %i.ap, align 8, !tbaa !46, !alias.scope !691
  %i.cu = load <2 x i32>, ptr %i.ag, align 4, !tbaa !30, !noalias !690
  %i.cv = load i32, ptr %i.ah, align 8, !tbaa !35, !noalias !690
  %i.cw = load i32, ptr %i.ag, align 4, !tbaa !31, !noalias !690
  %i.cx = sext i32 %i.cw to i64
  %i.cy = sext i32 %i.cv to i64
  %i.cz = mul nsw i64 %i.cy, %i.cx                ; 2 uses
  %i.da = mul i64 %i.ce, %i.cz
  %i.db = mul i64 %i.da, %i.ct
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db
  store ptr %i.dc, ptr %12, align 8, !tbaa !15, !alias.scope !691
  %i.dd = shufflevector <2 x i32> %i.cu, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.de = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.dd, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.de, ptr %i.aq, align 8, !tbaa !30, !alias.scope !691
  store i32 1, ptr %i.ar, align 8, !tbaa !33, !alias.scope !691
  store i64 %i.cz, ptr %i.as, align 8, !tbaa !16, !alias.scope !691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.df = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !30
  store i32 %.sroa.speculated65, ptr %i.b, align 4, !tbaa !30
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !30
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.df, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dg = load ptr, ptr %i.am, align 8, !tbaa !45 ; 2 uses
  %.not.i38 = icmp eq ptr %i.dg, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.dh = atomicrmw add ptr %i.dg, i32 -1 acq_rel, align 4
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.dj = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.4:bb.a
  %i.bj = load ptr, ptr %4, align 8, !tbaa !15, !noalias !981
  %i.bk = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !981
  %i.bl = sext i32 %i.bf to i64
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = load i64, ptr %i.p, align 8, !tbaa !17, !noalias !981 ; 4 uses
  %i.bo = mul i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.q, align 8, !tbaa !32, !noalias !981
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !46, !noalias !981
  store ptr %i.bp, ptr %16, align 8, !tbaa !15
  store ptr null, ptr %i.s, align 8, !tbaa !45
  store i64 %i.bn, ptr %i.t, align 8, !tbaa !17
  store i32 %i.bq, ptr %i.u, align 8, !tbaa !32
  store ptr %i.br, ptr %i.v, align 8, !tbaa !46
  store i32 %i.bg, ptr %i.x, align 4, !tbaa !31
  store i32 %i.bh, ptr %i.y, align 8, !tbaa !35
  store i32 1, ptr %i.z, align 4, !tbaa !50
  store i32 %i.bi, ptr %i.aa, align 8, !tbaa !33
  %i.bs = sext i32 %i.bg to i64
  %i.bt = sext i32 %i.bh to i64
  %i.bu = mul nsw i64 %i.bt, %i.bs                ; 2 uses
  %i.bv = mul i64 %i.bn, %i.bu
  %i.bw = add i64 %i.bv, 15
  %i.bx = and i64 %i.bw, -16
  %i.by = udiv i64 %i.bx, %i.bn
  store i64 %i.by, ptr %i.ab, align 8, !tbaa !16
  %i.bz = load i32, ptr %i.ac, align 8, !tbaa !51, !noalias !981 ; 2 uses
  %i.ca = add nsw i32 %i.bz, -1
  store i32 %i.ca, ptr %i.w, align 8, !tbaa !51, !alias.scope !981
  %i.cb = icmp eq i32 %i.bz, 4
  br i1 %i.cb, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit50

bb.d:                                             ; preds = %.noexc49
  store i64 %i.bu, ptr %i.ab, align 8, !tbaa !16, !alias.scope !981
  br label %_ZN4ncnn3Mat7channelEi.exit50

_ZN4ncnn3Mat7channelEi.exit50:                    ; preds = %bb.d, %.noexc49
  %i.cc = load i32, ptr %5, align 4, !tbaa !30
  %i.cd = sub nsw i32 %i.cc, %i.be
  %i.ce = load i32, ptr %3, align 4, !tbaa !30
  %.sroa.speculated123 = call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.cd) ; 2 uses
  %i.cf = load i32, ptr %6, align 4, !tbaa !30    ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit50
  %.pre = load i32, ptr %7, align 4, !tbaa !30
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZN4ncnn3Mat7channelEi.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  %i.ch = add nsw i32 %.048129, 1
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !30
  %.not.not = icmp slt i32 %.048129, %i.ci
  br i1 %.not.not, label %bb.c, label %._crit_edge132

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.cj = phi i32 [ %i.cp, %._crit_edge ], [ %.pre, %.lr.ph.preheader ]
  %i.ck = phi i32 [ %i.cr, %._crit_edge ], [ %i.cf, %.lr.ph.preheader ]
  %.047127 = phi i32 [ %i.cq, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.cl = sub nsw i32 %i.ck, %.047127
  %.sroa.speculated119 = call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.cl) ; 2 uses
  %i.cm = load i32, ptr %8, align 4, !tbaa !30    ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.lr.ph
  %.pre133 = load i32, ptr %9, align 4, !tbaa !30
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %.lr.ph
  %i.co = load i32, ptr %14, align 4, !tbaa !30
  %.val81 = load ptr, ptr %13, align 8, !tbaa !15
  call fastcc void @_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.val81, i32 noundef %i.be, i32 noundef %.sroa.speculated123, i32 noundef %.047127, i32 noundef %.sroa.speculated119, i32 noundef %i.co, ptr noundef nonnull align 8 dereferenceable(72) %15)
  %i.cp = load i32, ptr %7, align 4, !tbaa !30    ; 2 uses
  %i.cq = add nsw i32 %i.cp, %.047127             ; 2 uses
  %i.cr = load i32, ptr %6, align 4, !tbaa !30    ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !971

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ct = phi i32 [ %i.eq, %.noexc ], [ %.pre133, %.noexc.preheader ] ; 2 uses
  %i.cu = phi i32 [ %i.es, %.noexc ], [ %i.cm, %.noexc.preheader ]
  %.0126 = phi i32 [ %i.er, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.cv = sub nsw i32 %i.cu, %.0126
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ct, i32 %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  %i.cw = load i32, ptr %3, align 4, !tbaa !30
  %i.cx = sdiv i32 %i.be, %i.cw
  %i.cy = load ptr, ptr %10, align 8, !tbaa !15, !noalias !982
  %i.cz = load i64, ptr %i.af, align 8, !tbaa !16, !noalias !982
  %i.da = sext i32 %i.cx to i64
  %i.db = mul i64 %i.cz, %i.da
  %i.dc = load i64, ptr %i.ag, align 8, !tbaa !17, !noalias !982 ; 3 uses
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dd
  %i.df = load i32, ptr %i.ah, align 8, !tbaa !32, !noalias !982
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !46, !noalias !982
  %i.dh = sdiv i32 %.0126, %i.ct
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !45, !alias.scope !983
  store i64 %i.dc, ptr %i.ak, align 8, !tbaa !17, !alias.scope !983
  store i32 %i.df, ptr %i.al, align 8, !tbaa !32, !alias.scope !983
  store ptr %i.dg, ptr %i.am, align 8, !tbaa !46, !alias.scope !983
  %i.dj = load <2 x i32>, ptr %i.ad, align 4, !tbaa !30, !noalias !982
  %i.dk = load i32, ptr %i.ae, align 8, !tbaa !35, !noalias !982
  %i.dl = load i32, ptr %i.ad, align 4, !tbaa !31, !noalias !982
  %i.dm = sext i32 %i.dl to i64
  %i.dn = sext i32 %i.dk to i64
  %i.do = mul nsw i64 %i.dn, %i.dm                ; 2 uses
  %i.dp = mul i64 %i.dc, %i.do
  %i.dq = mul i64 %i.dp, %i.di
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dq
  store ptr %i.dr, ptr %17, align 8, !tbaa !15, !alias.scope !983
  %i.ds = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dt = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.ds, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.dt, ptr %i.an, align 8, !tbaa !30, !alias.scope !983
  store i32 1, ptr %i.ao, align 8, !tbaa !33, !alias.scope !983
  store i64 %i.do, ptr %i.ap, align 8, !tbaa !16, !alias.scope !983
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  %i.du = load i32, ptr %7, align 4, !tbaa !30
  %i.dv = sdiv i32 %.047127, %i.du
  %i.dw = load ptr, ptr %11, align 8, !tbaa !15, !noalias !984
  %i.dx = load i64, ptr %i.as, align 8, !tbaa !16, !noalias !984
  %i.dy = sext i32 %i.dv to i64
  %i.dz = mul i64 %i.dx, %i.dy
  %i.ea = load i64, ptr %i.at, align 8, !tbaa !17, !noalias !984 ; 3 uses
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eb
  %i.ed = load i32, ptr %i.au, align 8, !tbaa !32, !noalias !984
  %i.ee = load ptr, ptr %i.av, align 8, !tbaa !46, !noalias !984
  store ptr null, ptr %i.aw, align 8, !tbaa !45, !alias.scope !985
  store i64 %i.ea, ptr %i.ax, align 8, !tbaa !17, !alias.scope !985
  store i32 %i.ed, ptr %i.ay, align 8, !tbaa !32, !alias.scope !985
  store ptr %i.ee, ptr %i.az, align 8, !tbaa !46, !alias.scope !985
  %i.ef = load <2 x i32>, ptr %i.aq, align 4, !tbaa !30, !noalias !984
  %i.eg = load i32, ptr %i.ar, align 8, !tbaa !35, !noalias !984
  %i.eh = load i32, ptr %i.aq, align 4, !tbaa !31, !noalias !984
  %i.ei = sext i32 %i.eh to i64
  %i.ej = sext i32 %i.eg to i64
  %i.ek = mul nsw i64 %i.ej, %i.ei                ; 2 uses
  %i.el = mul i64 %i.ea, %i.ek
  %i.em = mul i64 %i.el, %i.di
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.em
  store ptr %i.en, ptr %18, align 8, !tbaa !15, !alias.scope !985
  %i.eo = shufflevector <2 x i32> %i.ef, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ep = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.eo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.ep, ptr %i.ba, align 8, !tbaa !30, !alias.scope !985
  store i32 1, ptr %i.bb, align 8, !tbaa !33, !alias.scope !985
  store i64 %i.ek, ptr %i.bc, align 8, !tbaa !16, !alias.scope !985
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(72) %18, ptr %i.bp, i32 noundef 64, i32 noundef %.sroa.speculated123, i32 noundef %.sroa.speculated119, i32 noundef %.0126, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  %i.eq = load i32, ptr %9, align 4, !tbaa !30    ; 2 uses
  %i.er = add nsw i32 %i.eq, %.0126               ; 2 uses
  %i.es = load i32, ptr %8, align 4, !tbaa !30    ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc, label %._crit_edge, !llvm.loop !980

._crit_edge132:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge132, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #26
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr>, <16 x i1>, <16 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <31 x float> @llvm.masked.load.v31f32.p0(ptr captures(none), <31 x i1>, <31 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!14 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !12, i64 64}
!15 = !{!14, !10, i64 0}
!16 = !{!14, !12, i64 64}
!17 = !{!14, !12, i64 16}
!18 = !{!6, !6, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"float", !6, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"short", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = !{!"branch_weights", i32 8, i32 24}
!29 = !{!"branch_weights", i32 8, i32 56}
!30 = !{!7, !7, i64 0}
!31 = !{!14, !7, i64 44}
!32 = !{!14, !7, i64 24}
!33 = !{!14, !7, i64 56}
!34 = !{!12, !12, i64 0}
!35 = !{!14, !7, i64 48}
!36 = !{!11, !11, i64 0}
!37 = !{!"p1 float", !10, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"bool", !6, i64 0}
!40 = !{!"_ZTSN4ncnn6OptionE", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3, !7, i64 4, !13, i64 8, !13, i64 16, !7, i64 24, !39, i64 28, !39, i64 29, !39, i64 30, !39, i64 31, !39, i64 32, !39, i64 33, !39, i64 34, !39, i64 35, !39, i64 36, !39, i64 37, !39, i64 38, !39, i64 39, !7, i64 40, !39, i64 44, !39, i64 45, !39, i64 46, !39, i64 47, !6, i64 48, !39, i64 49, !39, i64 50, !39, i64 51, !39, i64 52, !39, i64 53, !39, i64 54, !39, i64 55, !39, i64 56, !39, i64 57, !39, i64 58, !39, i64 59, !39, i64 60, !39, i64 61, !39, i64 62, !39, i64 63}
!41 = !{!40, !7, i64 4}
!42 = !{!"llvm.loop.unswitch.partial.disable"}
!43 = !{i64 2, i64 -1, i64 -1, i1 true}
!44 = !{!43}
!45 = !{!14, !11, i64 8}
!46 = !{!14, !13, i64 32}
!47 = !{!"vtable pointer", !5, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!40, !13, i64 16}
!50 = !{!14, !7, i64 52}
!51 = !{!14, !7, i64 40}
!52 = distinct !{!52, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!53 = distinct !{!53, !52, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!67 = distinct !{!67, !66, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!81 = distinct !{!81, !80, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!95 = distinct !{!95, !94, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19, !25, !26}
!103 = distinct !{!103, !19, !25, !26}
!104 = distinct !{!104, !19, !26, !25}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19, !25, !26}
!107 = distinct !{!107, !19, !25, !26}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19, !26, !25}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!112 = distinct !{!112, !111, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !20}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !20}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19, !25, !26}
!123 = distinct !{!123, !19, !25, !26}
end_hunk_2
